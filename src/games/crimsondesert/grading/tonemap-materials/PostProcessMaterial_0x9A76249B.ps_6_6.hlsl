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
  float _205;
  float _410;
  float _411;
  float _412;
  float _505;
  float _506;
  float _507;
  float _561;
  float _562;
  float _563;
  float _582;
  float _583;
  float _584;
  float _614;
  float _615;
  float _616;
  float _630;
  float _631;
  float _632;
  float _135;
  float _137;
  float _140;
  float _143;
  float _146;
  float _148;
  float _174;
  float _177;
  float _180;
  int _181;
  uint _192;
  bool _208;
  float _214;
  float _263;
  float _264;
  float _265;
  float _267;
  float _274;
  float _275;
  float _276;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _301;
  float _302;
  float _303;
  float _349;
  float _350;
  float _351;
  float _352;
  float _353;
  float _354;
  float _355;
  float _372;
  float _373;
  float _374;
  float _375;
  float _381;
  float _384;
  float _391;
  float _392;
  float _393;
  float _422;
  float _447;
  float _448;
  float _449;
  float _468;
  float _469;
  float _470;
  float _476;
  float _480;
  float _481;
  float _482;
  float _483;
  float _488;
  float _513;
  float _517;
  float _518;
  float _519;
  float _520;
  float _550;
  float _572;
  float _573;
  float _577;
  float _621;
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
    _174 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_127 * ((_109 * _137) + _146)) + TEXCOORD.x), ((_127 * ((_110 * _137) + _148)) + TEXCOORD.y))))).x) + _129;
    _177 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_127 * ((_109 * _140) + _146)) + TEXCOORD.x), ((_127 * ((_110 * _140) + _148)) + TEXCOORD.y))))).y) + _130;
    _180 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_127 * ((_109 * _143) + _146)) + TEXCOORD.x), ((_127 * ((_110 * _143) + _148)) + TEXCOORD.y))))).z) + _131;
    _181 = (int)(_132) + (int)(1);
    if (!(_181 == 5)) {
      _129 = _174;
      _130 = _177;
      _131 = _180;
      _132 = _181;
      continue;
    }
    _192 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _205 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _192, 0)))).x) & 127)))) + 0.5f);
    } else {
      _205 = _postProcessParams.x;
    }
    _208 = (_localToneMappingParams.w > 0.0f);
    if (_208) {
      _214 = _userImageAdjust.z * _exposure0.x;
      _263 = exp2(log2(max(0.0f, (((_214 * max(0.0f, (((_174 * 0.34101f) - (_177 * 0.124358f)) - (_180 * 0.016652001f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
      _264 = exp2(log2(max(0.0f, (((max(0.0f, (((_177 * 0.22816001f) - (_174 * 0.026052002f)) - (_180 * 0.00211f))) * _214) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
      _265 = exp2(log2(max(0.0f, (((max(0.0f, (((_174 * -0.0048f) - (_177 * 0.025794f)) + (_180 * 0.230594f))) * _214) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
      _267 = dot(float3(_263, _264, _265), float3(0.212671f, 0.71516f, 0.072169f));
      _274 = ((_263 - _267) * _powerParams.w) + _267;
      _275 = ((_264 - _267) * _powerParams.w) + _267;
      _276 = ((_265 - _267) * _powerParams.w) + _267;
      _295 = min(max(log2(mad(_276, 0.079223745f, mad(_275, 0.0784336f, (_274 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _296 = min(max(log2(mad(_276, 0.07916613f, mad(_275, 0.87846863f, (_274 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _297 = min(max(log2(mad(_276, 0.879143f, mad(_275, 0.0784336f, (_274 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _298 = _295 * 0.060606062f;
      _299 = _296 * 0.060606062f;
      _300 = _297 * 0.060606062f;
      _301 = _298 * _298;
      _302 = _299 * _299;
      _303 = _300 * _300;
      _349 = min(0.0f, (-0.0f - (((_295 * 0.0072181816f) + ((_301 * 0.4298f) + (((_301 * _301) * ((31.96f - (_295 * 2.4327273f)) + (_301 * 15.5f))) - ((_295 * 0.41624245f) * _301)))) + -0.00232f)));
      _350 = min(0.0f, (-0.0f - (((_296 * 0.0072181816f) + ((_302 * 0.4298f) + (((_302 * _302) * ((31.96f - (_296 * 2.4327273f)) + (_302 * 15.5f))) - ((_296 * 0.41624245f) * _302)))) + -0.00232f)));
      _351 = min(0.0f, (-0.0f - (((_297 * 0.0072181816f) + ((_303 * 0.4298f) + (((_303 * _303) * ((31.96f - (_297 * 2.4327273f)) + (_303 * 15.5f))) - ((_297 * 0.41624245f) * _303)))) + -0.00232f)));
      _352 = -0.0f - _349;
      _353 = -0.0f - _350;
      _354 = -0.0f - _351;
      _355 = dot(float3(_352, _353, _354), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _372 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _373 = -0.79999995f / _372;
        _374 = -1.2f / _372;
        _375 = 0.20000005f / _372;
        _381 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _384 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _391 = (_373 + 1.4f) + (_384 * (-0.39999998f - _373));
        _392 = (_374 + 1.6f) + (_384 * (-0.6f - _374));
        _393 = (_375 + 0.9f) + (_384 * (0.5f - _375));
        _410 = (lerp(_392, 1.2f, _381));  // [sem: blended]
        _411 = (lerp(_391, 1.0f, _381));  // [sem: blended]
        _412 = (lerp(_393, 1.4f, _381));  // [sem: blended]
      } else {
        _410 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _411 = 1.0f;  // [sem: blended]
        _412 = 1.4f;  // [sem: blended]
      }
      _422 = 1.0f - _410;
      _447 = ((exp2(log2(((saturate((_349 * _349) * _352) * _422) + _410) * _352) * _411) - _355) * _412) + _355;
      _448 = ((exp2(log2(((saturate((_350 * _350) * _353) * _422) + _410) * _353) * _411) - _355) * _412) + _355;
      _449 = ((exp2(log2(((saturate((_351 * _351) * _354) * _422) + _410) * _354) * _411) - _355) * _412) + _355;
      _468 = saturate(exp2(log2(mad(_449, -0.09902974f, mad(_448, -0.09802088f, (_447 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _469 = saturate(exp2(log2(mad(_449, -0.098961174f, mad(_448, 1.1519032f, (_447 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _470 = saturate(exp2(log2(mad(_449, 1.1510737f, mad(_448, -0.09804345f, (_447 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _476 = 1.0f - abs(_etcParams.w);
        _480 = saturate(_etcParams.w);  // [sem: expr_sat]
        _481 = (_476 * _468) + _480;
        _482 = (_476 * _469) + _480;
        _483 = (_476 * _470) + _480;
        if (_colorGradingParams.w > 0.0f) {
          _488 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _505 = (((max(0.0f, (1.0f - _481)) - _481) * _488) + _481);
          _506 = (((max(0.0f, (1.0f - _482)) - _482) * _488) + _482);
          _507 = (((max(0.0f, (1.0f - _483)) - _483) * _488) + _483);
        } else {
          _505 = _481;
          _506 = _482;
          _507 = _483;
        }
        _513 = _userImageAdjust.y + 1.0f;
        _517 = _userImageAdjust.x + 0.5f;
        _518 = ((_505 + -0.5f) * _513) + _517;
        _519 = ((_506 + -0.5f) * _513) + _517;
        _520 = ((_507 + -0.5f) * _513) + _517;
        _550 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _561 = exp2(log2(saturate(mad(_colorBlind0.z, _520, mad(_colorBlind0.y, _519, (_colorBlind0.x * _518))))) * _550);
        _562 = exp2(log2(saturate(mad(_colorBlind1.z, _520, mad(_colorBlind1.y, _519, (_colorBlind1.x * _518))))) * _550);
        _563 = exp2(log2(saturate(mad(_colorBlind2.z, _520, mad(_colorBlind2.y, _519, (_colorBlind2.x * _518))))) * _550);
      } else {
        _561 = _468;
        _562 = _469;
        _563 = _470;
      }
    } else {
      _561 = (_174 * 0.2f);
      _562 = (_177 * 0.2f);
      _563 = (_180 * 0.2f);
    }
    if (_etcParams.y > 1.0f) {
      _572 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _573 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _577 = saturate(1.0f - (dot(float2(_572, _573), float2(_572, _573)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _582 = (_577 * _561);
      _583 = (_577 * _562);
      _584 = (_577 * _563);
    } else {
      _582 = _561;
      _583 = _562;
      _584 = _563;
    }
    if (_208 && (_etcParams.z > 0.0f)) {
      _614 = select((_582 <= 0.0031308f), (_582 * 12.92f), (((pow(_582, 0.41666666f)) * 1.055f) + -0.055f));
      _615 = select((_583 <= 0.0031308f), (_583 * 12.92f), (((pow(_583, 0.41666666f)) * 1.055f) + -0.055f));
      _616 = select((_584 <= 0.0031308f), (_584 * 12.92f), (((pow(_584, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _614 = _582;
      _615 = _583;
      _616 = _584;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _621 = (float)((uint)((uint)(_192)));
      if (!(_621 < _viewDir.w)) {
        if (!(_621 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _630 = _614;
          _631 = _615;
          _632 = _616;
        } else {
          _630 = 0.0f;
          _631 = 0.0f;
          _632 = 0.0f;
        }
      } else {
        _630 = 0.0f;
        _631 = 0.0f;
        _632 = 0.0f;
      }
    } else {
      _630 = _614;
      _631 = _615;
      _632 = _616;
    }
    SV_Target.x = _630;
    SV_Target.y = _631;
    SV_Target.z = _632;
    SV_Target.w = _205;
    break;
  }
  return SV_Target;
}
