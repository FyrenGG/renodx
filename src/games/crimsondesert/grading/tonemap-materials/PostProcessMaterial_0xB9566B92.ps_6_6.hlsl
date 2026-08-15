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
  float _58;
  float _59;
  float _60;
  float _61;
  float _65;
  float _66;
  float _73;
  float _76;
  float _79;
  float _87;
  float _173;
  float _372;
  float _373;
  float _374;
  float _467;
  float _468;
  float _469;
  float _523;
  float _524;
  float _525;
  float _544;
  float _545;
  float _546;
  float _576;
  float _577;
  float _578;
  float _592;
  float _593;
  float _594;
  float _99;
  int _100;
  int _108;
  float _111;
  float _114;
  float _115;
  float _116;
  float _159;
  uint _160;
  bool _176;
  float _182;
  float _225;
  float _226;
  float _227;
  float _229;
  float _236;
  float _237;
  float _238;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _334;
  float _335;
  float _336;
  float _337;
  float _343;
  float _346;
  float _353;
  float _354;
  float _355;
  float _384;
  float _409;
  float _410;
  float _411;
  float _430;
  float _431;
  float _432;
  float _438;
  float _442;
  float _443;
  float _444;
  float _445;
  float _450;
  float _475;
  float _479;
  float _480;
  float _481;
  float _482;
  float _512;
  float _534;
  float _535;
  float _539;
  float _583;
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _41 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _58 = TEXCOORD.x + -0.5f;
  _59 = TEXCOORD.y + -0.5f;
  _60 = abs(_58);
  _61 = abs(_59);
  _65 = min(_60, _61) / max(max(_60, _61), 1e-08f);
  _66 = _65 * _65;
  _73 = ((_66 * _65) * (((0.15931422f - (_66 * 0.046496473f)) * _66) + -0.32762277f)) + _65;
  _76 = select((_61 > _60), (1.5707964f - _73), _73);
  _79 = select((_58 < 0.0f), (3.1415927f - _76), _76);
  _87 = select((_59 < 0.0f), (-0.0f - _79), _79) * 0.9549296f;
  _99 = select(((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16), 0.0f, (saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f)) * (1.0f / max(0.0001f, _exposure0.x))));
  _100 = WaveReadLaneFirst(_materialIndex);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _111 = (sqrt((_59 * _59) + (_58 * _58)) * 2.0f) - (_time.x * 0.7f);
  _114 = _time.x * 0.030000001f;
  _115 = _114 + _87;
  _116 = _114 + _111;
  _159 = dot(float3(_41.x, _41.y, _41.z), float3(0.2126f, 0.7152f, 0.0722f));
  _160 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: expr_sat]
    _173 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _160, 0)))).x) & 127)))) + 0.5f);
  } else {
    // [sem: expr_sat]
    _173 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_108 < (uint)65000), _108, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_87 + 0.418f) - _114), frac((_111 + 0.355f) - _114))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_108 < (uint)65000), _108, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_115), frac(_116))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_108 < (uint)65000), _108, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_87 + 0.855f) - _114), frac(_116 + 0.148f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_108 < (uint)65000), _108, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_115 + 0.651f), frac((_111 + 0.752f) - _114))))).w));
  }
  _176 = (_localToneMappingParams.w > 0.0f);
  if (_176) {
    _182 = _userImageAdjust.z * _exposure0.x;
    _225 = exp2(log2(max(0.0f, (((_182 * max(0.0f, ((_99 * 1.70505f) - (_159 * 0.62179f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _226 = exp2(log2(max(0.0f, (((max(0.0f, ((_159 * 1.1408f) - (_99 * 0.13026f))) * _182) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _227 = exp2(log2(max(0.0f, (((max(0.0f, ((_159 * -0.12897f) - (_99 * 0.024f))) * _182) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _229 = dot(float3(_225, _226, _227), float3(0.212671f, 0.71516f, 0.072169f));
    _236 = ((_225 - _229) * _powerParams.w) + _229;
    _237 = ((_226 - _229) * _powerParams.w) + _229;
    _238 = ((_227 - _229) * _powerParams.w) + _229;
    _257 = min(max(log2(mad(_238, 0.079223745f, mad(_237, 0.0784336f, (_236 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _258 = min(max(log2(mad(_238, 0.07916613f, mad(_237, 0.87846863f, (_236 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _259 = min(max(log2(mad(_238, 0.879143f, mad(_237, 0.0784336f, (_236 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _260 = _257 * 0.060606062f;
    _261 = _258 * 0.060606062f;
    _262 = _259 * 0.060606062f;
    _263 = _260 * _260;
    _264 = _261 * _261;
    _265 = _262 * _262;
    _311 = min(0.0f, (-0.0f - (((_257 * 0.0072181816f) + ((_263 * 0.4298f) + (((_263 * _263) * ((31.96f - (_257 * 2.4327273f)) + (_263 * 15.5f))) - ((_257 * 0.41624245f) * _263)))) + -0.00232f)));
    _312 = min(0.0f, (-0.0f - (((_258 * 0.0072181816f) + ((_264 * 0.4298f) + (((_264 * _264) * ((31.96f - (_258 * 2.4327273f)) + (_264 * 15.5f))) - ((_258 * 0.41624245f) * _264)))) + -0.00232f)));
    _313 = min(0.0f, (-0.0f - (((_259 * 0.0072181816f) + ((_265 * 0.4298f) + (((_265 * _265) * ((31.96f - (_259 * 2.4327273f)) + (_265 * 15.5f))) - ((_259 * 0.41624245f) * _265)))) + -0.00232f)));
    _314 = -0.0f - _311;
    _315 = -0.0f - _312;
    _316 = -0.0f - _313;
    _317 = dot(float3(_314, _315, _316), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _334 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _335 = -0.79999995f / _334;
      _336 = -1.2f / _334;
      _337 = 0.20000005f / _334;
      _343 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _346 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _353 = (_335 + 1.4f) + (_346 * (-0.39999998f - _335));
      _354 = (_336 + 1.6f) + (_346 * (-0.6f - _336));
      _355 = (_337 + 0.9f) + (_346 * (0.5f - _337));
      _372 = (lerp(_354, 1.2f, _343));  // [sem: blended]
      _373 = (lerp(_353, 1.0f, _343));  // [sem: blended]
      _374 = (lerp(_355, 1.4f, _343));  // [sem: blended]
    } else {
      _372 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _373 = 1.0f;  // [sem: blended]
      _374 = 1.4f;  // [sem: blended]
    }
    _384 = 1.0f - _372;
    _409 = ((exp2(log2(((saturate((_311 * _311) * _314) * _384) + _372) * _314) * _373) - _317) * _374) + _317;
    _410 = ((exp2(log2(((saturate((_312 * _312) * _315) * _384) + _372) * _315) * _373) - _317) * _374) + _317;
    _411 = ((exp2(log2(((saturate((_313 * _313) * _316) * _384) + _372) * _316) * _373) - _317) * _374) + _317;
    _430 = saturate(exp2(log2(mad(_411, -0.09902974f, mad(_410, -0.09802088f, (_409 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _431 = saturate(exp2(log2(mad(_411, -0.098961174f, mad(_410, 1.1519032f, (_409 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _432 = saturate(exp2(log2(mad(_411, 1.1510737f, mad(_410, -0.09804345f, (_409 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _438 = 1.0f - abs(_etcParams.w);
      _442 = saturate(_etcParams.w);  // [sem: expr_sat]
      _443 = (_438 * _430) + _442;
      _444 = (_438 * _431) + _442;
      _445 = (_438 * _432) + _442;
      if (_colorGradingParams.w > 0.0f) {
        _450 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _467 = (((max(0.0f, (1.0f - _443)) - _443) * _450) + _443);
        _468 = (((max(0.0f, (1.0f - _444)) - _444) * _450) + _444);
        _469 = (((max(0.0f, (1.0f - _445)) - _445) * _450) + _445);
      } else {
        _467 = _443;
        _468 = _444;
        _469 = _445;
      }
      _475 = _userImageAdjust.y + 1.0f;
      _479 = _userImageAdjust.x + 0.5f;
      _480 = ((_467 + -0.5f) * _475) + _479;
      _481 = ((_468 + -0.5f) * _475) + _479;
      _482 = ((_469 + -0.5f) * _475) + _479;
      _512 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _523 = exp2(log2(saturate(mad(_colorBlind0.z, _482, mad(_colorBlind0.y, _481, (_colorBlind0.x * _480))))) * _512);
      _524 = exp2(log2(saturate(mad(_colorBlind1.z, _482, mad(_colorBlind1.y, _481, (_colorBlind1.x * _480))))) * _512);
      _525 = exp2(log2(saturate(mad(_colorBlind2.z, _482, mad(_colorBlind2.y, _481, (_colorBlind2.x * _480))))) * _512);
    } else {
      _523 = _430;
      _524 = _431;
      _525 = _432;
    }
  } else {
    _523 = _99;
    _524 = _159;
    _525 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _534 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _535 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _539 = saturate(1.0f - (dot(float2(_534, _535), float2(_534, _535)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _544 = (_539 * _523);
    _545 = (_539 * _524);
    _546 = (_539 * _525);
  } else {
    _544 = _523;
    _545 = _524;
    _546 = _525;
  }
  if (_176 && (_etcParams.z > 0.0f)) {
    _576 = select((_544 <= 0.0031308f), (_544 * 12.92f), (((pow(_544, 0.41666666f)) * 1.055f) + -0.055f));
    _577 = select((_545 <= 0.0031308f), (_545 * 12.92f), (((pow(_545, 0.41666666f)) * 1.055f) + -0.055f));
    _578 = select((_546 <= 0.0031308f), (_546 * 12.92f), (((pow(_546, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _576 = _544;
    _577 = _545;
    _578 = _546;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _583 = (float)((uint)((uint)(_160)));
    if (!(_583 < _viewDir.w)) {
      if (!(_583 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _592 = _576;
        _593 = _577;
        _594 = _578;
      } else {
        _592 = 0.0f;
        _593 = 0.0f;
        _594 = 0.0f;
      }
    } else {
      _592 = 0.0f;
      _593 = 0.0f;
      _594 = 0.0f;
    }
  } else {
    _592 = _576;
    _593 = _577;
    _594 = _578;
  }
  SV_Target.x = _592;
  SV_Target.y = _593;
  SV_Target.z = _594;
  SV_Target.w = _173;
  return SV_Target;
}
