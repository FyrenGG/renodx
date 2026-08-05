struct PostProcessWorldLoadingStruct {
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float _ringRatio;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _depthOuterMaskRadius;
  uint _invertDepthMask;
  float _depthIntensity;
  float _depthContrast;
  float _voronoiDotDensity;
  float _voronoiMovementSpeed;
  float _voronoiOffset;
  float3 _voronoiScrollSpeed;
  float _voronoiDotThreshold;
  float _voronoiDotRatio;
  float _rippleIntensity;
  float _rippleWidth;
  float _rippleCount;
  float _rippleContrast;
  float _rippleSpeed;
  float3 _ripplePosOffset;
  uint _noiseTex;
  float _bigRippleIntensity;
  float _bigRippleWidth;
  float _bigRipplePhaseOffset;
  float _bigRippleSpeed;
  float _bigRippleDistortionIntensity;
  float _bigRippleContrast;
  float _starburstIntensity;
  float _vignetteIntensity;
  uint _excludePlayer;
  float _ppWorldLoadingRatio;
};

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};


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

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _26;
  float _32;
  float _35;
  float _37;
  float _38;
  float _39;
  float _44;
  float _56;
  float _65;
  float _74;
  float _83;
  int _86;
  float _94;
  float _95;
  float _96;
  float _97;
  float _98;
  float _99;
  float _100;
  float _103;
  float _104;
  float _105;
  float _106;
  int _107;
  int _108;
  int _109;
  int _162;
  int _163;
  int _164;
  int _171;
  float _308;
  float _511;
  float _512;
  float _513;
  float _606;
  float _607;
  float _608;
  float _662;
  float _663;
  float _664;
  float _680;
  float _681;
  float _682;
  float _712;
  float _713;
  float _714;
  float _728;
  float _729;
  float _730;
  float _110;
  float _111;
  float _112;
  float _114;
  float _116;
  float _118;
  float _121;
  float _128;
  float _135;
  float _142;
  float _153;
  bool _154;
  float _155;
  float _156;
  float _157;
  float _158;
  int _159;
  int _166;
  float _176;
  int _179;
  float _187;
  float _192;
  float _196;
  float _200;
  int _203;
  float _211;
  float _214;
  float _216;
  float _218;
  int _221;
  float _229;
  float _250;
  float _261;
  float _272;
  float _283;
  uint _284;
  bool _311;
  float _315;
  float _334;
  float _350;
  float _366;
  float _367;
  float _371;
  float _374;
  float _377;
  float _384;
  float _391;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _404;
  float _420;
  float _436;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _473;
  float _474;
  float _475;
  float _476;
  float _479;
  float _482;
  float _486;
  float _490;
  float _494;
  float _514;
  float _526;
  float _538;
  float _550;
  float _557;
  float _564;
  float _571;
  float _577;
  float _578;
  float _580;
  float _582;
  float _584;
  float _589;
  float _610;
  float _612;
  float _615;
  float _618;
  float _621;
  float _627;
  float _667;
  float _669;
  float _675;
  float _717;
  float _734;
  float _738;
  float _742;
  int __loop_jump_target = -1;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = (pow(_26.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_26.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (TEXCOORD.x * 2.0f) + -1.0f;
  _38 = TEXCOORD.y * 2.0f;
  _39 = 1.0f - _38;
  _44 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _56 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _44, mad((_invViewProj[3].y), _39, ((_invViewProj[3].x) * _37)));
  _65 = (mad((_invViewProj[0].z), _44, mad((_invViewProj[0].y), _39, ((_invViewProj[0].x) * _37))) + (_invViewProj[0].w)) / _56;
  _74 = (mad((_invViewProj[1].z), _44, mad((_invViewProj[1].y), _39, ((_invViewProj[1].x) * _37))) + (_invViewProj[1].w)) / _56;
  _83 = (mad((_invViewProj[2].z), _44, mad((_invViewProj[2].y), _39, ((_invViewProj[2].x) * _37))) + (_invViewProj[2].w)) / _56;
  _86 = WaveReadLaneFirst(_materialIndex);
  _94 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
  _95 = _94 * _65;
  _96 = _94 * _74;
  _97 = _94 * _83;
  _98 = floor(_95);
  _99 = floor(_96);
  _100 = floor(_97);
  _103 = 0.0f;
  _104 = 0.0f;
  _105 = 0.0f;
  _106 = 10.0f;
  _107 = -1;
  _108 = -1;
  _109 = -1;
  while(true) {
    _110 = (float)((int)(_109));
    _111 = (float)((int)(_107));
    _112 = (float)((int)(_108));
    _114 = sin(_110 + _98);
    _116 = sin(_111 + _99);
    _118 = sin(_112 + _100);
    _121 = _time.x * 0.2f;
    _128 = sin(frac(sin(dot(float3(_114, _116, _118), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _121) + _110;
    _135 = sin(frac(sin(dot(float3(_114, _116, _118), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _121) + _111;
    _142 = sin(frac(sin(dot(float3(_114, _116, _118), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _121) + _112;
    _153 = max(abs((_98 - _95) + _128), max(abs((_99 - _96) + _135), abs((_100 - _97) + _142)));
    _154 = (_153 < _106);
    _155 = select(_154, _153, _106);
    _156 = select(_154, _128, _105);
    _157 = select(_154, _135, _104);
    _158 = select(_154, _142, _103);
    _159 = (int)(_109) + (int)(1);
    if (!(_159 == 2)) {
      _162 = _107;
      _163 = _108;
      _164 = _159;
      while(true) {
        _103 = _158;
        _104 = _157;
        _105 = _156;
        _106 = _155;
        _107 = _162;
        _108 = _163;
        _109 = _164;
        __loop_jump_target = 102;
        break;
        break;
      }
      if (__loop_jump_target == 102) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _166 = (int)(_107) + (int)(1);
    if (!(_166 == 2)) {
      _162 = _166;
      _163 = _108;
      _164 = -1;
      while(true) {
        _103 = _158;
        _104 = _157;
        _105 = _156;
        _106 = _155;
        _107 = _162;
        _108 = _163;
        _109 = _164;
        __loop_jump_target = 102;
        break;
        break;
      }
      if (__loop_jump_target == 102) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _171 = ((int)(_108) + (int)(1));
    while(true) {
      if (!(_171 == 2)) {
        while(true) {
          _162 = -1;
          _163 = _171;
          _164 = -1;
          while(true) {
            _103 = _158;
            _104 = _157;
            _105 = _156;
            _106 = _155;
            _107 = _162;
            _108 = _163;
            _109 = _164;
            __loop_jump_target = 102;
            break;
            break;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
      }
      _176 = (pow(_26.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _179 = WaveReadLaneFirst(_materialIndex);
      _187 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
      _192 = ((_156 + _98) / _94) - _mainPosition.x;
      _196 = ((_157 + _99) / _94) - _mainPosition.y;
      _200 = ((_158 + _100) / _94) - _mainPosition.z;
      _203 = WaveReadLaneFirst(_materialIndex);
      _211 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_203 < (uint)170000), _203, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
      _214 = _65 - _mainPosition.x;
      _216 = _74 - _mainPosition.y;
      _218 = _83 - _mainPosition.z;
      _221 = WaveReadLaneFirst(_materialIndex);
      _229 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_221 < (uint)170000), _221, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ringRatio);
      _250 = ((1.0f - saturate(exp2(log2(abs(((1.0f - (sqrt(dot(float3(_214, _216, _218), float3(_214, _216, _218))) * (1.0f / max(1e-05f, (_211 * 0.8333333f))))) * 2.5000002f) + -0.5f) * 0.6666667f)))) * _229) * (1.0f / max(0.001f, _exposure0.x));
      _261 = (exp2(log2(max(0.0f, (_176 + -0.8359375f)) / (18.851562f - (_176 * 18.6875f))) * 6.277395f) * 10000.0f) + (_250 * 0.8f);
      _272 = (exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.851562f - (_32 * 18.6875f))) * 6.277395f) * 10000.0f) + (_250 * 0.4f);
      _283 = (exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f) + (_250 * 0.2f);
      _284 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        // [sem: expr_sat]
        _308 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _284, 0)))).x) & 127)))) + 0.5f);
      } else {
        // [sem: expr_sat]
        _308 = saturate((_155 + 1.0f) - ((1.0f - (sqrt(dot(float3(_192, _196, _200), float3(_192, _196, _200))) * (1.0f / max(1e-05f, _187)))) * 1.4705882f));
      }
      _311 = (_localToneMappingParams.w > 0.0f);
      if (_311) {
        _315 = _userImageAdjust.z * _exposure0.x;
        _334 = exp2(_powerParams.x * log2(max(0.0f, (((_315 * max(0.0f, (((_261 * 1.70505f) - (_272 * 0.62179f)) - (_283 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
        _350 = exp2(log2(max(0.0f, (((_slopeParams.y * _315) * max(0.0f, (((_272 * 1.1408f) - (_261 * 0.13026f)) - (_283 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
        _366 = exp2(log2(max(0.0f, (((_slopeParams.z * _315) * max(0.0f, (((_261 * -0.024f) - (_272 * 0.12897f)) + (_283 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
        _367 = dot(float3(_334, _350, _366), float3(0.212671f, 0.71516f, 0.072169f));
        _371 = ((_334 - _367) * _powerParams.w) + _367;
        _374 = ((_350 - _367) * _powerParams.w) + _367;
        _377 = ((_366 - _367) * _powerParams.w) + _367;
        _384 = min(max(log2(mad(_377, 0.079223745f, mad(_374, 0.0784336f, (_371 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _391 = min(max(log2(mad(_377, 0.07916613f, mad(_374, 0.87846863f, (_371 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _398 = min(max(log2(mad(_377, 0.879143f, mad(_374, 0.0784336f, (_371 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _399 = _384 * 0.060606062f;
        _400 = _391 * 0.060606062f;
        _401 = _398 * 0.060606062f;
        _402 = _399 * _399;
        _403 = _400 * _400;
        _404 = _401 * _401;
        _420 = min(0.0f, (-0.0f - (((_384 * 0.0072181816f) + ((_402 * 0.4298f) + (((_402 * _402) * ((31.96f - (_384 * 2.4327273f)) + (_402 * 15.5f))) - ((_384 * 0.41624245f) * _402)))) + -0.00232f)));
        _436 = min(0.0f, (-0.0f - (((_391 * 0.0072181816f) + ((_403 * 0.4298f) + (((_403 * _403) * ((31.96f - (_391 * 2.4327273f)) + (_403 * 15.5f))) - ((_391 * 0.41624245f) * _403)))) + -0.00232f)));
        _452 = min(0.0f, (-0.0f - (((_398 * 0.0072181816f) + ((_404 * 0.4298f) + (((_404 * _404) * ((31.96f - (_398 * 2.4327273f)) + (_404 * 15.5f))) - ((_398 * 0.41624245f) * _404)))) + -0.00232f)));
        _453 = -0.0f - _420;
        _454 = -0.0f - _436;
        _455 = -0.0f - _452;
        _456 = dot(float3(_453, _454, _455), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _473 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _474 = -0.79999995f / _473;
          _475 = -1.2f / _473;
          _476 = 0.20000005f / _473;
          _479 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _482 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _486 = (_474 + 1.4f) + (_482 * (-0.39999998f - _474));
          _490 = (_475 + 1.6f) + (_482 * (-0.6f - _475));
          _494 = (_476 + 0.9f) + (_482 * (0.5f - _476));
          _511 = (lerp(_490, 1.2f, _479));  // [sem: blended]
          _512 = (lerp(_486, 1.0f, _479));  // [sem: blended]
          _513 = (lerp(_494, 1.4f, _479));  // [sem: blended]
        } else {
          _511 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
          _512 = 1.0f;  // [sem: blended]
          _513 = 1.4f;  // [sem: blended]
        }
        _514 = 1.0f - _511;
        _526 = ((exp2(log2(((saturate((_420 * _420) * _453) * _514) + _511) * _453) * _512) - _456) * _513) + _456;
        _538 = ((exp2(log2(((saturate((_436 * _436) * _454) * _514) + _511) * _454) * _512) - _456) * _513) + _456;
        _550 = ((exp2(log2(((saturate((_452 * _452) * _455) * _514) + _511) * _455) * _512) - _456) * _513) + _456;
        _557 = saturate(exp2(log2(mad(_550, -0.09902974f, mad(_538, -0.09802088f, (_526 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _564 = saturate(exp2(log2(mad(_550, -0.098961174f, mad(_538, 1.1519032f, (_526 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _571 = saturate(exp2(log2(mad(_550, 1.1510737f, mad(_538, -0.09804345f, (_526 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _577 = 1.0f - abs(_etcParams.w);
          _578 = saturate(_etcParams.w);  // [sem: expr_sat]
          _580 = (_577 * _557) + _578;
          _582 = (_577 * _564) + _578;
          _584 = (_577 * _571) + _578;
          if (_colorGradingParams.w > 0.0f) {
            _589 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _606 = (((max(0.0f, (1.0f - _580)) - _580) * _589) + _580);
            _607 = (((max(0.0f, (1.0f - _582)) - _582) * _589) + _582);
            _608 = (((max(0.0f, (1.0f - _584)) - _584) * _589) + _584);
          } else {
            _606 = _580;
            _607 = _582;
            _608 = _584;
          }
          _610 = _userImageAdjust.y + 1.0f;
          _612 = _userImageAdjust.x + 0.5f;
          _615 = ((_606 + -0.5f) * _610) + _612;
          _618 = ((_607 + -0.5f) * _610) + _612;
          _621 = ((_608 + -0.5f) * _610) + _612;
          _627 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _662 = exp2(log2(saturate(mad(_colorBlind0.z, _621, mad(_colorBlind0.y, _618, (_colorBlind0.x * _615))))) * _627);
          _663 = exp2(log2(saturate(mad(_colorBlind1.z, _621, mad(_colorBlind1.y, _618, (_colorBlind1.x * _615))))) * _627);
          _664 = exp2(log2(saturate(mad(_colorBlind2.z, _621, mad(_colorBlind2.y, _618, (_colorBlind2.x * _615))))) * _627);
        } else {
          _662 = _557;
          _663 = _564;
          _664 = _571;
        }
      } else {
        _662 = _261;
        _663 = _272;
        _664 = _283;
      }
      if (_etcParams.y > 1.0f) {
        _667 = abs(_37);
        _669 = abs(_38 + -1.0f);
        _675 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_667, _669), float2(_667, _669))));  // [sem: expr_sat]
        _680 = (_675 * _662);
        _681 = (_675 * _663);
        _682 = (_675 * _664);
      } else {
        _680 = _662;
        _681 = _663;
        _682 = _664;
      }
      if (_311 && (_etcParams.z > 0.0f)) {
        _712 = select((_680 <= 0.0031308f), (_680 * 12.92f), (((pow(_680, 0.41666666f)) * 1.055f) + -0.055f));
        _713 = select((_681 <= 0.0031308f), (_681 * 12.92f), (((pow(_681, 0.41666666f)) * 1.055f) + -0.055f));
        _714 = select((_682 <= 0.0031308f), (_682 * 12.92f), (((pow(_682, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _712 = _680;
        _713 = _681;
        _714 = _682;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _717 = (float)((uint)((uint)(_284)));
        if (!(_717 < _viewDir.w)) {
          if (!(!(_717 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _728 = 0.0f;
            _729 = 0.0f;
            _730 = 0.0f;
          } else {
            _728 = _712;
            _729 = _713;
            _730 = _714;
          }
        } else {
          _728 = 0.0f;
          _729 = 0.0f;
          _730 = 0.0f;
        }
      } else {
        _728 = _712;
        _729 = _713;
        _730 = _714;
      }
      _734 = exp2(log2(_728 * 0.0001f) * 0.15930176f);
      _738 = exp2(log2(_729 * 0.0001f) * 0.15930176f);
      _742 = exp2(log2(_730 * 0.0001f) * 0.15930176f);
      if (!((_global_0[0]) == 0)) {
        _171 = 2;
        continue;
      }
      SV_Target.x = exp2(log2((1.0f / ((_734 * 18.6875f) + 1.0f)) * ((_734 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_738 * 18.6875f) + 1.0f)) * ((_738 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_742 * 18.6875f) + 1.0f)) * ((_742 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _308;
      break;
    }
    break;
  }
  return SV_Target;
}
