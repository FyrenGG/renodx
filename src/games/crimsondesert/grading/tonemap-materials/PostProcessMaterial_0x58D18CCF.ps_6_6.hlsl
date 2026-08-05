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
  float _36;
  float _37;
  float _38;
  float _43;
  float _55;
  int _58;
  float _66;
  int _69;
  float _77;
  float _80;
  int _132;
  float _133;
  float _134;
  float _135;
  float _136;
  int _137;
  int _138;
  int _191;
  int _192;
  int _193;
  float _225;
  float _315;
  float _316;
  float _481;
  float _546;
  float _751;
  float _752;
  float _753;
  float _846;
  float _847;
  float _848;
  float _902;
  float _903;
  float _904;
  float _920;
  float _921;
  float _922;
  float _952;
  float _953;
  float _954;
  float _967;
  float _968;
  float _969;
  int _85;
  float _93;
  float _107;
  float _117;
  float _127;
  float _128;
  float _129;
  float _130;
  float _139;
  float _140;
  float _141;
  float _143;
  float _145;
  float _147;
  float _150;
  float _157;
  float _164;
  float _171;
  float _182;
  bool _183;
  float _184;
  float _185;
  float _186;
  float _187;
  int _188;
  int _195;
  int _198;
  float _205;
  float _209;
  float _213;
  float _230;
  int _233;
  int _241;
  int _244;
  float _252;
  float _268;
  uint2 _270;
  uint _289;
  int _291;
  float _295;
  float _300;
  float _302;
  float _303;
  float _304;
  float _318;
  float _319;
  float _320;
  float _321;
  float _323;
  float _324;
  float _325;
  float _326;
  float _328;
  float _330;
  float _365;
  uint _370;
  uint _375;
  uint4 _377;
  float4 _380;
  float _387;
  float _391;
  float _395;
  float _397;
  float _398;
  float _399;
  float _400;
  float _405;
  float _409;
  float _411;
  float _413;
  float _417;
  float _419;
  float _420;
  float _421;
  float _422;
  float _424;
  float _427;
  float _428;
  float _429;
  float _430;
  float _436;
  float _442;
  float _447;
  float _449;
  int _456;
  float _464;
  int _471;
  float _479;
  int _484;
  float _492;
  float _519;
  float _523;
  float _526;
  float _529;
  float _532;
  uint _533;
  bool _549;
  float _555;
  float _574;
  float _590;
  float _606;
  float _607;
  float _611;
  float _614;
  float _617;
  float _624;
  float _631;
  float _638;
  float _639;
  float _640;
  float _641;
  float _642;
  float _643;
  float _644;
  float _660;
  float _676;
  float _692;
  float _693;
  float _694;
  float _695;
  float _696;
  float _713;
  float _714;
  float _715;
  float _716;
  float _719;
  float _722;
  float _726;
  float _730;
  float _734;
  float _754;
  float _766;
  float _778;
  float _790;
  float _797;
  float _804;
  float _811;
  float _817;
  float _818;
  float _820;
  float _822;
  float _824;
  float _829;
  float _850;
  float _852;
  float _855;
  float _858;
  float _861;
  float _867;
  float _907;
  float _909;
  float _915;
  float _957;
  int __loop_jump_target = -1;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _36 = (TEXCOORD.x * 2.0f) + -1.0f;
  _37 = TEXCOORD.y * 2.0f;
  _38 = 1.0f - _37;
  _43 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _55 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _43, mad((_invViewProj[3].y), _38, ((_invViewProj[3].x) * _36)));
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _80 = saturate(1.0f - _77) * _66;
  if (!(!(_80 >= 0.001f))) {
    _85 = WaveReadLaneFirst(_materialIndex);
    _93 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _107 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _43, mad((_invViewProj[0].y), _38, ((_invViewProj[0].x) * _36)))) / _55) * _93;
    _117 = ((mad((_invViewProj[1].z), _43, mad((_invViewProj[1].y), _38, ((_invViewProj[1].x) * _36))) + (_invViewProj[1].w)) / _55) * _93;
    _127 = ((mad((_invViewProj[2].z), _43, mad((_invViewProj[2].y), _38, ((_invViewProj[2].x) * _36))) + (_invViewProj[2].w)) / _55) * _93;
    _128 = floor(_107);
    _129 = floor(_117);
    _130 = floor(_127);
    _132 = -1;
    _133 = 0.0f;
    _134 = 0.0f;
    _135 = 0.0f;
    _136 = 10.0f;
    _137 = -1;
    _138 = -1;
    while(true) {
      _192 = _137;
      _193 = _138;
      _139 = (float)((int)(_132));
      _140 = (float)((int)(_137));
      _141 = (float)((int)(_138));
      _143 = sin(_139 + _128);
      _145 = sin(_140 + _129);
      _147 = sin(_141 + _130);
      _150 = _time.x * 0.2f;
      _157 = sin(frac(sin(dot(float3(_143, _145, _147), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _150) + _139;
      _164 = sin(frac(sin(dot(float3(_143, _145, _147), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _150) + _140;
      _171 = sin(frac(sin(dot(float3(_143, _145, _147), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _150) + _141;
      _182 = max(abs((_128 - _107) + _157), max(abs((_129 - _117) + _164), abs((_130 - _127) + _171)));
      _183 = (_182 < _136);
      _184 = select(_183, _182, _136);
      _185 = select(_183, _157, _135);
      _186 = select(_183, _164, _134);
      _187 = select(_183, _171, _133);
      _188 = (int)(_132) + (int)(1);
      if (!(_188 == 2)) {
        _191 = _188;
        _192 = _137;
        _193 = _138;
        while(true) {
          _132 = _191;
          _133 = _187;
          _134 = _186;
          _135 = _185;
          _136 = _184;
          _137 = _192;
          _138 = _193;
          __loop_jump_target = 131;
          break;
          break;
        }
        if (__loop_jump_target == 131) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _195 = (int)(_137) + (int)(1);
      if (!(_195 == 2)) {
        _191 = -1;
        _192 = _195;
        _193 = _138;
        while(true) {
          _132 = _191;
          _133 = _187;
          _134 = _186;
          _135 = _185;
          _136 = _184;
          _137 = _192;
          _138 = _193;
          __loop_jump_target = 131;
          break;
          break;
        }
        if (__loop_jump_target == 131) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _198 = (int)(_138) + (int)(1);
      if (!(_198 == 2)) {
        _191 = -1;
        _192 = -1;
        _193 = _198;
        while(true) {
          _132 = _191;
          _133 = _187;
          _134 = _186;
          _135 = _185;
          _136 = _184;
          _137 = _192;
          _138 = _193;
          __loop_jump_target = 131;
          break;
          break;
        }
        if (__loop_jump_target == 131) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _205 = ((_185 + _128) / _93) - _mainPosition.x;
      _209 = ((_186 + _129) / _93) - _mainPosition.y;
      _213 = ((_187 + _130) / _93) - _mainPosition.z;
      // [sem: expr_sat]
      _225 = saturate((_184 + 1.0f) - ((1.0f - (sqrt(dot(float3(_205, _209, _213), float3(_205, _209, _213))) * (1.0f / max(1e-05f, _80)))) * 1.4705882f));
      break;
    }
  } else {
    _225 = 1.0f;  // [sem: expr_sat]
  }
  _230 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _244 = WaveReadLaneFirst(_materialIndex);
  _252 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _268 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_241 < (uint)65000), _241, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_230 * TEXCOORD.x), ((_time.x * 0.15f) + (_230 * TEXCOORD.y)))))).y) + -0.3f) * _252;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_270.x, _270.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _289 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_270.x))))))) + 0.5f) * ((_268 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_270.y))))))) + 0.5f) * ((_268 * 0.01f) + TEXCOORD.y))), 0));
  _291 = _289.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _295 = (((float)((uint)((uint)((uint)((uint)(_289.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _300 = (((float)((uint)((uint)(((uint)((uint)(_289.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _302 = 1.0f - abs(_295);
  _303 = abs(_300);
  _304 = _302 - _303;
  if (!(_304 >= 0.0f)) {
    _315 = (select((_300 >= 0.0f), 1.0f, -1.0f) * _302);
    _316 = (select((_295 >= 0.0f), 1.0f, -1.0f) * (1.0f - _303));
  } else {
    _315 = _300;
    _316 = _295;
  }
  _318 = rsqrt(dot(float3(_316, _315, _304), float3(_316, _315, _304)));  // [sem: invLength]
  _319 = _318 * _316;
  _320 = _318 * _315;
  _321 = _318 * _304;
  _323 = rsqrt(dot(float3(_319, _320, _321), float3(_319, _320, _321)));  // [sem: invLength]
  _324 = _323 * _319;
  _325 = _323 * _320;
  _326 = _323 * _321;
  _328 = (_268 * 0.0005f) + TEXCOORD.x;
  _330 = (_268 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _365 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _328) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _330) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _328)), ((int)(_customRenderPassSizeInvSize.y * _330)), 0)))).x)))));
  _370 = (uint)((_bufferSizeAndInvSize.x * ((_268 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _375 = (uint)((_bufferSizeAndInvSize.y * ((_268 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _377 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_370, _375, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _380 = __3__36__0__0__g_gbufferNormal.Load(int3(_370, _375, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _387 = (saturate(_380.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _391 = (saturate(_380.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _395 = (saturate(_380.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _397 = rsqrt(dot(float3(_387, _391, _395), float3(_387, _391, _395)));  // [sem: invLength]
  _398 = _397 * _387;
  _399 = _397 * _391;
  _400 = _395 * _397;
  _405 = (((float)((uint)((uint)(((uint)((uint)(_377.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _409 = (((float)((uint)((uint)(_377.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _411 = (_405 + _409) * 0.5f;
  _413 = (_405 - _409) * 0.5f;
  _417 = (1.0f - abs(_411)) - abs(_413);
  _419 = rsqrt(dot(float3(_411, _413, _417), float3(_411, _413, _417)));  // [sem: invLength]
  _420 = _419 * _411;
  _421 = _419 * _413;
  _422 = _419 * _417;
  _424 = select((_400 >= 0.0f), 1.0f, -1.0f);
  _427 = -0.0f - (1.0f / (_424 + _400));
  _428 = _399 * _427;
  _429 = _428 * _398;
  _430 = _424 * _398;
  _436 = mad(_422, _398, mad(_421, _429, ((((_430 * _398) * _427) + 1.0f) * _420)));
  _442 = mad(_422, _399, mad(_421, ((_428 * _399) + _424), ((_420 * _424) * _429)));
  _447 = mad(_422, _400, mad(_421, (-0.0f - _399), (-0.0f - (_430 * _420))));
  _449 = rsqrt(dot(float3(_436, _442, _447), float3(_436, _442, _447)));  // [sem: invLength]
  [branch]
  if (_291 == _renderPassMemory) {
    _456 = WaveReadLaneFirst(_materialIndex);
    _464 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_456 < (uint)170000), _456, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _481 = _464;
  } else {
    if (_291 == _renderPassEnemyBoss) {
      _471 = WaveReadLaneFirst(_materialIndex);
      _479 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_471 < (uint)170000), _471, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _481 = _479;
    } else {
      _481 = 1.0f;
    }
  }
  _484 = WaveReadLaneFirst(_materialIndex);
  _492 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_484 < (uint)170000), _484, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _519 = (saturate((_492 * 100.0f) + -99.0f) * _481) * exp2(log2(1.0f - abs(dot(float3(((((_449 * _436) - _324) * _365) + _324), ((((_449 * _442) - _325) * _365) + _325), ((((_449 * _447) - _326) * _365) + _326)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
  _523 = select((!(_365 == 0.0f)), _519, ((_519 * 0.06f) + 0.007f));
  _526 = ((_523 - _31.x) * _225) + _31.x;
  _529 = ((_523 - _31.y) * _225) + _31.y;
  _532 = ((_523 - _31.z) * _225) + _31.z;
  _533 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _546 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _533, 0)))).x) & 127)))) + 0.5f);
  } else {
    _546 = _225;
  }
  _549 = (_localToneMappingParams.w > 0.0f);
  if (_549) {
    _555 = _exposure0.x * _userImageAdjust.z;
    _574 = exp2(_powerParams.x * log2(max(0.0f, (((_555 * max(0.0f, (((_526 * 1.70505f) - (_529 * 0.62179f)) - (_532 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _590 = exp2(log2(max(0.0f, (((_slopeParams.y * _555) * max(0.0f, (((_529 * 1.1408f) - (_526 * 0.13026f)) - (_532 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _606 = exp2(log2(max(0.0f, (((_slopeParams.z * _555) * max(0.0f, (((_526 * -0.024f) - (_529 * 0.12897f)) + (_532 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _607 = dot(float3(_574, _590, _606), float3(0.212671f, 0.71516f, 0.072169f));
    _611 = ((_574 - _607) * _powerParams.w) + _607;
    _614 = ((_590 - _607) * _powerParams.w) + _607;
    _617 = ((_606 - _607) * _powerParams.w) + _607;
    _624 = min(max(log2(mad(_617, 0.079223745f, mad(_614, 0.0784336f, (_611 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _631 = min(max(log2(mad(_617, 0.07916613f, mad(_614, 0.87846863f, (_611 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _638 = min(max(log2(mad(_617, 0.879143f, mad(_614, 0.0784336f, (_611 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _639 = _624 * 0.060606062f;
    _640 = _631 * 0.060606062f;
    _641 = _638 * 0.060606062f;
    _642 = _639 * _639;
    _643 = _640 * _640;
    _644 = _641 * _641;
    _660 = min(0.0f, (-0.0f - (((_624 * 0.0072181816f) + ((_642 * 0.4298f) + (((_642 * _642) * ((31.96f - (_624 * 2.4327273f)) + (_642 * 15.5f))) - ((_624 * 0.41624245f) * _642)))) + -0.00232f)));
    _676 = min(0.0f, (-0.0f - (((_631 * 0.0072181816f) + ((_643 * 0.4298f) + (((_643 * _643) * ((31.96f - (_631 * 2.4327273f)) + (_643 * 15.5f))) - ((_631 * 0.41624245f) * _643)))) + -0.00232f)));
    _692 = min(0.0f, (-0.0f - (((_638 * 0.0072181816f) + ((_644 * 0.4298f) + (((_644 * _644) * ((31.96f - (_638 * 2.4327273f)) + (_644 * 15.5f))) - ((_638 * 0.41624245f) * _644)))) + -0.00232f)));
    _693 = -0.0f - _660;
    _694 = -0.0f - _676;
    _695 = -0.0f - _692;
    _696 = dot(float3(_693, _694, _695), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _713 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _714 = -0.79999995f / _713;
      _715 = -1.2f / _713;
      _716 = 0.20000005f / _713;
      _719 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _722 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _726 = (_714 + 1.4f) + (_722 * (-0.39999998f - _714));
      _730 = (_715 + 1.6f) + (_722 * (-0.6f - _715));
      _734 = (_716 + 0.9f) + (_722 * (0.5f - _716));
      _751 = (lerp(_734, 1.4f, _719));  // [sem: blended]
      _752 = (lerp(_726, 1.0f, _719));  // [sem: blended]
      _753 = (lerp(_730, 1.2f, _719));  // [sem: blended]
    } else {
      _751 = 1.4f;  // [sem: blended]
      _752 = 1.0f;  // [sem: blended]
      _753 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _754 = 1.0f - _753;
    _766 = ((exp2(log2(((saturate((_660 * _660) * _693) * _754) + _753) * _693) * _752) - _696) * _751) + _696;
    _778 = ((exp2(log2(((saturate((_676 * _676) * _694) * _754) + _753) * _694) * _752) - _696) * _751) + _696;
    _790 = ((exp2(log2(((saturate((_692 * _692) * _695) * _754) + _753) * _695) * _752) - _696) * _751) + _696;
    _797 = saturate(exp2(log2(mad(_790, -0.09902974f, mad(_778, -0.09802088f, (_766 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _804 = saturate(exp2(log2(mad(_790, -0.098961174f, mad(_778, 1.1519032f, (_766 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _811 = saturate(exp2(log2(mad(_790, 1.1510737f, mad(_778, -0.09804345f, (_766 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _817 = 1.0f - abs(_etcParams.w);
      _818 = saturate(_etcParams.w);  // [sem: expr_sat]
      _820 = (_817 * _797) + _818;
      _822 = (_817 * _804) + _818;
      _824 = (_817 * _811) + _818;
      if (_colorGradingParams.w > 0.0f) {
        _829 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _846 = (((max(0.0f, (1.0f - _824)) - _824) * _829) + _824);
        _847 = (((max(0.0f, (1.0f - _822)) - _822) * _829) + _822);
        _848 = (((max(0.0f, (1.0f - _820)) - _820) * _829) + _820);
      } else {
        _846 = _824;
        _847 = _822;
        _848 = _820;
      }
      _850 = _userImageAdjust.y + 1.0f;
      _852 = _userImageAdjust.x + 0.5f;
      _855 = ((_848 + -0.5f) * _850) + _852;
      _858 = ((_847 + -0.5f) * _850) + _852;
      _861 = ((_846 + -0.5f) * _850) + _852;
      _867 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _902 = exp2(log2(saturate(mad(_colorBlind0.z, _861, mad(_colorBlind0.y, _858, (_colorBlind0.x * _855))))) * _867);
      _903 = exp2(log2(saturate(mad(_colorBlind1.z, _861, mad(_colorBlind1.y, _858, (_colorBlind1.x * _855))))) * _867);
      _904 = exp2(log2(saturate(mad(_colorBlind2.z, _861, mad(_colorBlind2.y, _858, (_colorBlind2.x * _855))))) * _867);
    } else {
      _902 = _797;
      _903 = _804;
      _904 = _811;
    }
  } else {
    _902 = _526;
    _903 = _529;
    _904 = _532;
  }
  if (_etcParams.y > 1.0f) {
    _907 = abs(_36);
    _909 = abs(_37 + -1.0f);
    _915 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_907, _909), float2(_907, _909))));  // [sem: expr_sat]
    _920 = (_915 * _902);
    _921 = (_915 * _903);
    _922 = (_915 * _904);
  } else {
    _920 = _902;
    _921 = _903;
    _922 = _904;
  }
  if (_549 && (_etcParams.z > 0.0f)) {
    _952 = select((_920 <= 0.0031308f), (_920 * 12.92f), (((pow(_920, 0.41666666f)) * 1.055f) + -0.055f));
    _953 = select((_921 <= 0.0031308f), (_921 * 12.92f), (((pow(_921, 0.41666666f)) * 1.055f) + -0.055f));
    _954 = select((_922 <= 0.0031308f), (_922 * 12.92f), (((pow(_922, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _952 = _920;
    _953 = _921;
    _954 = _922;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _957 = (float)((uint)((uint)(_533)));
    if (!(_957 < _viewDir.w)) {
      if (!(!(_957 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _967 = 0.0f;
        _968 = 0.0f;
        _969 = 0.0f;
      } else {
        _967 = _952;
        _968 = _953;
        _969 = _954;
      }
    } else {
      _967 = 0.0f;
      _968 = 0.0f;
      _969 = 0.0f;
    }
  } else {
    _967 = _952;
    _968 = _953;
    _969 = _954;
  }
  SV_Target.x = _967;
  SV_Target.y = _968;
  SV_Target.z = _969;
  SV_Target.w = _546;
  return SV_Target;
}
