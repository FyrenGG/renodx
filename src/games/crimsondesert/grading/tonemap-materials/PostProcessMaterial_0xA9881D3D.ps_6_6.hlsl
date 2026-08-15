struct PostProcessChromaticRadialBlurStruct {
  float _ratio;
  float _start;
  float _offsetR;
  float _offsetG;
  float _offsetB;
  float _rangeR;
  float _rangeG;
  float _rangeB;
  float _centerX;
  float _centerY;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time;
  float4 _timeNoScale;
  uint4 _frameNumber;
  float4 _screenSizeAndInvSize;
  float4 _bufferSizeAndInvSize;
  float4 _hiZUVScaleAndInvScale;
  float4 _resolutionScale;
  float4 _temporalReprojectionParams;
  float4 _viewPos;
  float4 _viewDir;
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
  float4 _temporalAAJitter;
  float4 _temporalAAJitterParams;
  float4 _frustumPlanes[6];
  float4 _frustumPlanesPrev[6];
  float4 _frustumCornerDirs[4];
  float4 _screenPercentage;
  float4 _nearFarProj;
  float4 _renderingOriginPos;
  float4 _renderingOriginPosPrev;
  float4 _lodMaskRenderRate;
  float4 _terrainNormalParams;
  int4 _hiZMapInfo;
  int4 _hiZMapInfoCurrent;
  float4 _treeParams;
  uint4 _clusterSize;
  uint4 _globalLightParams;
  float4 _bevelParams;
  float4 _variableRateShadingParams;
  float4 _cavityParams;
  float4 _customRenderPassSizeInvSize;
  uint4 _impostorParams;
  float4 _clusterDecalSizeAndInvSize;
  uint4 _globalWindParams;
  float4 _windFluidVolumeParams;
  float4 _windFluidTextureParams;
  float4 _raytracingAccelerationStructureOrigin;
  float4 _debugBaseColor;
  float4 _debugNormal;
  float4 _debugMaterial;
  float4 _debugMultiplier;
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
  float4 _debugCursorWorldPos;
  uint4 _debugRenderToggle01;
  uint4 _debugTreeShapeVariation;
  float4 _positionBasedDynamicsParameter;
  float _effectiveMetallicForVelvet;
  float _debugCharacterSnowRate;
  uint _systemRandomSeed;
  uint _skinnedMeshDebugFlag;
  float4 _viewPosShifted;
  float4 _viewPosShiftedPrev;
  float4 _viewTileRelativePos;
  float4 _viewTileRelativePosPrev;
  int2 _viewTileIndex;
  int2 _viewTileIndexPrev;
  float4 _worldVolume;
  float3 _diffViewPosAccurate;
  uint _isPhotosensitiveMode_isAllolwBlood;
  float _earthRadius;
  float3 _sceneConstantDummy;
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

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _headPosition : packoffset(c002.x);
  float3 _targetFocusPosition : packoffset(c003.x);
  float _hpPercentage : packoffset(c003.w);
  uint _skinnedMeshNoiseTexture : packoffset(c004.x);
  float _highLightForVision : packoffset(c004.y);
  float _highLightForVisionRemoteCatch : packoffset(c004.z);
  float _characterHighlight : packoffset(c004.w);
  uint _specialModeType : packoffset(c005.x);
  float _visionRadius : packoffset(c005.y);
  float _interactionTime : packoffset(c005.z);
  float3 _questGuideWorldPosition : packoffset(c006.x);
  float3 _detectModeUp : packoffset(c007.x);
  float3 _detectModeLook : packoffset(c008.x);
  float3 _detectModePosition : packoffset(c009.x);
  float2 _detectModeLightProfileOffset : packoffset(c010.x);
  uint _detectModeLightProfileIndex : packoffset(c010.z);
  float _detectModeAngle : packoffset(c010.w);
  float _detectModeRadius : packoffset(c011.x);
  uint _useHatMode : packoffset(c011.y);
  uint4 _oreVeinBitMask : packoffset(c012.x);
  uint _oreVeinDissolveIndex : packoffset(c013.x);
  float _oreVeinDissolveRatio : packoffset(c013.y);
  float _hideStateRatio : packoffset(c013.z);
  float3 _hazardAlertPosition : packoffset(c014.x);
  float _wantedRegionRatio : packoffset(c014.w);
  float _wantedRegionOpacity : packoffset(c015.x);
  float _wantedRegionRadius : packoffset(c015.y);
  float3 _wantedRegionPosition : packoffset(c016.x);
  float _elementActivateDuration : packoffset(c016.w);
  float _temperatureWarning : packoffset(c017.x);
  float _electrocutionWarning : packoffset(c017.y);
  float _fleeCount : packoffset(c017.z);
  float _followLearning : packoffset(c017.w);
  float4 _enemyAlert1 : packoffset(c018.x);
  float4 _enemyAlert2 : packoffset(c019.x);
  float _pullingEffectAttractionOffRadius : packoffset(c020.x);
  float _pullingEffectPushFromCharacter : packoffset(c020.y);
  float _pullingEffectPushScale : packoffset(c020.z);
  float _pullingEffectAttractionScale : packoffset(c020.w);
  float _pullingEffectExternalScale : packoffset(c021.x);
  float _pullingEffectVectorFieldScale : packoffset(c021.y);
  float _pullingEffectHeightOffset : packoffset(c021.z);
  float _housingPreviewState : packoffset(c021.w);
  float _customEffectOpacity : packoffset(c022.x);
  uint _renderPassInteraction : packoffset(c022.y);
  uint _renderPassSelfPlayer : packoffset(c022.z);
  uint _renderPassEnemy : packoffset(c022.w);
  uint _renderPassTargetFocus : packoffset(c023.x);
  uint _renderPassLearning : packoffset(c023.y);
  uint _renderPassTest : packoffset(c023.z);
  uint _enableChromaticAberration : packoffset(c023.w);
  uint _renderPassDetectObjective : packoffset(c024.x);
  uint _renderPassDetectItem : packoffset(c024.y);
  uint _renderPassDetectGimmick : packoffset(c024.z);
  uint _renderPassDetectRemoteCatch : packoffset(c024.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c025.x);
  uint _renderPassDetectLift : packoffset(c025.y);
  uint _renderPassKnowledgeNPC : packoffset(c025.z);
  uint _renderPassKnowledgeGain : packoffset(c025.w);
  uint _renderPassAnamorphicMural : packoffset(c026.x);
  uint _renderPassMemoryBackground : packoffset(c026.y);
  uint _renderPassMemory : packoffset(c026.z);
  uint _renderPassEnemyBoss : packoffset(c026.w);
  uint _renderPassAimHighlight : packoffset(c027.x);
  float4 _aimHighlightPosition : packoffset(c028.x);
  uint _renderPassNPCGhost : packoffset(c029.x);
  uint _renderPassHousing : packoffset(c029.y);
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessChromaticRadialBlur {
  PostProcessChromaticRadialBlurStruct BindlessParameters_PostProcessChromaticRadialBlur;
};

typedef BindlessParameters_PostProcessChromaticRadialBlur BindlessParameters_PostProcessChromaticRadialBlur_t;
ConstantBuffer<BindlessParameters_PostProcessChromaticRadialBlur_t> BindlessParameters_PostProcessChromaticRadialBlur[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _19;
  float _27;
  int _28;
  float _36;
  int _37;
  float _45;
  int _46;
  float _54;
  int _55;
  float _63;
  int _64;
  float _72;
  int _73;
  float _81;
  int _82;
  float _90;
  int _91;
  float _99;
  int _100;
  float _108;
  float _109;
  float _110;
  float _127;
  float _129;
  float _130;
  float _131;
  int _132;
  float _241;
  float _446;
  float _447;
  float _448;
  float _541;
  float _542;
  float _543;
  float _597;
  float _598;
  float _599;
  float _618;
  float _619;
  float _620;
  float _650;
  float _651;
  float _652;
  float _666;
  float _667;
  float _668;
  float _135;
  float _137;
  float _140;
  float _143;
  float _146;
  float _148;
  float _176;
  float _186;
  float _191;
  float _201;
  float _206;
  float _216;
  int _217;
  uint _228;
  bool _244;
  float _250;
  float _299;
  float _300;
  float _301;
  float _303;
  float _310;
  float _311;
  float _312;
  float _331;
  float _332;
  float _333;
  float _334;
  float _335;
  float _336;
  float _337;
  float _338;
  float _339;
  float _385;
  float _386;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _408;
  float _409;
  float _410;
  float _411;
  float _417;
  float _420;
  float _427;
  float _428;
  float _429;
  float _458;
  float _483;
  float _484;
  float _485;
  float _504;
  float _505;
  float _506;
  float _512;
  float _516;
  float _517;
  float _518;
  float _519;
  float _524;
  float _549;
  float _553;
  float _554;
  float _555;
  float _556;
  float _586;
  float _608;
  float _609;
  float _613;
  float _657;
  float _678;
  float _679;
  float _680;
  int __loop_jump_target = -1;
  _19 = WaveReadLaneFirst(_materialIndex);
  _27 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_19 < (uint)170000), _19, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._ratio);
  _28 = WaveReadLaneFirst(_materialIndex);
  _36 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_28 < (uint)170000), _28, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._start);
  _37 = WaveReadLaneFirst(_materialIndex);
  _45 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_37 < (uint)170000), _37, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeR);
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_46 < (uint)170000), _46, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeG);
  _55 = WaveReadLaneFirst(_materialIndex);
  _63 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeB);
  _64 = WaveReadLaneFirst(_materialIndex);
  _72 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_64 < (uint)170000), _64, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetR);
  _73 = WaveReadLaneFirst(_materialIndex);
  _81 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetG);
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetB);
  _91 = WaveReadLaneFirst(_materialIndex);
  _99 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerX);
  _100 = WaveReadLaneFirst(_materialIndex);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerY);
  _109 = TEXCOORD.x - _99;
  _110 = TEXCOORD.y - _108;
  _127 = (((float)((uint)((uint)(_enableChromaticAberration)))) * _27) * saturate(((sqrt((_110 * _110) + (_109 * _109)) * 2.0f) - (_36 * 1.4142135f)) / max(0.001f, ((1.0f - _36) * 1.4142135f)));
  _129 = 0.0f;
  _130 = 0.0f;
  _131 = 0.0f;
  _132 = 0;
  while(true) {
    _135 = ((float)((int)(_132))) * 0.25f;
    _137 = (1.0f - _72) + (_135 * _45);
    _140 = (1.0f - _81) + (_135 * _54);
    _143 = (1.0f - _90) + (_135 * _63);
    _146 = _99 - TEXCOORD.x;
    _148 = _108 - TEXCOORD.y;
    _176 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_127 * ((_109 * _137) + _146)) + TEXCOORD.x), ((_127 * ((_110 * _137) + _148)) + TEXCOORD.y))))).x) * 0.012683313f);
    _186 = (exp2(log2(max(0.0f, (_176 + -0.8359375f)) / (18.851562f - (_176 * 18.6875f))) * 6.277395f) * 10000.0f) + _129;
    _191 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_127 * ((_109 * _140) + _146)) + TEXCOORD.x), ((_127 * ((_110 * _140) + _148)) + TEXCOORD.y))))).y) * 0.012683313f);
    _201 = (exp2(log2(max(0.0f, (_191 + -0.8359375f)) / (18.851562f - (_191 * 18.6875f))) * 6.277395f) * 10000.0f) + _130;
    _206 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_127 * ((_109 * _143) + _146)) + TEXCOORD.x), ((_127 * ((_110 * _143) + _148)) + TEXCOORD.y))))).z) * 0.012683313f);
    _216 = (exp2(log2(max(0.0f, (_206 + -0.8359375f)) / (18.851562f - (_206 * 18.6875f))) * 6.277395f) * 10000.0f) + _131;
    _217 = (int)(_132) + (int)(1);
    if (!(_217 == 5)) {
      _129 = _186;
      _130 = _201;
      _131 = _216;
      _132 = _217;
      continue;
    }
    _228 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _241 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _228, 0)))).x) & 127)))) + 0.5f);
    } else {
      _241 = _postProcessParams.x;
    }
    _244 = (_localToneMappingParams.w > 0.0f);
    if (_244) {
      _250 = _userImageAdjust.z * _exposure0.x;
      _299 = exp2(log2(max(0.0f, (((_250 * max(0.0f, (((_186 * 0.34101f) - (_201 * 0.124358f)) - (_216 * 0.016652001f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
      _300 = exp2(log2(max(0.0f, (((max(0.0f, (((_201 * 0.22816001f) - (_186 * 0.026052002f)) - (_216 * 0.00211f))) * _250) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
      _301 = exp2(log2(max(0.0f, (((max(0.0f, (((_186 * -0.0048f) - (_201 * 0.025794f)) + (_216 * 0.230594f))) * _250) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
      _303 = dot(float3(_299, _300, _301), float3(0.212671f, 0.71516f, 0.072169f));
      _310 = ((_299 - _303) * _powerParams.w) + _303;
      _311 = ((_300 - _303) * _powerParams.w) + _303;
      _312 = ((_301 - _303) * _powerParams.w) + _303;
      _331 = min(max(log2(mad(_312, 0.079223745f, mad(_311, 0.0784336f, (_310 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _332 = min(max(log2(mad(_312, 0.07916613f, mad(_311, 0.87846863f, (_310 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _333 = min(max(log2(mad(_312, 0.879143f, mad(_311, 0.0784336f, (_310 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _334 = _331 * 0.060606062f;
      _335 = _332 * 0.060606062f;
      _336 = _333 * 0.060606062f;
      _337 = _334 * _334;
      _338 = _335 * _335;
      _339 = _336 * _336;
      _385 = min(0.0f, (-0.0f - (((_331 * 0.0072181816f) + ((_337 * 0.4298f) + (((_337 * _337) * ((31.96f - (_331 * 2.4327273f)) + (_337 * 15.5f))) - ((_331 * 0.41624245f) * _337)))) + -0.00232f)));
      _386 = min(0.0f, (-0.0f - (((_332 * 0.0072181816f) + ((_338 * 0.4298f) + (((_338 * _338) * ((31.96f - (_332 * 2.4327273f)) + (_338 * 15.5f))) - ((_332 * 0.41624245f) * _338)))) + -0.00232f)));
      _387 = min(0.0f, (-0.0f - (((_333 * 0.0072181816f) + ((_339 * 0.4298f) + (((_339 * _339) * ((31.96f - (_333 * 2.4327273f)) + (_339 * 15.5f))) - ((_333 * 0.41624245f) * _339)))) + -0.00232f)));
      _388 = -0.0f - _385;
      _389 = -0.0f - _386;
      _390 = -0.0f - _387;
      _391 = dot(float3(_388, _389, _390), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _408 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _409 = -0.79999995f / _408;
        _410 = -1.2f / _408;
        _411 = 0.20000005f / _408;
        _417 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _420 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _427 = (_409 + 1.4f) + (_420 * (-0.39999998f - _409));
        _428 = (_410 + 1.6f) + (_420 * (-0.6f - _410));
        _429 = (_411 + 0.9f) + (_420 * (0.5f - _411));
        _446 = (lerp(_428, 1.2f, _417));  // [sem: blended]
        _447 = (lerp(_427, 1.0f, _417));  // [sem: blended]
        _448 = (lerp(_429, 1.4f, _417));  // [sem: blended]
      } else {
        _446 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _447 = 1.0f;  // [sem: blended]
        _448 = 1.4f;  // [sem: blended]
      }
      _458 = 1.0f - _446;
      _483 = ((exp2(log2(((saturate((_385 * _385) * _388) * _458) + _446) * _388) * _447) - _391) * _448) + _391;
      _484 = ((exp2(log2(((saturate((_386 * _386) * _389) * _458) + _446) * _389) * _447) - _391) * _448) + _391;
      _485 = ((exp2(log2(((saturate((_387 * _387) * _390) * _458) + _446) * _390) * _447) - _391) * _448) + _391;
      _504 = saturate(exp2(log2(mad(_485, -0.09902974f, mad(_484, -0.09802088f, (_483 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _505 = saturate(exp2(log2(mad(_485, -0.098961174f, mad(_484, 1.1519032f, (_483 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _506 = saturate(exp2(log2(mad(_485, 1.1510737f, mad(_484, -0.09804345f, (_483 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _512 = 1.0f - abs(_etcParams.w);
        _516 = saturate(_etcParams.w);  // [sem: expr_sat]
        _517 = (_512 * _504) + _516;
        _518 = (_512 * _505) + _516;
        _519 = (_512 * _506) + _516;
        if (_colorGradingParams.w > 0.0f) {
          _524 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _541 = (((max(0.0f, (1.0f - _517)) - _517) * _524) + _517);
          _542 = (((max(0.0f, (1.0f - _518)) - _518) * _524) + _518);
          _543 = (((max(0.0f, (1.0f - _519)) - _519) * _524) + _519);
        } else {
          _541 = _517;
          _542 = _518;
          _543 = _519;
        }
        _549 = _userImageAdjust.y + 1.0f;
        _553 = _userImageAdjust.x + 0.5f;
        _554 = ((_541 + -0.5f) * _549) + _553;
        _555 = ((_542 + -0.5f) * _549) + _553;
        _556 = ((_543 + -0.5f) * _549) + _553;
        _586 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _597 = exp2(log2(saturate(mad(_colorBlind0.z, _556, mad(_colorBlind0.y, _555, (_colorBlind0.x * _554))))) * _586);
        _598 = exp2(log2(saturate(mad(_colorBlind1.z, _556, mad(_colorBlind1.y, _555, (_colorBlind1.x * _554))))) * _586);
        _599 = exp2(log2(saturate(mad(_colorBlind2.z, _556, mad(_colorBlind2.y, _555, (_colorBlind2.x * _554))))) * _586);
      } else {
        _597 = _504;
        _598 = _505;
        _599 = _506;
      }
    } else {
      _597 = (_186 * 0.2f);
      _598 = (_201 * 0.2f);
      _599 = (_216 * 0.2f);
    }
    if (_etcParams.y > 1.0f) {
      _608 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _609 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _613 = saturate(1.0f - (dot(float2(_608, _609), float2(_608, _609)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _618 = (_613 * _597);
      _619 = (_613 * _598);
      _620 = (_613 * _599);
    } else {
      _618 = _597;
      _619 = _598;
      _620 = _599;
    }
    if (_244 && (_etcParams.z > 0.0f)) {
      _650 = select((_618 <= 0.0031308f), (_618 * 12.92f), (((pow(_618, 0.41666666f)) * 1.055f) + -0.055f));
      _651 = select((_619 <= 0.0031308f), (_619 * 12.92f), (((pow(_619, 0.41666666f)) * 1.055f) + -0.055f));
      _652 = select((_620 <= 0.0031308f), (_620 * 12.92f), (((pow(_620, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _650 = _618;
      _651 = _619;
      _652 = _620;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _657 = (float)((uint)((uint)(_228)));
      if (!(_657 < _viewDir.w)) {
        if (!(_657 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _666 = _650;
          _667 = _651;
          _668 = _652;
        } else {
          _666 = 0.0f;
          _667 = 0.0f;
          _668 = 0.0f;
        }
      } else {
        _666 = 0.0f;
        _667 = 0.0f;
        _668 = 0.0f;
      }
    } else {
      _666 = _650;
      _667 = _651;
      _668 = _652;
    }
    _678 = exp2(log2(_666 * 0.0001f) * 0.15930176f);
    _679 = exp2(log2(_667 * 0.0001f) * 0.15930176f);
    _680 = exp2(log2(_668 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_678 * 18.6875f) + 1.0f)) * ((_678 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_679 * 18.6875f) + 1.0f)) * ((_679 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_680 * 18.6875f) + 1.0f)) * ((_680 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _241;
    break;
  }
  return SV_Target;
}
