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

struct BindlessParameters_PostProcessChromaticRadialBlur {
  PostProcessChromaticRadialBlurStruct BindlessParameters_PostProcessChromaticRadialBlur;
};


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
  uint _characterMeshEffectType : packoffset(c029.z);
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
  int _17;
  float _25;
  int _28;
  float _36;
  int _39;
  float _47;
  int _50;
  float _58;
  int _61;
  float _69;
  int _72;
  float _80;
  int _83;
  float _91;
  int _94;
  float _102;
  int _105;
  float _113;
  int _116;
  float _124;
  float _125;
  float _126;
  float _143;
  float _145;
  float _146;
  float _147;
  int _148;
  float _225;
  float _430;
  float _431;
  float _432;
  float _525;
  float _526;
  float _527;
  float _585;
  float _586;
  float _587;
  float _606;
  float _607;
  float _608;
  float _638;
  float _639;
  float _640;
  float _654;
  float _655;
  float _656;
  float _150;
  float _153;
  float _156;
  float _159;
  float _160;
  float _161;
  float _174;
  float _187;
  float _200;
  int _201;
  uint _209;
  bool _228;
  float _234;
  float _253;
  float _269;
  float _285;
  float _286;
  float _290;
  float _293;
  float _296;
  float _303;
  float _310;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _339;
  float _355;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _392;
  float _393;
  float _394;
  float _395;
  float _398;
  float _401;
  float _405;
  float _409;
  float _413;
  float _433;
  float _445;
  float _457;
  float _469;
  float _476;
  float _483;
  float _490;
  float _496;
  float _497;
  float _499;
  float _501;
  float _503;
  float _508;
  float _529;
  float _531;
  float _534;
  float _537;
  float _540;
  float _546;
  float _592;
  float _595;
  float _601;
  float _643;
  int __loop_jump_target = -1;
  _17 = WaveReadLaneFirst(_materialIndex);
  _25 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_17 < (uint)170000), _17, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._ratio);
  _28 = WaveReadLaneFirst(_materialIndex);
  _36 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_28 < (uint)170000), _28, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._start);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeR);
  _50 = WaveReadLaneFirst(_materialIndex);
  _58 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_50 < (uint)170000), _50, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeG);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeB);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetR);
  _83 = WaveReadLaneFirst(_materialIndex);
  _91 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetG);
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetB);
  _105 = WaveReadLaneFirst(_materialIndex);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_105 < (uint)170000), _105, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerX);
  _116 = WaveReadLaneFirst(_materialIndex);
  _124 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerY);
  _125 = TEXCOORD.x - _113;
  _126 = TEXCOORD.y - _124;
  _143 = (((float)((uint)((uint)(_enableChromaticAberration)))) * _25) * saturate(((sqrt((_126 * _126) + (_125 * _125)) * 2.0f) - (_36 * 1.4142135f)) / max(0.001f, ((1.0f - _36) * 1.4142135f)));
  _145 = 0.0f;
  _146 = 0.0f;
  _147 = 0.0f;
  _148 = 0;
  while(true) {
    _150 = ((float)((int)(_148))) * 0.25f;
    _153 = (_150 * _47) + (1.0f - _80);
    _156 = (_150 * _58) + (1.0f - _91);
    _159 = (_150 * _69) + (1.0f - _102);
    _160 = _113 - TEXCOORD.x;
    _161 = _124 - TEXCOORD.y;
    _174 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_153 * _125) + _160) * _143) + TEXCOORD.x), ((((_153 * _126) + _161) * _143) + TEXCOORD.y))))).x) + _145;
    _187 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_156 * _125) + _160) * _143) + TEXCOORD.x), ((((_156 * _126) + _161) * _143) + TEXCOORD.y))))).y) + _146;
    _200 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_159 * _125) + _160) * _143) + TEXCOORD.x), ((((_159 * _126) + _161) * _143) + TEXCOORD.y))))).z) + _147;
    _201 = (int)(_148) + (int)(1);
    if (!(_201 == 5)) {
      _145 = _174;
      _146 = _187;
      _147 = _200;
      _148 = _201;
      continue;
    }
    _209 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _225 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _209, 0)))).x) & 127)))) + 0.5f);
    } else {
      _225 = _postProcessParams.x;
    }
    _228 = (_localToneMappingParams.w > 0.0f);
    if (_228) {
      _234 = _exposure0.x * _userImageAdjust.z;
      _253 = exp2(_powerParams.x * log2(max(0.0f, (((_234 * max(0.0f, (((_174 * 0.34101f) - (_187 * 0.124358f)) - (_200 * 0.016652001f)))) * _slopeParams.x) + _offsetParams.x))));
      _269 = exp2(log2(max(0.0f, (((_slopeParams.y * _234) * max(0.0f, (((_187 * 0.22816001f) - (_174 * 0.026052002f)) - (_200 * 0.00211f)))) + _offsetParams.y))) * _powerParams.y);
      _285 = exp2(log2(max(0.0f, (((_slopeParams.z * _234) * max(0.0f, (((_174 * -0.0048f) - (_187 * 0.025794f)) + (_200 * 0.230594f)))) + _offsetParams.z))) * _powerParams.z);
      _286 = dot(float3(_253, _269, _285), float3(0.212671f, 0.71516f, 0.072169f));
      _290 = ((_253 - _286) * _powerParams.w) + _286;
      _293 = ((_269 - _286) * _powerParams.w) + _286;
      _296 = ((_285 - _286) * _powerParams.w) + _286;
      _303 = min(max(log2(mad(_296, 0.079223745f, mad(_293, 0.0784336f, (_290 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _310 = min(max(log2(mad(_296, 0.07916613f, mad(_293, 0.87846863f, (_290 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _317 = min(max(log2(mad(_296, 0.879143f, mad(_293, 0.0784336f, (_290 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _318 = _303 * 0.060606062f;
      _319 = _310 * 0.060606062f;
      _320 = _317 * 0.060606062f;
      _321 = _318 * _318;
      _322 = _319 * _319;
      _323 = _320 * _320;
      _339 = min(0.0f, (-0.0f - (((_303 * 0.0072181816f) + ((_321 * 0.4298f) + (((_321 * _321) * ((31.96f - (_303 * 2.4327273f)) + (_321 * 15.5f))) - ((_303 * 0.41624245f) * _321)))) + -0.00232f)));
      _355 = min(0.0f, (-0.0f - (((_310 * 0.0072181816f) + ((_322 * 0.4298f) + (((_322 * _322) * ((31.96f - (_310 * 2.4327273f)) + (_322 * 15.5f))) - ((_310 * 0.41624245f) * _322)))) + -0.00232f)));
      _371 = min(0.0f, (-0.0f - (((_317 * 0.0072181816f) + ((_323 * 0.4298f) + (((_323 * _323) * ((31.96f - (_317 * 2.4327273f)) + (_323 * 15.5f))) - ((_317 * 0.41624245f) * _323)))) + -0.00232f)));
      _372 = -0.0f - _339;
      _373 = -0.0f - _355;
      _374 = -0.0f - _371;
      _375 = dot(float3(_372, _373, _374), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _392 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _393 = -0.79999995f / _392;
        _394 = -1.2f / _392;
        _395 = 0.20000005f / _392;
        _398 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _401 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _405 = (_393 + 1.4f) + (_401 * (-0.39999998f - _393));
        _409 = (_394 + 1.6f) + (_401 * (-0.6f - _394));
        _413 = (_395 + 0.9f) + (_401 * (0.5f - _395));
        _430 = (lerp(_409, 1.2f, _398));  // [sem: blended]
        _431 = (lerp(_405, 1.0f, _398));  // [sem: blended]
        _432 = (lerp(_413, 1.4f, _398));  // [sem: blended]
      } else {
        _430 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _431 = 1.0f;  // [sem: blended]
        _432 = 1.4f;  // [sem: blended]
      }
      _433 = 1.0f - _430;
      _445 = ((exp2(log2(((saturate((_339 * _339) * _372) * _433) + _430) * _372) * _431) - _375) * _432) + _375;
      _457 = ((exp2(log2(((saturate((_355 * _355) * _373) * _433) + _430) * _373) * _431) - _375) * _432) + _375;
      _469 = ((exp2(log2(((saturate((_371 * _371) * _374) * _433) + _430) * _374) * _431) - _375) * _432) + _375;
      _476 = saturate(exp2(log2(mad(_469, -0.09902974f, mad(_457, -0.09802088f, (_445 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _483 = saturate(exp2(log2(mad(_469, -0.098961174f, mad(_457, 1.1519032f, (_445 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _490 = saturate(exp2(log2(mad(_469, 1.1510737f, mad(_457, -0.09804345f, (_445 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _496 = 1.0f - abs(_etcParams.w);
        _497 = saturate(_etcParams.w);  // [sem: expr_sat]
        _499 = (_496 * _476) + _497;
        _501 = (_496 * _483) + _497;
        _503 = (_496 * _490) + _497;
        if (_colorGradingParams.w > 0.0f) {
          _508 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _525 = (((max(0.0f, (1.0f - _499)) - _499) * _508) + _499);
          _526 = (((max(0.0f, (1.0f - _501)) - _501) * _508) + _501);
          _527 = (((max(0.0f, (1.0f - _503)) - _503) * _508) + _503);
        } else {
          _525 = _499;
          _526 = _501;
          _527 = _503;
        }
        _529 = _userImageAdjust.y + 1.0f;
        _531 = _userImageAdjust.x + 0.5f;
        _534 = ((_525 + -0.5f) * _529) + _531;
        _537 = ((_526 + -0.5f) * _529) + _531;
        _540 = ((_527 + -0.5f) * _529) + _531;
        _546 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _585 = exp2(log2(saturate(mad(_colorBlind0.z, _540, mad(_colorBlind0.y, _537, (_colorBlind0.x * _534))))) * _546);
        _586 = exp2(log2(saturate(mad(_colorBlind1.z, _540, mad(_colorBlind1.y, _537, (_colorBlind1.x * _534))))) * _546);
        _587 = exp2(log2(saturate(mad(_colorBlind2.z, _540, mad(_colorBlind2.y, _537, (_colorBlind2.x * _534))))) * _546);
      } else {
        _585 = _476;
        _586 = _483;
        _587 = _490;
      }
    } else {
      _585 = (_174 * 0.2f);
      _586 = (_187 * 0.2f);
      _587 = (_200 * 0.2f);
    }
    if (_etcParams.y > 1.0f) {
      _592 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _595 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _601 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_592, _595), float2(_592, _595))));  // [sem: expr_sat]
      _606 = (_601 * _585);
      _607 = (_601 * _586);
      _608 = (_601 * _587);
    } else {
      _606 = _585;
      _607 = _586;
      _608 = _587;
    }
    if (_228 && (_etcParams.z > 0.0f)) {
      _638 = select((_606 <= 0.0031308f), (_606 * 12.92f), (((pow(_606, 0.41666666f)) * 1.055f) + -0.055f));
      _639 = select((_607 <= 0.0031308f), (_607 * 12.92f), (((pow(_607, 0.41666666f)) * 1.055f) + -0.055f));
      _640 = select((_608 <= 0.0031308f), (_608 * 12.92f), (((pow(_608, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _638 = _606;
      _639 = _607;
      _640 = _608;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _643 = (float)((uint)((uint)(_209)));
      if (!(_643 < _viewDir.w)) {
        if (!(!(_643 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _654 = 0.0f;
          _655 = 0.0f;
          _656 = 0.0f;
        } else {
          _654 = _638;
          _655 = _639;
          _656 = _640;
        }
      } else {
        _654 = 0.0f;
        _655 = 0.0f;
        _656 = 0.0f;
      }
    } else {
      _654 = _638;
      _655 = _639;
      _656 = _640;
    }
    SV_Target.x = _654;
    SV_Target.y = _655;
    SV_Target.z = _656;
    SV_Target.w = _225;
    break;
  }
  return SV_Target;
}
