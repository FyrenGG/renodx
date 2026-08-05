struct PostProcessVHSNoiseStruct {
  float _VHSNoiseProgress;
  float _timeSpeed;
  float _largeNoiseThreshold;
  float _largeNoiseDarkness;
  float _smallNoiseAmplitude;
  float _randomJitterThreshold;
  float _scanlineDarkness;
  float _vignetteRatio;
  float _vignetteWidth;
  float3 _slopeRGB;
  float _saturationRatio;
  float _chromaticAberrationRatio;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessVHSNoise {
  PostProcessVHSNoiseStruct BindlessParameters_PostProcessVHSNoise;
};


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

typedef BindlessParameters_PostProcessVHSNoise BindlessParameters_PostProcessVHSNoise_t;
ConstantBuffer<BindlessParameters_PostProcessVHSNoise_t> BindlessParameters_PostProcessVHSNoise[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _18;
  float _26;
  float _566;
  float _567;
  float _568;
  float _569;
  float _583;
  float _788;
  float _789;
  float _790;
  float _883;
  float _884;
  float _885;
  float _939;
  float _940;
  float _941;
  float _960;
  float _961;
  float _962;
  float _992;
  float _993;
  float _994;
  float _1008;
  float _1009;
  float _1010;
  int _31;
  float _39;
  float _42;
  int _45;
  float _53;
  float _54;
  float _62;
  float _63;
  float _64;
  float _66;
  float _68;
  float _69;
  float _71;
  float _73;
  bool _74;
  float _75;
  float _76;
  float _77;
  float _78;
  float _80;
  float _82;
  float _86;
  float _90;
  float _91;
  float _92;
  float _95;
  float _98;
  float _101;
  float _106;
  float _112;
  float _118;
  float _121;
  float _124;
  float _127;
  float _130;
  float _133;
  float _136;
  float _137;
  float _138;
  float _139;
  float _146;
  float _153;
  float _160;
  float _161;
  float _162;
  float _163;
  float _165;
  float _167;
  float _169;
  float _172;
  float _175;
  float _178;
  float _179;
  float _180;
  float _181;
  float _185;
  float _200;
  float _201;
  float _202;
  float _206;
  float _209;
  float _211;
  float _213;
  float _215;
  float _224;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _239;
  float _241;
  float _242;
  float _244;
  float _246;
  bool _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _253;
  float _255;
  float _259;
  float _263;
  float _264;
  float _265;
  float _268;
  float _271;
  float _274;
  float _279;
  float _285;
  float _291;
  float _294;
  float _297;
  float _300;
  float _303;
  float _306;
  float _309;
  float _310;
  float _311;
  float _312;
  float _319;
  float _326;
  float _333;
  float _334;
  float _335;
  float _336;
  float _338;
  float _340;
  float _342;
  float _345;
  float _348;
  float _351;
  int _354;
  float _362;
  int _365;
  float _373;
  float _376;
  float _378;
  float _387;
  int _390;
  float _398;
  float _404;
  uint _570;
  bool _586;
  float _592;
  float _611;
  float _627;
  float _643;
  float _644;
  float _648;
  float _651;
  float _654;
  float _661;
  float _668;
  float _675;
  float _676;
  float _677;
  float _678;
  float _679;
  float _680;
  float _681;
  float _697;
  float _713;
  float _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _750;
  float _751;
  float _752;
  float _753;
  float _756;
  float _759;
  float _763;
  float _767;
  float _771;
  float _791;
  float _803;
  float _815;
  float _827;
  float _834;
  float _841;
  float _848;
  float _854;
  float _855;
  float _857;
  float _859;
  float _861;
  float _866;
  float _887;
  float _889;
  float _892;
  float _895;
  float _898;
  float _904;
  float _946;
  float _949;
  float _955;
  float _997;
  float _1014;
  float _1018;
  float _1022;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_26 < 0.001f)) {
    _31 = WaveReadLaneFirst(_materialIndex);
    _39 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._timeSpeed);
    _42 = _time.x * _39;
    _45 = WaveReadLaneFirst(_materialIndex);
    _53 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._largeNoiseThreshold);
    _54 = _42 * 0.1f;
    _62 = (_42 * 0.5f) - (((sin(_54 + 7.13f) * 0.5f) + 1.0f) * sin(_54));
    _63 = TEXCOORD.y * 4.8f;
    _64 = dot(float2(_62, _63), float2(0.36602542f, 0.36602542f));
    _66 = floor(_62 + _64);
    _68 = floor(_64 + _63);
    _69 = dot(float2(_66, _68), float2(0.21132487f, 0.21132487f));
    _71 = (_62 - _66) + _69;
    _73 = (_63 - _68) + _69;
    _74 = (_71 > _73);
    _75 = select(_74, 1.0f, 0.0f);
    _76 = select(_74, 0.0f, 1.0f);
    _77 = _71 + -0.57735026f;
    _78 = _73 + -0.57735026f;
    _80 = (_71 + 0.21132487f) - _75;
    _82 = (_73 + 0.21132487f) - _76;
    _86 = _66 - (floor(_66 * 0.0034602077f) * 289.0f);
    _90 = _68 - (floor(_68 * 0.0034602077f) * 289.0f);
    _91 = _90 + _76;
    _92 = _90 + 1.0f;
    _95 = ((_90 * 34.0f) + 1.0f) * _90;
    _98 = ((_91 * 34.0f) + 1.0f) * _91;
    _101 = ((_92 * 34.0f) + 1.0f) * _92;
    _106 = (_95 - (floor(_95 * 0.0034602077f) * 289.0f)) + _86;
    _112 = ((_75 + _86) - (floor(_98 * 0.0034602077f) * 289.0f)) + _98;
    _118 = ((_86 + 1.0f) - (floor(_101 * 0.0034602077f) * 289.0f)) + _101;
    _121 = ((_106 * 34.0f) + 1.0f) * _106;
    _124 = ((_112 * 34.0f) + 1.0f) * _112;
    _127 = ((_118 * 34.0f) + 1.0f) * _118;
    _130 = max((0.5f - dot(float2(_71, _73), float2(_71, _73))), 0.0f);
    _133 = max((0.5f - dot(float2(_80, _82), float2(_80, _82))), 0.0f);
    _136 = max((0.5f - dot(float2(_77, _78), float2(_77, _78))), 0.0f);
    _137 = _130 * _130;
    _138 = _133 * _133;
    _139 = _136 * _136;
    _146 = frac((_121 - (floor(_121 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _153 = frac((_124 - (floor(_124 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _160 = frac((_127 - (floor(_127 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _161 = _146 + -1.0f;
    _162 = _153 + -1.0f;
    _163 = _160 + -1.0f;
    _165 = abs(_161) + -0.5f;
    _167 = abs(_162) + -0.5f;
    _169 = abs(_163) + -0.5f;
    _172 = _161 - floor(_146 + -0.5f);
    _175 = _162 - floor(_153 + -0.5f);
    _178 = _163 - floor(_160 + -0.5f);
    _179 = _42 * 1.7f;
    _180 = floor(_179);
    _181 = frac(_179);
    _185 = frac(sin(dot(float2(13.0f, _180), float2(127.1f, 311.7f))) * 437.545f);
    _200 = ((((((_181 * _181) * (3.0f - (_181 * 2.0f))) * (frac(sin(dot(float2(13.0f, (_180 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _185)) + _185) * 0.37f) + _42) * 0.9f;
    _201 = floor(_200);
    _202 = frac(_200);
    _206 = frac(sin(dot(float2(31.0f, _201), float2(127.1f, 311.7f))) * 437.545f);
    _209 = _bufferSizeAndInvSize.y * TEXCOORD.y;
    _211 = floor(_209 * 0.5f);
    _213 = floor(_42 * 0.3f);
    _215 = floor(_42 * -0.7f);
    // [sem: expr_sat]
    _224 = saturate((frac(sin(dot(float2((_211 * 1.73f), (_213 + 71.0f)), float2(127.1f, 311.7f))) * 437.545f) + -0.9f) * 9.999998f);
    // [sem: expr_sat]
    _233 = saturate((frac(sin(dot(float2((_211 * 2.41f), (_215 + 137.0f)), float2(127.1f, 311.7f))) * 437.545f) + -0.87f) * 9.999998f);
    _234 = _233 * _224;
    _235 = _42 * 20.0f;
    _236 = _209 * 2.0f;
    _237 = dot(float2(_235, _236), float2(0.36602542f, 0.36602542f));
    _239 = floor(_237 + _235);
    _241 = floor(_237 + _236);
    _242 = dot(float2(_239, _241), float2(0.21132487f, 0.21132487f));
    _244 = _242 + (_235 - _239);
    _246 = (_236 - _241) + _242;
    _247 = (_244 > _246);
    _248 = select(_247, 1.0f, 0.0f);
    _249 = select(_247, 0.0f, 1.0f);
    _250 = _244 + -0.57735026f;
    _251 = _246 + -0.57735026f;
    _253 = (_244 + 0.21132487f) - _248;
    _255 = (_246 + 0.21132487f) - _249;
    _259 = _239 - (floor(_239 * 0.0034602077f) * 289.0f);
    _263 = _241 - (floor(_241 * 0.0034602077f) * 289.0f);
    _264 = _263 + _249;
    _265 = _263 + 1.0f;
    _268 = ((_263 * 34.0f) + 1.0f) * _263;
    _271 = ((_264 * 34.0f) + 1.0f) * _264;
    _274 = ((_265 * 34.0f) + 1.0f) * _265;
    _279 = (_268 - (floor(_268 * 0.0034602077f) * 289.0f)) + _259;
    _285 = ((_248 + _259) - (floor(_271 * 0.0034602077f) * 289.0f)) + _271;
    _291 = ((_259 + 1.0f) - (floor(_274 * 0.0034602077f) * 289.0f)) + _274;
    _294 = ((_279 * 34.0f) + 1.0f) * _279;
    _297 = ((_285 * 34.0f) + 1.0f) * _285;
    _300 = ((_291 * 34.0f) + 1.0f) * _291;
    _303 = max((0.5f - dot(float2(_244, _246), float2(_244, _246))), 0.0f);
    _306 = max((0.5f - dot(float2(_253, _255), float2(_253, _255))), 0.0f);
    _309 = max((0.5f - dot(float2(_250, _251), float2(_250, _251))), 0.0f);
    _310 = _303 * _303;
    _311 = _306 * _306;
    _312 = _309 * _309;
    _319 = frac((_294 - (floor(_294 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _326 = frac((_297 - (floor(_297 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _333 = frac((_300 - (floor(_300 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _334 = _319 + -1.0f;
    _335 = _326 + -1.0f;
    _336 = _333 + -1.0f;
    _338 = abs(_334) + -0.5f;
    _340 = abs(_335) + -0.5f;
    _342 = abs(_336) + -0.5f;
    _345 = _334 - floor(_319 + -0.5f);
    _348 = _335 - floor(_326 + -0.5f);
    _351 = _336 - floor(_333 + -0.5f);
    _354 = WaveReadLaneFirst(_materialIndex);
    _362 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_354 < (uint)170000), _354, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._smallNoiseAmplitude);
    _365 = WaveReadLaneFirst(_materialIndex);
    _373 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_365 < (uint)170000), _365, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._smallNoiseAmplitude);
    _376 = _bufferSizeAndInvSize.y * 0.018f;
    _378 = floor(_376 * TEXCOORD.y);
    _387 = floor((_42 * 0.7f) * ((frac(sin(dot(float2(_378, 11.0f), float2(127.1f, 311.7f))) * 437.545f) * 3.9f) + 0.1f));
    _390 = WaveReadLaneFirst(_materialIndex);
    _398 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_390 < (uint)170000), _390, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._randomJitterThreshold);
    _404 = floor(frac(_time.x) * 30.0f) * 0.24423668f;
    _566 = frac(sin(dot(float2(((floor(_bufferSizeAndInvSize.x * TEXCOORD.x) / _bufferSizeAndInvSize.x) + _404), ((floor(_209) / _bufferSizeAndInvSize.y) + _404)), float2(127.1f, 311.7f))) * 437.545f);
    _567 = select((frac(sin(dot(float2(_378, (_387 + 17.0f)), float2(127.1f, 311.7f))) * 437.545f) < _398), 0.0f, ((((frac(sin(dot(float2(_378, (_387 + 43.0f)), float2(127.1f, 311.7f))) * 437.545f) * 0.75f) + 0.25f) * ((frac(sin(dot(float2(_378, (_387 + 59.0f)), float2(127.1f, 311.7f))) * 437.545f) * 2.0f) + -1.0f)) * select((((frac(sin(dot(float2(_378, (_387 + 29.0f)), float2(127.1f, 311.7f))) * 437.545f) * 0.8f) + 0.2f) < frac(((_time.x * 0.01f) + TEXCOORD.y) * _376)), 0.0f, 1.0f)));
    _568 = select((_373 < 0.001f), 0.0f, (((((((frac(sin(dot(float2((_211 * 3.17f), ((_213 + 211.0f) + (_215 * 0.5f))), float2(127.1f, 311.7f))) * 437.545f) * 5.0f) + 0.5f) * saturate(((_234 * _234) * (12.0f - (_224 * 8.0f))) * (3.0f - (_233 * 2.0f)))) + 1.0f) * _362) * ((dot(float3(((_310 * _310) * (1.7928429f - (((_345 * _345) + (_338 * _338)) * 0.85373473f))), ((_311 * _311) * (1.7928429f - (((_348 * _348) + (_340 * _340)) * 0.85373473f))), ((_312 * _312) * (1.7928429f - (((_351 * _351) + (_342 * _342)) * 0.85373473f)))), float3(((_345 * _244) + (_338 * _246)), ((_348 * _253) + (_340 * _255)), ((_351 * _250) + (_342 * _251)))) * 130.0f) + -0.5f)) * ((((((_202 * _202) * (3.0f - (_202 * 2.0f))) * (frac(sin(dot(float2(31.0f, (_201 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _206)) + _206) * 0.9f) + 0.35f)));
    _569 = (max(0.0f, ((dot(float3(((_137 * _137) * (1.7928429f - (((_172 * _172) + (_165 * _165)) * 0.85373473f))), ((_138 * _138) * (1.7928429f - (((_175 * _175) + (_167 * _167)) * 0.85373473f))), ((_139 * _139) * (1.7928429f - (((_178 * _178) + (_169 * _169)) * 0.85373473f)))), float3(((_172 * _71) + (_165 * _73)), ((_175 * _80) + (_167 * _82)), ((_178 * _77) + (_169 * _78)))) * 130.0f) - _53)) * (1.0f / max(0.0001f, (1.0f - _53))));
  } else {
    _566 = 1.0f;
    _567 = 0.0f;
    _568 = 0.0f;
    _569 = 0.0f;
  }
  _570 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _583 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _570, 0)))).x) & 127)))) + 0.5f);
  } else {
    _583 = _566;
  }
  _586 = (_localToneMappingParams.w > 0.0f);
  if (_586) {
    _592 = _exposure0.x * _userImageAdjust.z;
    _611 = exp2(_powerParams.x * log2(max(0.0f, (((_592 * max(0.0f, (((_568 * -0.62179f) - (_567 * 0.08326f)) + (_569 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _627 = exp2(log2(max(0.0f, (((_slopeParams.y * _592) * max(0.0f, (((_568 * 1.1408f) - (_567 * 0.01055f)) - (_569 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _643 = exp2(log2(max(0.0f, (((_slopeParams.z * _592) * max(0.0f, (((_567 * 1.15297f) - (_568 * 0.12897f)) - (_569 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _644 = dot(float3(_611, _627, _643), float3(0.212671f, 0.71516f, 0.072169f));
    _648 = ((_611 - _644) * _powerParams.w) + _644;
    _651 = ((_627 - _644) * _powerParams.w) + _644;
    _654 = ((_643 - _644) * _powerParams.w) + _644;
    _661 = min(max(log2(mad(_654, 0.079223745f, mad(_651, 0.0784336f, (_648 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _668 = min(max(log2(mad(_654, 0.07916613f, mad(_651, 0.87846863f, (_648 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _675 = min(max(log2(mad(_654, 0.879143f, mad(_651, 0.0784336f, (_648 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _676 = _661 * 0.060606062f;
    _677 = _668 * 0.060606062f;
    _678 = _675 * 0.060606062f;
    _679 = _676 * _676;
    _680 = _677 * _677;
    _681 = _678 * _678;
    _697 = min(0.0f, (-0.0f - (((_661 * 0.0072181816f) + ((_679 * 0.4298f) + (((_679 * _679) * ((31.96f - (_661 * 2.4327273f)) + (_679 * 15.5f))) - ((_661 * 0.41624245f) * _679)))) + -0.00232f)));
    _713 = min(0.0f, (-0.0f - (((_668 * 0.0072181816f) + ((_680 * 0.4298f) + (((_680 * _680) * ((31.96f - (_668 * 2.4327273f)) + (_680 * 15.5f))) - ((_668 * 0.41624245f) * _680)))) + -0.00232f)));
    _729 = min(0.0f, (-0.0f - (((_675 * 0.0072181816f) + ((_681 * 0.4298f) + (((_681 * _681) * ((31.96f - (_675 * 2.4327273f)) + (_681 * 15.5f))) - ((_675 * 0.41624245f) * _681)))) + -0.00232f)));
    _730 = -0.0f - _697;
    _731 = -0.0f - _713;
    _732 = -0.0f - _729;
    _733 = dot(float3(_730, _731, _732), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _750 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _751 = -0.79999995f / _750;
      _752 = -1.2f / _750;
      _753 = 0.20000005f / _750;
      _756 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _759 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _763 = (_751 + 1.4f) + (_759 * (-0.39999998f - _751));
      _767 = (_752 + 1.6f) + (_759 * (-0.6f - _752));
      _771 = (_753 + 0.9f) + (_759 * (0.5f - _753));
      _788 = (lerp(_771, 1.4f, _756));  // [sem: blended]
      _789 = (lerp(_763, 1.0f, _756));  // [sem: blended]
      _790 = (lerp(_767, 1.2f, _756));  // [sem: blended]
    } else {
      _788 = 1.4f;  // [sem: blended]
      _789 = 1.0f;  // [sem: blended]
      _790 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _791 = 1.0f - _790;
    _803 = ((exp2(log2(((saturate((_697 * _697) * _730) * _791) + _790) * _730) * _789) - _733) * _788) + _733;
    _815 = ((exp2(log2(((saturate((_713 * _713) * _731) * _791) + _790) * _731) * _789) - _733) * _788) + _733;
    _827 = ((exp2(log2(((saturate((_729 * _729) * _732) * _791) + _790) * _732) * _789) - _733) * _788) + _733;
    _834 = saturate(exp2(log2(mad(_827, -0.09902974f, mad(_815, -0.09802088f, (_803 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _841 = saturate(exp2(log2(mad(_827, -0.098961174f, mad(_815, 1.1519032f, (_803 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _848 = saturate(exp2(log2(mad(_827, 1.1510737f, mad(_815, -0.09804345f, (_803 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _854 = 1.0f - abs(_etcParams.w);
      _855 = saturate(_etcParams.w);  // [sem: expr_sat]
      _857 = (_854 * _834) + _855;
      _859 = (_854 * _841) + _855;
      _861 = (_854 * _848) + _855;
      if (_colorGradingParams.w > 0.0f) {
        _866 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _883 = (((max(0.0f, (1.0f - _861)) - _861) * _866) + _861);
        _884 = (((max(0.0f, (1.0f - _859)) - _859) * _866) + _859);
        _885 = (((max(0.0f, (1.0f - _857)) - _857) * _866) + _857);
      } else {
        _883 = _861;
        _884 = _859;
        _885 = _857;
      }
      _887 = _userImageAdjust.y + 1.0f;
      _889 = _userImageAdjust.x + 0.5f;
      _892 = ((_885 + -0.5f) * _887) + _889;
      _895 = ((_884 + -0.5f) * _887) + _889;
      _898 = ((_883 + -0.5f) * _887) + _889;
      _904 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _939 = exp2(log2(saturate(mad(_colorBlind2.z, _898, mad(_colorBlind2.y, _895, (_colorBlind2.x * _892))))) * _904);
      _940 = exp2(log2(saturate(mad(_colorBlind1.z, _898, mad(_colorBlind1.y, _895, (_colorBlind1.x * _892))))) * _904);
      _941 = exp2(log2(saturate(mad(_colorBlind0.z, _898, mad(_colorBlind0.y, _895, (_colorBlind0.x * _892))))) * _904);
    } else {
      _939 = _848;
      _940 = _841;
      _941 = _834;
    }
  } else {
    _939 = _567;
    _940 = _568;
    _941 = _569;
  }
  if (_etcParams.y > 1.0f) {
    _946 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _949 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _955 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_946, _949), float2(_946, _949))));  // [sem: expr_sat]
    _960 = (_955 * _939);
    _961 = (_955 * _940);
    _962 = (_955 * _941);
  } else {
    _960 = _939;
    _961 = _940;
    _962 = _941;
  }
  if (_586 && (_etcParams.z > 0.0f)) {
    _992 = select((_961 <= 0.0031308f), (_961 * 12.92f), (((pow(_961, 0.41666666f)) * 1.055f) + -0.055f));
    _993 = select((_962 <= 0.0031308f), (_962 * 12.92f), (((pow(_962, 0.41666666f)) * 1.055f) + -0.055f));
    _994 = select((_960 <= 0.0031308f), (_960 * 12.92f), (((pow(_960, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _992 = _961;
    _993 = _962;
    _994 = _960;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _997 = (float)((uint)((uint)(_570)));
    if (!(_997 < _viewDir.w)) {
      if (!(!(_997 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1008 = 0.0f;
        _1009 = 0.0f;
        _1010 = 0.0f;
      } else {
        _1008 = _993;
        _1009 = _992;
        _1010 = _994;
      }
    } else {
      _1008 = 0.0f;
      _1009 = 0.0f;
      _1010 = 0.0f;
    }
  } else {
    _1008 = _993;
    _1009 = _992;
    _1010 = _994;
  }
  _1014 = exp2(log2(_1008 * 0.0001f) * 0.15930176f);
  _1018 = exp2(log2(_1009 * 0.0001f) * 0.15930176f);
  _1022 = exp2(log2(_1010 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1014 * 18.6875f) + 1.0f)) * ((_1014 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1018 * 18.6875f) + 1.0f)) * ((_1018 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1022 * 18.6875f) + 1.0f)) * ((_1022 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _583;
  return SV_Target;
}
