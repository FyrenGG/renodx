struct PostProcessMemoryRead_CDStruct {
  float _memoryReadProgress;
  float _memoryReadBackgroundOpacity;
  float _memoryOpacity;
  float _enemyBossOpacity;
  uint _noiseTex;
  uint _auraTex;
  uint _glitchTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float3 _cubeSpaceSkyColor;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _cubeSpaceSpeedRatio;
  float _tempCubeSpaceRatio;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

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
  float4 _31;
  float _37;
  float _40;
  float _43;
  float _52;
  float _61;
  float _70;
  float _72;
  float _73;
  float _74;
  float _79;
  float _91;
  int _94;
  float _102;
  int _105;
  float _113;
  float _116;
  int _168;
  float _169;
  float _170;
  float _171;
  float _172;
  int _173;
  int _174;
  int _227;
  int _228;
  int _229;
  float _261;
  float _351;
  float _352;
  float _517;
  float _582;
  float _787;
  float _788;
  float _789;
  float _882;
  float _883;
  float _884;
  float _938;
  float _939;
  float _940;
  float _956;
  float _957;
  float _958;
  float _988;
  float _989;
  float _990;
  float _1003;
  float _1004;
  float _1005;
  int _121;
  float _129;
  float _143;
  float _153;
  float _163;
  float _164;
  float _165;
  float _166;
  float _175;
  float _176;
  float _177;
  float _179;
  float _181;
  float _183;
  float _186;
  float _193;
  float _200;
  float _207;
  float _218;
  bool _219;
  float _220;
  float _221;
  float _222;
  float _223;
  int _224;
  int _231;
  int _234;
  float _241;
  float _245;
  float _249;
  float _266;
  int _269;
  int _277;
  int _280;
  float _288;
  float _304;
  uint2 _306;
  uint _325;
  int _327;
  float _331;
  float _336;
  float _338;
  float _339;
  float _340;
  float _354;
  float _355;
  float _356;
  float _357;
  float _359;
  float _360;
  float _361;
  float _362;
  float _364;
  float _366;
  float _401;
  uint _406;
  uint _411;
  uint4 _413;
  float4 _416;
  float _423;
  float _427;
  float _431;
  float _433;
  float _434;
  float _435;
  float _436;
  float _441;
  float _445;
  float _447;
  float _449;
  float _453;
  float _455;
  float _456;
  float _457;
  float _458;
  float _460;
  float _463;
  float _464;
  float _465;
  float _466;
  float _472;
  float _478;
  float _483;
  float _485;
  int _492;
  float _500;
  int _507;
  float _515;
  int _520;
  float _528;
  float _555;
  float _559;
  float _562;
  float _565;
  float _568;
  uint _569;
  bool _585;
  float _591;
  float _610;
  float _626;
  float _642;
  float _643;
  float _647;
  float _650;
  float _653;
  float _660;
  float _667;
  float _674;
  float _675;
  float _676;
  float _677;
  float _678;
  float _679;
  float _680;
  float _696;
  float _712;
  float _728;
  float _729;
  float _730;
  float _731;
  float _732;
  float _749;
  float _750;
  float _751;
  float _752;
  float _755;
  float _758;
  float _762;
  float _766;
  float _770;
  float _790;
  float _802;
  float _814;
  float _826;
  float _833;
  float _840;
  float _847;
  float _853;
  float _854;
  float _856;
  float _858;
  float _860;
  float _865;
  float _886;
  float _888;
  float _891;
  float _894;
  float _897;
  float _903;
  float _943;
  float _945;
  float _951;
  float _993;
  float _1009;
  float _1013;
  float _1017;
  int __loop_jump_target = -1;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_31.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_31.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _52 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _61 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  _72 = (TEXCOORD.x * 2.0f) + -1.0f;
  _73 = TEXCOORD.y * 2.0f;
  _74 = 1.0f - _73;
  _79 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _91 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _79, mad((_invViewProj[3].y), _74, ((_invViewProj[3].x) * _72)));
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _105 = WaveReadLaneFirst(_materialIndex);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_105 < (uint)170000), _105, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _116 = saturate(1.0f - _113) * _102;
  if (!(!(_116 >= 0.001f))) {
    _121 = WaveReadLaneFirst(_materialIndex);
    _129 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _143 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _79, mad((_invViewProj[0].y), _74, ((_invViewProj[0].x) * _72)))) / _91) * _129;
    _153 = ((mad((_invViewProj[1].z), _79, mad((_invViewProj[1].y), _74, ((_invViewProj[1].x) * _72))) + (_invViewProj[1].w)) / _91) * _129;
    _163 = ((mad((_invViewProj[2].z), _79, mad((_invViewProj[2].y), _74, ((_invViewProj[2].x) * _72))) + (_invViewProj[2].w)) / _91) * _129;
    _164 = floor(_143);
    _165 = floor(_153);
    _166 = floor(_163);
    _168 = -1;
    _169 = 0.0f;
    _170 = 0.0f;
    _171 = 0.0f;
    _172 = 10.0f;
    _173 = -1;
    _174 = -1;
    while(true) {
      _228 = _173;
      _229 = _174;
      _175 = (float)((int)(_168));
      _176 = (float)((int)(_173));
      _177 = (float)((int)(_174));
      _179 = sin(_175 + _164);
      _181 = sin(_176 + _165);
      _183 = sin(_177 + _166);
      _186 = _time.x * 0.2f;
      _193 = sin(frac(sin(dot(float3(_179, _181, _183), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _186) + _175;
      _200 = sin(frac(sin(dot(float3(_179, _181, _183), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _186) + _176;
      _207 = sin(frac(sin(dot(float3(_179, _181, _183), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _186) + _177;
      _218 = max(abs((_164 - _143) + _193), max(abs((_165 - _153) + _200), abs((_166 - _163) + _207)));
      _219 = (_218 < _172);
      _220 = select(_219, _218, _172);
      _221 = select(_219, _193, _171);
      _222 = select(_219, _200, _170);
      _223 = select(_219, _207, _169);
      _224 = (int)(_168) + (int)(1);
      if (!(_224 == 2)) {
        _227 = _224;
        _228 = _173;
        _229 = _174;
        while(true) {
          _168 = _227;
          _169 = _223;
          _170 = _222;
          _171 = _221;
          _172 = _220;
          _173 = _228;
          _174 = _229;
          __loop_jump_target = 167;
          break;
          break;
        }
        if (__loop_jump_target == 167) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _231 = (int)(_173) + (int)(1);
      if (!(_231 == 2)) {
        _227 = -1;
        _228 = _231;
        _229 = _174;
        while(true) {
          _168 = _227;
          _169 = _223;
          _170 = _222;
          _171 = _221;
          _172 = _220;
          _173 = _228;
          _174 = _229;
          __loop_jump_target = 167;
          break;
          break;
        }
        if (__loop_jump_target == 167) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _234 = (int)(_174) + (int)(1);
      if (!(_234 == 2)) {
        _227 = -1;
        _228 = -1;
        _229 = _234;
        while(true) {
          _168 = _227;
          _169 = _223;
          _170 = _222;
          _171 = _221;
          _172 = _220;
          _173 = _228;
          _174 = _229;
          __loop_jump_target = 167;
          break;
          break;
        }
        if (__loop_jump_target == 167) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _241 = ((_221 + _164) / _129) - _mainPosition.x;
      _245 = ((_222 + _165) / _129) - _mainPosition.y;
      _249 = ((_223 + _166) / _129) - _mainPosition.z;
      // [sem: expr_sat]
      _261 = saturate((_220 + 1.0f) - ((1.0f - (sqrt(dot(float3(_241, _245, _249), float3(_241, _245, _249))) * (1.0f / max(1e-05f, _116)))) * 1.4705882f));
      break;
    }
  } else {
    _261 = 1.0f;  // [sem: expr_sat]
  }
  _266 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
  _269 = WaveReadLaneFirst(_materialIndex);
  _277 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_269 < (uint)170000), _269, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _280 = WaveReadLaneFirst(_materialIndex);
  _288 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_280 < (uint)170000), _280, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _304 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_277 < (uint)65000), _277, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_266 * TEXCOORD.x), ((_time.x * 0.15f) + (_266 * TEXCOORD.y)))))).y) + -0.3f) * _288;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_306.x, _306.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _325 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_306.x))))))) + 0.5f) * ((_304 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_306.y))))))) + 0.5f) * ((_304 * 0.01f) + TEXCOORD.y))), 0));
  _327 = _325.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _331 = (((float)((uint)((uint)((uint)((uint)(_325.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _336 = (((float)((uint)((uint)(((uint)((uint)(_325.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _338 = 1.0f - abs(_331);
  _339 = abs(_336);
  _340 = _338 - _339;
  if (!(_340 >= 0.0f)) {
    _351 = (select((_336 >= 0.0f), 1.0f, -1.0f) * _338);
    _352 = (select((_331 >= 0.0f), 1.0f, -1.0f) * (1.0f - _339));
  } else {
    _351 = _336;
    _352 = _331;
  }
  _354 = rsqrt(dot(float3(_352, _351, _340), float3(_352, _351, _340)));  // [sem: invLength]
  _355 = _354 * _352;
  _356 = _354 * _351;
  _357 = _354 * _340;
  _359 = rsqrt(dot(float3(_355, _356, _357), float3(_355, _356, _357)));  // [sem: invLength]
  _360 = _359 * _355;
  _361 = _359 * _356;
  _362 = _359 * _357;
  _364 = (_304 * 0.0005f) + TEXCOORD.x;
  _366 = (_304 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _401 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _364) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _366) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _364)), ((int)(_customRenderPassSizeInvSize.y * _366)), 0)))).x)))));
  _406 = (uint)((_bufferSizeAndInvSize.x * ((_304 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _411 = (uint)((_bufferSizeAndInvSize.y * ((_304 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _413 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_406, _411, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _416 = __3__36__0__0__g_gbufferNormal.Load(int3(_406, _411, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _423 = (saturate(_416.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _427 = (saturate(_416.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _431 = (saturate(_416.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _433 = rsqrt(dot(float3(_423, _427, _431), float3(_423, _427, _431)));  // [sem: invLength]
  _434 = _433 * _423;
  _435 = _433 * _427;
  _436 = _431 * _433;
  _441 = (((float)((uint)((uint)(((uint)((uint)(_413.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _445 = (((float)((uint)((uint)(_413.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _447 = (_441 + _445) * 0.5f;
  _449 = (_441 - _445) * 0.5f;
  _453 = (1.0f - abs(_447)) - abs(_449);
  _455 = rsqrt(dot(float3(_447, _449, _453), float3(_447, _449, _453)));  // [sem: invLength]
  _456 = _455 * _447;
  _457 = _455 * _449;
  _458 = _455 * _453;
  _460 = select((_436 >= 0.0f), 1.0f, -1.0f);
  _463 = -0.0f - (1.0f / (_460 + _436));
  _464 = _435 * _463;
  _465 = _464 * _434;
  _466 = _460 * _434;
  _472 = mad(_458, _434, mad(_457, _465, ((((_466 * _434) * _463) + 1.0f) * _456)));
  _478 = mad(_458, _435, mad(_457, ((_464 * _435) + _460), ((_456 * _460) * _465)));
  _483 = mad(_458, _436, mad(_457, (-0.0f - _435), (-0.0f - (_466 * _456))));
  _485 = rsqrt(dot(float3(_472, _478, _483), float3(_472, _478, _483)));  // [sem: invLength]
  [branch]
  if (_327 == _renderPassMemory) {
    _492 = WaveReadLaneFirst(_materialIndex);
    _500 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_492 < (uint)170000), _492, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _517 = _500;
  } else {
    if (_327 == _renderPassEnemyBoss) {
      _507 = WaveReadLaneFirst(_materialIndex);
      _515 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_507 < (uint)170000), _507, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _517 = _515;
    } else {
      _517 = 1.0f;
    }
  }
  _520 = WaveReadLaneFirst(_materialIndex);
  _528 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_520 < (uint)170000), _520, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _555 = (saturate((_528 * 100.0f) + -99.0f) * _517) * exp2(log2(1.0f - abs(dot(float3(((((_485 * _472) - _360) * _401) + _360), ((((_485 * _478) - _361) * _401) + _361), ((((_485 * _483) - _362) * _401) + _362)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
  _559 = select((!(_401 == 0.0f)), _555, ((_555 * 0.06f) + 0.007f));
  _562 = ((_559 - _52) * _261) + _52;
  _565 = ((_559 - _61) * _261) + _61;
  _568 = ((_559 - _70) * _261) + _70;
  _569 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _582 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _569, 0)))).x) & 127)))) + 0.5f);
  } else {
    _582 = _261;
  }
  _585 = (_localToneMappingParams.w > 0.0f);
  if (_585) {
    _591 = _exposure0.x * _userImageAdjust.z;
    _610 = exp2(_powerParams.x * log2(max(0.0f, (((_591 * max(0.0f, (((_562 * 1.70505f) - (_565 * 0.62179f)) - (_568 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _626 = exp2(log2(max(0.0f, (((_slopeParams.y * _591) * max(0.0f, (((_565 * 1.1408f) - (_562 * 0.13026f)) - (_568 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _642 = exp2(log2(max(0.0f, (((_slopeParams.z * _591) * max(0.0f, (((_562 * -0.024f) - (_565 * 0.12897f)) + (_568 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _643 = dot(float3(_610, _626, _642), float3(0.212671f, 0.71516f, 0.072169f));
    _647 = ((_610 - _643) * _powerParams.w) + _643;
    _650 = ((_626 - _643) * _powerParams.w) + _643;
    _653 = ((_642 - _643) * _powerParams.w) + _643;
    _660 = min(max(log2(mad(_653, 0.079223745f, mad(_650, 0.0784336f, (_647 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _667 = min(max(log2(mad(_653, 0.07916613f, mad(_650, 0.87846863f, (_647 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _674 = min(max(log2(mad(_653, 0.879143f, mad(_650, 0.0784336f, (_647 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _675 = _660 * 0.060606062f;
    _676 = _667 * 0.060606062f;
    _677 = _674 * 0.060606062f;
    _678 = _675 * _675;
    _679 = _676 * _676;
    _680 = _677 * _677;
    _696 = min(0.0f, (-0.0f - (((_660 * 0.0072181816f) + ((_678 * 0.4298f) + (((_678 * _678) * ((31.96f - (_660 * 2.4327273f)) + (_678 * 15.5f))) - ((_660 * 0.41624245f) * _678)))) + -0.00232f)));
    _712 = min(0.0f, (-0.0f - (((_667 * 0.0072181816f) + ((_679 * 0.4298f) + (((_679 * _679) * ((31.96f - (_667 * 2.4327273f)) + (_679 * 15.5f))) - ((_667 * 0.41624245f) * _679)))) + -0.00232f)));
    _728 = min(0.0f, (-0.0f - (((_674 * 0.0072181816f) + ((_680 * 0.4298f) + (((_680 * _680) * ((31.96f - (_674 * 2.4327273f)) + (_680 * 15.5f))) - ((_674 * 0.41624245f) * _680)))) + -0.00232f)));
    _729 = -0.0f - _696;
    _730 = -0.0f - _712;
    _731 = -0.0f - _728;
    _732 = dot(float3(_729, _730, _731), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _749 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _750 = -0.79999995f / _749;
      _751 = -1.2f / _749;
      _752 = 0.20000005f / _749;
      _755 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _758 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _762 = (_750 + 1.4f) + (_758 * (-0.39999998f - _750));
      _766 = (_751 + 1.6f) + (_758 * (-0.6f - _751));
      _770 = (_752 + 0.9f) + (_758 * (0.5f - _752));
      _787 = (lerp(_766, 1.2f, _755));  // [sem: blended]
      _788 = (lerp(_762, 1.0f, _755));  // [sem: blended]
      _789 = (lerp(_770, 1.4f, _755));  // [sem: blended]
    } else {
      _787 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _788 = 1.0f;  // [sem: blended]
      _789 = 1.4f;  // [sem: blended]
    }
    _790 = 1.0f - _787;
    _802 = ((exp2(log2(((saturate((_696 * _696) * _729) * _790) + _787) * _729) * _788) - _732) * _789) + _732;
    _814 = ((exp2(log2(((saturate((_712 * _712) * _730) * _790) + _787) * _730) * _788) - _732) * _789) + _732;
    _826 = ((exp2(log2(((saturate((_728 * _728) * _731) * _790) + _787) * _731) * _788) - _732) * _789) + _732;
    _833 = saturate(exp2(log2(mad(_826, -0.09902974f, mad(_814, -0.09802088f, (_802 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _840 = saturate(exp2(log2(mad(_826, -0.098961174f, mad(_814, 1.1519032f, (_802 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _847 = saturate(exp2(log2(mad(_826, 1.1510737f, mad(_814, -0.09804345f, (_802 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _853 = 1.0f - abs(_etcParams.w);
      _854 = saturate(_etcParams.w);  // [sem: expr_sat]
      _856 = (_853 * _833) + _854;
      _858 = (_853 * _840) + _854;
      _860 = (_853 * _847) + _854;
      if (_colorGradingParams.w > 0.0f) {
        _865 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _882 = (((max(0.0f, (1.0f - _856)) - _856) * _865) + _856);
        _883 = (((max(0.0f, (1.0f - _858)) - _858) * _865) + _858);
        _884 = (((max(0.0f, (1.0f - _860)) - _860) * _865) + _860);
      } else {
        _882 = _856;
        _883 = _858;
        _884 = _860;
      }
      _886 = _userImageAdjust.y + 1.0f;
      _888 = _userImageAdjust.x + 0.5f;
      _891 = ((_882 + -0.5f) * _886) + _888;
      _894 = ((_883 + -0.5f) * _886) + _888;
      _897 = ((_884 + -0.5f) * _886) + _888;
      _903 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _938 = exp2(log2(saturate(mad(_colorBlind0.z, _897, mad(_colorBlind0.y, _894, (_colorBlind0.x * _891))))) * _903);
      _939 = exp2(log2(saturate(mad(_colorBlind1.z, _897, mad(_colorBlind1.y, _894, (_colorBlind1.x * _891))))) * _903);
      _940 = exp2(log2(saturate(mad(_colorBlind2.z, _897, mad(_colorBlind2.y, _894, (_colorBlind2.x * _891))))) * _903);
    } else {
      _938 = _833;
      _939 = _840;
      _940 = _847;
    }
  } else {
    _938 = _562;
    _939 = _565;
    _940 = _568;
  }
  if (_etcParams.y > 1.0f) {
    _943 = abs(_72);
    _945 = abs(_73 + -1.0f);
    _951 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_943, _945), float2(_943, _945))));  // [sem: expr_sat]
    _956 = (_951 * _938);
    _957 = (_951 * _939);
    _958 = (_951 * _940);
  } else {
    _956 = _938;
    _957 = _939;
    _958 = _940;
  }
  if (_585 && (_etcParams.z > 0.0f)) {
    _988 = select((_956 <= 0.0031308f), (_956 * 12.92f), (((pow(_956, 0.41666666f)) * 1.055f) + -0.055f));
    _989 = select((_957 <= 0.0031308f), (_957 * 12.92f), (((pow(_957, 0.41666666f)) * 1.055f) + -0.055f));
    _990 = select((_958 <= 0.0031308f), (_958 * 12.92f), (((pow(_958, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _988 = _956;
    _989 = _957;
    _990 = _958;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _993 = (float)((uint)((uint)(_569)));
    if (!(_993 < _viewDir.w)) {
      if (!(!(_993 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1003 = 0.0f;
        _1004 = 0.0f;
        _1005 = 0.0f;
      } else {
        _1003 = _988;
        _1004 = _989;
        _1005 = _990;
      }
    } else {
      _1003 = 0.0f;
      _1004 = 0.0f;
      _1005 = 0.0f;
    }
  } else {
    _1003 = _988;
    _1004 = _989;
    _1005 = _990;
  }
  _1009 = exp2(log2(_1003 * 0.0001f) * 0.15930176f);
  _1013 = exp2(log2(_1004 * 0.0001f) * 0.15930176f);
  _1017 = exp2(log2(_1005 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1009 * 18.6875f) + 1.0f)) * ((_1009 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1013 * 18.6875f) + 1.0f)) * ((_1013 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1017 * 18.6875f) + 1.0f)) * ((_1017 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _582;
  return SV_Target;
}
