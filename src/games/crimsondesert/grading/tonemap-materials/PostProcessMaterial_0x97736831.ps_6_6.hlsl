struct PostProcessWeatherBlendStruct {
  float _blendRatio;
  float _enableBlend;
  uint _noiseTex;
  uint _berserkColor;
  uint _berserkEndColor;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _contrast;
  float3 _saturation;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
};

struct BindlessParameters_PostProcessWeatherBlend {
  PostProcessWeatherBlendStruct BindlessParameters_PostProcessWeatherBlend;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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

typedef BindlessParameters_PostProcessWeatherBlend BindlessParameters_PostProcessWeatherBlend_t;
ConstantBuffer<BindlessParameters_PostProcessWeatherBlend_t> BindlessParameters_PostProcessWeatherBlend[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _22;
  float _30;
  int _33;
  float _41;
  float4 _44;
  float _50;
  float _53;
  float _56;
  float _64;
  float _72;
  float _80;
  float _81;
  float _82;
  float _83;
  int _86;
  float _94;
  int _97;
  float _105;
  float _429;
  float _430;
  float _431;
  float _445;
  float _650;
  float _651;
  float _652;
  float _745;
  float _746;
  float _747;
  float _801;
  float _802;
  float _803;
  float _822;
  float _823;
  float _824;
  float _854;
  float _855;
  float _856;
  float _870;
  float _871;
  float _872;
  int _112;
  int _120;
  float4 _131;
  float4 _138;
  float _145;
  float _148;
  float _151;
  float _152;
  float _163;
  float _174;
  float _185;
  float _186;
  float _187;
  float _189;
  bool _190;
  bool _191;
  bool _192;
  bool _193;
  float _204;
  float _208;
  int _211;
  int _219;
  float4 _240;
  float _245;
  float _248;
  float _251;
  int _254;
  int _262;
  float4 _281;
  int _285;
  int _293;
  float _296;
  float _299;
  float _301;
  float _304;
  float _313;
  float _326;
  float _339;
  float _352;
  int _355;
  int _363;
  float _366;
  float _369;
  float _371;
  float _374;
  float _376;
  float _389;
  float _402;
  float _415;
  float _418;
  uint _432;
  bool _448;
  float _454;
  float _473;
  float _489;
  float _505;
  float _506;
  float _510;
  float _513;
  float _516;
  float _523;
  float _530;
  float _537;
  float _538;
  float _539;
  float _540;
  float _541;
  float _542;
  float _543;
  float _559;
  float _575;
  float _591;
  float _592;
  float _593;
  float _594;
  float _595;
  float _612;
  float _613;
  float _614;
  float _615;
  float _618;
  float _621;
  float _625;
  float _629;
  float _633;
  float _653;
  float _665;
  float _677;
  float _689;
  float _696;
  float _703;
  float _710;
  float _716;
  float _717;
  float _719;
  float _721;
  float _723;
  float _728;
  float _749;
  float _751;
  float _754;
  float _757;
  float _760;
  float _766;
  float _808;
  float _811;
  float _817;
  float _859;
  float _876;
  float _880;
  float _884;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationRatio);
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationShiftValue);
  _44 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _50 = (pow(_44.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _53 = (pow(_44.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _56 = (pow(_44.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _64 = exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f);
  _72 = exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.851562f - (_53 * 18.6875f))) * 6.277395f);
  _80 = exp2(log2(max(0.0f, (_56 + -0.8359375f)) / (18.851562f - (_56 * 18.6875f))) * 6.277395f);
  _81 = _64 * 10000.0f;
  _82 = _72 * 10000.0f;
  _83 = _80 * 10000.0f;
  _86 = WaveReadLaneFirst(_materialIndex);
  _94 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _97 = WaveReadLaneFirst(_materialIndex);
  _105 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_94 >= 0.01f) && (_105 > 0.01f)) {
    _112 = WaveReadLaneFirst(_materialIndex);
    _120 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_112 < (uint)170000), _112, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _131 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_120 < (uint)65000), _120, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, ((_time.x * 0.2f) + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _138 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _145 = (pow(_138.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _148 = (pow(_138.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _151 = (pow(_138.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _152 = _138.w * 10000.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _163 = ((exp2(log2(max(0.0f, (_145 + -0.8359375f)) / (18.851562f - (_145 * 18.6875f))) * 6.277395f) - _64) * _152) + _81;
    _174 = ((exp2(log2(max(0.0f, (_148 + -0.8359375f)) / (18.851562f - (_148 * 18.6875f))) * 6.277395f) - _72) * _152) + _82;
    _185 = ((exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.851562f - (_151 * 18.6875f))) * 6.277395f) - _80) * _152) + _83;
    _186 = TEXCOORD.x + -0.5f;
    _187 = TEXCOORD.y + -0.5f;
    _189 = atan(_187 / _186);
    _190 = (_186 < 0.0f);
    _191 = (_186 == 0.0f);
    _192 = (_187 >= 0.0f);
    _193 = (_187 < 0.0f);
    _204 = select((_191 && _192), 0.5f, select((_191 && _193), -0.5f, (select((_190 && _193), (_189 + -3.1415927f), select((_190 && _192), (_189 + 3.1415927f), _189)) * 0.31830987f)));
    _208 = sqrt((_187 * _187) + (_186 * _186));
    _211 = WaveReadLaneFirst(_materialIndex);
    _219 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_211 < (uint)170000), _211, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _240 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_219 < (uint)65000), _219, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_204 * 15.0f) - ((_131.z + -0.5f) * 0.5f)) - (_time.x * 0.2f)), (((_208 * 2.0f) - ((_131.w + -0.5f) * 0.5f)) - (_time.x * 1.5f))));
    _245 = (1.75f - saturate(_94 * 1.4285715f)) * 0.5f;
    _248 = max((abs(_186) - _245), 0.0f);
    _251 = max((abs(_187) - _245), 0.0f);
    _254 = WaveReadLaneFirst(_materialIndex);
    _262 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_254 < (uint)170000), _254, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._borderEdgeNoiseTexture);
    _281 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_262 < (uint)65000), _262, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_204 * 9.0f) + (_131.x * 0.05f)) - (_240.x * 0.1f)), ((_208 + (_131.y * 0.05f)) - ((_time.x + _240.x) * 0.1f))));
    _285 = WaveReadLaneFirst(_materialIndex);
    _293 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_285 < (uint)170000), _285, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _296 = (float)((uint)((uint)(((uint)((uint)(_293)) >> 16) & 255)));
    _299 = (float)((uint)((uint)(((uint)((uint)(_293)) >> 8) & 255)));
    _301 = (float)((uint)((uint)(_293 & 255)));
    _304 = max(0.001f, _exposure0.x);
    _313 = ((_281.y * _281.y) * _281.y) * saturate(sqrt((_251 * _251) + (_248 * _248)) * 6.6666665f);
    _326 = (((select(((_296 * 0.003921569f) < 0.04045f), (_296 * 0.000303527f), exp2(log2((_296 * 0.003717127f) + 0.052132703f) * 2.4f)) / _304) - _163) * _313) + _163;
    _339 = (((select(((_299 * 0.003921569f) < 0.04045f), (_299 * 0.000303527f), exp2(log2((_299 * 0.003717127f) + 0.052132703f) * 2.4f)) / _304) - _174) * _313) + _174;
    _352 = (((select(((_301 * 0.003921569f) < 0.04045f), (_301 * 0.000303527f), exp2(log2((_301 * 0.003717127f) + 0.052132703f) * 2.4f)) / _304) - _185) * _313) + _185;
    _355 = WaveReadLaneFirst(_materialIndex);
    _363 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_355 < (uint)170000), _355, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkEndColor);
    _366 = (float)((uint)((uint)(((uint)((uint)(_363)) >> 16) & 255)));
    _369 = (float)((uint)((uint)(((uint)((uint)(_363)) >> 8) & 255)));
    _371 = (float)((uint)((uint)(_363 & 255)));
    _374 = max(0.001f, _exposure0.x);
    _376 = select((_94 > 0.7f), 1.0f, 0.0f);
    _389 = (((select(((_366 * 0.003921569f) < 0.04045f), (_366 * 0.000303527f), exp2(log2((_366 * 0.003717127f) + 0.052132703f) * 2.4f)) / _374) - _326) * _376) + _326;
    _402 = (((select(((_369 * 0.003921569f) < 0.04045f), (_369 * 0.000303527f), exp2(log2((_369 * 0.003717127f) + 0.052132703f) * 2.4f)) / _374) - _339) * _376) + _339;
    _415 = (((select(((_371 * 0.003921569f) < 0.04045f), (_371 * 0.000303527f), exp2(log2((_371 * 0.003717127f) + 0.052132703f) * 2.4f)) / _374) - _352) * _376) + _352;
    _418 = saturate((_94 + -0.8f) * 5.0f);  // [sem: expr_sat]
    _429 = ((_418 * (_82 - _402)) + _402);
    _430 = ((_418 * (_81 - _389)) + _389);
    _431 = (lerp(_415, _83, _418));  // [sem: blended]
  } else {
    _429 = _82;
    _430 = _81;
    _431 = _83;  // [sem: blended]
  }
  _432 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _445 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _432, 0)))).x) & 127)))) + 0.5f);
  } else {
    _445 = 1.0f;
  }
  _448 = (_localToneMappingParams.w > 0.0f);
  if (_448) {
    _454 = _exposure0.x * _userImageAdjust.z;
    _473 = exp2(_powerParams.x * log2(max(0.0f, (((_454 * max(0.0f, (((_430 * 1.70505f) - (_429 * 0.62179f)) - (_431 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _489 = exp2(log2(max(0.0f, (((_slopeParams.y * _454) * max(0.0f, (((_429 * 1.1408f) - (_430 * 0.13026f)) - (_431 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _505 = exp2(log2(max(0.0f, (((_slopeParams.z * _454) * max(0.0f, (((_430 * -0.024f) - (_429 * 0.12897f)) + (_431 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _506 = dot(float3(_473, _489, _505), float3(0.212671f, 0.71516f, 0.072169f));
    _510 = ((_473 - _506) * _powerParams.w) + _506;
    _513 = ((_489 - _506) * _powerParams.w) + _506;
    _516 = ((_505 - _506) * _powerParams.w) + _506;
    _523 = min(max(log2(mad(_516, 0.079223745f, mad(_513, 0.0784336f, (_510 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _530 = min(max(log2(mad(_516, 0.07916613f, mad(_513, 0.87846863f, (_510 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _537 = min(max(log2(mad(_516, 0.879143f, mad(_513, 0.0784336f, (_510 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _538 = _523 * 0.060606062f;
    _539 = _530 * 0.060606062f;
    _540 = _537 * 0.060606062f;
    _541 = _538 * _538;
    _542 = _539 * _539;
    _543 = _540 * _540;
    _559 = min(0.0f, (-0.0f - (((_523 * 0.0072181816f) + ((_541 * 0.4298f) + (((_541 * _541) * ((31.96f - (_523 * 2.4327273f)) + (_541 * 15.5f))) - ((_523 * 0.41624245f) * _541)))) + -0.00232f)));
    _575 = min(0.0f, (-0.0f - (((_530 * 0.0072181816f) + ((_542 * 0.4298f) + (((_542 * _542) * ((31.96f - (_530 * 2.4327273f)) + (_542 * 15.5f))) - ((_530 * 0.41624245f) * _542)))) + -0.00232f)));
    _591 = min(0.0f, (-0.0f - (((_537 * 0.0072181816f) + ((_543 * 0.4298f) + (((_543 * _543) * ((31.96f - (_537 * 2.4327273f)) + (_543 * 15.5f))) - ((_537 * 0.41624245f) * _543)))) + -0.00232f)));
    _592 = -0.0f - _559;
    _593 = -0.0f - _575;
    _594 = -0.0f - _591;
    _595 = dot(float3(_592, _593, _594), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _612 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _613 = -0.79999995f / _612;
      _614 = -1.2f / _612;
      _615 = 0.20000005f / _612;
      _618 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _621 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _625 = (_613 + 1.4f) + (_621 * (-0.39999998f - _613));
      _629 = (_614 + 1.6f) + (_621 * (-0.6f - _614));
      _633 = (_615 + 0.9f) + (_621 * (0.5f - _615));
      _650 = (lerp(_629, 1.2f, _618));  // [sem: blended]
      _651 = (lerp(_625, 1.0f, _618));  // [sem: blended]
      _652 = (lerp(_633, 1.4f, _618));  // [sem: blended]
    } else {
      _650 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _651 = 1.0f;  // [sem: blended]
      _652 = 1.4f;  // [sem: blended]
    }
    _653 = 1.0f - _650;
    _665 = ((exp2(log2(((saturate((_559 * _559) * _592) * _653) + _650) * _592) * _651) - _595) * _652) + _595;
    _677 = ((exp2(log2(((saturate((_575 * _575) * _593) * _653) + _650) * _593) * _651) - _595) * _652) + _595;
    _689 = ((exp2(log2(((saturate((_591 * _591) * _594) * _653) + _650) * _594) * _651) - _595) * _652) + _595;
    _696 = saturate(exp2(log2(mad(_689, -0.09902974f, mad(_677, -0.09802088f, (_665 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _703 = saturate(exp2(log2(mad(_689, -0.098961174f, mad(_677, 1.1519032f, (_665 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _710 = saturate(exp2(log2(mad(_689, 1.1510737f, mad(_677, -0.09804345f, (_665 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _716 = 1.0f - abs(_etcParams.w);
      _717 = saturate(_etcParams.w);  // [sem: expr_sat]
      _719 = (_716 * _696) + _717;
      _721 = (_716 * _703) + _717;
      _723 = (_716 * _710) + _717;
      if (_colorGradingParams.w > 0.0f) {
        _728 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _745 = (((max(0.0f, (1.0f - _719)) - _719) * _728) + _719);
        _746 = (((max(0.0f, (1.0f - _721)) - _721) * _728) + _721);
        _747 = (((max(0.0f, (1.0f - _723)) - _723) * _728) + _723);
      } else {
        _745 = _719;
        _746 = _721;
        _747 = _723;
      }
      _749 = _userImageAdjust.y + 1.0f;
      _751 = _userImageAdjust.x + 0.5f;
      _754 = ((_745 + -0.5f) * _749) + _751;
      _757 = ((_746 + -0.5f) * _749) + _751;
      _760 = ((_747 + -0.5f) * _749) + _751;
      _766 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _801 = exp2(log2(saturate(mad(_colorBlind0.z, _760, mad(_colorBlind0.y, _757, (_colorBlind0.x * _754))))) * _766);
      _802 = exp2(log2(saturate(mad(_colorBlind1.z, _760, mad(_colorBlind1.y, _757, (_colorBlind1.x * _754))))) * _766);
      _803 = exp2(log2(saturate(mad(_colorBlind2.z, _760, mad(_colorBlind2.y, _757, (_colorBlind2.x * _754))))) * _766);
    } else {
      _801 = _696;
      _802 = _703;
      _803 = _710;
    }
  } else {
    _801 = _430;
    _802 = _429;
    _803 = _431;
  }
  if (_etcParams.y > 1.0f) {
    _808 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _811 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _817 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_808, _811), float2(_808, _811))));  // [sem: expr_sat]
    _822 = (_817 * _801);
    _823 = (_817 * _802);
    _824 = (_817 * _803);
  } else {
    _822 = _801;
    _823 = _802;
    _824 = _803;
  }
  if (_448 && (_etcParams.z > 0.0f)) {
    _854 = select((_822 <= 0.0031308f), (_822 * 12.92f), (((pow(_822, 0.41666666f)) * 1.055f) + -0.055f));
    _855 = select((_823 <= 0.0031308f), (_823 * 12.92f), (((pow(_823, 0.41666666f)) * 1.055f) + -0.055f));
    _856 = select((_824 <= 0.0031308f), (_824 * 12.92f), (((pow(_824, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _854 = _822;
    _855 = _823;
    _856 = _824;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _859 = (float)((uint)((uint)(_432)));
    if (!(_859 < _viewDir.w)) {
      if (!(!(_859 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _870 = 0.0f;
        _871 = 0.0f;
        _872 = 0.0f;
      } else {
        _870 = _854;
        _871 = _855;
        _872 = _856;
      }
    } else {
      _870 = 0.0f;
      _871 = 0.0f;
      _872 = 0.0f;
    }
  } else {
    _870 = _854;
    _871 = _855;
    _872 = _856;
  }
  _876 = exp2(log2(_870 * 0.0001f) * 0.15930176f);
  _880 = exp2(log2(_871 * 0.0001f) * 0.15930176f);
  _884 = exp2(log2(_872 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_876 * 18.6875f) + 1.0f)) * ((_876 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_880 * 18.6875f) + 1.0f)) * ((_880 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_884 * 18.6875f) + 1.0f)) * ((_884 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _445;
  return SV_Target;
}
