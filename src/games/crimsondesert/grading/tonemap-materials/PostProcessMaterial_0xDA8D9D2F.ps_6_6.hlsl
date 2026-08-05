struct PostProcessAimHighlight_CDStruct {
  float _aimHighlightProgress;
  float _aimHighlightBackground;
  uint _noiseTex;
  uint _auraTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  uint _aimGimmickColor;
  uint _aimHighlightColor;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};

struct BindlessParameters_PostProcessAimHighlight_CD {
  PostProcessAimHighlight_CDStruct BindlessParameters_PostProcessAimHighlight_CD;
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

typedef BindlessParameters_PostProcessAimHighlight_CD BindlessParameters_PostProcessAimHighlight_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAimHighlight_CD_t> BindlessParameters_PostProcessAimHighlight_CD[] : register(b0, space100);

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
  float _314;
  float _315;
  float _512;
  float _717;
  float _718;
  float _719;
  float _812;
  float _813;
  float _814;
  float _868;
  float _869;
  float _870;
  float _886;
  float _887;
  float _888;
  float _918;
  float _919;
  float _920;
  float _933;
  float _934;
  float _935;
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
  float _294;
  float _299;
  float _301;
  float _302;
  float _303;
  float _317;
  float _318;
  float _319;
  float _320;
  float _322;
  float _323;
  float _324;
  float _325;
  float _327;
  float _329;
  float _364;
  uint _369;
  uint _374;
  uint4 _376;
  float4 _379;
  float _386;
  float _390;
  float _394;
  float _396;
  float _397;
  float _398;
  float _399;
  float _404;
  float _408;
  float _410;
  float _412;
  float _416;
  float _418;
  float _419;
  float _420;
  float _421;
  float _423;
  float _426;
  float _427;
  float _428;
  float _429;
  float _435;
  float _441;
  float _446;
  float _448;
  int _451;
  float _459;
  float _485;
  float _489;
  float _492;
  float _495;
  float _498;
  uint _499;
  bool _515;
  float _521;
  float _540;
  float _556;
  float _572;
  float _573;
  float _577;
  float _580;
  float _583;
  float _590;
  float _597;
  float _604;
  float _605;
  float _606;
  float _607;
  float _608;
  float _609;
  float _610;
  float _626;
  float _642;
  float _658;
  float _659;
  float _660;
  float _661;
  float _662;
  float _679;
  float _680;
  float _681;
  float _682;
  float _685;
  float _688;
  float _692;
  float _696;
  float _700;
  float _720;
  float _732;
  float _744;
  float _756;
  float _763;
  float _770;
  float _777;
  float _783;
  float _784;
  float _786;
  float _788;
  float _790;
  float _795;
  float _816;
  float _818;
  float _821;
  float _824;
  float _827;
  float _833;
  float _873;
  float _875;
  float _881;
  float _923;
  int __loop_jump_target = -1;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _36 = (TEXCOORD.x * 2.0f) + -1.0f;
  _37 = TEXCOORD.y * 2.0f;
  _38 = 1.0f - _37;
  _43 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _55 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _43, mad((_invViewProj[3].y), _38, ((_invViewProj[3].x) * _36)));
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _80 = saturate(1.0f - _77) * _66;
  if (!(!(_80 >= 0.001f))) {
    _85 = WaveReadLaneFirst(_materialIndex);
    _93 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
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
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _244 = WaveReadLaneFirst(_materialIndex);
  _252 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _268 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_241 < (uint)65000), _241, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_230 * TEXCOORD.x), ((_time.x * 0.15f) + (_230 * TEXCOORD.y)))))).y) + -0.3f) * _252;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_270.x, _270.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _289 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_270.x))))))) + 0.5f) * ((_268 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_270.y))))))) + 0.5f) * ((_268 * 0.01f) + TEXCOORD.y))), 0));
  _294 = (((float)((uint)((uint)((uint)((uint)(_289.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _299 = (((float)((uint)((uint)(((uint)((uint)(_289.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _301 = 1.0f - abs(_294);
  _302 = abs(_299);
  _303 = _301 - _302;
  if (!(_303 >= 0.0f)) {
    _314 = (select((_299 >= 0.0f), 1.0f, -1.0f) * _301);
    _315 = (select((_294 >= 0.0f), 1.0f, -1.0f) * (1.0f - _302));
  } else {
    _314 = _299;
    _315 = _294;
  }
  _317 = rsqrt(dot(float3(_315, _314, _303), float3(_315, _314, _303)));  // [sem: invLength]
  _318 = _317 * _315;
  _319 = _317 * _314;
  _320 = _317 * _303;
  _322 = rsqrt(dot(float3(_318, _319, _320), float3(_318, _319, _320)));  // [sem: invLength]
  _323 = _322 * _318;
  _324 = _322 * _319;
  _325 = _322 * _320;
  _327 = (_268 * 0.0005f) + TEXCOORD.x;
  _329 = (_268 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _364 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _327) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _329) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _327)), ((int)(_customRenderPassSizeInvSize.y * _329)), 0)))).x)))));
  _369 = (uint)((_bufferSizeAndInvSize.x * ((_268 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _374 = (uint)((_bufferSizeAndInvSize.y * ((_268 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _376 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_369, _374, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _379 = __3__36__0__0__g_gbufferNormal.Load(int3(_369, _374, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _386 = (saturate(_379.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _390 = (saturate(_379.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _394 = (saturate(_379.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _396 = rsqrt(dot(float3(_386, _390, _394), float3(_386, _390, _394)));  // [sem: invLength]
  _397 = _396 * _386;
  _398 = _396 * _390;
  _399 = _394 * _396;
  _404 = (((float)((uint)((uint)(((uint)((uint)(_376.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _408 = (((float)((uint)((uint)(_376.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _410 = (_404 + _408) * 0.5f;
  _412 = (_404 - _408) * 0.5f;
  _416 = (1.0f - abs(_410)) - abs(_412);
  _418 = rsqrt(dot(float3(_410, _412, _416), float3(_410, _412, _416)));  // [sem: invLength]
  _419 = _418 * _410;
  _420 = _418 * _412;
  _421 = _418 * _416;
  _423 = select((_399 >= 0.0f), 1.0f, -1.0f);
  _426 = -0.0f - (1.0f / (_423 + _399));
  _427 = _398 * _426;
  _428 = _427 * _397;
  _429 = _423 * _397;
  _435 = mad(_421, _397, mad(_420, _428, ((((_429 * _397) * _426) + 1.0f) * _419)));
  _441 = mad(_421, _398, mad(_420, ((_427 * _398) + _423), ((_419 * _423) * _428)));
  _446 = mad(_421, _399, mad(_420, (-0.0f - _398), (-0.0f - (_429 * _419))));
  _448 = rsqrt(dot(float3(_435, _441, _446), float3(_435, _441, _446)));  // [sem: invLength]
  _451 = WaveReadLaneFirst(_materialIndex);
  _459 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_451 < (uint)170000), _451, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  // [sem: expr_sat]
  _485 = saturate((_459 * 100.0f) + -99.0f) * exp2(log2(1.0f - abs(dot(float3(((((_448 * _435) - _323) * _364) + _323), ((((_448 * _441) - _324) * _364) + _324), ((((_448 * _446) - _325) * _364) + _325)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
  _489 = select((!(_364 == 0.0f)), _485, ((_485 * 0.25f) + 0.01f));
  _492 = ((_489 - _31.x) * _225) + _31.x;
  _495 = ((_489 - _31.y) * _225) + _31.y;
  _498 = ((_489 - _31.z) * _225) + _31.z;
  _499 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _512 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _499, 0)))).x) & 127)))) + 0.5f);
  } else {
    _512 = _225;
  }
  _515 = (_localToneMappingParams.w > 0.0f);
  if (_515) {
    _521 = _exposure0.x * _userImageAdjust.z;
    _540 = exp2(_powerParams.x * log2(max(0.0f, (((_521 * max(0.0f, (((_492 * 1.70505f) - (_495 * 0.62179f)) - (_498 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _556 = exp2(log2(max(0.0f, (((_slopeParams.y * _521) * max(0.0f, (((_495 * 1.1408f) - (_492 * 0.13026f)) - (_498 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _572 = exp2(log2(max(0.0f, (((_slopeParams.z * _521) * max(0.0f, (((_492 * -0.024f) - (_495 * 0.12897f)) + (_498 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _573 = dot(float3(_540, _556, _572), float3(0.212671f, 0.71516f, 0.072169f));
    _577 = ((_540 - _573) * _powerParams.w) + _573;
    _580 = ((_556 - _573) * _powerParams.w) + _573;
    _583 = ((_572 - _573) * _powerParams.w) + _573;
    _590 = min(max(log2(mad(_583, 0.079223745f, mad(_580, 0.0784336f, (_577 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _597 = min(max(log2(mad(_583, 0.07916613f, mad(_580, 0.87846863f, (_577 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _604 = min(max(log2(mad(_583, 0.879143f, mad(_580, 0.0784336f, (_577 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _605 = _590 * 0.060606062f;
    _606 = _597 * 0.060606062f;
    _607 = _604 * 0.060606062f;
    _608 = _605 * _605;
    _609 = _606 * _606;
    _610 = _607 * _607;
    _626 = min(0.0f, (-0.0f - (((_590 * 0.0072181816f) + ((_608 * 0.4298f) + (((_608 * _608) * ((31.96f - (_590 * 2.4327273f)) + (_608 * 15.5f))) - ((_590 * 0.41624245f) * _608)))) + -0.00232f)));
    _642 = min(0.0f, (-0.0f - (((_597 * 0.0072181816f) + ((_609 * 0.4298f) + (((_609 * _609) * ((31.96f - (_597 * 2.4327273f)) + (_609 * 15.5f))) - ((_597 * 0.41624245f) * _609)))) + -0.00232f)));
    _658 = min(0.0f, (-0.0f - (((_604 * 0.0072181816f) + ((_610 * 0.4298f) + (((_610 * _610) * ((31.96f - (_604 * 2.4327273f)) + (_610 * 15.5f))) - ((_604 * 0.41624245f) * _610)))) + -0.00232f)));
    _659 = -0.0f - _626;
    _660 = -0.0f - _642;
    _661 = -0.0f - _658;
    _662 = dot(float3(_659, _660, _661), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _679 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _680 = -0.79999995f / _679;
      _681 = -1.2f / _679;
      _682 = 0.20000005f / _679;
      _685 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _688 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _692 = (_680 + 1.4f) + (_688 * (-0.39999998f - _680));
      _696 = (_681 + 1.6f) + (_688 * (-0.6f - _681));
      _700 = (_682 + 0.9f) + (_688 * (0.5f - _682));
      _717 = (lerp(_700, 1.4f, _685));  // [sem: blended]
      _718 = (lerp(_692, 1.0f, _685));  // [sem: blended]
      _719 = (lerp(_696, 1.2f, _685));  // [sem: blended]
    } else {
      _717 = 1.4f;  // [sem: blended]
      _718 = 1.0f;  // [sem: blended]
      _719 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _720 = 1.0f - _719;
    _732 = ((exp2(log2(((saturate((_626 * _626) * _659) * _720) + _719) * _659) * _718) - _662) * _717) + _662;
    _744 = ((exp2(log2(((saturate((_642 * _642) * _660) * _720) + _719) * _660) * _718) - _662) * _717) + _662;
    _756 = ((exp2(log2(((saturate((_658 * _658) * _661) * _720) + _719) * _661) * _718) - _662) * _717) + _662;
    _763 = saturate(exp2(log2(mad(_756, -0.09902974f, mad(_744, -0.09802088f, (_732 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _770 = saturate(exp2(log2(mad(_756, -0.098961174f, mad(_744, 1.1519032f, (_732 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _777 = saturate(exp2(log2(mad(_756, 1.1510737f, mad(_744, -0.09804345f, (_732 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _783 = 1.0f - abs(_etcParams.w);
      _784 = saturate(_etcParams.w);  // [sem: expr_sat]
      _786 = (_783 * _763) + _784;
      _788 = (_783 * _770) + _784;
      _790 = (_783 * _777) + _784;
      if (_colorGradingParams.w > 0.0f) {
        _795 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _812 = (((max(0.0f, (1.0f - _790)) - _790) * _795) + _790);
        _813 = (((max(0.0f, (1.0f - _788)) - _788) * _795) + _788);
        _814 = (((max(0.0f, (1.0f - _786)) - _786) * _795) + _786);
      } else {
        _812 = _790;
        _813 = _788;
        _814 = _786;
      }
      _816 = _userImageAdjust.y + 1.0f;
      _818 = _userImageAdjust.x + 0.5f;
      _821 = ((_814 + -0.5f) * _816) + _818;
      _824 = ((_813 + -0.5f) * _816) + _818;
      _827 = ((_812 + -0.5f) * _816) + _818;
      _833 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _868 = exp2(log2(saturate(mad(_colorBlind0.z, _827, mad(_colorBlind0.y, _824, (_colorBlind0.x * _821))))) * _833);
      _869 = exp2(log2(saturate(mad(_colorBlind1.z, _827, mad(_colorBlind1.y, _824, (_colorBlind1.x * _821))))) * _833);
      _870 = exp2(log2(saturate(mad(_colorBlind2.z, _827, mad(_colorBlind2.y, _824, (_colorBlind2.x * _821))))) * _833);
    } else {
      _868 = _763;
      _869 = _770;
      _870 = _777;
    }
  } else {
    _868 = _492;
    _869 = _495;
    _870 = _498;
  }
  if (_etcParams.y > 1.0f) {
    _873 = abs(_36);
    _875 = abs(_37 + -1.0f);
    _881 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_873, _875), float2(_873, _875))));  // [sem: expr_sat]
    _886 = (_881 * _868);
    _887 = (_881 * _869);
    _888 = (_881 * _870);
  } else {
    _886 = _868;
    _887 = _869;
    _888 = _870;
  }
  if (_515 && (_etcParams.z > 0.0f)) {
    _918 = select((_886 <= 0.0031308f), (_886 * 12.92f), (((pow(_886, 0.41666666f)) * 1.055f) + -0.055f));
    _919 = select((_887 <= 0.0031308f), (_887 * 12.92f), (((pow(_887, 0.41666666f)) * 1.055f) + -0.055f));
    _920 = select((_888 <= 0.0031308f), (_888 * 12.92f), (((pow(_888, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _918 = _886;
    _919 = _887;
    _920 = _888;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _923 = (float)((uint)((uint)(_499)));
    if (!(_923 < _viewDir.w)) {
      if (!(!(_923 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _933 = 0.0f;
        _934 = 0.0f;
        _935 = 0.0f;
      } else {
        _933 = _918;
        _934 = _919;
        _935 = _920;
      }
    } else {
      _933 = 0.0f;
      _934 = 0.0f;
      _935 = 0.0f;
    }
  } else {
    _933 = _918;
    _934 = _919;
    _935 = _920;
  }
  SV_Target.x = _933;
  SV_Target.y = _934;
  SV_Target.z = _935;
  SV_Target.w = _512;
  return SV_Target;
}
