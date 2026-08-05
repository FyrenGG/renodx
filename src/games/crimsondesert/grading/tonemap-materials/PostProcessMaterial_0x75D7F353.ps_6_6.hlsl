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

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  int _20;
  int _28;
  float4 _31;
  float _35;
  float _36;
  float _37;
  float _38;
  float _42;
  float _43;
  float _50;
  float _53;
  float _56;
  float _60;
  float _92;
  int _95;
  int _103;
  float _112;
  float _115;
  float _116;
  float _117;
  float _118;
  uint _119;
  float _170;
  float _369;
  float _370;
  float _371;
  float _465;
  float _466;
  float _467;
  float _521;
  float _522;
  float _523;
  float _544;
  float _545;
  float _546;
  float _576;
  float _577;
  float _578;
  float _592;
  float _593;
  float _594;
  bool _173;
  float _179;
  float _196;
  float _210;
  float _224;
  float _225;
  float _229;
  float _232;
  float _235;
  float _242;
  float _249;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _278;
  float _294;
  float _310;
  float _311;
  float _312;
  float _313;
  float _314;
  float _331;
  float _332;
  float _333;
  float _334;
  float _337;
  float _340;
  float _344;
  float _348;
  float _352;
  float _372;
  float _384;
  float _396;
  float _408;
  float _415;
  float _422;
  float _429;
  float _436;
  float _437;
  float _439;
  float _441;
  float _443;
  float _448;
  float _469;
  float _471;
  float _474;
  float _477;
  float _480;
  float _486;
  float _530;
  float _533;
  float _539;
  float _581;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = TEXCOORD.x + -0.5f;
  _36 = TEXCOORD.y + -0.5f;
  _37 = abs(_35);
  _38 = abs(_36);
  _42 = min(_37, _38) / max(max(_37, _38), 1e-08f);
  _43 = _42 * _42;
  _50 = ((_43 * _42) * (((0.15931422f - (_43 * 0.046496473f)) * _43) + -0.32762277f)) + _42;
  _53 = select((_38 > _37), (1.5707964f - _50), _50);
  _56 = select((_35 < 0.0f), (3.1415927f - _53), _53);
  _60 = select((_36 < 0.0f), (-0.0f - _56), _56) * 0.9549296f;
  _92 = select(((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16), 0.0f, ((1.0f / max(0.0001f, _exposure0.x)) * saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f))));
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _112 = (sqrt((_36 * _36) + (_35 * _35)) * 2.0f) - (_time.x * 0.7f);
  _115 = _time.x * 0.030000001f;
  _116 = _115 + _60;
  _117 = _115 + _112;
  _118 = dot(float3(_31.x, _31.y, _31.z), float3(0.2126f, 0.7152f, 0.0722f));
  _119 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: expr_sat]
    _170 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _119, 0)))).x) & 127)))) + 0.5f);
  } else {
    // [sem: expr_sat]
    _170 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_116), frac(_117))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_60 + 0.418f) - _115), frac((_112 + 0.355f) - _115))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_60 + 0.855f) - _115), frac(_117 + 0.148f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_116 + 0.651f), frac((_112 + 0.752f) - _115))))).w));
  }
  _173 = (_localToneMappingParams.w > 0.0f);
  if (_173) {
    _179 = _exposure0.x * _userImageAdjust.z;
    _196 = exp2(_powerParams.x * log2(max(0.0f, (((_179 * max(0.0f, ((_92 * 1.70505f) - (_118 * 0.62179f)))) * _slopeParams.x) + _offsetParams.x))));
    _210 = exp2(log2(max(0.0f, (((_slopeParams.y * _179) * max(0.0f, ((_118 * 1.1408f) - (_92 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _224 = exp2(log2(max(0.0f, (((_slopeParams.z * _179) * max(0.0f, ((_118 * -0.12897f) - (_92 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _225 = dot(float3(_196, _210, _224), float3(0.212671f, 0.71516f, 0.072169f));
    _229 = ((_196 - _225) * _powerParams.w) + _225;
    _232 = ((_210 - _225) * _powerParams.w) + _225;
    _235 = ((_224 - _225) * _powerParams.w) + _225;
    _242 = min(max(log2(mad(_235, 0.079223745f, mad(_232, 0.0784336f, (_229 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _249 = min(max(log2(mad(_235, 0.07916613f, mad(_232, 0.87846863f, (_229 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _256 = min(max(log2(mad(_235, 0.879143f, mad(_232, 0.0784336f, (_229 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _257 = _242 * 0.060606062f;
    _258 = _249 * 0.060606062f;
    _259 = _256 * 0.060606062f;
    _260 = _257 * _257;
    _261 = _258 * _258;
    _262 = _259 * _259;
    _278 = min(0.0f, (-0.0f - (((_242 * 0.0072181816f) + ((_260 * 0.4298f) + (((_260 * _260) * ((31.96f - (_242 * 2.4327273f)) + (_260 * 15.5f))) - ((_242 * 0.41624245f) * _260)))) + -0.00232f)));
    _294 = min(0.0f, (-0.0f - (((_249 * 0.0072181816f) + ((_261 * 0.4298f) + (((_261 * _261) * ((31.96f - (_249 * 2.4327273f)) + (_261 * 15.5f))) - ((_249 * 0.41624245f) * _261)))) + -0.00232f)));
    _310 = min(0.0f, (-0.0f - (((_256 * 0.0072181816f) + ((_262 * 0.4298f) + (((_262 * _262) * ((31.96f - (_256 * 2.4327273f)) + (_262 * 15.5f))) - ((_256 * 0.41624245f) * _262)))) + -0.00232f)));
    _311 = -0.0f - _278;
    _312 = -0.0f - _294;
    _313 = -0.0f - _310;
    _314 = dot(float3(_311, _312, _313), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _331 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _332 = -0.79999995f / _331;
      _333 = -1.2f / _331;
      _334 = 0.20000005f / _331;
      _337 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _340 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _344 = (_332 + 1.4f) + (_340 * (-0.39999998f - _332));
      _348 = (_333 + 1.6f) + (_340 * (-0.6f - _333));
      _352 = (_334 + 0.9f) + (_340 * (0.5f - _334));
      _369 = (lerp(_352, 1.4f, _337));  // [sem: blended]
      _370 = (lerp(_344, 1.0f, _337));  // [sem: blended]
      _371 = (lerp(_348, 1.2f, _337));  // [sem: blended]
    } else {
      _369 = 1.4f;  // [sem: blended]
      _370 = 1.0f;  // [sem: blended]
      _371 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _372 = 1.0f - _371;
    _384 = ((exp2(log2(((saturate((_278 * _278) * _311) * _372) + _371) * _311) * _370) - _314) * _369) + _314;
    _396 = ((exp2(log2(((saturate((_294 * _294) * _312) * _372) + _371) * _312) * _370) - _314) * _369) + _314;
    _408 = ((exp2(log2(((saturate((_310 * _310) * _313) * _372) + _371) * _313) * _370) - _314) * _369) + _314;
    _415 = saturate(exp2(log2(mad(_408, -0.09902974f, mad(_396, -0.09802088f, (_384 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _422 = saturate(exp2(log2(mad(_408, -0.098961174f, mad(_396, 1.1519032f, (_384 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _429 = saturate(exp2(log2(mad(_408, 1.1510737f, mad(_396, -0.09804345f, (_384 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _436 = 1.0f - abs(_etcParams.w);
      _437 = saturate(_etcParams.w);  // [sem: expr_sat]
      _439 = (_436 * _415) + _437;
      _441 = (_436 * _422) + _437;
      _443 = (_436 * _429) + _437;
      if (_colorGradingParams.w > 0.0f) {
        _448 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _465 = (((max(0.0f, (1.0f - _439)) - _439) * _448) + _439);
        _466 = (((max(0.0f, (1.0f - _441)) - _441) * _448) + _441);
        _467 = (((max(0.0f, (1.0f - _443)) - _443) * _448) + _443);
      } else {
        _465 = _439;
        _466 = _441;
        _467 = _443;
      }
      _469 = _userImageAdjust.y + 1.0f;
      _471 = _userImageAdjust.x + 0.5f;
      _474 = ((_465 + -0.5f) * _469) + _471;
      _477 = ((_466 + -0.5f) * _469) + _471;
      _480 = ((_467 + -0.5f) * _469) + _471;
      _486 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _521 = exp2(log2(saturate(mad(_colorBlind0.z, _480, mad(_colorBlind0.y, _477, (_colorBlind0.x * _474))))) * _486);
      _522 = exp2(log2(saturate(mad(_colorBlind1.z, _480, mad(_colorBlind1.y, _477, (_colorBlind1.x * _474))))) * _486);
      _523 = exp2(log2(saturate(mad(_colorBlind2.z, _480, mad(_colorBlind2.y, _477, (_colorBlind2.x * _474))))) * _486);
    } else {
      _521 = _415;
      _522 = _422;
      _523 = _429;
    }
  } else {
    _521 = _92;
    _522 = _118;
    _523 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _530 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _533 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _539 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_530, _533), float2(_530, _533))));  // [sem: expr_sat]
    _544 = (_539 * _521);
    _545 = (_539 * _522);
    _546 = (_539 * _523);
  } else {
    _544 = _521;
    _545 = _522;
    _546 = _523;
  }
  if (_173 && (_etcParams.z > 0.0f)) {
    _576 = select((_544 <= 0.0031308f), (_544 * 12.92f), (((pow(_544, 0.41666666f)) * 1.055f) + -0.055f));
    _577 = select((_545 <= 0.0031308f), (_545 * 12.92f), (((pow(_545, 0.41666666f)) * 1.055f) + -0.055f));
    _578 = select((_546 <= 0.0031308f), (_546 * 12.92f), (((pow(_546, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _576 = _544;
    _577 = _545;
    _578 = _546;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _581 = (float)((uint)((uint)(_119)));
    if (!(_581 < _viewDir.w)) {
      if (!(!(_581 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _592 = 0.0f;
        _593 = 0.0f;
        _594 = 0.0f;
      } else {
        _592 = _576;
        _593 = _577;
        _594 = _578;
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
  SV_Target.w = _170;
  return SV_Target;
}
