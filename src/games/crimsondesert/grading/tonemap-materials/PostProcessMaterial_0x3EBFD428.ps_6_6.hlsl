Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _17;
  float _23;
  float _26;
  float _29;
  float _37;
  float _45;
  float _53;
  uint _54;
  float _68;
  float _273;
  float _274;
  float _275;
  float _368;
  float _369;
  float _370;
  float _428;
  float _429;
  float _430;
  float _449;
  float _450;
  float _451;
  float _481;
  float _482;
  float _483;
  float _497;
  float _498;
  float _499;
  bool _71;
  float _77;
  float _96;
  float _112;
  float _128;
  float _129;
  float _133;
  float _136;
  float _139;
  float _146;
  float _153;
  float _160;
  float _161;
  float _162;
  float _163;
  float _164;
  float _165;
  float _166;
  float _182;
  float _198;
  float _214;
  float _215;
  float _216;
  float _217;
  float _218;
  float _235;
  float _236;
  float _237;
  float _238;
  float _241;
  float _244;
  float _248;
  float _252;
  float _256;
  float _276;
  float _288;
  float _300;
  float _312;
  float _319;
  float _326;
  float _333;
  float _339;
  float _340;
  float _342;
  float _344;
  float _346;
  float _351;
  float _372;
  float _374;
  float _377;
  float _380;
  float _383;
  float _389;
  float _435;
  float _438;
  float _444;
  float _486;
  float _503;
  float _507;
  float _511;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _17 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _23 = (pow(_17.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _26 = (pow(_17.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _29 = (pow(_17.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _37 = exp2(log2(max(0.0f, (_23 + -0.8359375f)) / (18.851562f - (_23 * 18.6875f))) * 6.277395f);
  _45 = exp2(log2(max(0.0f, (_26 + -0.8359375f)) / (18.851562f - (_26 * 18.6875f))) * 6.277395f);
  _53 = exp2(log2(max(0.0f, (_29 + -0.8359375f)) / (18.851562f - (_29 * 18.6875f))) * 6.277395f);
  _54 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _68 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _54, 0)))).x) & 127)))) + 0.5f);
  } else {
    _68 = 1.0f;
  }
  _71 = (_localToneMappingParams.w > 0.0f);
  if (_71) {
    _77 = _exposure0.x * _userImageAdjust.z;
    _96 = exp2(_powerParams.x * log2(max(0.0f, (((_77 * max(0.0f, (((_37 * 17050.5f) - (_45 * 6217.9f)) - (_53 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))));
    _112 = exp2(log2(max(0.0f, (((_slopeParams.y * _77) * max(0.0f, (((_45 * 11408.0f) - (_37 * 1302.6001f)) - (_53 * 105.5f)))) + _offsetParams.y))) * _powerParams.y);
    _128 = exp2(log2(max(0.0f, (((_slopeParams.z * _77) * max(0.0f, (((_37 * -240.0f) - (_45 * 1289.7f)) + (_53 * 11529.699f)))) + _offsetParams.z))) * _powerParams.z);
    _129 = dot(float3(_96, _112, _128), float3(0.212671f, 0.71516f, 0.072169f));
    _133 = ((_96 - _129) * _powerParams.w) + _129;
    _136 = ((_112 - _129) * _powerParams.w) + _129;
    _139 = ((_128 - _129) * _powerParams.w) + _129;
    _146 = min(max(log2(mad(_139, 0.079223745f, mad(_136, 0.0784336f, (_133 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _153 = min(max(log2(mad(_139, 0.07916613f, mad(_136, 0.87846863f, (_133 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _160 = min(max(log2(mad(_139, 0.879143f, mad(_136, 0.0784336f, (_133 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _161 = _146 * 0.060606062f;
    _162 = _153 * 0.060606062f;
    _163 = _160 * 0.060606062f;
    _164 = _161 * _161;
    _165 = _162 * _162;
    _166 = _163 * _163;
    _182 = min(0.0f, (-0.0f - (((_146 * 0.0072181816f) + ((_164 * 0.4298f) + (((_164 * _164) * ((31.96f - (_146 * 2.4327273f)) + (_164 * 15.5f))) - ((_146 * 0.41624245f) * _164)))) + -0.00232f)));
    _198 = min(0.0f, (-0.0f - (((_153 * 0.0072181816f) + ((_165 * 0.4298f) + (((_165 * _165) * ((31.96f - (_153 * 2.4327273f)) + (_165 * 15.5f))) - ((_153 * 0.41624245f) * _165)))) + -0.00232f)));
    _214 = min(0.0f, (-0.0f - (((_160 * 0.0072181816f) + ((_166 * 0.4298f) + (((_166 * _166) * ((31.96f - (_160 * 2.4327273f)) + (_166 * 15.5f))) - ((_160 * 0.41624245f) * _166)))) + -0.00232f)));
    _215 = -0.0f - _182;
    _216 = -0.0f - _198;
    _217 = -0.0f - _214;
    _218 = dot(float3(_215, _216, _217), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _235 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _236 = -0.79999995f / _235;
      _237 = -1.2f / _235;
      _238 = 0.20000005f / _235;
      _241 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _244 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _248 = (_236 + 1.4f) + (_244 * (-0.39999998f - _236));
      _252 = (_237 + 1.6f) + (_244 * (-0.6f - _237));
      _256 = (_238 + 0.9f) + (_244 * (0.5f - _238));
      _273 = (lerp(_256, 1.4f, _241));  // [sem: blended]
      _274 = (lerp(_248, 1.0f, _241));  // [sem: blended]
      _275 = (lerp(_252, 1.2f, _241));  // [sem: blended]
    } else {
      _273 = 1.4f;  // [sem: blended]
      _274 = 1.0f;  // [sem: blended]
      _275 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _276 = 1.0f - _275;
    _288 = ((exp2(log2(((saturate((_182 * _182) * _215) * _276) + _275) * _215) * _274) - _218) * _273) + _218;
    _300 = ((exp2(log2(((saturate((_198 * _198) * _216) * _276) + _275) * _216) * _274) - _218) * _273) + _218;
    _312 = ((exp2(log2(((saturate((_214 * _214) * _217) * _276) + _275) * _217) * _274) - _218) * _273) + _218;
    _319 = saturate(exp2(log2(mad(_312, -0.09902974f, mad(_300, -0.09802088f, (_288 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _326 = saturate(exp2(log2(mad(_312, -0.098961174f, mad(_300, 1.1519032f, (_288 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _333 = saturate(exp2(log2(mad(_312, 1.1510737f, mad(_300, -0.09804345f, (_288 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _339 = 1.0f - abs(_etcParams.w);
      _340 = saturate(_etcParams.w);  // [sem: expr_sat]
      _342 = (_339 * _319) + _340;
      _344 = (_339 * _326) + _340;
      _346 = (_339 * _333) + _340;
      if (_colorGradingParams.w > 0.0f) {
        _351 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _368 = (((max(0.0f, (1.0f - _346)) - _346) * _351) + _346);
        _369 = (((max(0.0f, (1.0f - _344)) - _344) * _351) + _344);
        _370 = (((max(0.0f, (1.0f - _342)) - _342) * _351) + _342);
      } else {
        _368 = _346;
        _369 = _344;
        _370 = _342;
      }
      _372 = _userImageAdjust.y + 1.0f;
      _374 = _userImageAdjust.x + 0.5f;
      _377 = ((_370 + -0.5f) * _372) + _374;
      _380 = ((_369 + -0.5f) * _372) + _374;
      _383 = ((_368 + -0.5f) * _372) + _374;
      _389 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _428 = exp2(log2(saturate(mad(_colorBlind1.z, _383, mad(_colorBlind1.y, _380, (_colorBlind1.x * _377))))) * _389);
      _429 = exp2(log2(saturate(mad(_colorBlind0.z, _383, mad(_colorBlind0.y, _380, (_colorBlind0.x * _377))))) * _389);
      _430 = exp2(log2(saturate(mad(_colorBlind2.z, _383, mad(_colorBlind2.y, _380, (_colorBlind2.x * _377))))) * _389);
    } else {
      _428 = _326;
      _429 = _319;
      _430 = _333;
    }
  } else {
    _428 = (_45 * 10000.0f);
    _429 = (_37 * 10000.0f);
    _430 = (_53 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _435 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _438 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _444 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_435, _438), float2(_435, _438))));  // [sem: expr_sat]
    _449 = (_444 * _429);
    _450 = (_444 * _428);
    _451 = (_444 * _430);
  } else {
    _449 = _429;
    _450 = _428;
    _451 = _430;
  }
  if (_71 && (_etcParams.z > 0.0f)) {
    _481 = select((_449 <= 0.0031308f), (_449 * 12.92f), (((pow(_449, 0.41666666f)) * 1.055f) + -0.055f));
    _482 = select((_450 <= 0.0031308f), (_450 * 12.92f), (((pow(_450, 0.41666666f)) * 1.055f) + -0.055f));
    _483 = select((_451 <= 0.0031308f), (_451 * 12.92f), (((pow(_451, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _481 = _449;
    _482 = _450;
    _483 = _451;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _486 = (float)((uint)((uint)(_54)));
    if (!(_486 < _viewDir.w)) {
      if (!(!(_486 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _497 = 0.0f;
        _498 = 0.0f;
        _499 = 0.0f;
      } else {
        _497 = _481;
        _498 = _482;
        _499 = _483;
      }
    } else {
      _497 = 0.0f;
      _498 = 0.0f;
      _499 = 0.0f;
    }
  } else {
    _497 = _481;
    _498 = _482;
    _499 = _483;
  }
  _503 = exp2(log2(_497 * 0.0001f) * 0.15930176f);
  _507 = exp2(log2(_498 * 0.0001f) * 0.15930176f);
  _511 = exp2(log2(_499 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_503 * 18.6875f) + 1.0f)) * ((_503 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_507 * 18.6875f) + 1.0f)) * ((_507 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_511 * 18.6875f) + 1.0f)) * ((_511 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _68;
  return SV_Target;
}
