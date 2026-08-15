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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessAimHighlight_CD {
  PostProcessAimHighlight_CDStruct BindlessParameters_PostProcessAimHighlight_CD;
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
  float4 _33;
  float _43;
  float _44;
  float _45;
  float _70;
  float _71;
  float _72;
  float _78;
  float _79;
  float _80;
  float _81;
  float _93;
  int _94;
  float _102;
  int _103;
  float _111;
  float _114;
  float _160;
  float _161;
  float _162;
  float _163;
  int _164;
  float _169;
  float _170;
  float _171;
  float _172;
  int _173;
  float _178;
  float _179;
  float _180;
  float _181;
  int _182;
  float _259;
  float _344;
  float _345;
  float _540;
  float _745;
  float _746;
  float _747;
  float _840;
  float _841;
  float _842;
  float _896;
  float _897;
  float _898;
  float _914;
  float _915;
  float _916;
  float _946;
  float _947;
  float _948;
  float _961;
  float _962;
  float _963;
  int _144;
  float _152;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  int _166;
  int _175;
  float _183;
  float _184;
  float _185;
  float _189;
  float _190;
  float _191;
  float _206;
  float _213;
  float _214;
  float _215;
  float _226;
  bool _227;
  float _228;
  float _229;
  float _230;
  float _231;
  int _232;
  float _245;
  float _246;
  float _247;
  float _264;
  int _271;
  int _279;
  int _289;
  float _297;
  float _298;
  uint2 _304;
  uint _319;
  float _328;
  float _329;
  float _331;
  float _332;
  float _333;
  float _347;
  float _348;
  float _349;
  float _350;
  float _352;
  float _353;
  float _354;
  float _355;
  float _358;
  float _359;
  float _394;
  uint _403;
  uint _404;
  uint4 _406;
  float4 _409;
  float _427;
  float _428;
  float _429;
  float _431;
  float _432;
  float _433;
  float _434;
  float _437;
  float _438;
  float _441;
  float _442;
  float _446;
  float _448;
  float _449;
  float _450;
  float _451;
  float _453;
  float _456;
  float _457;
  float _458;
  float _459;
  float _468;
  float _472;
  float _476;
  float _478;
  int _491;
  float _499;
  float _513;
  float _517;
  float _524;
  float _525;
  float _526;
  uint _527;
  bool _543;
  float _549;
  float _598;
  float _599;
  float _600;
  float _602;
  float _609;
  float _610;
  float _611;
  float _630;
  float _631;
  float _632;
  float _633;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _690;
  float _707;
  float _708;
  float _709;
  float _710;
  float _716;
  float _719;
  float _726;
  float _727;
  float _728;
  float _757;
  float _782;
  float _783;
  float _784;
  float _803;
  float _804;
  float _805;
  float _811;
  float _815;
  float _816;
  float _817;
  float _818;
  float _823;
  float _848;
  float _852;
  float _853;
  float _854;
  float _855;
  float _885;
  float _904;
  float _905;
  float _909;
  float _952;
  float _973;
  float _974;
  float _975;
  int __loop_jump_target = -1;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _43 = (pow(_33.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = (pow(_33.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_33.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f) * 10000.0f;
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f) * 10000.0f;
  _78 = (TEXCOORD.x * 2.0f) + -1.0f;
  _79 = TEXCOORD.y * 2.0f;
  _80 = 1.0f - _79;
  _81 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _93 = mad((_invViewProj[3].z), _81, mad((_invViewProj[3].y), _80, ((_invViewProj[3].x) * _78))) + (_invViewProj[3].w);
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _103 = WaveReadLaneFirst(_materialIndex);
  _111 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_103 < (uint)170000), _103, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _114 = saturate(1.0f - _111) * _102;
  if (!(!(_114 >= 0.001f))) {
    _144 = WaveReadLaneFirst(_materialIndex);
    _152 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _153 = _152 * ((mad((_invViewProj[0].z), _81, mad((_invViewProj[0].y), _80, ((_invViewProj[0].x) * _78))) + (_invViewProj[0].w)) / _93);
    _154 = _152 * ((mad((_invViewProj[1].z), _81, mad((_invViewProj[1].y), _80, ((_invViewProj[1].x) * _78))) + (_invViewProj[1].w)) / _93);
    _155 = _152 * ((mad((_invViewProj[2].z), _81, mad((_invViewProj[2].y), _80, ((_invViewProj[2].x) * _78))) + (_invViewProj[2].w)) / _93);
    _156 = floor(_153);
    _157 = floor(_154);
    _158 = floor(_155);
    _160 = 10.0f;
    _161 = 0.0f;
    _162 = 0.0f;
    _163 = 0.0f;
    _164 = -1;
    while(true) {
      _169 = _160;
      _170 = _161;
      _171 = _162;
      _172 = _163;
      _173 = -1;
      while(true) {
        _178 = _169;
        _179 = _170;
        _180 = _171;
        _181 = _172;
        _182 = -1;
        while(true) {
          _183 = (float)((int)(_182));
          _184 = (float)((int)(_173));
          _185 = (float)((int)(_164));
          _189 = sin(_183 + _156);
          _190 = sin(_184 + _157);
          _191 = sin(_185 + _158);
          _206 = _time.x * 0.2f;
          _213 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _183;
          _214 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _184;
          _215 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _185;
          _226 = max(abs((_156 - _153) + _213), max(abs((_157 - _154) + _214), abs((_158 - _155) + _215)));
          _227 = (_226 < _178);
          _228 = select(_227, _226, _178);
          _229 = select(_227, _213, _179);
          _230 = select(_227, _214, _180);
          _231 = select(_227, _215, _181);
          _232 = (int)(_182) + (int)(1);
          if (!(_232 == 2)) {
            _178 = _228;
            _179 = _229;
            _180 = _230;
            _181 = _231;
            _182 = _232;
            continue;
          }
          while(true) {
            _175 = (int)(_173) + (int)(1);
            if (!(_175 == 2)) {
              _169 = _228;
              _170 = _229;
              _171 = _230;
              _172 = _231;
              _173 = _175;
              __loop_jump_target = 168;
              break;
            }
            while(true) {
              _166 = (int)(_164) + (int)(1);
              if (!(_166 == 2)) {
                _160 = _228;
                _161 = _229;
                _162 = _230;
                _163 = _231;
                _164 = _166;
                __loop_jump_target = 159;
                break;
              }
              _245 = ((_229 + _156) / _152) - _mainPosition.x;
              _246 = ((_230 + _157) / _152) - _mainPosition.y;
              _247 = ((_231 + _158) / _152) - _mainPosition.z;
              // [sem: expr_sat]
              _259 = saturate((_228 + 1.0f) - ((1.0f - ((1.0f / max(1e-05f, _114)) * sqrt(dot(float3(_245, _246, _247), float3(_245, _246, _247))))) * 1.4705882f));
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
        if (__loop_jump_target == 168) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 159) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _259 = 1.0f;  // [sem: expr_sat]
  }
  _264 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
  _271 = WaveReadLaneFirst(_materialIndex);
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_271 < (uint)170000), _271, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _289 = WaveReadLaneFirst(_materialIndex);
  _297 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_289 < (uint)170000), _289, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _298 = _297 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_279 < (uint)65000), _279, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_264 * TEXCOORD.x), ((_time.x * 0.15f) + (_264 * TEXCOORD.y)))))).y) + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_304.x, _304.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _319 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_304.x))))))) + 0.5f) * ((_298 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_304.y))))))) + 0.5f) * ((_298 * 0.01f) + TEXCOORD.y))), 0));
  _328 = (((float)((uint)((uint)((uint)((uint)(_319.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _329 = (((float)((uint)((uint)(((uint)((uint)(_319.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _331 = 1.0f - abs(_328);
  _332 = abs(_329);
  _333 = _331 - _332;
  if (!(_333 >= 0.0f)) {
    _344 = (select((_328 >= 0.0f), 1.0f, -1.0f) * (1.0f - _332));
    _345 = (select((_329 >= 0.0f), 1.0f, -1.0f) * _331);
  } else {
    _344 = _328;
    _345 = _329;
  }
  _347 = rsqrt(dot(float3(_344, _345, _333), float3(_344, _345, _333)));  // [sem: invLength]
  _348 = _347 * _344;
  _349 = _347 * _345;
  _350 = _347 * _333;
  _352 = rsqrt(dot(float3(_348, _349, _350), float3(_348, _349, _350)));  // [sem: invLength]
  _353 = _352 * _348;
  _354 = _352 * _349;
  _355 = _352 * _350;
  _358 = (_298 * 0.0005f) + TEXCOORD.x;
  _359 = (_298 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _394 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _358) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _359) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _358)), ((int)(_customRenderPassSizeInvSize.y * _359)), 0)))).x)))));
  _403 = (uint)((_bufferSizeAndInvSize.x * ((_298 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _404 = (uint)((_bufferSizeAndInvSize.y * ((_298 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _406 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_403, _404, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _409 = __3__36__0__0__g_gbufferNormal.Load(int3(_403, _404, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _427 = (saturate(_409.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _428 = (saturate(_409.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _429 = (saturate(_409.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _431 = rsqrt(dot(float3(_427, _428, _429), float3(_427, _428, _429)));  // [sem: invLength]
  _432 = _431 * _427;
  _433 = _431 * _428;
  _434 = _429 * _431;
  _437 = (((float)((uint)((uint)(((uint)((uint)(_406.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _438 = (((float)((uint)((uint)(_406.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _441 = (_437 + _438) * 0.5f;
  _442 = (_437 - _438) * 0.5f;
  _446 = (1.0f - abs(_441)) - abs(_442);
  _448 = rsqrt(dot(float3(_441, _442, _446), float3(_441, _442, _446)));  // [sem: invLength]
  _449 = _448 * _441;
  _450 = _448 * _442;
  _451 = _448 * _446;
  _453 = select((_434 >= 0.0f), 1.0f, -1.0f);
  _456 = -0.0f - (1.0f / (_453 + _434));
  _457 = _433 * _456;
  _458 = _457 * _432;
  _459 = _453 * _432;
  _468 = mad(_451, _432, mad(_450, _458, ((((_459 * _432) * _456) + 1.0f) * _449)));
  _472 = mad(_451, _433, mad(_450, (_453 + (_457 * _433)), ((_449 * _453) * _458)));
  _476 = mad(_451, _434, mad(_450, (-0.0f - _433), (-0.0f - (_459 * _449))));
  _478 = rsqrt(dot(float3(_468, _472, _476), float3(_468, _472, _476)));  // [sem: invLength]
  _491 = WaveReadLaneFirst(_materialIndex);
  _499 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_491 < (uint)170000), _491, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _513 = exp2(log2(1.0f - abs(dot(float3(((((_478 * _468) - _353) * _394) + _353), ((((_478 * _472) - _354) * _394) + _354), ((((_478 * _476) - _355) * _394) + _355)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f) * saturate((_499 * 100.0f) + -99.0f);
  _517 = select((!(_394 == 0.0f)), _513, ((_513 * 0.25f) + 0.01f));
  _524 = ((_517 - _70) * _259) + _70;
  _525 = ((_517 - _71) * _259) + _71;
  _526 = ((_517 - _72) * _259) + _72;
  _527 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _540 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _527, 0)))).x) & 127)))) + 0.5f);
  } else {
    _540 = _259;
  }
  _543 = (_localToneMappingParams.w > 0.0f);
  if (_543) {
    _549 = _userImageAdjust.z * _exposure0.x;
    _598 = exp2(log2(max(0.0f, (((_549 * max(0.0f, (((_524 * 1.70505f) - (_525 * 0.62179f)) - (_526 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _599 = exp2(log2(max(0.0f, (((max(0.0f, (((_525 * 1.1408f) - (_524 * 0.13026f)) - (_526 * 0.01055f))) * _549) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _600 = exp2(log2(max(0.0f, (((max(0.0f, (((_524 * -0.024f) - (_525 * 0.12897f)) + (_526 * 1.15297f))) * _549) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _602 = dot(float3(_598, _599, _600), float3(0.212671f, 0.71516f, 0.072169f));
    _609 = ((_598 - _602) * _powerParams.w) + _602;
    _610 = ((_599 - _602) * _powerParams.w) + _602;
    _611 = ((_600 - _602) * _powerParams.w) + _602;
    _630 = min(max(log2(mad(_611, 0.079223745f, mad(_610, 0.0784336f, (_609 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _631 = min(max(log2(mad(_611, 0.07916613f, mad(_610, 0.87846863f, (_609 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _632 = min(max(log2(mad(_611, 0.879143f, mad(_610, 0.0784336f, (_609 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _633 = _630 * 0.060606062f;
    _634 = _631 * 0.060606062f;
    _635 = _632 * 0.060606062f;
    _636 = _633 * _633;
    _637 = _634 * _634;
    _638 = _635 * _635;
    _684 = min(0.0f, (-0.0f - (((_630 * 0.0072181816f) + ((_636 * 0.4298f) + (((_636 * _636) * ((31.96f - (_630 * 2.4327273f)) + (_636 * 15.5f))) - ((_630 * 0.41624245f) * _636)))) + -0.00232f)));
    _685 = min(0.0f, (-0.0f - (((_631 * 0.0072181816f) + ((_637 * 0.4298f) + (((_637 * _637) * ((31.96f - (_631 * 2.4327273f)) + (_637 * 15.5f))) - ((_631 * 0.41624245f) * _637)))) + -0.00232f)));
    _686 = min(0.0f, (-0.0f - (((_632 * 0.0072181816f) + ((_638 * 0.4298f) + (((_638 * _638) * ((31.96f - (_632 * 2.4327273f)) + (_638 * 15.5f))) - ((_632 * 0.41624245f) * _638)))) + -0.00232f)));
    _687 = -0.0f - _684;
    _688 = -0.0f - _685;
    _689 = -0.0f - _686;
    _690 = dot(float3(_687, _688, _689), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _707 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _708 = -0.79999995f / _707;
      _709 = -1.2f / _707;
      _710 = 0.20000005f / _707;
      _716 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _719 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _726 = (_708 + 1.4f) + (_719 * (-0.39999998f - _708));
      _727 = (_709 + 1.6f) + (_719 * (-0.6f - _709));
      _728 = (_710 + 0.9f) + (_719 * (0.5f - _710));
      _745 = (lerp(_727, 1.2f, _716));  // [sem: blended]
      _746 = (lerp(_726, 1.0f, _716));  // [sem: blended]
      _747 = (lerp(_728, 1.4f, _716));  // [sem: blended]
    } else {
      _745 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _746 = 1.0f;  // [sem: blended]
      _747 = 1.4f;  // [sem: blended]
    }
    _757 = 1.0f - _745;
    _782 = ((exp2(log2(((saturate((_684 * _684) * _687) * _757) + _745) * _687) * _746) - _690) * _747) + _690;
    _783 = ((exp2(log2(((saturate((_685 * _685) * _688) * _757) + _745) * _688) * _746) - _690) * _747) + _690;
    _784 = ((exp2(log2(((saturate((_686 * _686) * _689) * _757) + _745) * _689) * _746) - _690) * _747) + _690;
    _803 = saturate(exp2(log2(mad(_784, -0.09902974f, mad(_783, -0.09802088f, (_782 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _804 = saturate(exp2(log2(mad(_784, -0.098961174f, mad(_783, 1.1519032f, (_782 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _805 = saturate(exp2(log2(mad(_784, 1.1510737f, mad(_783, -0.09804345f, (_782 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _811 = 1.0f - abs(_etcParams.w);
      _815 = saturate(_etcParams.w);  // [sem: expr_sat]
      _816 = (_811 * _803) + _815;
      _817 = (_811 * _804) + _815;
      _818 = (_811 * _805) + _815;
      if (_colorGradingParams.w > 0.0f) {
        _823 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _840 = (((max(0.0f, (1.0f - _816)) - _816) * _823) + _816);
        _841 = (((max(0.0f, (1.0f - _817)) - _817) * _823) + _817);
        _842 = (((max(0.0f, (1.0f - _818)) - _818) * _823) + _818);
      } else {
        _840 = _816;
        _841 = _817;
        _842 = _818;
      }
      _848 = _userImageAdjust.y + 1.0f;
      _852 = _userImageAdjust.x + 0.5f;
      _853 = ((_840 + -0.5f) * _848) + _852;
      _854 = ((_841 + -0.5f) * _848) + _852;
      _855 = ((_842 + -0.5f) * _848) + _852;
      _885 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _896 = exp2(log2(saturate(mad(_colorBlind0.z, _855, mad(_colorBlind0.y, _854, (_colorBlind0.x * _853))))) * _885);
      _897 = exp2(log2(saturate(mad(_colorBlind1.z, _855, mad(_colorBlind1.y, _854, (_colorBlind1.x * _853))))) * _885);
      _898 = exp2(log2(saturate(mad(_colorBlind2.z, _855, mad(_colorBlind2.y, _854, (_colorBlind2.x * _853))))) * _885);
    } else {
      _896 = _803;
      _897 = _804;
      _898 = _805;
    }
  } else {
    _896 = _524;
    _897 = _525;
    _898 = _526;
  }
  if (_etcParams.y > 1.0f) {
    _904 = abs(_78);
    _905 = abs(_79 + -1.0f);
    _909 = saturate(1.0f - (dot(float2(_904, _905), float2(_904, _905)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _914 = (_909 * _896);
    _915 = (_909 * _897);
    _916 = (_909 * _898);
  } else {
    _914 = _896;
    _915 = _897;
    _916 = _898;
  }
  if (_543 && (_etcParams.z > 0.0f)) {
    _946 = select((_914 <= 0.0031308f), (_914 * 12.92f), (((pow(_914, 0.41666666f)) * 1.055f) + -0.055f));
    _947 = select((_915 <= 0.0031308f), (_915 * 12.92f), (((pow(_915, 0.41666666f)) * 1.055f) + -0.055f));
    _948 = select((_916 <= 0.0031308f), (_916 * 12.92f), (((pow(_916, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _946 = _914;
    _947 = _915;
    _948 = _916;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _952 = (float)((uint)((uint)(_527)));
    if (!(_952 < _viewDir.w)) {
      if (!(_952 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _961 = _946;
        _962 = _947;
        _963 = _948;
      } else {
        _961 = 0.0f;
        _962 = 0.0f;
        _963 = 0.0f;
      }
    } else {
      _961 = 0.0f;
      _962 = 0.0f;
      _963 = 0.0f;
    }
  } else {
    _961 = _946;
    _962 = _947;
    _963 = _948;
  }
  _973 = exp2(log2(_961 * 0.0001f) * 0.15930176f);
  _974 = exp2(log2(_962 * 0.0001f) * 0.15930176f);
  _975 = exp2(log2(_963 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_973 * 18.6875f) + 1.0f)) * ((_973 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_974 * 18.6875f) + 1.0f)) * ((_974 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_975 * 18.6875f) + 1.0f)) * ((_975 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _540;
  return SV_Target;
}
