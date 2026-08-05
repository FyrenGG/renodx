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
  float _31;
  float _32;
  float _33;
  float _38;
  float _50;
  float _59;
  float _68;
  float _77;
  int _80;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _94;
  int _97;
  float _98;
  float _99;
  float _100;
  float _101;
  int _102;
  int _103;
  int _156;
  int _157;
  int _158;
  int _165;
  float _272;
  float _475;
  float _476;
  float _477;
  float _570;
  float _571;
  float _572;
  float _626;
  float _627;
  float _628;
  float _644;
  float _645;
  float _646;
  float _676;
  float _677;
  float _678;
  float _692;
  float _693;
  float _694;
  float _104;
  float _105;
  float _106;
  float _108;
  float _110;
  float _112;
  float _115;
  float _122;
  float _129;
  float _136;
  float _147;
  bool _148;
  float _149;
  float _150;
  float _151;
  float _152;
  int _153;
  int _160;
  int _170;
  float _178;
  float _183;
  float _187;
  float _191;
  int _194;
  float _202;
  float _205;
  float _207;
  float _209;
  int _212;
  float _220;
  float _241;
  float _243;
  float _245;
  float _247;
  uint _248;
  bool _275;
  float _279;
  float _298;
  float _314;
  float _330;
  float _331;
  float _335;
  float _338;
  float _341;
  float _348;
  float _355;
  float _362;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _368;
  float _384;
  float _400;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _437;
  float _438;
  float _439;
  float _440;
  float _443;
  float _446;
  float _450;
  float _454;
  float _458;
  float _478;
  float _490;
  float _502;
  float _514;
  float _521;
  float _528;
  float _535;
  float _541;
  float _542;
  float _544;
  float _546;
  float _548;
  float _553;
  float _574;
  float _576;
  float _579;
  float _582;
  float _585;
  float _591;
  float _631;
  float _633;
  float _639;
  float _681;
  int __loop_jump_target = -1;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (TEXCOORD.x * 2.0f) + -1.0f;
  _32 = TEXCOORD.y * 2.0f;
  _33 = 1.0f - _32;
  _38 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _50 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _38, mad((_invViewProj[3].y), _33, ((_invViewProj[3].x) * _31)));
  _59 = (mad((_invViewProj[0].z), _38, mad((_invViewProj[0].y), _33, ((_invViewProj[0].x) * _31))) + (_invViewProj[0].w)) / _50;
  _68 = (mad((_invViewProj[1].z), _38, mad((_invViewProj[1].y), _33, ((_invViewProj[1].x) * _31))) + (_invViewProj[1].w)) / _50;
  _77 = (mad((_invViewProj[2].z), _38, mad((_invViewProj[2].y), _33, ((_invViewProj[2].x) * _31))) + (_invViewProj[2].w)) / _50;
  _80 = WaveReadLaneFirst(_materialIndex);
  _88 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
  _89 = _88 * _59;
  _90 = _88 * _68;
  _91 = _88 * _77;
  _92 = floor(_89);
  _93 = floor(_90);
  _94 = floor(_91);
  _97 = -1;
  _98 = 0.0f;
  _99 = 0.0f;
  _100 = 0.0f;
  _101 = 10.0f;
  _102 = -1;
  _103 = -1;
  while(true) {
    _104 = (float)((int)(_97));
    _105 = (float)((int)(_102));
    _106 = (float)((int)(_103));
    _108 = sin(_104 + _92);
    _110 = sin(_105 + _93);
    _112 = sin(_106 + _94);
    _115 = _time.x * 0.2f;
    _122 = sin(frac(sin(dot(float3(_108, _110, _112), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _115) + _104;
    _129 = sin(frac(sin(dot(float3(_108, _110, _112), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _115) + _105;
    _136 = sin(frac(sin(dot(float3(_108, _110, _112), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _115) + _106;
    _147 = max(abs((_92 - _89) + _122), max(abs((_93 - _90) + _129), abs((_94 - _91) + _136)));
    _148 = (_147 < _101);
    _149 = select(_148, _147, _101);
    _150 = select(_148, _122, _100);
    _151 = select(_148, _129, _99);
    _152 = select(_148, _136, _98);
    _153 = (int)(_97) + (int)(1);
    if (!(_153 == 2)) {
      _156 = _153;
      _157 = _102;
      _158 = _103;
      while(true) {
        _97 = _156;
        _98 = _152;
        _99 = _151;
        _100 = _150;
        _101 = _149;
        _102 = _157;
        _103 = _158;
        __loop_jump_target = 96;
        break;
        break;
      }
      if (__loop_jump_target == 96) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _160 = (int)(_102) + (int)(1);
    if (!(_160 == 2)) {
      _156 = -1;
      _157 = _160;
      _158 = _103;
      while(true) {
        _97 = _156;
        _98 = _152;
        _99 = _151;
        _100 = _150;
        _101 = _149;
        _102 = _157;
        _103 = _158;
        __loop_jump_target = 96;
        break;
        break;
      }
      if (__loop_jump_target == 96) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _165 = ((int)(_103) + (int)(1));
    while(true) {
      if (!(_165 == 2)) {
        while(true) {
          _156 = -1;
          _157 = -1;
          _158 = _165;
          while(true) {
            _97 = _156;
            _98 = _152;
            _99 = _151;
            _100 = _150;
            _101 = _149;
            _102 = _157;
            _103 = _158;
            __loop_jump_target = 96;
            break;
            break;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
      }
      _170 = WaveReadLaneFirst(_materialIndex);
      _178 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_170 < (uint)170000), _170, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
      _183 = ((_150 + _92) / _88) - _mainPosition.x;
      _187 = ((_151 + _93) / _88) - _mainPosition.y;
      _191 = ((_152 + _94) / _88) - _mainPosition.z;
      _194 = WaveReadLaneFirst(_materialIndex);
      _202 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
      _205 = _59 - _mainPosition.x;
      _207 = _68 - _mainPosition.y;
      _209 = _77 - _mainPosition.z;
      _212 = WaveReadLaneFirst(_materialIndex);
      _220 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_212 < (uint)170000), _212, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ringRatio);
      _241 = ((1.0f - saturate(exp2(log2(abs(((1.0f - (sqrt(dot(float3(_205, _207, _209), float3(_205, _207, _209))) * (1.0f / max(1e-05f, (_202 * 0.8333333f))))) * 2.5000002f) + -0.5f) * 0.6666667f)))) * _220) * (1.0f / max(0.001f, _exposure0.x));
      _243 = (_241 * 0.8f) + _26.x;
      _245 = (_241 * 0.4f) + _26.y;
      _247 = (_241 * 0.2f) + _26.z;
      _248 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        // [sem: expr_sat]
        _272 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _248, 0)))).x) & 127)))) + 0.5f);
      } else {
        // [sem: expr_sat]
        _272 = saturate((_149 + 1.0f) - ((1.0f - (sqrt(dot(float3(_183, _187, _191), float3(_183, _187, _191))) * (1.0f / max(1e-05f, _178)))) * 1.4705882f));
      }
      _275 = (_localToneMappingParams.w > 0.0f);
      if (_275) {
        _279 = _userImageAdjust.z * _exposure0.x;
        _298 = exp2(_powerParams.x * log2(max(0.0f, (((_279 * max(0.0f, (((_243 * 1.70505f) - (_245 * 0.62179f)) - (_247 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
        _314 = exp2(log2(max(0.0f, (((_slopeParams.y * _279) * max(0.0f, (((_245 * 1.1408f) - (_243 * 0.13026f)) - (_247 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
        _330 = exp2(log2(max(0.0f, (((_slopeParams.z * _279) * max(0.0f, (((_243 * -0.024f) - (_245 * 0.12897f)) + (_247 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
        _331 = dot(float3(_298, _314, _330), float3(0.212671f, 0.71516f, 0.072169f));
        _335 = ((_298 - _331) * _powerParams.w) + _331;
        _338 = ((_314 - _331) * _powerParams.w) + _331;
        _341 = ((_330 - _331) * _powerParams.w) + _331;
        _348 = min(max(log2(mad(_341, 0.079223745f, mad(_338, 0.0784336f, (_335 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _355 = min(max(log2(mad(_341, 0.07916613f, mad(_338, 0.87846863f, (_335 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _362 = min(max(log2(mad(_341, 0.879143f, mad(_338, 0.0784336f, (_335 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _363 = _348 * 0.060606062f;
        _364 = _355 * 0.060606062f;
        _365 = _362 * 0.060606062f;
        _366 = _363 * _363;
        _367 = _364 * _364;
        _368 = _365 * _365;
        _384 = min(0.0f, (-0.0f - (((_348 * 0.0072181816f) + ((_366 * 0.4298f) + (((_366 * _366) * ((31.96f - (_348 * 2.4327273f)) + (_366 * 15.5f))) - ((_348 * 0.41624245f) * _366)))) + -0.00232f)));
        _400 = min(0.0f, (-0.0f - (((_355 * 0.0072181816f) + ((_367 * 0.4298f) + (((_367 * _367) * ((31.96f - (_355 * 2.4327273f)) + (_367 * 15.5f))) - ((_355 * 0.41624245f) * _367)))) + -0.00232f)));
        _416 = min(0.0f, (-0.0f - (((_362 * 0.0072181816f) + ((_368 * 0.4298f) + (((_368 * _368) * ((31.96f - (_362 * 2.4327273f)) + (_368 * 15.5f))) - ((_362 * 0.41624245f) * _368)))) + -0.00232f)));
        _417 = -0.0f - _384;
        _418 = -0.0f - _400;
        _419 = -0.0f - _416;
        _420 = dot(float3(_417, _418, _419), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _437 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _438 = -0.79999995f / _437;
          _439 = -1.2f / _437;
          _440 = 0.20000005f / _437;
          _443 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _446 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _450 = (_438 + 1.4f) + (_446 * (-0.39999998f - _438));
          _454 = (_439 + 1.6f) + (_446 * (-0.6f - _439));
          _458 = (_440 + 0.9f) + (_446 * (0.5f - _440));
          _475 = (lerp(_454, 1.2f, _443));  // [sem: blended]
          _476 = (lerp(_450, 1.0f, _443));  // [sem: blended]
          _477 = (lerp(_458, 1.4f, _443));  // [sem: blended]
        } else {
          _475 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
          _476 = 1.0f;  // [sem: blended]
          _477 = 1.4f;  // [sem: blended]
        }
        _478 = 1.0f - _475;
        _490 = ((exp2(log2(((saturate((_384 * _384) * _417) * _478) + _475) * _417) * _476) - _420) * _477) + _420;
        _502 = ((exp2(log2(((saturate((_400 * _400) * _418) * _478) + _475) * _418) * _476) - _420) * _477) + _420;
        _514 = ((exp2(log2(((saturate((_416 * _416) * _419) * _478) + _475) * _419) * _476) - _420) * _477) + _420;
        _521 = saturate(exp2(log2(mad(_514, -0.09902974f, mad(_502, -0.09802088f, (_490 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _528 = saturate(exp2(log2(mad(_514, -0.098961174f, mad(_502, 1.1519032f, (_490 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _535 = saturate(exp2(log2(mad(_514, 1.1510737f, mad(_502, -0.09804345f, (_490 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _541 = 1.0f - abs(_etcParams.w);
          _542 = saturate(_etcParams.w);  // [sem: expr_sat]
          _544 = (_541 * _521) + _542;
          _546 = (_541 * _528) + _542;
          _548 = (_541 * _535) + _542;
          if (_colorGradingParams.w > 0.0f) {
            _553 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _570 = (((max(0.0f, (1.0f - _544)) - _544) * _553) + _544);
            _571 = (((max(0.0f, (1.0f - _546)) - _546) * _553) + _546);
            _572 = (((max(0.0f, (1.0f - _548)) - _548) * _553) + _548);
          } else {
            _570 = _544;
            _571 = _546;
            _572 = _548;
          }
          _574 = _userImageAdjust.y + 1.0f;
          _576 = _userImageAdjust.x + 0.5f;
          _579 = ((_570 + -0.5f) * _574) + _576;
          _582 = ((_571 + -0.5f) * _574) + _576;
          _585 = ((_572 + -0.5f) * _574) + _576;
          _591 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _626 = exp2(log2(saturate(mad(_colorBlind0.z, _585, mad(_colorBlind0.y, _582, (_colorBlind0.x * _579))))) * _591);
          _627 = exp2(log2(saturate(mad(_colorBlind1.z, _585, mad(_colorBlind1.y, _582, (_colorBlind1.x * _579))))) * _591);
          _628 = exp2(log2(saturate(mad(_colorBlind2.z, _585, mad(_colorBlind2.y, _582, (_colorBlind2.x * _579))))) * _591);
        } else {
          _626 = _521;
          _627 = _528;
          _628 = _535;
        }
      } else {
        _626 = _243;
        _627 = _245;
        _628 = _247;
      }
      if (_etcParams.y > 1.0f) {
        _631 = abs(_31);
        _633 = abs(_32 + -1.0f);
        _639 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_631, _633), float2(_631, _633))));  // [sem: expr_sat]
        _644 = (_639 * _626);
        _645 = (_639 * _627);
        _646 = (_639 * _628);
      } else {
        _644 = _626;
        _645 = _627;
        _646 = _628;
      }
      if (_275 && (_etcParams.z > 0.0f)) {
        _676 = select((_644 <= 0.0031308f), (_644 * 12.92f), (((pow(_644, 0.41666666f)) * 1.055f) + -0.055f));
        _677 = select((_645 <= 0.0031308f), (_645 * 12.92f), (((pow(_645, 0.41666666f)) * 1.055f) + -0.055f));
        _678 = select((_646 <= 0.0031308f), (_646 * 12.92f), (((pow(_646, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _676 = _644;
        _677 = _645;
        _678 = _646;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _681 = (float)((uint)((uint)(_248)));
        if (!(_681 < _viewDir.w)) {
          if (!(!(_681 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _692 = 0.0f;
            _693 = 0.0f;
            _694 = 0.0f;
          } else {
            _692 = _676;
            _693 = _677;
            _694 = _678;
          }
        } else {
          _692 = 0.0f;
          _693 = 0.0f;
          _694 = 0.0f;
        }
      } else {
        _692 = _676;
        _693 = _677;
        _694 = _678;
      }
      if (!((_global_0[0]) == 0)) {
        _165 = 2;
        continue;
      }
      SV_Target.x = _692;
      SV_Target.y = _693;
      SV_Target.z = _694;
      SV_Target.w = _272;
      break;
    }
    break;
  }
  return SV_Target;
}
