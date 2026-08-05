struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  uint _characterMeshEffectType : packoffset(c029.z);
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _24;
  float _27;
  float _28;
  float _29;
  float _30;
  float _42;
  int _45;
  float _53;
  float _67;
  float _77;
  float _87;
  float _89;
  float _90;
  float _91;
  float _92;
  int _95;
  int _103;
  float4 _110;
  int _115;
  int _123;
  float4 _134;
  int _139;
  int _147;
  float4 _160;
  float _163;
  float _164;
  int _167;
  int _175;
  float4 _186;
  int _191;
  int _199;
  float4 _212;
  float _216;
  float _218;
  float _221;
  float _224;
  float _228;
  float _232;
  float _234;
  int _237;
  int _245;
  float4 _258;
  float _261;
  float _262;
  int _265;
  float _273;
  float _283;
  float _285;
  float _286;
  float _287;
  float _292;
  float _297;
  float _312;
  float _319;
  float _332;
  float _336;
  float _343;
  float _344;
  float _345;
  float _346;
  float _360;
  float _374;
  float _388;
  uint _389;
  float _403;
  float _606;
  float _607;
  float _608;
  float _701;
  float _702;
  float _703;
  float _757;
  float _758;
  float _759;
  float _775;
  float _776;
  float _777;
  float _807;
  float _808;
  float _809;
  float _823;
  float _824;
  float _825;
  bool _406;
  float _410;
  float _429;
  float _445;
  float _461;
  float _462;
  float _466;
  float _469;
  float _472;
  float _479;
  float _486;
  float _493;
  float _494;
  float _495;
  float _496;
  float _497;
  float _498;
  float _499;
  float _515;
  float _531;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _568;
  float _569;
  float _570;
  float _571;
  float _574;
  float _577;
  float _581;
  float _585;
  float _589;
  float _609;
  float _621;
  float _633;
  float _645;
  float _652;
  float _659;
  float _666;
  float _672;
  float _673;
  float _675;
  float _677;
  float _679;
  float _684;
  float _705;
  float _707;
  float _710;
  float _713;
  float _716;
  float _722;
  float _762;
  float _764;
  float _770;
  float _812;
  float _829;
  float _833;
  float _837;
  _24 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _27 = (TEXCOORD.x * 2.0f) + -1.0f;
  _28 = TEXCOORD.y * 2.0f;
  _29 = 1.0f - _28;
  _30 = max(1e-07f, _24.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _42 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _30, mad((_invViewProjRelative[3].y), _29, ((_invViewProjRelative[3].x) * _27)));
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._fogDepth);
  _67 = -0.0f - (((_invViewProjRelative[0].w) + mad((_invViewProjRelative[0].z), _30, mad((_invViewProjRelative[0].y), _29, ((_invViewProjRelative[0].x) * _27)))) / _42);
  _77 = -0.0f - ((mad((_invViewProjRelative[1].z), _30, mad((_invViewProjRelative[1].y), _29, ((_invViewProjRelative[1].x) * _27))) + (_invViewProjRelative[1].w)) / _42);
  _87 = -0.0f - ((mad((_invViewProjRelative[2].z), _30, mad((_invViewProjRelative[2].y), _29, ((_invViewProjRelative[2].x) * _27))) + (_invViewProjRelative[2].w)) / _42);
  _89 = rsqrt(dot(float3(_67, _77, _87), float3(_67, _77, _87)));  // [sem: invLength]
  _90 = _89 * _67;
  _91 = _89 * _77;
  _92 = _89 * _87;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_92, _90));
  _115 = WaveReadLaneFirst(_materialIndex);
  _123 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _134 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_123 < (uint)65000), _123, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_92, ((_time.x * 0.05f) + _91)));
  _139 = WaveReadLaneFirst(_materialIndex);
  _147 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_139 < (uint)170000), _139, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _160 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_147 < (uint)65000), _147, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_92 * 2.0f), ((_91 - (_time.x * 0.1f)) * 2.0f)));
  _163 = _160.x + _134.x;
  _164 = _160.y + _134.y;
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _186 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _91), _90));
  _191 = WaveReadLaneFirst(_materialIndex);
  _199 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_191 < (uint)170000), _191, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _212 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_199 < (uint)65000), _199, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _91) * 2.0f), (_90 * 2.0f)));
  _216 = abs(dot(float3(_90, _91, _92), float3(0.0f, 1.0f, 0.0f)));
  _218 = abs(dot(float3(_90, _91, _92), float3(0.0f, 0.0f, 1.0f)));
  _221 = (_216 * (_110.x - _163)) + _163;
  _224 = (_216 * (_110.y - _164)) + _164;
  _228 = (((_212.x + _186.x) - _221) * _218) + _221;
  _232 = (((_212.y + _186.y) - _224) * _218) + _224;
  _234 = saturate(_24.x * 35.0f);  // [sem: expr_sat]
  _237 = WaveReadLaneFirst(_materialIndex);
  _245 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_237 < (uint)170000), _237, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _258 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_245 < (uint)65000), _245, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _261 = TEXCOORD.x + -0.5f;
  _262 = TEXCOORD.y + -0.5f;
  _265 = WaveReadLaneFirst(_materialIndex);
  _273 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_265 < (uint)170000), _265, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._chromaticShiftValue);
  _283 = ((_273 * 0.01f) * sqrt((_262 * _262) + (_261 * _261))) * ((float)((uint)((uint)(_enableChromaticAberration))));
  _285 = rsqrt(dot(float2(_261, _262), float2(_261, _262)));  // [sem: invLength]
  _286 = _285 * _261;
  _287 = _285 * _262;
  _292 = ((lerp(_228, _258.x, _234)) * 4.0f) + -1.9921569f;
  _297 = ((lerp(_232, _258.y, _234)) * 4.0f) + -1.9921569f;
  _312 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((TEXCOORD.x - (_283 * _292)) - (_283 * _286)), ((TEXCOORD.y - (_283 * _297)) - (_283 * _287)))))).x) * 0.012683313f);
  _319 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) * 0.012683313f);
  _332 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_286 + _292) * _283) + TEXCOORD.x), (((_287 + _297) * _283) + TEXCOORD.y))))).z) * 0.012683313f);
  _336 = 1.0f / max(0.001f, _exposure0.x);
  _343 = (1.0f - saturate((pow(_24.x, _53)) * 4.0f)) * _336;
  _344 = _343 * 0.080000006f;
  _345 = _343 * 0.089999996f;
  _346 = _343 * 0.11000001f;
  _360 = ((saturate(_344) * 0.06f) * ((exp2(log2(max(0.0f, (_312 + -0.8359375f)) / (18.851562f - (_312 * 18.6875f))) * 6.277395f) * 10000.0f) - _344)) + _344;
  _374 = ((saturate(_345) * 0.06f) * ((exp2(log2(max(0.0f, (_319 + -0.8359375f)) / (18.851562f - (_319 * 18.6875f))) * 6.277395f) * 10000.0f) - _345)) + _345;
  _388 = ((saturate(_346) * 0.06f) * ((exp2(log2(max(0.0f, (_332 + -0.8359375f)) / (18.851562f - (_332 * 18.6875f))) * 6.277395f) * 10000.0f) - _346)) + _346;
  _389 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _403 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _389, 0)))).x) & 127)))) + 0.5f);
  } else {
    _403 = _336;
  }
  _406 = (_localToneMappingParams.w > 0.0f);
  if (_406) {
    _410 = _userImageAdjust.z * _exposure0.x;
    _429 = exp2(_powerParams.x * log2(max(0.0f, (((_410 * max(0.0f, (((_360 * 1.70505f) - (_374 * 0.62179f)) - (_388 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _445 = exp2(log2(max(0.0f, (((_slopeParams.y * _410) * max(0.0f, (((_374 * 1.1408f) - (_360 * 0.13026f)) - (_388 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _461 = exp2(log2(max(0.0f, (((_slopeParams.z * _410) * max(0.0f, (((_360 * -0.024f) - (_374 * 0.12897f)) + (_388 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _462 = dot(float3(_429, _445, _461), float3(0.212671f, 0.71516f, 0.072169f));
    _466 = ((_429 - _462) * _powerParams.w) + _462;
    _469 = ((_445 - _462) * _powerParams.w) + _462;
    _472 = ((_461 - _462) * _powerParams.w) + _462;
    _479 = min(max(log2(mad(_472, 0.079223745f, mad(_469, 0.0784336f, (_466 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _486 = min(max(log2(mad(_472, 0.07916613f, mad(_469, 0.87846863f, (_466 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _493 = min(max(log2(mad(_472, 0.879143f, mad(_469, 0.0784336f, (_466 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _494 = _479 * 0.060606062f;
    _495 = _486 * 0.060606062f;
    _496 = _493 * 0.060606062f;
    _497 = _494 * _494;
    _498 = _495 * _495;
    _499 = _496 * _496;
    _515 = min(0.0f, (-0.0f - (((_479 * 0.0072181816f) + ((_497 * 0.4298f) + (((_497 * _497) * ((31.96f - (_479 * 2.4327273f)) + (_497 * 15.5f))) - ((_479 * 0.41624245f) * _497)))) + -0.00232f)));
    _531 = min(0.0f, (-0.0f - (((_486 * 0.0072181816f) + ((_498 * 0.4298f) + (((_498 * _498) * ((31.96f - (_486 * 2.4327273f)) + (_498 * 15.5f))) - ((_486 * 0.41624245f) * _498)))) + -0.00232f)));
    _547 = min(0.0f, (-0.0f - (((_493 * 0.0072181816f) + ((_499 * 0.4298f) + (((_499 * _499) * ((31.96f - (_493 * 2.4327273f)) + (_499 * 15.5f))) - ((_493 * 0.41624245f) * _499)))) + -0.00232f)));
    _548 = -0.0f - _515;
    _549 = -0.0f - _531;
    _550 = -0.0f - _547;
    _551 = dot(float3(_548, _549, _550), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _568 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _569 = -0.79999995f / _568;
      _570 = -1.2f / _568;
      _571 = 0.20000005f / _568;
      _574 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _577 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _581 = (_569 + 1.4f) + (_577 * (-0.39999998f - _569));
      _585 = (_570 + 1.6f) + (_577 * (-0.6f - _570));
      _589 = (_571 + 0.9f) + (_577 * (0.5f - _571));
      _606 = (lerp(_585, 1.2f, _574));  // [sem: blended]
      _607 = (lerp(_581, 1.0f, _574));  // [sem: blended]
      _608 = (lerp(_589, 1.4f, _574));  // [sem: blended]
    } else {
      _606 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _607 = 1.0f;  // [sem: blended]
      _608 = 1.4f;  // [sem: blended]
    }
    _609 = 1.0f - _606;
    _621 = ((exp2(log2(((saturate((_515 * _515) * _548) * _609) + _606) * _548) * _607) - _551) * _608) + _551;
    _633 = ((exp2(log2(((saturate((_531 * _531) * _549) * _609) + _606) * _549) * _607) - _551) * _608) + _551;
    _645 = ((exp2(log2(((saturate((_547 * _547) * _550) * _609) + _606) * _550) * _607) - _551) * _608) + _551;
    _652 = saturate(exp2(log2(mad(_645, -0.09902974f, mad(_633, -0.09802088f, (_621 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _659 = saturate(exp2(log2(mad(_645, -0.098961174f, mad(_633, 1.1519032f, (_621 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _666 = saturate(exp2(log2(mad(_645, 1.1510737f, mad(_633, -0.09804345f, (_621 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _672 = 1.0f - abs(_etcParams.w);
      _673 = saturate(_etcParams.w);  // [sem: expr_sat]
      _675 = (_672 * _652) + _673;
      _677 = (_672 * _659) + _673;
      _679 = (_672 * _666) + _673;
      if (_colorGradingParams.w > 0.0f) {
        _684 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _701 = (((max(0.0f, (1.0f - _675)) - _675) * _684) + _675);
        _702 = (((max(0.0f, (1.0f - _677)) - _677) * _684) + _677);
        _703 = (((max(0.0f, (1.0f - _679)) - _679) * _684) + _679);
      } else {
        _701 = _675;
        _702 = _677;
        _703 = _679;
      }
      _705 = _userImageAdjust.y + 1.0f;
      _707 = _userImageAdjust.x + 0.5f;
      _710 = ((_701 + -0.5f) * _705) + _707;
      _713 = ((_702 + -0.5f) * _705) + _707;
      _716 = ((_703 + -0.5f) * _705) + _707;
      _722 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _757 = exp2(log2(saturate(mad(_colorBlind0.z, _716, mad(_colorBlind0.y, _713, (_colorBlind0.x * _710))))) * _722);
      _758 = exp2(log2(saturate(mad(_colorBlind1.z, _716, mad(_colorBlind1.y, _713, (_colorBlind1.x * _710))))) * _722);
      _759 = exp2(log2(saturate(mad(_colorBlind2.z, _716, mad(_colorBlind2.y, _713, (_colorBlind2.x * _710))))) * _722);
    } else {
      _757 = _652;
      _758 = _659;
      _759 = _666;
    }
  } else {
    _757 = _360;
    _758 = _374;
    _759 = _388;
  }
  if (_etcParams.y > 1.0f) {
    _762 = abs(_27);
    _764 = abs(_28 + -1.0f);
    _770 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_762, _764), float2(_762, _764))));  // [sem: expr_sat]
    _775 = (_770 * _757);
    _776 = (_770 * _758);
    _777 = (_770 * _759);
  } else {
    _775 = _757;
    _776 = _758;
    _777 = _759;
  }
  if (_406 && (_etcParams.z > 0.0f)) {
    _807 = select((_775 <= 0.0031308f), (_775 * 12.92f), (((pow(_775, 0.41666666f)) * 1.055f) + -0.055f));
    _808 = select((_776 <= 0.0031308f), (_776 * 12.92f), (((pow(_776, 0.41666666f)) * 1.055f) + -0.055f));
    _809 = select((_777 <= 0.0031308f), (_777 * 12.92f), (((pow(_777, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _807 = _775;
    _808 = _776;
    _809 = _777;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _812 = (float)((uint)((uint)(_389)));
    if (!(_812 < _viewDir.w)) {
      if (!(!(_812 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _823 = 0.0f;
        _824 = 0.0f;
        _825 = 0.0f;
      } else {
        _823 = _807;
        _824 = _808;
        _825 = _809;
      }
    } else {
      _823 = 0.0f;
      _824 = 0.0f;
      _825 = 0.0f;
    }
  } else {
    _823 = _807;
    _824 = _808;
    _825 = _809;
  }
  _829 = exp2(log2(_823 * 0.0001f) * 0.15930176f);
  _833 = exp2(log2(_824 * 0.0001f) * 0.15930176f);
  _837 = exp2(log2(_825 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_829 * 18.6875f) + 1.0f)) * ((_829 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_833 * 18.6875f) + 1.0f)) * ((_833 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_837 * 18.6875f) + 1.0f)) * ((_837 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _403;
  return SV_Target;
}
