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

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

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
  float4 _25;
  float _32;
  float _33;
  float _56;
  float _57;
  float _58;
  float _59;
  float _95;
  float _96;
  float _97;
  float _98;
  int _99;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _115;
  float _116;
  float _117;
  float _118;
  int _119;
  float _124;
  float _125;
  float _126;
  float _127;
  int _128;
  float _133;
  float _134;
  float _135;
  float _136;
  int _137;
  float _302;
  float _507;
  float _508;
  float _509;
  float _602;
  float _603;
  float _604;
  float _658;
  float _659;
  float _660;
  float _676;
  float _677;
  float _678;
  float _708;
  float _709;
  float _710;
  float _724;
  float _725;
  float _726;
  int _121;
  int _130;
  float _138;
  float _139;
  float _140;
  float _144;
  float _145;
  float _146;
  float _161;
  float _168;
  float _169;
  float _170;
  float _181;
  bool _182;
  float _183;
  float _184;
  float _185;
  float _186;
  int _187;
  float _198;
  int _215;
  float _223;
  float _228;
  float _229;
  float _230;
  int _241;
  float _249;
  float _255;
  float _256;
  float _257;
  int _272;
  float _280;
  float _282;
  float _286;
  float _287;
  float _288;
  uint _289;
  bool _305;
  float _311;
  float _360;
  float _361;
  float _362;
  float _364;
  float _371;
  float _372;
  float _373;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _398;
  float _399;
  float _400;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _452;
  float _469;
  float _470;
  float _471;
  float _472;
  float _478;
  float _481;
  float _488;
  float _489;
  float _490;
  float _519;
  float _544;
  float _545;
  float _546;
  float _565;
  float _566;
  float _567;
  float _573;
  float _577;
  float _578;
  float _579;
  float _580;
  float _585;
  float _610;
  float _614;
  float _615;
  float _616;
  float _617;
  float _647;
  float _666;
  float _667;
  float _671;
  float _715;
  float _736;
  float _737;
  float _738;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _33 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _56 = (TEXCOORD.x * 2.0f) + -1.0f;
  _57 = TEXCOORD.y * 2.0f;
  _58 = 1.0f - _57;
  _59 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _95 = mad((_invViewProj[3].z), _59, mad((_invViewProj[3].y), _58, ((_invViewProj[3].x) * _56))) + (_invViewProj[3].w);
  _96 = (mad((_invViewProj[0].z), _59, mad((_invViewProj[0].y), _58, ((_invViewProj[0].x) * _56))) + (_invViewProj[0].w)) / _95;
  _97 = (mad((_invViewProj[1].z), _59, mad((_invViewProj[1].y), _58, ((_invViewProj[1].x) * _56))) + (_invViewProj[1].w)) / _95;
  _98 = (mad((_invViewProj[2].z), _59, mad((_invViewProj[2].y), _58, ((_invViewProj[2].x) * _56))) + (_invViewProj[2].w)) / _95;
  _99 = WaveReadLaneFirst(_materialIndex);
  _107 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_99 < (uint)170000), _99, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
  _108 = _107 * _96;
  _109 = _107 * _97;
  _110 = _107 * _98;
  _111 = floor(_108);
  _112 = floor(_109);
  _113 = floor(_110);
  _115 = 10.0f;
  _116 = 0.0f;
  _117 = 0.0f;
  _118 = 0.0f;
  _119 = -1;
  while(true) {
    _124 = _115;
    _125 = _116;
    _126 = _117;
    _127 = _118;
    _128 = -1;
    while(true) {
      _133 = _124;
      _134 = _125;
      _135 = _126;
      _136 = _127;
      _137 = -1;
      while(true) {
        _138 = (float)((int)(_137));
        _139 = (float)((int)(_128));
        _140 = (float)((int)(_119));
        _144 = sin(_138 + _111);
        _145 = sin(_139 + _112);
        _146 = sin(_140 + _113);
        _161 = _time.x * 0.2f;
        _168 = sin(_161 * frac(sin(dot(float3(_144, _145, _146), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _138;
        _169 = sin(_161 * frac(sin(dot(float3(_144, _145, _146), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _139;
        _170 = sin(_161 * frac(sin(dot(float3(_144, _145, _146), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _140;
        _181 = max(abs((_111 - _108) + _168), max(abs((_112 - _109) + _169), abs((_113 - _110) + _170)));
        _182 = (_181 < _133);
        _183 = select(_182, _181, _133);
        _184 = select(_182, _168, _134);
        _185 = select(_182, _169, _135);
        _186 = select(_182, _170, _136);
        _187 = (int)(_137) + (int)(1);
        if (!(_187 == 2)) {
          _133 = _183;
          _134 = _184;
          _135 = _185;
          _136 = _186;
          _137 = _187;
          continue;
        }
        while(true) {
          _130 = (int)(_128) + (int)(1);
          if (!(_130 == 2)) {
            _124 = _183;
            _125 = _184;
            _126 = _185;
            _127 = _186;
            _128 = _130;
            __loop_jump_target = 123;
            break;
          }
          while(true) {
            _121 = (int)(_119) + (int)(1);
            if (!(_121 == 2)) {
              _115 = _183;
              _116 = _184;
              _117 = _185;
              _118 = _186;
              _119 = _121;
              __loop_jump_target = 114;
              break;
            }
            _198 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
            _215 = WaveReadLaneFirst(_materialIndex);
            _223 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_215 < (uint)170000), _215, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
            _228 = ((_184 + _111) / _107) - _mainPosition.x;
            _229 = ((_185 + _112) / _107) - _mainPosition.y;
            _230 = ((_186 + _113) / _107) - _mainPosition.z;
            _241 = WaveReadLaneFirst(_materialIndex);
            _249 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_241 < (uint)170000), _241, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
            _255 = _96 - _mainPosition.x;
            _256 = _97 - _mainPosition.y;
            _257 = _98 - _mainPosition.z;
            _272 = WaveReadLaneFirst(_materialIndex);
            _280 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_272 < (uint)170000), _272, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ringRatio);
            _282 = ((1.0f - saturate(exp2(log2(abs(((1.0f - ((1.0f / max(1e-05f, (_249 * 0.8333333f))) * sqrt(dot(float3(_255, _256, _257), float3(_255, _256, _257))))) * 2.5000002f) + -0.5f) * 0.6666667f)))) * (1.0f / max(0.001f, _exposure0.x))) * _280;
            _286 = (_282 * 0.8f) + (exp2(log2(max(0.0f, (_198 + -0.8359375f)) / (18.851562f - (_198 * 18.6875f))) * 6.277395f) * 10000.0f);
            _287 = (_282 * 0.4f) + (exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.851562f - (_32 * 18.6875f))) * 6.277395f) * 10000.0f);
            _288 = (_282 * 0.2f) + (exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f);
            _289 = (uint)(SV_Position.y);
            if (_etcParams.y == 1.0f) {
              // [sem: expr_sat]
              _302 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _289, 0)))).x) & 127)))) + 0.5f);
            } else {
              // [sem: expr_sat]
              _302 = saturate((_183 + 1.0f) - ((1.0f - ((1.0f / max(1e-05f, _223)) * sqrt(dot(float3(_228, _229, _230), float3(_228, _229, _230))))) * 1.4705882f));
            }
            _305 = (_localToneMappingParams.w > 0.0f);
            if (_305) {
              _311 = _userImageAdjust.z * _exposure0.x;
              _360 = exp2(log2(max(0.0f, (((_311 * max(0.0f, (((_286 * 1.70505f) - (_287 * 0.62179f)) - (_288 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
              _361 = exp2(log2(max(0.0f, (((max(0.0f, (((_287 * 1.1408f) - (_286 * 0.13026f)) - (_288 * 0.01055f))) * _311) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
              _362 = exp2(log2(max(0.0f, (((max(0.0f, (((_286 * -0.024f) - (_287 * 0.12897f)) + (_288 * 1.15297f))) * _311) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
              _364 = dot(float3(_360, _361, _362), float3(0.212671f, 0.71516f, 0.072169f));
              _371 = ((_360 - _364) * _powerParams.w) + _364;
              _372 = ((_361 - _364) * _powerParams.w) + _364;
              _373 = ((_362 - _364) * _powerParams.w) + _364;
              _392 = min(max(log2(mad(_373, 0.079223745f, mad(_372, 0.0784336f, (_371 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
              _393 = min(max(log2(mad(_373, 0.07916613f, mad(_372, 0.87846863f, (_371 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
              _394 = min(max(log2(mad(_373, 0.879143f, mad(_372, 0.0784336f, (_371 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
              _395 = _392 * 0.060606062f;
              _396 = _393 * 0.060606062f;
              _397 = _394 * 0.060606062f;
              _398 = _395 * _395;
              _399 = _396 * _396;
              _400 = _397 * _397;
              _446 = min(0.0f, (-0.0f - (((_392 * 0.0072181816f) + ((_398 * 0.4298f) + (((_398 * _398) * ((31.96f - (_392 * 2.4327273f)) + (_398 * 15.5f))) - ((_392 * 0.41624245f) * _398)))) + -0.00232f)));
              _447 = min(0.0f, (-0.0f - (((_393 * 0.0072181816f) + ((_399 * 0.4298f) + (((_399 * _399) * ((31.96f - (_393 * 2.4327273f)) + (_399 * 15.5f))) - ((_393 * 0.41624245f) * _399)))) + -0.00232f)));
              _448 = min(0.0f, (-0.0f - (((_394 * 0.0072181816f) + ((_400 * 0.4298f) + (((_400 * _400) * ((31.96f - (_394 * 2.4327273f)) + (_400 * 15.5f))) - ((_394 * 0.41624245f) * _400)))) + -0.00232f)));
              _449 = -0.0f - _446;
              _450 = -0.0f - _447;
              _451 = -0.0f - _448;
              _452 = dot(float3(_449, _450, _451), float3(0.2126f, 0.7152f, 0.0722f));
              if (_nightToneParm == 1) {
                _469 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
                _470 = -0.79999995f / _469;
                _471 = -1.2f / _469;
                _472 = 0.20000005f / _469;
                _478 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
                _481 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
                _488 = (_470 + 1.4f) + (_481 * (-0.39999998f - _470));
                _489 = (_471 + 1.6f) + (_481 * (-0.6f - _471));
                _490 = (_472 + 0.9f) + (_481 * (0.5f - _472));
                _507 = (lerp(_489, 1.2f, _478));  // [sem: blended]
                _508 = (lerp(_488, 1.0f, _478));  // [sem: blended]
                _509 = (lerp(_490, 1.4f, _478));  // [sem: blended]
              } else {
                _507 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
                _508 = 1.0f;  // [sem: blended]
                _509 = 1.4f;  // [sem: blended]
              }
              _519 = 1.0f - _507;
              _544 = ((exp2(log2(((saturate((_446 * _446) * _449) * _519) + _507) * _449) * _508) - _452) * _509) + _452;
              _545 = ((exp2(log2(((saturate((_447 * _447) * _450) * _519) + _507) * _450) * _508) - _452) * _509) + _452;
              _546 = ((exp2(log2(((saturate((_448 * _448) * _451) * _519) + _507) * _451) * _508) - _452) * _509) + _452;
              _565 = saturate(exp2(log2(mad(_546, -0.09902974f, mad(_545, -0.09802088f, (_544 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
              // [sem: expr_sat]
              _566 = saturate(exp2(log2(mad(_546, -0.098961174f, mad(_545, 1.1519032f, (_544 * -0.052896854f)))) * 2.2f));
              // [sem: expr_sat]
              _567 = saturate(exp2(log2(mad(_546, 1.1510737f, mad(_545, -0.09804345f, (_544 * -0.052971635f)))) * 2.2f));
              if (_etcParams.z == 0.0f) {
                _573 = 1.0f - abs(_etcParams.w);
                _577 = saturate(_etcParams.w);  // [sem: expr_sat]
                _578 = (_573 * _565) + _577;
                _579 = (_573 * _566) + _577;
                _580 = (_573 * _567) + _577;
                if (_colorGradingParams.w > 0.0f) {
                  _585 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
                  _602 = (((max(0.0f, (1.0f - _578)) - _578) * _585) + _578);
                  _603 = (((max(0.0f, (1.0f - _579)) - _579) * _585) + _579);
                  _604 = (((max(0.0f, (1.0f - _580)) - _580) * _585) + _580);
                } else {
                  _602 = _578;
                  _603 = _579;
                  _604 = _580;
                }
                _610 = _userImageAdjust.y + 1.0f;
                _614 = _userImageAdjust.x + 0.5f;
                _615 = ((_602 + -0.5f) * _610) + _614;
                _616 = ((_603 + -0.5f) * _610) + _614;
                _617 = ((_604 + -0.5f) * _610) + _614;
                _647 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
                _658 = exp2(log2(saturate(mad(_colorBlind0.z, _617, mad(_colorBlind0.y, _616, (_colorBlind0.x * _615))))) * _647);
                _659 = exp2(log2(saturate(mad(_colorBlind1.z, _617, mad(_colorBlind1.y, _616, (_colorBlind1.x * _615))))) * _647);
                _660 = exp2(log2(saturate(mad(_colorBlind2.z, _617, mad(_colorBlind2.y, _616, (_colorBlind2.x * _615))))) * _647);
              } else {
                _658 = _565;
                _659 = _566;
                _660 = _567;
              }
            } else {
              _658 = _286;
              _659 = _287;
              _660 = _288;
            }
            if (_etcParams.y > 1.0f) {
              _666 = abs(_56);
              _667 = abs(_57 + -1.0f);
              _671 = saturate(1.0f - (dot(float2(_666, _667), float2(_666, _667)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
              _676 = (_671 * _658);
              _677 = (_671 * _659);
              _678 = (_671 * _660);
            } else {
              _676 = _658;
              _677 = _659;
              _678 = _660;
            }
            if (_305 && (_etcParams.z > 0.0f)) {
              _708 = select((_676 <= 0.0031308f), (_676 * 12.92f), (((pow(_676, 0.41666666f)) * 1.055f) + -0.055f));
              _709 = select((_677 <= 0.0031308f), (_677 * 12.92f), (((pow(_677, 0.41666666f)) * 1.055f) + -0.055f));
              _710 = select((_678 <= 0.0031308f), (_678 * 12.92f), (((pow(_678, 0.41666666f)) * 1.055f) + -0.055f));
            } else {
              _708 = _676;
              _709 = _677;
              _710 = _678;
            }
            if (!(!(_etcParams.y >= 1.0f))) {
              _715 = (float)((uint)((uint)(_289)));
              if (!(_715 < _viewDir.w)) {
                if (!(_715 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
                  _724 = _708;
                  _725 = _709;
                  _726 = _710;
                } else {
                  _724 = 0.0f;
                  _725 = 0.0f;
                  _726 = 0.0f;
                }
              } else {
                _724 = 0.0f;
                _725 = 0.0f;
                _726 = 0.0f;
              }
            } else {
              _724 = _708;
              _725 = _709;
              _726 = _710;
            }
            _736 = exp2(log2(_724 * 0.0001f) * 0.15930176f);
            _737 = exp2(log2(_725 * 0.0001f) * 0.15930176f);
            _738 = exp2(log2(_726 * 0.0001f) * 0.15930176f);
            SV_Target.x = exp2(log2((1.0f / ((_736 * 18.6875f) + 1.0f)) * ((_736 * 18.851562f) + 0.8359375f)) * 78.84375f);
            SV_Target.y = exp2(log2((1.0f / ((_737 * 18.6875f) + 1.0f)) * ((_737 * 18.851562f) + 0.8359375f)) * 78.84375f);
            SV_Target.z = exp2(log2((1.0f / ((_738 * 18.6875f) + 1.0f)) * ((_738 * 18.851562f) + 0.8359375f)) * 78.84375f);
            SV_Target.w = _302;
            break;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 123) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
    if (__loop_jump_target == 114) {
      __loop_jump_target = -1;
      continue;
    }
    if (__loop_jump_target != -1) {
      break;
    }
    break;
  }
  return SV_Target;
}
