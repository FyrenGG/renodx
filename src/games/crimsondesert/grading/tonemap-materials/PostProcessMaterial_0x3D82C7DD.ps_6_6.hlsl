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
  float _350;
  float _351;
  float _548;
  float _753;
  float _754;
  float _755;
  float _848;
  float _849;
  float _850;
  float _904;
  float _905;
  float _906;
  float _922;
  float _923;
  float _924;
  float _954;
  float _955;
  float _956;
  float _969;
  float _970;
  float _971;
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
  float _330;
  float _335;
  float _337;
  float _338;
  float _339;
  float _353;
  float _354;
  float _355;
  float _356;
  float _358;
  float _359;
  float _360;
  float _361;
  float _363;
  float _365;
  float _400;
  uint _405;
  uint _410;
  uint4 _412;
  float4 _415;
  float _422;
  float _426;
  float _430;
  float _432;
  float _433;
  float _434;
  float _435;
  float _440;
  float _444;
  float _446;
  float _448;
  float _452;
  float _454;
  float _455;
  float _456;
  float _457;
  float _459;
  float _462;
  float _463;
  float _464;
  float _465;
  float _471;
  float _477;
  float _482;
  float _484;
  int _487;
  float _495;
  float _521;
  float _525;
  float _528;
  float _531;
  float _534;
  uint _535;
  bool _551;
  float _557;
  float _576;
  float _592;
  float _608;
  float _609;
  float _613;
  float _616;
  float _619;
  float _626;
  float _633;
  float _640;
  float _641;
  float _642;
  float _643;
  float _644;
  float _645;
  float _646;
  float _662;
  float _678;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  float _715;
  float _716;
  float _717;
  float _718;
  float _721;
  float _724;
  float _728;
  float _732;
  float _736;
  float _756;
  float _768;
  float _780;
  float _792;
  float _799;
  float _806;
  float _813;
  float _819;
  float _820;
  float _822;
  float _824;
  float _826;
  float _831;
  float _852;
  float _854;
  float _857;
  float _860;
  float _863;
  float _869;
  float _909;
  float _911;
  float _917;
  float _959;
  float _975;
  float _979;
  float _983;
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
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _105 = WaveReadLaneFirst(_materialIndex);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_105 < (uint)170000), _105, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _116 = saturate(1.0f - _113) * _102;
  if (!(!(_116 >= 0.001f))) {
    _121 = WaveReadLaneFirst(_materialIndex);
    _129 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
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
  _277 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_269 < (uint)170000), _269, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _280 = WaveReadLaneFirst(_materialIndex);
  _288 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_280 < (uint)170000), _280, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _304 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_277 < (uint)65000), _277, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_266 * TEXCOORD.x), ((_time.x * 0.15f) + (_266 * TEXCOORD.y)))))).y) + -0.3f) * _288;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_306.x, _306.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _325 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_306.x))))))) + 0.5f) * ((_304 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_306.y))))))) + 0.5f) * ((_304 * 0.01f) + TEXCOORD.y))), 0));
  _330 = (((float)((uint)((uint)((uint)((uint)(_325.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _335 = (((float)((uint)((uint)(((uint)((uint)(_325.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _337 = 1.0f - abs(_330);
  _338 = abs(_335);
  _339 = _337 - _338;
  if (!(_339 >= 0.0f)) {
    _350 = (select((_335 >= 0.0f), 1.0f, -1.0f) * _337);
    _351 = (select((_330 >= 0.0f), 1.0f, -1.0f) * (1.0f - _338));
  } else {
    _350 = _335;
    _351 = _330;
  }
  _353 = rsqrt(dot(float3(_351, _350, _339), float3(_351, _350, _339)));  // [sem: invLength]
  _354 = _353 * _351;
  _355 = _353 * _350;
  _356 = _353 * _339;
  _358 = rsqrt(dot(float3(_354, _355, _356), float3(_354, _355, _356)));  // [sem: invLength]
  _359 = _358 * _354;
  _360 = _358 * _355;
  _361 = _358 * _356;
  _363 = (_304 * 0.0005f) + TEXCOORD.x;
  _365 = (_304 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _400 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _363) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _365) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _363)), ((int)(_customRenderPassSizeInvSize.y * _365)), 0)))).x)))));
  _405 = (uint)((_bufferSizeAndInvSize.x * ((_304 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _410 = (uint)((_bufferSizeAndInvSize.y * ((_304 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _412 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_405, _410, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _415 = __3__36__0__0__g_gbufferNormal.Load(int3(_405, _410, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _422 = (saturate(_415.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _426 = (saturate(_415.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _430 = (saturate(_415.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _432 = rsqrt(dot(float3(_422, _426, _430), float3(_422, _426, _430)));  // [sem: invLength]
  _433 = _432 * _422;
  _434 = _432 * _426;
  _435 = _430 * _432;
  _440 = (((float)((uint)((uint)(((uint)((uint)(_412.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _444 = (((float)((uint)((uint)(_412.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _446 = (_440 + _444) * 0.5f;
  _448 = (_440 - _444) * 0.5f;
  _452 = (1.0f - abs(_446)) - abs(_448);
  _454 = rsqrt(dot(float3(_446, _448, _452), float3(_446, _448, _452)));  // [sem: invLength]
  _455 = _454 * _446;
  _456 = _454 * _448;
  _457 = _454 * _452;
  _459 = select((_435 >= 0.0f), 1.0f, -1.0f);
  _462 = -0.0f - (1.0f / (_459 + _435));
  _463 = _434 * _462;
  _464 = _463 * _433;
  _465 = _459 * _433;
  _471 = mad(_457, _433, mad(_456, _464, ((((_465 * _433) * _462) + 1.0f) * _455)));
  _477 = mad(_457, _434, mad(_456, ((_463 * _434) + _459), ((_455 * _459) * _464)));
  _482 = mad(_457, _435, mad(_456, (-0.0f - _434), (-0.0f - (_465 * _455))));
  _484 = rsqrt(dot(float3(_471, _477, _482), float3(_471, _477, _482)));  // [sem: invLength]
  _487 = WaveReadLaneFirst(_materialIndex);
  _495 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_487 < (uint)170000), _487, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  // [sem: expr_sat]
  _521 = saturate((_495 * 100.0f) + -99.0f) * exp2(log2(1.0f - abs(dot(float3(((((_484 * _471) - _359) * _400) + _359), ((((_484 * _477) - _360) * _400) + _360), ((((_484 * _482) - _361) * _400) + _361)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
  _525 = select((!(_400 == 0.0f)), _521, ((_521 * 0.25f) + 0.01f));
  _528 = ((_525 - _52) * _261) + _52;
  _531 = ((_525 - _61) * _261) + _61;
  _534 = ((_525 - _70) * _261) + _70;
  _535 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _548 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _535, 0)))).x) & 127)))) + 0.5f);
  } else {
    _548 = _261;
  }
  _551 = (_localToneMappingParams.w > 0.0f);
  if (_551) {
    _557 = _exposure0.x * _userImageAdjust.z;
    _576 = exp2(_powerParams.x * log2(max(0.0f, (((_557 * max(0.0f, (((_528 * 1.70505f) - (_531 * 0.62179f)) - (_534 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _592 = exp2(log2(max(0.0f, (((_slopeParams.y * _557) * max(0.0f, (((_531 * 1.1408f) - (_528 * 0.13026f)) - (_534 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _608 = exp2(log2(max(0.0f, (((_slopeParams.z * _557) * max(0.0f, (((_528 * -0.024f) - (_531 * 0.12897f)) + (_534 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _609 = dot(float3(_576, _592, _608), float3(0.212671f, 0.71516f, 0.072169f));
    _613 = ((_576 - _609) * _powerParams.w) + _609;
    _616 = ((_592 - _609) * _powerParams.w) + _609;
    _619 = ((_608 - _609) * _powerParams.w) + _609;
    _626 = min(max(log2(mad(_619, 0.079223745f, mad(_616, 0.0784336f, (_613 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _633 = min(max(log2(mad(_619, 0.07916613f, mad(_616, 0.87846863f, (_613 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _640 = min(max(log2(mad(_619, 0.879143f, mad(_616, 0.0784336f, (_613 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _641 = _626 * 0.060606062f;
    _642 = _633 * 0.060606062f;
    _643 = _640 * 0.060606062f;
    _644 = _641 * _641;
    _645 = _642 * _642;
    _646 = _643 * _643;
    _662 = min(0.0f, (-0.0f - (((_626 * 0.0072181816f) + ((_644 * 0.4298f) + (((_644 * _644) * ((31.96f - (_626 * 2.4327273f)) + (_644 * 15.5f))) - ((_626 * 0.41624245f) * _644)))) + -0.00232f)));
    _678 = min(0.0f, (-0.0f - (((_633 * 0.0072181816f) + ((_645 * 0.4298f) + (((_645 * _645) * ((31.96f - (_633 * 2.4327273f)) + (_645 * 15.5f))) - ((_633 * 0.41624245f) * _645)))) + -0.00232f)));
    _694 = min(0.0f, (-0.0f - (((_640 * 0.0072181816f) + ((_646 * 0.4298f) + (((_646 * _646) * ((31.96f - (_640 * 2.4327273f)) + (_646 * 15.5f))) - ((_640 * 0.41624245f) * _646)))) + -0.00232f)));
    _695 = -0.0f - _662;
    _696 = -0.0f - _678;
    _697 = -0.0f - _694;
    _698 = dot(float3(_695, _696, _697), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _715 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _716 = -0.79999995f / _715;
      _717 = -1.2f / _715;
      _718 = 0.20000005f / _715;
      _721 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _724 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _728 = (_716 + 1.4f) + (_724 * (-0.39999998f - _716));
      _732 = (_717 + 1.6f) + (_724 * (-0.6f - _717));
      _736 = (_718 + 0.9f) + (_724 * (0.5f - _718));
      _753 = (lerp(_732, 1.2f, _721));  // [sem: blended]
      _754 = (lerp(_728, 1.0f, _721));  // [sem: blended]
      _755 = (lerp(_736, 1.4f, _721));  // [sem: blended]
    } else {
      _753 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _754 = 1.0f;  // [sem: blended]
      _755 = 1.4f;  // [sem: blended]
    }
    _756 = 1.0f - _753;
    _768 = ((exp2(log2(((saturate((_662 * _662) * _695) * _756) + _753) * _695) * _754) - _698) * _755) + _698;
    _780 = ((exp2(log2(((saturate((_678 * _678) * _696) * _756) + _753) * _696) * _754) - _698) * _755) + _698;
    _792 = ((exp2(log2(((saturate((_694 * _694) * _697) * _756) + _753) * _697) * _754) - _698) * _755) + _698;
    _799 = saturate(exp2(log2(mad(_792, -0.09902974f, mad(_780, -0.09802088f, (_768 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _806 = saturate(exp2(log2(mad(_792, -0.098961174f, mad(_780, 1.1519032f, (_768 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _813 = saturate(exp2(log2(mad(_792, 1.1510737f, mad(_780, -0.09804345f, (_768 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _819 = 1.0f - abs(_etcParams.w);
      _820 = saturate(_etcParams.w);  // [sem: expr_sat]
      _822 = (_819 * _799) + _820;
      _824 = (_819 * _806) + _820;
      _826 = (_819 * _813) + _820;
      if (_colorGradingParams.w > 0.0f) {
        _831 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _848 = (((max(0.0f, (1.0f - _822)) - _822) * _831) + _822);
        _849 = (((max(0.0f, (1.0f - _824)) - _824) * _831) + _824);
        _850 = (((max(0.0f, (1.0f - _826)) - _826) * _831) + _826);
      } else {
        _848 = _822;
        _849 = _824;
        _850 = _826;
      }
      _852 = _userImageAdjust.y + 1.0f;
      _854 = _userImageAdjust.x + 0.5f;
      _857 = ((_848 + -0.5f) * _852) + _854;
      _860 = ((_849 + -0.5f) * _852) + _854;
      _863 = ((_850 + -0.5f) * _852) + _854;
      _869 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _904 = exp2(log2(saturate(mad(_colorBlind0.z, _863, mad(_colorBlind0.y, _860, (_colorBlind0.x * _857))))) * _869);
      _905 = exp2(log2(saturate(mad(_colorBlind1.z, _863, mad(_colorBlind1.y, _860, (_colorBlind1.x * _857))))) * _869);
      _906 = exp2(log2(saturate(mad(_colorBlind2.z, _863, mad(_colorBlind2.y, _860, (_colorBlind2.x * _857))))) * _869);
    } else {
      _904 = _799;
      _905 = _806;
      _906 = _813;
    }
  } else {
    _904 = _528;
    _905 = _531;
    _906 = _534;
  }
  if (_etcParams.y > 1.0f) {
    _909 = abs(_72);
    _911 = abs(_73 + -1.0f);
    _917 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_909, _911), float2(_909, _911))));  // [sem: expr_sat]
    _922 = (_917 * _904);
    _923 = (_917 * _905);
    _924 = (_917 * _906);
  } else {
    _922 = _904;
    _923 = _905;
    _924 = _906;
  }
  if (_551 && (_etcParams.z > 0.0f)) {
    _954 = select((_922 <= 0.0031308f), (_922 * 12.92f), (((pow(_922, 0.41666666f)) * 1.055f) + -0.055f));
    _955 = select((_923 <= 0.0031308f), (_923 * 12.92f), (((pow(_923, 0.41666666f)) * 1.055f) + -0.055f));
    _956 = select((_924 <= 0.0031308f), (_924 * 12.92f), (((pow(_924, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _954 = _922;
    _955 = _923;
    _956 = _924;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _959 = (float)((uint)((uint)(_535)));
    if (!(_959 < _viewDir.w)) {
      if (!(!(_959 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _969 = 0.0f;
        _970 = 0.0f;
        _971 = 0.0f;
      } else {
        _969 = _954;
        _970 = _955;
        _971 = _956;
      }
    } else {
      _969 = 0.0f;
      _970 = 0.0f;
      _971 = 0.0f;
    }
  } else {
    _969 = _954;
    _970 = _955;
    _971 = _956;
  }
  _975 = exp2(log2(_969 * 0.0001f) * 0.15930176f);
  _979 = exp2(log2(_970 * 0.0001f) * 0.15930176f);
  _983 = exp2(log2(_971 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_975 * 18.6875f) + 1.0f)) * ((_975 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_979 * 18.6875f) + 1.0f)) * ((_979 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_983 * 18.6875f) + 1.0f)) * ((_983 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _548;
  return SV_Target;
}
