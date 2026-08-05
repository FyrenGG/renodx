struct PostProcessAbyssEnter_CDStruct {
  float _scanRadius;
  float _startFade;
  uint _noiseTex;
  uint _noiseTex2;
  uint _effectType;
  float _ppAbyssEnterRatio;
};

struct BindlessParameters_PostProcessAbyssEnter_CD {
  PostProcessAbyssEnter_CDStruct BindlessParameters_PostProcessAbyssEnter_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessAbyssEnter_CD BindlessParameters_PostProcessAbyssEnter_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnter_CD_t> BindlessParameters_PostProcessAbyssEnter_CD[] : register(b0, space100);

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
  float _28;
  float _30;
  float _31;
  float _32;
  uint2 _34;
  int _51;
  float _63;
  float _218;
  float _219;
  float _220;
  float _279;
  float _280;
  float _281;
  float _486;
  float _487;
  float _488;
  float _489;
  float _503;
  float _708;
  float _709;
  float _710;
  float _803;
  float _804;
  float _805;
  float _859;
  float _860;
  float _861;
  float _877;
  float _878;
  float _879;
  float _909;
  float _910;
  float _911;
  float _925;
  float _926;
  float _927;
  int _66;
  int _74;
  float _79;
  float _81;
  float4 _84;
  float _86;
  float4 _88;
  float _90;
  float4 _91;
  float _93;
  float4 _94;
  float4 _97;
  float _99;
  float4 _101;
  float _103;
  float4 _104;
  float _106;
  float4 _107;
  float4 _110;
  float _112;
  float _115;
  float _117;
  float _119;
  float _121;
  float _130;
  float _137;
  float _144;
  float _151;
  float _167;
  float _168;
  float _172;
  float _193;
  float _194;
  float _198;
  float _236;
  float _237;
  float _240;
  float _258;
  float _259;
  float _262;
  float _284;
  float _287;
  float _290;
  float _292;
  int _295;
  int _303;
  float _316;
  int _319;
  float _327;
  float _328;
  int _341;
  int _349;
  float _356;
  float _368;
  float _377;
  float _378;
  float _388;
  float _398;
  float _400;
  float _401;
  float _402;
  int _405;
  int _413;
  float _415;
  float _416;
  float _419;
  float4 _428;
  float _435;
  float _437;
  float4 _439;
  float4 _445;
  float _450;
  float _451;
  float _454;
  float _457;
  float _460;
  float _463;
  float _464;
  uint _490;
  bool _506;
  float _512;
  float _531;
  float _547;
  float _563;
  float _564;
  float _568;
  float _571;
  float _574;
  float _581;
  float _588;
  float _595;
  float _596;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _617;
  float _633;
  float _649;
  float _650;
  float _651;
  float _652;
  float _653;
  float _670;
  float _671;
  float _672;
  float _673;
  float _676;
  float _679;
  float _683;
  float _687;
  float _691;
  float _711;
  float _723;
  float _735;
  float _747;
  float _754;
  float _761;
  float _768;
  float _774;
  float _775;
  float _777;
  float _779;
  float _781;
  float _786;
  float _807;
  float _809;
  float _812;
  float _815;
  float _818;
  float _824;
  float _864;
  float _866;
  float _872;
  float _914;
  float _931;
  float _935;
  float _939;
  _28 = 1.0f / max(0.001f, _exposure0.x);
  _30 = (TEXCOORD.x * 2.0f) + -1.0f;
  _31 = TEXCOORD.y * 2.0f;
  _32 = 1.0f - _31;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_34.x, _34.y);
  _51 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_34.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_34.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
  if (!((_51 == _renderPassSelfPlayer) || (_51 == 70))) {
    _63 = select((_51 == _renderPassTest), 1.0f, 0.0f);
  } else {
    _63 = 1.0f;
  }
  _66 = WaveReadLaneFirst(_materialIndex);
  _74 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
  if (_74 == 0) {
    _79 = 1.0f / _srcTargetSizeAndInv.x;
    _81 = 1.0f / _srcTargetSizeAndInv.y;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _84 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _86 = _79 * 2.0f;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _88 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _86), TEXCOORD.y));
    _90 = TEXCOORD.x - _79;
    _91 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_90, TEXCOORD.y));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _93 = _79 + TEXCOORD.x;
    _94 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_93, TEXCOORD.y));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _97 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_86 + TEXCOORD.x), TEXCOORD.y));
    _99 = _81 * 2.0f;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _101 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _99)));
    _103 = TEXCOORD.y - _81;
    _104 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, _103));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _106 = _81 + TEXCOORD.y;
    _107 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, _106));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _110 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_99 + TEXCOORD.y)));
    _112 = max(1e-07f, _84.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
    _115 = (_invViewProjRelative[0].x) * _30;
    _117 = (_invViewProjRelative[1].x) * _30;
    _119 = (_invViewProjRelative[2].x) * _30;
    _121 = (_invViewProjRelative[3].x) * _30;
    _130 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _112, mad((_invViewProjRelative[3].y), _32, _121));
    _137 = (mad((_invViewProjRelative[0].z), _112, mad((_invViewProjRelative[0].y), _32, _115)) + (_invViewProjRelative[0].w)) / _130;
    _144 = (mad((_invViewProjRelative[1].z), _112, mad((_invViewProjRelative[1].y), _32, _117)) + (_invViewProjRelative[1].w)) / _130;
    _151 = (mad((_invViewProjRelative[2].z), _112, mad((_invViewProjRelative[2].y), _32, _119)) + (_invViewProjRelative[2].w)) / _130;
    if (abs(((_91.x * _88.x) / ((_88.x * 2.0f) - _91.x)) - _84.x) < abs(((_97.x * _94.x) / ((_97.x * 2.0f) - _94.x)) - _84.x)) {
      _167 = (_90 * 2.0f) + -1.0f;
      _168 = max(1e-07f, _91.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _172 = mad((_invViewProjRelative[3].z), _168, mad((_invViewProjRelative[3].y), _32, ((_invViewProjRelative[3].x) * _167))) + (_invViewProjRelative[3].w);
      _218 = (_151 - ((mad((_invViewProjRelative[2].z), _168, mad((_invViewProjRelative[2].y), _32, ((_invViewProjRelative[2].x) * _167))) + (_invViewProjRelative[2].w)) / _172));
      _219 = (_144 - ((mad((_invViewProjRelative[1].z), _168, mad((_invViewProjRelative[1].y), _32, ((_invViewProjRelative[1].x) * _167))) + (_invViewProjRelative[1].w)) / _172));
      _220 = (_137 - ((mad((_invViewProjRelative[0].z), _168, mad((_invViewProjRelative[0].y), _32, ((_invViewProjRelative[0].x) * _167))) + (_invViewProjRelative[0].w)) / _172));
    } else {
      _193 = (_93 * 2.0f) + -1.0f;
      _194 = max(1e-07f, _94.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _198 = mad((_invViewProjRelative[3].z), _194, mad((_invViewProjRelative[3].y), _32, ((_invViewProjRelative[3].x) * _193))) + (_invViewProjRelative[3].w);
      _218 = (((mad((_invViewProjRelative[2].z), _194, mad((_invViewProjRelative[2].y), _32, ((_invViewProjRelative[2].x) * _193))) + (_invViewProjRelative[2].w)) / _198) - _151);
      _219 = (((mad((_invViewProjRelative[1].z), _194, mad((_invViewProjRelative[1].y), _32, ((_invViewProjRelative[1].x) * _193))) + (_invViewProjRelative[1].w)) / _198) - _144);
      _220 = (((mad((_invViewProjRelative[0].z), _194, mad((_invViewProjRelative[0].y), _32, ((_invViewProjRelative[0].x) * _193))) + (_invViewProjRelative[0].w)) / _198) - _137);
    }
    if (abs(((_104.x * _101.x) / ((_101.x * 2.0f) - _104.x)) - _84.x) < abs(((_110.x * _107.x) / ((_110.x * 2.0f) - _107.x)) - _84.x)) {
      _236 = 1.0f - (_103 * 2.0f);
      _237 = max(1e-07f, _104.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _240 = mad((_invViewProjRelative[3].z), _237, mad((_invViewProjRelative[3].y), _236, _121)) + (_invViewProjRelative[3].w);
      _279 = (_151 - ((mad((_invViewProjRelative[2].z), _237, mad((_invViewProjRelative[2].y), _236, _119)) + (_invViewProjRelative[2].w)) / _240));
      _280 = (_144 - ((mad((_invViewProjRelative[1].z), _237, mad((_invViewProjRelative[1].y), _236, _117)) + (_invViewProjRelative[1].w)) / _240));
      _281 = (_137 - ((mad((_invViewProjRelative[0].z), _237, mad((_invViewProjRelative[0].y), _236, _115)) + (_invViewProjRelative[0].w)) / _240));
    } else {
      _258 = 1.0f - (_106 * 2.0f);
      _259 = max(1e-07f, _107.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _262 = mad((_invViewProjRelative[3].z), _259, mad((_invViewProjRelative[3].y), _258, _121)) + (_invViewProjRelative[3].w);
      _279 = (((mad((_invViewProjRelative[2].z), _259, mad((_invViewProjRelative[2].y), _258, _119)) + (_invViewProjRelative[2].w)) / _262) - _151);
      _280 = (((mad((_invViewProjRelative[1].z), _259, mad((_invViewProjRelative[1].y), _258, _117)) + (_invViewProjRelative[1].w)) / _262) - _144);
      _281 = (((mad((_invViewProjRelative[0].z), _259, mad((_invViewProjRelative[0].y), _258, _115)) + (_invViewProjRelative[0].w)) / _262) - _137);
    }
    _284 = (_279 * _219) - (_280 * _218);
    _287 = (_281 * _218) - (_279 * _220);
    _290 = (_280 * _220) - (_281 * _219);
    _292 = rsqrt(dot(float3(_284, _287, _290), float3(_284, _287, _290)));  // [sem: invLength]
    _295 = WaveReadLaneFirst(_materialIndex);
    _303 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_295 < (uint)170000), _295, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
    _316 = exp2(log2(1.0f - abs(dot(float3((_292 * _284), (_287 * _292), (_292 * _290)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
    _319 = WaveReadLaneFirst(_materialIndex);
    _327 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_319 < (uint)170000), _319, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._startFade);
    _328 = _327 * _63;
    _486 = _63;
    _487 = (saturate(_316 * 0.95f) + _328);
    _488 = (saturate(_316 * 0.65f) + _328);
    _489 = (saturate(_316 * 0.45f) + _328);
  } else {
    _341 = WaveReadLaneFirst(_materialIndex);
    _349 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_341 < (uint)170000), _341, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
    if (_349 == 1) {
      _356 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _368 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _356, mad((_invViewProjRelative[3].y), _32, ((_invViewProjRelative[3].x) * _30)));
      _377 = (mad((_invViewProjRelative[0].z), _356, mad((_invViewProjRelative[0].y), _32, ((_invViewProjRelative[0].x) * _30))) + (_invViewProjRelative[0].w)) / _368;
      _378 = -0.0f - _377;
      _388 = -0.0f - ((mad((_invViewProjRelative[1].z), _356, mad((_invViewProjRelative[1].y), _32, ((_invViewProjRelative[1].x) * _30))) + (_invViewProjRelative[1].w)) / _368);
      _398 = -0.0f - ((mad((_invViewProjRelative[2].z), _356, mad((_invViewProjRelative[2].y), _32, ((_invViewProjRelative[2].x) * _30))) + (_invViewProjRelative[2].w)) / _368);
      _400 = rsqrt(dot(float3(_378, _388, _398), float3(_378, _388, _398)));  // [sem: invLength]
      _401 = _400 * _388;
      _402 = _400 * _398;
      _405 = WaveReadLaneFirst(_materialIndex);
      _413 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_405 < (uint)170000), _405, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
      _415 = (_377 * -2.0f) * _400;
      _416 = _402 * 2.0f;
      _419 = _time.x * 0.1f;
      _428 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_413 < (uint)65000), _413, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_419 + _415), (_419 + _416)));
      _435 = _time.x * 0.1f;
      _437 = _435 + (_401 * 2.0f);
      _439 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_413 < (uint)65000), _413, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_435 + _416), _437));
      _445 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_413 < (uint)65000), _413, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_437, (_435 + _415)));
      _450 = abs(_401);
      _451 = abs(_402);
      _454 = (_450 * (_428.x - _439.x)) + _439.x;
      _457 = (_450 * (_428.y - _439.y)) + _439.y;
      _460 = (_450 * (_428.z - _439.z)) + _439.z;
      _463 = (_450 * (_428.w - _439.w)) + _439.w;
      _464 = _63 * _28;
      _486 = (saturate(lerp(_463, _445.w, _451)) * _28);
      _487 = (saturate(lerp(_460, _445.z, _451)) * _464);
      _488 = (saturate(lerp(_457, _445.y, _451)) * _464);
      _489 = (saturate(lerp(_454, _445.x, _451)) * _464);
    } else {
      _486 = 0.0f;
      _487 = 0.0f;
      _488 = 0.0f;
      _489 = 0.0f;
    }
  }
  _490 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _503 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _490, 0)))).x) & 127)))) + 0.5f);
  } else {
    _503 = _486;
  }
  _506 = (_localToneMappingParams.w > 0.0f);
  if (_506) {
    _512 = _exposure0.x * _userImageAdjust.z;
    _531 = exp2(_powerParams.x * log2(max(0.0f, (((_512 * max(0.0f, (((_488 * -0.62179f) - (_487 * 0.08326f)) + (_489 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _547 = exp2(log2(max(0.0f, (((_slopeParams.y * _512) * max(0.0f, (((_488 * 1.1408f) - (_487 * 0.01055f)) - (_489 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _563 = exp2(log2(max(0.0f, (((_slopeParams.z * _512) * max(0.0f, (((_487 * 1.15297f) - (_488 * 0.12897f)) - (_489 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _564 = dot(float3(_531, _547, _563), float3(0.212671f, 0.71516f, 0.072169f));
    _568 = ((_531 - _564) * _powerParams.w) + _564;
    _571 = ((_547 - _564) * _powerParams.w) + _564;
    _574 = ((_563 - _564) * _powerParams.w) + _564;
    _581 = min(max(log2(mad(_574, 0.079223745f, mad(_571, 0.0784336f, (_568 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _588 = min(max(log2(mad(_574, 0.07916613f, mad(_571, 0.87846863f, (_568 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _595 = min(max(log2(mad(_574, 0.879143f, mad(_571, 0.0784336f, (_568 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _596 = _581 * 0.060606062f;
    _597 = _588 * 0.060606062f;
    _598 = _595 * 0.060606062f;
    _599 = _596 * _596;
    _600 = _597 * _597;
    _601 = _598 * _598;
    _617 = min(0.0f, (-0.0f - (((_581 * 0.0072181816f) + ((_599 * 0.4298f) + (((_599 * _599) * ((31.96f - (_581 * 2.4327273f)) + (_599 * 15.5f))) - ((_581 * 0.41624245f) * _599)))) + -0.00232f)));
    _633 = min(0.0f, (-0.0f - (((_588 * 0.0072181816f) + ((_600 * 0.4298f) + (((_600 * _600) * ((31.96f - (_588 * 2.4327273f)) + (_600 * 15.5f))) - ((_588 * 0.41624245f) * _600)))) + -0.00232f)));
    _649 = min(0.0f, (-0.0f - (((_595 * 0.0072181816f) + ((_601 * 0.4298f) + (((_601 * _601) * ((31.96f - (_595 * 2.4327273f)) + (_601 * 15.5f))) - ((_595 * 0.41624245f) * _601)))) + -0.00232f)));
    _650 = -0.0f - _617;
    _651 = -0.0f - _633;
    _652 = -0.0f - _649;
    _653 = dot(float3(_650, _651, _652), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _670 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _671 = -0.79999995f / _670;
      _672 = -1.2f / _670;
      _673 = 0.20000005f / _670;
      _676 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _679 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _683 = (_671 + 1.4f) + (_679 * (-0.39999998f - _671));
      _687 = (_672 + 1.6f) + (_679 * (-0.6f - _672));
      _691 = (_673 + 0.9f) + (_679 * (0.5f - _673));
      _708 = (lerp(_691, 1.4f, _676));  // [sem: blended]
      _709 = (lerp(_683, 1.0f, _676));  // [sem: blended]
      _710 = (lerp(_687, 1.2f, _676));  // [sem: blended]
    } else {
      _708 = 1.4f;  // [sem: blended]
      _709 = 1.0f;  // [sem: blended]
      _710 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _711 = 1.0f - _710;
    _723 = ((exp2(log2(((saturate((_617 * _617) * _650) * _711) + _710) * _650) * _709) - _653) * _708) + _653;
    _735 = ((exp2(log2(((saturate((_633 * _633) * _651) * _711) + _710) * _651) * _709) - _653) * _708) + _653;
    _747 = ((exp2(log2(((saturate((_649 * _649) * _652) * _711) + _710) * _652) * _709) - _653) * _708) + _653;
    _754 = saturate(exp2(log2(mad(_747, -0.09902974f, mad(_735, -0.09802088f, (_723 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _761 = saturate(exp2(log2(mad(_747, -0.098961174f, mad(_735, 1.1519032f, (_723 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _768 = saturate(exp2(log2(mad(_747, 1.1510737f, mad(_735, -0.09804345f, (_723 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _774 = 1.0f - abs(_etcParams.w);
      _775 = saturate(_etcParams.w);  // [sem: expr_sat]
      _777 = (_774 * _754) + _775;
      _779 = (_774 * _761) + _775;
      _781 = (_774 * _768) + _775;
      if (_colorGradingParams.w > 0.0f) {
        _786 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _803 = (((max(0.0f, (1.0f - _781)) - _781) * _786) + _781);
        _804 = (((max(0.0f, (1.0f - _779)) - _779) * _786) + _779);
        _805 = (((max(0.0f, (1.0f - _777)) - _777) * _786) + _777);
      } else {
        _803 = _781;
        _804 = _779;
        _805 = _777;
      }
      _807 = _userImageAdjust.y + 1.0f;
      _809 = _userImageAdjust.x + 0.5f;
      _812 = ((_805 + -0.5f) * _807) + _809;
      _815 = ((_804 + -0.5f) * _807) + _809;
      _818 = ((_803 + -0.5f) * _807) + _809;
      _824 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _859 = exp2(log2(saturate(mad(_colorBlind2.z, _818, mad(_colorBlind2.y, _815, (_colorBlind2.x * _812))))) * _824);
      _860 = exp2(log2(saturate(mad(_colorBlind1.z, _818, mad(_colorBlind1.y, _815, (_colorBlind1.x * _812))))) * _824);
      _861 = exp2(log2(saturate(mad(_colorBlind0.z, _818, mad(_colorBlind0.y, _815, (_colorBlind0.x * _812))))) * _824);
    } else {
      _859 = _768;
      _860 = _761;
      _861 = _754;
    }
  } else {
    _859 = _487;
    _860 = _488;
    _861 = _489;
  }
  if (_etcParams.y > 1.0f) {
    _864 = abs(_30);
    _866 = abs(_31 + -1.0f);
    _872 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_864, _866), float2(_864, _866))));  // [sem: expr_sat]
    _877 = (_872 * _860);
    _878 = (_872 * _861);
    _879 = (_872 * _859);
  } else {
    _877 = _860;
    _878 = _861;
    _879 = _859;
  }
  if (_506 && (_etcParams.z > 0.0f)) {
    _909 = select((_878 <= 0.0031308f), (_878 * 12.92f), (((pow(_878, 0.41666666f)) * 1.055f) + -0.055f));
    _910 = select((_877 <= 0.0031308f), (_877 * 12.92f), (((pow(_877, 0.41666666f)) * 1.055f) + -0.055f));
    _911 = select((_879 <= 0.0031308f), (_879 * 12.92f), (((pow(_879, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _909 = _878;
    _910 = _877;
    _911 = _879;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _914 = (float)((uint)((uint)(_490)));
    if (!(_914 < _viewDir.w)) {
      if (!(!(_914 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _925 = 0.0f;
        _926 = 0.0f;
        _927 = 0.0f;
      } else {
        _925 = _909;
        _926 = _910;
        _927 = _911;
      }
    } else {
      _925 = 0.0f;
      _926 = 0.0f;
      _927 = 0.0f;
    }
  } else {
    _925 = _909;
    _926 = _910;
    _927 = _911;
  }
  _931 = exp2(log2(_925 * 0.0001f) * 0.15930176f);
  _935 = exp2(log2(_926 * 0.0001f) * 0.15930176f);
  _939 = exp2(log2(_927 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_931 * 18.6875f) + 1.0f)) * ((_931 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_935 * 18.6875f) + 1.0f)) * ((_935 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_939 * 18.6875f) + 1.0f)) * ((_939 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _503;
  return SV_Target;
}
