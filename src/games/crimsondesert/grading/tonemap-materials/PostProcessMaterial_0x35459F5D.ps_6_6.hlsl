struct PostProcessBerserk_CDStruct {
  float _scanRadius;
  float _fishEyeIntensity;
  float _bloodLineIntensity;
  float _auraIntensity;
  float _centerMaskWidth;
  float _fireIntensity;
  float _sphereMaskRatio;
  float _fogIntensity;
  float _scanRadiusEnd;
  float _ringMaskRadius;
  float _ringMaskIntensity;
  float _radialBlurIntensity;
  uint _noiseTex;
  uint _noiseTex2;
  uint _distortionTex;
  uint _marbleCrackTex;
  float _sphereMaskEndRatio;
  float _sphereMaskEndNoiseIntensity;
  float _sceneColorDistortionIntensity;
  float _characterMaskIntensity;
  uint _enemyGradientTex;
  uint _enemyMaskColor;
  float _flashRatio;
  uint _paperTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
};

typedef BindlessParameters_PostProcessBerserk_CD BindlessParameters_PostProcessBerserk_CD_t;
ConstantBuffer<BindlessParameters_PostProcessBerserk_CD_t> BindlessParameters_PostProcessBerserk_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _27;
  int _35;
  float4 _41;
  float _51;
  float _52;
  float _53;
  float _94;
  float _95;
  float _96;
  float _97;
  float _101;
  float _102;
  float _109;
  float _112;
  float _115;
  float _123;
  float _209;
  float _408;
  float _409;
  float _410;
  float _503;
  float _504;
  float _505;
  float _559;
  float _560;
  float _561;
  float _580;
  float _581;
  float _582;
  float _612;
  float _613;
  float _614;
  float _628;
  float _629;
  float _630;
  float _135;
  int _136;
  int _144;
  float _147;
  float _150;
  float _151;
  float _152;
  float _195;
  uint _196;
  bool _212;
  float _218;
  float _261;
  float _262;
  float _263;
  float _265;
  float _272;
  float _273;
  float _274;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _301;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _352;
  float _353;
  float _370;
  float _371;
  float _372;
  float _373;
  float _379;
  float _382;
  float _389;
  float _390;
  float _391;
  float _420;
  float _445;
  float _446;
  float _447;
  float _466;
  float _467;
  float _468;
  float _474;
  float _478;
  float _479;
  float _480;
  float _481;
  float _486;
  float _511;
  float _515;
  float _516;
  float _517;
  float _518;
  float _548;
  float _570;
  float _571;
  float _575;
  float _619;
  float _640;
  float _641;
  float _642;
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _41 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _51 = (pow(_41.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _52 = (pow(_41.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _53 = (pow(_41.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _94 = TEXCOORD.x + -0.5f;
  _95 = TEXCOORD.y + -0.5f;
  _96 = abs(_94);
  _97 = abs(_95);
  _101 = min(_96, _97) / max(max(_96, _97), 1e-08f);
  _102 = _101 * _101;
  _109 = ((_102 * _101) * (((0.15931422f - (_102 * 0.046496473f)) * _102) + -0.32762277f)) + _101;
  _112 = select((_97 > _96), (1.5707964f - _109), _109);
  _115 = select((_94 < 0.0f), (3.1415927f - _112), _112);
  _123 = select((_95 < 0.0f), (-0.0f - _115), _115) * 0.9549296f;
  _135 = select(((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16), 0.0f, (saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f)) * (1.0f / max(0.0001f, _exposure0.x))));
  _136 = WaveReadLaneFirst(_materialIndex);
  _144 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_136 < (uint)170000), _136, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _147 = (sqrt((_95 * _95) + (_94 * _94)) * 2.0f) - (_time.x * 0.7f);
  _150 = _time.x * 0.030000001f;
  _151 = _150 + _123;
  _152 = _150 + _147;
  _195 = dot(float3((exp2(log2(max(0.0f, (_51 + -0.8359375f)) / (18.851562f - (_51 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_52 + -0.8359375f)) / (18.851562f - (_52 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.851562f - (_53 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
  _196 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: expr_sat]
    _209 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _196, 0)))).x) & 127)))) + 0.5f);
  } else {
    // [sem: expr_sat]
    _209 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_144 < (uint)65000), _144, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_123 + 0.418f) - _150), frac((_147 + 0.355f) - _150))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_144 < (uint)65000), _144, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_151), frac(_152))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_144 < (uint)65000), _144, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_123 + 0.855f) - _150), frac(_152 + 0.148f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_144 < (uint)65000), _144, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_151 + 0.651f), frac((_147 + 0.752f) - _150))))).w));
  }
  _212 = (_localToneMappingParams.w > 0.0f);
  if (_212) {
    _218 = _userImageAdjust.z * _exposure0.x;
    _261 = exp2(log2(max(0.0f, (((_218 * max(0.0f, ((_135 * 1.70505f) - (_195 * 0.62179f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _262 = exp2(log2(max(0.0f, (((max(0.0f, ((_195 * 1.1408f) - (_135 * 0.13026f))) * _218) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _263 = exp2(log2(max(0.0f, (((max(0.0f, ((_195 * -0.12897f) - (_135 * 0.024f))) * _218) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _265 = dot(float3(_261, _262, _263), float3(0.212671f, 0.71516f, 0.072169f));
    _272 = ((_261 - _265) * _powerParams.w) + _265;
    _273 = ((_262 - _265) * _powerParams.w) + _265;
    _274 = ((_263 - _265) * _powerParams.w) + _265;
    _293 = min(max(log2(mad(_274, 0.079223745f, mad(_273, 0.0784336f, (_272 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _294 = min(max(log2(mad(_274, 0.07916613f, mad(_273, 0.87846863f, (_272 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _295 = min(max(log2(mad(_274, 0.879143f, mad(_273, 0.0784336f, (_272 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _296 = _293 * 0.060606062f;
    _297 = _294 * 0.060606062f;
    _298 = _295 * 0.060606062f;
    _299 = _296 * _296;
    _300 = _297 * _297;
    _301 = _298 * _298;
    _347 = min(0.0f, (-0.0f - (((_293 * 0.0072181816f) + ((_299 * 0.4298f) + (((_299 * _299) * ((31.96f - (_293 * 2.4327273f)) + (_299 * 15.5f))) - ((_293 * 0.41624245f) * _299)))) + -0.00232f)));
    _348 = min(0.0f, (-0.0f - (((_294 * 0.0072181816f) + ((_300 * 0.4298f) + (((_300 * _300) * ((31.96f - (_294 * 2.4327273f)) + (_300 * 15.5f))) - ((_294 * 0.41624245f) * _300)))) + -0.00232f)));
    _349 = min(0.0f, (-0.0f - (((_295 * 0.0072181816f) + ((_301 * 0.4298f) + (((_301 * _301) * ((31.96f - (_295 * 2.4327273f)) + (_301 * 15.5f))) - ((_295 * 0.41624245f) * _301)))) + -0.00232f)));
    _350 = -0.0f - _347;
    _351 = -0.0f - _348;
    _352 = -0.0f - _349;
    _353 = dot(float3(_350, _351, _352), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _370 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _371 = -0.79999995f / _370;
      _372 = -1.2f / _370;
      _373 = 0.20000005f / _370;
      _379 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _382 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _389 = (_371 + 1.4f) + (_382 * (-0.39999998f - _371));
      _390 = (_372 + 1.6f) + (_382 * (-0.6f - _372));
      _391 = (_373 + 0.9f) + (_382 * (0.5f - _373));
      _408 = (lerp(_390, 1.2f, _379));  // [sem: blended]
      _409 = (lerp(_389, 1.0f, _379));  // [sem: blended]
      _410 = (lerp(_391, 1.4f, _379));  // [sem: blended]
    } else {
      _408 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _409 = 1.0f;  // [sem: blended]
      _410 = 1.4f;  // [sem: blended]
    }
    _420 = 1.0f - _408;
    _445 = ((exp2(log2(((saturate((_347 * _347) * _350) * _420) + _408) * _350) * _409) - _353) * _410) + _353;
    _446 = ((exp2(log2(((saturate((_348 * _348) * _351) * _420) + _408) * _351) * _409) - _353) * _410) + _353;
    _447 = ((exp2(log2(((saturate((_349 * _349) * _352) * _420) + _408) * _352) * _409) - _353) * _410) + _353;
    _466 = saturate(exp2(log2(mad(_447, -0.09902974f, mad(_446, -0.09802088f, (_445 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _467 = saturate(exp2(log2(mad(_447, -0.098961174f, mad(_446, 1.1519032f, (_445 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _468 = saturate(exp2(log2(mad(_447, 1.1510737f, mad(_446, -0.09804345f, (_445 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _474 = 1.0f - abs(_etcParams.w);
      _478 = saturate(_etcParams.w);  // [sem: expr_sat]
      _479 = (_474 * _466) + _478;
      _480 = (_474 * _467) + _478;
      _481 = (_474 * _468) + _478;
      if (_colorGradingParams.w > 0.0f) {
        _486 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _503 = (((max(0.0f, (1.0f - _479)) - _479) * _486) + _479);
        _504 = (((max(0.0f, (1.0f - _480)) - _480) * _486) + _480);
        _505 = (((max(0.0f, (1.0f - _481)) - _481) * _486) + _481);
      } else {
        _503 = _479;
        _504 = _480;
        _505 = _481;
      }
      _511 = _userImageAdjust.y + 1.0f;
      _515 = _userImageAdjust.x + 0.5f;
      _516 = ((_503 + -0.5f) * _511) + _515;
      _517 = ((_504 + -0.5f) * _511) + _515;
      _518 = ((_505 + -0.5f) * _511) + _515;
      _548 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _559 = exp2(log2(saturate(mad(_colorBlind0.z, _518, mad(_colorBlind0.y, _517, (_colorBlind0.x * _516))))) * _548);
      _560 = exp2(log2(saturate(mad(_colorBlind1.z, _518, mad(_colorBlind1.y, _517, (_colorBlind1.x * _516))))) * _548);
      _561 = exp2(log2(saturate(mad(_colorBlind2.z, _518, mad(_colorBlind2.y, _517, (_colorBlind2.x * _516))))) * _548);
    } else {
      _559 = _466;
      _560 = _467;
      _561 = _468;
    }
  } else {
    _559 = _135;
    _560 = _195;
    _561 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _570 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _571 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _575 = saturate(1.0f - (dot(float2(_570, _571), float2(_570, _571)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _580 = (_575 * _559);
    _581 = (_575 * _560);
    _582 = (_575 * _561);
  } else {
    _580 = _559;
    _581 = _560;
    _582 = _561;
  }
  if (_212 && (_etcParams.z > 0.0f)) {
    _612 = select((_580 <= 0.0031308f), (_580 * 12.92f), (((pow(_580, 0.41666666f)) * 1.055f) + -0.055f));
    _613 = select((_581 <= 0.0031308f), (_581 * 12.92f), (((pow(_581, 0.41666666f)) * 1.055f) + -0.055f));
    _614 = select((_582 <= 0.0031308f), (_582 * 12.92f), (((pow(_582, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _612 = _580;
    _613 = _581;
    _614 = _582;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _619 = (float)((uint)((uint)(_196)));
    if (!(_619 < _viewDir.w)) {
      if (!(_619 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _628 = _612;
        _629 = _613;
        _630 = _614;
      } else {
        _628 = 0.0f;
        _629 = 0.0f;
        _630 = 0.0f;
      }
    } else {
      _628 = 0.0f;
      _629 = 0.0f;
      _630 = 0.0f;
    }
  } else {
    _628 = _612;
    _629 = _613;
    _630 = _614;
  }
  _640 = exp2(log2(_628 * 0.0001f) * 0.15930176f);
  _641 = exp2(log2(_629 * 0.0001f) * 0.15930176f);
  _642 = exp2(log2(_630 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_640 * 18.6875f) + 1.0f)) * ((_640 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_642 * 18.6875f) + 1.0f)) * ((_642 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _209;
  return SV_Target;
}
