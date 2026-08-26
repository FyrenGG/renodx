struct PostProcessFlashbackStruct {
  float _blendingRatio;
  float _flickeringIntensity;
  float _contrastRatio;
  float _depthFadingContrast;
  float _depthFadingDistance;
  float _vignetteRatio;
  float _vignetteWidth;
  float _vignetteShape;
  float _lensDirtIntensity;
  float _lensDirtTexScale;
  uint _lensDirtTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

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
  float4 _27;
  float _37;
  float _38;
  float _39;
  float _61;
  float _62;
  float _63;
  float _64;
  float _65;
  float _66;
  int _67;
  float _75;
  float _76;
  float _101;
  float _102;
  float _103;
  float _130;
  float _131;
  float _132;
  float _199;
  float _200;
  float _201;
  float _261;
  float _262;
  float _263;
  float _439;
  float _440;
  float _441;
  float _464;
  float _465;
  float _466;
  float _480;
  float _685;
  float _686;
  float _687;
  float _780;
  float _781;
  float _782;
  float _836;
  float _837;
  float _838;
  float _857;
  float _858;
  float _859;
  float _889;
  float _890;
  float _891;
  float _905;
  float _906;
  float _907;
  float _83;
  float _86;
  float _87;
  float _93;
  int _104;
  float _112;
  bool _114;
  float _119;
  int _133;
  float _141;
  int _145;
  float _153;
  float _154;
  float _170;
  float _174;
  float _180;
  float _191;
  float4 _204;
  float _214;
  float _215;
  float _216;
  float _233;
  int _234;
  float _242;
  float _256;
  int _264;
  float _272;
  float _283;
  float _287;
  float _291;
  float _300;
  float _301;
  float _302;
  float _303;
  float _310;
  float _311;
  float _312;
  float _314;
  float _319;
  float _322;
  float _358;
  float _359;
  float _360;
  float _361;
  float _363;
  float _370;
  float _382;
  int _386;
  float _394;
  int _399;
  int _407;
  float4 _414;
  float _418;
  float _431;
  int _442;
  float _450;
  float _451;
  float _456;
  uint _467;
  bool _483;
  float _489;
  float _538;
  float _539;
  float _540;
  float _542;
  float _549;
  float _550;
  float _551;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _629;
  float _630;
  float _647;
  float _648;
  float _649;
  float _650;
  float _656;
  float _659;
  float _666;
  float _667;
  float _668;
  float _697;
  float _722;
  float _723;
  float _724;
  float _743;
  float _744;
  float _745;
  float _751;
  float _755;
  float _756;
  float _757;
  float _758;
  float _763;
  float _788;
  float _792;
  float _793;
  float _794;
  float _795;
  float _825;
  float _847;
  float _848;
  float _852;
  float _896;
  float _917;
  float _918;
  float _919;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_27.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_27.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _61 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f);
  _62 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f);
  _63 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f);
  _64 = _61 * 10000.0f;
  _65 = _62 * 10000.0f;
  _66 = _63 * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _76 = saturate(_75);  // [sem: _75_sat]
  [branch]
  if (!(_76 < 0.0001f)) {
    _83 = 1.0f / max(0.001f, abs(_exposure0.x));
    _86 = _exposure2.x * _83;
    _87 = _83 * 0.5f;
    [branch]
    if (!(!(_76 >= 0.001f))) {
      _93 = (1.0f - saturate(_86)) * (_76 * 10000.0f);
      _101 = (_61 * (_93 + 10000.0f));
      _102 = (_62 * (_93 + 10000.0f));
      _103 = (_63 * (_93 + 10000.0f));
    } else {
      _101 = _64;
      _102 = _65;
      _103 = _66;
    }
    _104 = WaveReadLaneFirst(_materialIndex);
    _112 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._contrastRatio);
    _114 = (_76 >= 0.001f);
    if (_114 && (!(_112 == 1.0f))) {
      _119 = ((_112 + -1.0f) * _76) + 1.0f;
      _130 = ((_119 * (_101 - _87)) + _87);
      _131 = ((_119 * (_102 - _87)) + _87);
      _132 = ((_119 * (_103 - _87)) + _87);
    } else {
      _130 = _101;
      _131 = _102;
      _132 = _103;
    }
    _133 = WaveReadLaneFirst(_materialIndex);
    _141 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingContrast);
    if (_114 && (_141 < 1.0f)) {
      _145 = WaveReadLaneFirst(_materialIndex);
      _153 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingDistance);
      _154 = max(0.0001f, _153);
      // [sem: expr_sat]
      _170 = saturate((1.0f - saturate(_nearFarProj.x / (max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _154))) / (1.0f - saturate(1.5f / _154)));
      _174 = (_170 * _170) * (3.0f - (_170 * 2.0f));
      _180 = (((1.0f - saturate(_86)) * 0.3f) * (1.0f - _174)) + _174;
      _191 = (1.0f - _141) * _76;
      _199 = ((((_180 * (_130 - _87)) + _87) * _191) + _130);
      _200 = ((((_180 * (_131 - _87)) + _87) * _191) + _131);
      _201 = ((((_180 * (_132 - _87)) + _87) * _191) + _132);
    } else {
      _199 = _130;
      _200 = _131;
      _201 = _132;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _204 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _214 = (pow(_204.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _215 = (pow(_204.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _216 = (pow(_204.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _233 = exp2(log2(max(0.0f, (_216 + -0.8359375f)) / (18.851562f - (_216 * 18.6875f))) * 6.277395f) * 10000.0f;
    _234 = WaveReadLaneFirst(_materialIndex);
    _242 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_234 < (uint)170000), _234, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
    [branch]
    if (!(!(_242 >= 0.001f))) {
      _256 = 1.0f - (((_76 * 6000.0f) * _242) * exp2(log2(max(0.0f, (_214 + -0.8359375f)) / (18.851562f - (_214 * 18.6875f))) * 6.277395f));
      _261 = (_256 * _199);
      _262 = (_256 * _200);
      _263 = (_256 * _201);
    } else {
      _261 = _199;
      _262 = _200;
      _263 = _201;
    }
    _264 = WaveReadLaneFirst(_materialIndex);
    _272 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_264 < (uint)170000), _264, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
    [branch]
    if (!(!(_272 >= 0.0001f))) {
      _283 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
      _287 = (_283 * _283) * (3.0f - (_283 * 2.0f));
      // [sem: invLength]
      _291 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
      // [sem: invLength]
      _300 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
      _301 = _300 * _moonDirection.x;
      _302 = _300 * _moonDirection.y;
      _303 = _300 * _moonDirection.z;
      _310 = (((_291 * _sunDirection.x) - _301) * _287) + _301;
      _311 = (((_291 * _sunDirection.y) - _302) * _287) + _302;
      _312 = (((_291 * _sunDirection.z) - _303) * _287) + _303;
      _314 = rsqrt(dot(float3(_310, _311, _312), float3(_310, _311, _312)));  // [sem: invLength]
      _319 = (TEXCOORD.x * 2.0f) + -1.0f;
      _322 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
      _358 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _322, ((_invViewProjRelative[3].x) * _319));
      _359 = ((mad((_invViewProjRelative[0].y), _322, ((_invViewProjRelative[0].x) * _319)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _358;
      _360 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _322, ((_invViewProjRelative[1].x) * _319))) / _358;
      _361 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _322, ((_invViewProjRelative[2].x) * _319))) / _358;
      _363 = rsqrt(dot(float3(_359, _360, _361), float3(_359, _360, _361)));  // [sem: invLength]
      // [sem: expr_sat]
      _370 = saturate((dot(float3((_363 * _359), (_363 * _360), (_363 * _361)), float3((_310 * _314), (_311 * _314), (_312 * _314))) + -0.5f) * 2.0f);
      _382 = (((_287 * 3.6f) + 0.9f) * _233) * saturate(exp2(log2((_370 * _370) * (3.0f - (_370 * 2.0f))) * 3.0f));
      _386 = WaveReadLaneFirst(_materialIndex);
      _394 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_386 < (uint)170000), _386, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTexScale);
      _399 = WaveReadLaneFirst(_materialIndex);
      _407 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_399 < (uint)170000), _399, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTex);
      _414 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_407 < (uint)65000), _407, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((1.0f / _srcTargetSizeAndInv.y) * TEXCOORD.x) * _srcTargetSizeAndInv.x) * _394), (_394 * TEXCOORD.y)));
      _418 = dot(float3(0.3f, 0.59f, 0.11f), float3(_414.x, _414.y, _414.z));
      _431 = (((_83 * _76) * _272) * (0.096f - (_287 * 0.013000004f))) * (_382 + _233);
      _439 = (((lerp(_418, _414.x, _382)) * _431) + _261);
      _440 = (((lerp(_418, _414.y, _382)) * _431) + _262);
      _441 = (((lerp(_418, _414.z, _382)) * _431) + _263);
    } else {
      _439 = _261;
      _440 = _262;
      _441 = _263;
    }
    _442 = WaveReadLaneFirst(_materialIndex);
    _450 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_442 < (uint)170000), _442, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
    _451 = saturate(_450);  // [sem: _450_sat]
    [branch]
    if (!(!(_451 >= 0.001f))) {
      _456 = ((_76 * 10000.0f) * exp2(log2(max(0.0f, (_215 + -0.8359375f)) / (18.851562f - (_215 * 18.6875f))) * 6.277395f)) * _451;
      _464 = (_439 - (_456 * _439));
      _465 = (_440 - (_456 * _440));
      _466 = (_441 - (_456 * _441));
    } else {
      _464 = _439;
      _465 = _440;
      _466 = _441;
    }
  } else {
    _464 = _64;
    _465 = _65;
    _466 = _66;
  }
  _467 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _480 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _467, 0)))).x) & 127)))) + 0.5f);
  } else {
    _480 = 1.0f;
  }
  _483 = (_localToneMappingParams.w > 0.0f);
  if (_483) {
    _489 = _userImageAdjust.z * _exposure0.x;
    _538 = exp2(log2(max(0.0f, (((_489 * max(0.0f, (((_464 * 1.70505f) - (_465 * 0.62179f)) - (_466 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _539 = exp2(log2(max(0.0f, (((max(0.0f, (((_465 * 1.1408f) - (_464 * 0.13026f)) - (_466 * 0.01055f))) * _489) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _540 = exp2(log2(max(0.0f, (((max(0.0f, (((_464 * -0.024f) - (_465 * 0.12897f)) + (_466 * 1.15297f))) * _489) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _542 = dot(float3(_538, _539, _540), float3(0.212671f, 0.71516f, 0.072169f));
    _549 = ((_538 - _542) * _powerParams.w) + _542;
    _550 = ((_539 - _542) * _powerParams.w) + _542;
    _551 = ((_540 - _542) * _powerParams.w) + _542;
    _570 = min(max(log2(mad(_551, 0.079223745f, mad(_550, 0.0784336f, (_549 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _571 = min(max(log2(mad(_551, 0.07916613f, mad(_550, 0.87846863f, (_549 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _572 = min(max(log2(mad(_551, 0.879143f, mad(_550, 0.0784336f, (_549 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _573 = _570 * 0.060606062f;
    _574 = _571 * 0.060606062f;
    _575 = _572 * 0.060606062f;
    _576 = _573 * _573;
    _577 = _574 * _574;
    _578 = _575 * _575;
    _624 = min(0.0f, (-0.0f - (((_570 * 0.0072181816f) + ((_576 * 0.4298f) + (((_576 * _576) * ((31.96f - (_570 * 2.4327273f)) + (_576 * 15.5f))) - ((_570 * 0.41624245f) * _576)))) + -0.00232f)));
    _625 = min(0.0f, (-0.0f - (((_571 * 0.0072181816f) + ((_577 * 0.4298f) + (((_577 * _577) * ((31.96f - (_571 * 2.4327273f)) + (_577 * 15.5f))) - ((_571 * 0.41624245f) * _577)))) + -0.00232f)));
    _626 = min(0.0f, (-0.0f - (((_572 * 0.0072181816f) + ((_578 * 0.4298f) + (((_578 * _578) * ((31.96f - (_572 * 2.4327273f)) + (_578 * 15.5f))) - ((_572 * 0.41624245f) * _578)))) + -0.00232f)));
    _627 = -0.0f - _624;
    _628 = -0.0f - _625;
    _629 = -0.0f - _626;
    _630 = dot(float3(_627, _628, _629), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _647 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _648 = -0.79999995f / _647;
      _649 = -1.2f / _647;
      _650 = 0.20000005f / _647;
      _656 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _659 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _666 = (_648 + 1.4f) + (_659 * (-0.39999998f - _648));
      _667 = (_649 + 1.6f) + (_659 * (-0.6f - _649));
      _668 = (_650 + 0.9f) + (_659 * (0.5f - _650));
      _685 = (lerp(_667, 1.2f, _656));  // [sem: blended]
      _686 = (lerp(_666, 1.0f, _656));  // [sem: blended]
      _687 = (lerp(_668, 1.4f, _656));  // [sem: blended]
    } else {
      _685 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _686 = 1.0f;  // [sem: blended]
      _687 = 1.4f;  // [sem: blended]
    }
    _697 = 1.0f - _685;
    _722 = ((exp2(log2(((saturate((_624 * _624) * _627) * _697) + _685) * _627) * _686) - _630) * _687) + _630;
    _723 = ((exp2(log2(((saturate((_625 * _625) * _628) * _697) + _685) * _628) * _686) - _630) * _687) + _630;
    _724 = ((exp2(log2(((saturate((_626 * _626) * _629) * _697) + _685) * _629) * _686) - _630) * _687) + _630;
    _743 = saturate(exp2(log2(mad(_724, -0.09902974f, mad(_723, -0.09802088f, (_722 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _744 = saturate(exp2(log2(mad(_724, -0.098961174f, mad(_723, 1.1519032f, (_722 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _745 = saturate(exp2(log2(mad(_724, 1.1510737f, mad(_723, -0.09804345f, (_722 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _751 = 1.0f - abs(_etcParams.w);
      _755 = saturate(_etcParams.w);  // [sem: expr_sat]
      _756 = (_751 * _743) + _755;
      _757 = (_751 * _744) + _755;
      _758 = (_751 * _745) + _755;
      if (_colorGradingParams.w > 0.0f) {
        _763 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _780 = (((max(0.0f, (1.0f - _756)) - _756) * _763) + _756);
        _781 = (((max(0.0f, (1.0f - _757)) - _757) * _763) + _757);
        _782 = (((max(0.0f, (1.0f - _758)) - _758) * _763) + _758);
      } else {
        _780 = _756;
        _781 = _757;
        _782 = _758;
      }
      _788 = _userImageAdjust.y + 1.0f;
      _792 = _userImageAdjust.x + 0.5f;
      _793 = ((_780 + -0.5f) * _788) + _792;
      _794 = ((_781 + -0.5f) * _788) + _792;
      _795 = ((_782 + -0.5f) * _788) + _792;
      _825 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _836 = exp2(log2(saturate(mad(_colorBlind0.z, _795, mad(_colorBlind0.y, _794, (_colorBlind0.x * _793))))) * _825);
      _837 = exp2(log2(saturate(mad(_colorBlind1.z, _795, mad(_colorBlind1.y, _794, (_colorBlind1.x * _793))))) * _825);
      _838 = exp2(log2(saturate(mad(_colorBlind2.z, _795, mad(_colorBlind2.y, _794, (_colorBlind2.x * _793))))) * _825);
    } else {
      _836 = _743;
      _837 = _744;
      _838 = _745;
    }
  } else {
    _836 = _464;
    _837 = _465;
    _838 = _466;
  }
  if (_etcParams.y > 1.0f) {
    _847 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _848 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _852 = saturate(1.0f - (dot(float2(_847, _848), float2(_847, _848)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _857 = (_852 * _836);
    _858 = (_852 * _837);
    _859 = (_852 * _838);
  } else {
    _857 = _836;
    _858 = _837;
    _859 = _838;
  }
  if (_483 && (_etcParams.z > 0.0f)) {
    _889 = select((_857 <= 0.0031308f), (_857 * 12.92f), (((pow(_857, 0.41666666f)) * 1.055f) + -0.055f));
    _890 = select((_858 <= 0.0031308f), (_858 * 12.92f), (((pow(_858, 0.41666666f)) * 1.055f) + -0.055f));
    _891 = select((_859 <= 0.0031308f), (_859 * 12.92f), (((pow(_859, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _889 = _857;
    _890 = _858;
    _891 = _859;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _896 = (float)((uint)((uint)(_467)));
    if (!(_896 < _viewDir.w)) {
      if (!(_896 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _905 = _889;
        _906 = _890;
        _907 = _891;
      } else {
        _905 = 0.0f;
        _906 = 0.0f;
        _907 = 0.0f;
      }
    } else {
      _905 = 0.0f;
      _906 = 0.0f;
      _907 = 0.0f;
    }
  } else {
    _905 = _889;
    _906 = _890;
    _907 = _891;
  }
  _917 = exp2(log2(_905 * 0.0001f) * 0.15930176f);
  _918 = exp2(log2(_906 * 0.0001f) * 0.15930176f);
  _919 = exp2(log2(_907 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_917 * 18.6875f) + 1.0f)) * ((_917 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_918 * 18.6875f) + 1.0f)) * ((_918 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_919 * 18.6875f) + 1.0f)) * ((_919 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _480;
  return SV_Target;
}
