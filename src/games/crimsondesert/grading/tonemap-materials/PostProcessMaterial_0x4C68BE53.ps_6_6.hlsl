struct PostProcessKnowledgeGain_CDStruct {
  uint _noiseTex;
  uint _regionTex;
  float _knowledgeGainRegionRatio;
  float _knowledgeGainCharacterRatio;
  float _knowledgeGainGimmickRatio;
  uint _knowledgeGainColor;
  uint _knowledgeGainRegionNumberR;
  uint _knowledgeGainRegionNumberG;
  float3 _knowledgeGainBoundBoxMin;
  float3 _knowledgeGainBoundBoxMax;
};

struct BindlessParameters_PostProcessKnowledgeGain_CD {
  PostProcessKnowledgeGain_CDStruct BindlessParameters_PostProcessKnowledgeGain_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

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

typedef BindlessParameters_PostProcessKnowledgeGain_CD BindlessParameters_PostProcessKnowledgeGain_CD_t;
ConstantBuffer<BindlessParameters_PostProcessKnowledgeGain_CD_t> BindlessParameters_PostProcessKnowledgeGain_CD[] : register(b0, space100);

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
  float4 _27;
  float _33;
  float _36;
  float _39;
  float _48;
  float _57;
  float _66;
  int _69;
  float _77;
  bool _302;
  float _331;
  int _332;
  float _455;
  float _456;
  float _457;
  float _523;
  float _524;
  float _525;
  float _607;
  float _608;
  float _609;
  float _623;
  float _828;
  float _829;
  float _830;
  float _923;
  float _924;
  float _925;
  float _979;
  float _980;
  float _981;
  float _1000;
  float _1001;
  float _1002;
  float _1032;
  float _1033;
  float _1034;
  float _1048;
  float _1049;
  float _1050;
  int _82;
  int _90;
  int _93;
  int _101;
  int _104;
  float _112;
  float _116;
  float _120;
  int _123;
  float _131;
  float _135;
  float _139;
  float _156;
  float _158;
  float _163;
  float _175;
  float _184;
  float _193;
  float _202;
  int _205;
  int _213;
  float4 _222;
  float _227;
  float _228;
  float _229;
  float _240;
  float _242;
  float _244;
  float _245;
  float _246;
  float _247;
  float _260;
  int _265;
  int _273;
  float4 _291;
  float _308;
  float _311;
  float _314;
  float4 _337;
  int _341;
  int _349;
  float _352;
  float _355;
  float _357;
  float _360;
  float _370;
  float _380;
  float _390;
  float _392;
  float _398;
  float _403;
  float _408;
  float _410;
  float _416;
  float _429;
  float _437;
  float _439;
  float _443;
  float _444;
  float _473;
  float _474;
  float _481;
  float _488;
  float _495;
  float _498;
  float _499;
  float _502;
  float _505;
  float _508;
  float _509;
  int _528;
  float _536;
  int _539;
  float _547;
  float4 _554;
  float _561;
  float _564;
  float _567;
  uint _610;
  bool _626;
  float _632;
  float _651;
  float _667;
  float _683;
  float _684;
  float _688;
  float _691;
  float _694;
  float _701;
  float _708;
  float _715;
  float _716;
  float _717;
  float _718;
  float _719;
  float _720;
  float _721;
  float _737;
  float _753;
  float _769;
  float _770;
  float _771;
  float _772;
  float _773;
  float _790;
  float _791;
  float _792;
  float _793;
  float _796;
  float _799;
  float _803;
  float _807;
  float _811;
  float _831;
  float _843;
  float _855;
  float _867;
  float _874;
  float _881;
  float _888;
  float _894;
  float _895;
  float _897;
  float _899;
  float _901;
  float _906;
  float _927;
  float _929;
  float _932;
  float _935;
  float _938;
  float _944;
  float _986;
  float _989;
  float _995;
  float _1037;
  float _1054;
  float _1058;
  float _1062;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = (pow(_27.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_27.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _48 = exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f;
  _57 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionRatio);
  if (!(!(_77 >= 0.001f))) {
    _82 = WaveReadLaneFirst(_materialIndex);
    _90 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberR);
    _93 = WaveReadLaneFirst(_materialIndex);
    _101 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberG);
    _104 = WaveReadLaneFirst(_materialIndex);
    _112 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.x);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.y);
    _120 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.z);
    _123 = WaveReadLaneFirst(_materialIndex);
    _131 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.x);
    _135 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.y);
    _139 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.z);
    if (!(((int)(_101) | (int)(_90)) == 0) || !(((_112 == 0.0f) || (_116 == 0.0f)) || (_120 == 0.0f)) || !(((_131 == 0.0f) || (_135 == 0.0f)) || (_139 == 0.0f))) {
      _156 = (TEXCOORD.x * 2.0f) + -1.0f;
      _158 = 1.0f - (TEXCOORD.y * 2.0f);
      _163 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _175 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _163, mad((_invViewProj[3].y), _158, ((_invViewProj[3].x) * _156)));
      _184 = (mad((_invViewProj[0].z), _163, mad((_invViewProj[0].y), _158, ((_invViewProj[0].x) * _156))) + (_invViewProj[0].w)) / _175;
      _193 = (mad((_invViewProj[1].z), _163, mad((_invViewProj[1].y), _158, ((_invViewProj[1].x) * _156))) + (_invViewProj[1].w)) / _175;
      _202 = (mad((_invViewProj[2].z), _163, mad((_invViewProj[2].y), _158, ((_invViewProj[2].x) * _156))) + (_invViewProj[2].w)) / _175;
      _205 = WaveReadLaneFirst(_materialIndex);
      _213 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_205 < (uint)170000), _205, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _222 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_213 < (uint)65000), _213, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_184 * 0.02f), (_202 * 0.02f)));
      _227 = _112 - _131;
      _228 = _116 - _135;
      _229 = _120 - _139;
      bool __branch_chain_154;
      if (sqrt(((_228 * _228) + (_227 * _227)) + (_229 * _229)) < 0.01f) {
        __branch_chain_154 = true;
      } else {
        _240 = _131 - _mainPosition.x;
        _242 = _135 - _mainPosition.y;
        _244 = _139 - _mainPosition.z;
        _245 = _112 - _mainPosition.x;
        _246 = _116 - _mainPosition.y;
        _247 = _120 - _mainPosition.z;
        _260 = max(sqrt(((_246 * _246) + (_245 * _245)) + (_247 * _247)), sqrt(((_242 * _242) + (_240 * _240)) + (_244 * _244)));
        if (_260 < 0.01f) {
          __branch_chain_154 = true;
        } else {
          __branch_chain_154 = false;
        }
      }
      if (__branch_chain_154) {
        _265 = WaveReadLaneFirst(_materialIndex);
        _273 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_265 < (uint)170000), _265, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._regionTex);
        _291 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_273 < (uint)65000), _273, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticPointClamp, float2((((_222.x + -0.5f) * 0.0005f) + ((_184 + 16384.0f) * 4.8828126e-05f)), ((1.0f - ((_202 + 11264.0f) * 4.8828126e-05f)) + ((_222.y + -0.5f) * 0.0005f))));
        if (((int)((uint)(_291.x * 255.0f))) == _90) {
          _302 = (((int)((uint)(_291.y * 255.0f))) == _101);
        } else {
          _302 = false;
        }
        _331 = (_77 * 300.0f);
        _332 = ((int)(uint)(_302));
      } else {
        _308 = ((_222.x + -0.5f) * 10.0f) + _184;
        _311 = ((_222.y + -0.5f) * 10.0f) + _193;
        _314 = ((_222.z + -0.5f) * 10.0f) + _202;
        _331 = (min((_260 * 2.0f), 300.0f) * _77);
        _332 = ((int)(uint)((int)((_308 > _131) && ((_308 < _112) && ((_311 < _116) && ((_311 > _135) && ((_314 > _139) && (_314 < _120))))))));
      }
      if (!(_332 == 0)) {
        // [sem: _3__36__0__0__g_specularAO_sampleLod]
        _337 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
        _341 = WaveReadLaneFirst(_materialIndex);
        _349 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_341 < (uint)170000), _341, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
        _352 = (float)((uint)((uint)(((uint)((uint)(_349)) >> 16) & 255)));
        _355 = (float)((uint)((uint)(((uint)((uint)(_349)) >> 8) & 255)));
        _357 = (float)((uint)((uint)(_349 & 255)));
        _360 = max(0.001f, _exposure0.x);
        _370 = select(((_352 * 0.003921569f) < 0.04045f), (_352 * 0.000303527f), exp2(log2((_352 * 0.003717127f) + 0.052132703f) * 2.4f)) / _360;
        _380 = select(((_355 * 0.003921569f) < 0.04045f), (_355 * 0.000303527f), exp2(log2((_355 * 0.003717127f) + 0.052132703f) * 2.4f)) / _360;
        _390 = select(((_357 * 0.003921569f) < 0.04045f), (_357 * 0.000303527f), exp2(log2((_357 * 0.003717127f) + 0.052132703f) * 2.4f)) / _360;
        _392 = min(max(_331, 0.0f), 30.0f);
        _398 = (_184 - _mainPosition.x) + (_392 * (_222.z + -0.5f));
        _403 = (_193 - _mainPosition.y) + (_392 * (_222.w + -0.5f));
        _408 = (_202 - _mainPosition.z) + (_392 * (_222.x + -0.5f));
        _410 = saturate(_331) * 30.0f;
        _416 = sqrt(((_403 * _403) + (_398 * _398)) + (_408 * _408));
        _429 = (saturate(((_410 - _331) + _416) / _410) * (1.0f - saturate(floor(_416 / _331)))) * saturate((1.0f - _77) * 10.0f);
        _437 = min(max((100.0f - (saturate(_416 * 0.01f) * 100.0f)), 10.0f), 30.0f) * log2(_429);
        _439 = exp2(_437 * 0.25f);
        _443 = ((8.0f - _439) * exp2(_437)) + _439;
        _444 = _429 * 0.5f;
        if (!(_337.w < 0.2f)) {
          if (!(_337.w < 0.3f)) {
            if (!(_337.w < 0.4f)) {
              _455 = (_390 * _337.w);
              _456 = (_380 * _337.w);
              _457 = (_370 * _337.w);
            } else {
              _455 = _390;
              _456 = _57;
              _457 = _48;
            }
          } else {
            _455 = _66;
            _456 = _380;
            _457 = _48;
          }
        } else {
          _455 = _66;
          _456 = _57;
          _457 = _370;
        }
        _473 = (float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15));
        _474 = _473 * _439;
        _481 = (_474 * (((((_457 + -1.0f) * 0.025f) + 1.0f) * _48) - _48)) + _48;
        _488 = (_474 * (((((_456 + -1.0f) * 0.025f) + 1.0f) * _57) - _57)) + _57;
        _495 = (_474 * (((((_455 + -1.0f) * 0.025f) + 1.0f) * _66) - _66)) + _66;
        _498 = ((_473 * 0.19999999f) + 0.6f) * _444;
        _499 = 0.001f / _360;
        _502 = ((_499 - _481) * _498) + _481;
        _505 = ((_499 - _488) * _498) + _488;
        _508 = ((_499 - _495) * _498) + _495;
        _509 = _473 * _444;
        _523 = ((((_443 * _390) - _508) * _509) + _508);
        _524 = ((((_443 * _380) - _505) * _509) + _505);
        _525 = ((((_443 * _370) - _502) * _509) + _502);
      } else {
        _523 = _66;
        _524 = _57;
        _525 = _48;
      }
    } else {
      _523 = _66;
      _524 = _57;
      _525 = _48;
    }
  } else {
    _523 = _66;
    _524 = _57;
    _525 = _48;
  }
  _528 = WaveReadLaneFirst(_materialIndex);
  _536 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_528 < (uint)170000), _528, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _539 = WaveReadLaneFirst(_materialIndex);
  _547 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_539 < (uint)170000), _539, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_536 >= 0.001f) || (_547 >= 0.001f)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _554 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
    _561 = (pow(_554.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _564 = (pow(_554.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _567 = (pow(_554.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    if (!(_554.w == 0.0f)) {
      _607 = ((((exp2(log2(max(0.0f, (_567 + -0.8359375f)) / (18.851562f - (_567 * 18.6875f))) * 6.277395f) * 10000.0f) - _523) * _554.w) + _523);
      _608 = ((((exp2(log2(max(0.0f, (_564 + -0.8359375f)) / (18.851562f - (_564 * 18.6875f))) * 6.277395f) * 10000.0f) - _524) * _554.w) + _524);
      _609 = ((((exp2(log2(max(0.0f, (_561 + -0.8359375f)) / (18.851562f - (_561 * 18.6875f))) * 6.277395f) * 10000.0f) - _525) * _554.w) + _525);
    } else {
      _607 = _523;
      _608 = _524;
      _609 = _525;
    }
  } else {
    _607 = _523;
    _608 = _524;
    _609 = _525;
  }
  _610 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _623 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _610, 0)))).x) & 127)))) + 0.5f);
  } else {
    _623 = 1.0f;
  }
  _626 = (_localToneMappingParams.w > 0.0f);
  if (_626) {
    _632 = _exposure0.x * _userImageAdjust.z;
    _651 = exp2(_powerParams.x * log2(max(0.0f, (((_632 * max(0.0f, (((_608 * -0.62179f) - (_607 * 0.08326f)) + (_609 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _667 = exp2(log2(max(0.0f, (((_slopeParams.y * _632) * max(0.0f, (((_608 * 1.1408f) - (_607 * 0.01055f)) - (_609 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _683 = exp2(log2(max(0.0f, (((_slopeParams.z * _632) * max(0.0f, (((_607 * 1.15297f) - (_608 * 0.12897f)) - (_609 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _684 = dot(float3(_651, _667, _683), float3(0.212671f, 0.71516f, 0.072169f));
    _688 = ((_651 - _684) * _powerParams.w) + _684;
    _691 = ((_667 - _684) * _powerParams.w) + _684;
    _694 = ((_683 - _684) * _powerParams.w) + _684;
    _701 = min(max(log2(mad(_694, 0.079223745f, mad(_691, 0.0784336f, (_688 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _708 = min(max(log2(mad(_694, 0.07916613f, mad(_691, 0.87846863f, (_688 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _715 = min(max(log2(mad(_694, 0.879143f, mad(_691, 0.0784336f, (_688 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _716 = _701 * 0.060606062f;
    _717 = _708 * 0.060606062f;
    _718 = _715 * 0.060606062f;
    _719 = _716 * _716;
    _720 = _717 * _717;
    _721 = _718 * _718;
    _737 = min(0.0f, (-0.0f - (((_701 * 0.0072181816f) + ((_719 * 0.4298f) + (((_719 * _719) * ((31.96f - (_701 * 2.4327273f)) + (_719 * 15.5f))) - ((_701 * 0.41624245f) * _719)))) + -0.00232f)));
    _753 = min(0.0f, (-0.0f - (((_708 * 0.0072181816f) + ((_720 * 0.4298f) + (((_720 * _720) * ((31.96f - (_708 * 2.4327273f)) + (_720 * 15.5f))) - ((_708 * 0.41624245f) * _720)))) + -0.00232f)));
    _769 = min(0.0f, (-0.0f - (((_715 * 0.0072181816f) + ((_721 * 0.4298f) + (((_721 * _721) * ((31.96f - (_715 * 2.4327273f)) + (_721 * 15.5f))) - ((_715 * 0.41624245f) * _721)))) + -0.00232f)));
    _770 = -0.0f - _737;
    _771 = -0.0f - _753;
    _772 = -0.0f - _769;
    _773 = dot(float3(_770, _771, _772), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _790 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _791 = -0.79999995f / _790;
      _792 = -1.2f / _790;
      _793 = 0.20000005f / _790;
      _796 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _799 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _803 = (_791 + 1.4f) + (_799 * (-0.39999998f - _791));
      _807 = (_792 + 1.6f) + (_799 * (-0.6f - _792));
      _811 = (_793 + 0.9f) + (_799 * (0.5f - _793));
      _828 = (lerp(_811, 1.4f, _796));  // [sem: blended]
      _829 = (lerp(_803, 1.0f, _796));  // [sem: blended]
      _830 = (lerp(_807, 1.2f, _796));  // [sem: blended]
    } else {
      _828 = 1.4f;  // [sem: blended]
      _829 = 1.0f;  // [sem: blended]
      _830 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _831 = 1.0f - _830;
    _843 = ((exp2(log2(((saturate((_737 * _737) * _770) * _831) + _830) * _770) * _829) - _773) * _828) + _773;
    _855 = ((exp2(log2(((saturate((_753 * _753) * _771) * _831) + _830) * _771) * _829) - _773) * _828) + _773;
    _867 = ((exp2(log2(((saturate((_769 * _769) * _772) * _831) + _830) * _772) * _829) - _773) * _828) + _773;
    _874 = saturate(exp2(log2(mad(_867, -0.09902974f, mad(_855, -0.09802088f, (_843 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _881 = saturate(exp2(log2(mad(_867, -0.098961174f, mad(_855, 1.1519032f, (_843 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _888 = saturate(exp2(log2(mad(_867, 1.1510737f, mad(_855, -0.09804345f, (_843 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _894 = 1.0f - abs(_etcParams.w);
      _895 = saturate(_etcParams.w);  // [sem: expr_sat]
      _897 = (_894 * _874) + _895;
      _899 = (_894 * _881) + _895;
      _901 = (_894 * _888) + _895;
      if (_colorGradingParams.w > 0.0f) {
        _906 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _923 = (((max(0.0f, (1.0f - _901)) - _901) * _906) + _901);
        _924 = (((max(0.0f, (1.0f - _899)) - _899) * _906) + _899);
        _925 = (((max(0.0f, (1.0f - _897)) - _897) * _906) + _897);
      } else {
        _923 = _901;
        _924 = _899;
        _925 = _897;
      }
      _927 = _userImageAdjust.y + 1.0f;
      _929 = _userImageAdjust.x + 0.5f;
      _932 = ((_925 + -0.5f) * _927) + _929;
      _935 = ((_924 + -0.5f) * _927) + _929;
      _938 = ((_923 + -0.5f) * _927) + _929;
      _944 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _979 = exp2(log2(saturate(mad(_colorBlind2.z, _938, mad(_colorBlind2.y, _935, (_colorBlind2.x * _932))))) * _944);
      _980 = exp2(log2(saturate(mad(_colorBlind1.z, _938, mad(_colorBlind1.y, _935, (_colorBlind1.x * _932))))) * _944);
      _981 = exp2(log2(saturate(mad(_colorBlind0.z, _938, mad(_colorBlind0.y, _935, (_colorBlind0.x * _932))))) * _944);
    } else {
      _979 = _888;
      _980 = _881;
      _981 = _874;
    }
  } else {
    _979 = _607;
    _980 = _608;
    _981 = _609;
  }
  if (_etcParams.y > 1.0f) {
    _986 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _989 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _995 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_986, _989), float2(_986, _989))));  // [sem: expr_sat]
    _1000 = (_995 * _981);
    _1001 = (_995 * _980);
    _1002 = (_995 * _979);
  } else {
    _1000 = _981;
    _1001 = _980;
    _1002 = _979;
  }
  if (_626 && (_etcParams.z > 0.0f)) {
    _1032 = select((_1000 <= 0.0031308f), (_1000 * 12.92f), (((pow(_1000, 0.41666666f)) * 1.055f) + -0.055f));
    _1033 = select((_1001 <= 0.0031308f), (_1001 * 12.92f), (((pow(_1001, 0.41666666f)) * 1.055f) + -0.055f));
    _1034 = select((_1002 <= 0.0031308f), (_1002 * 12.92f), (((pow(_1002, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1032 = _1000;
    _1033 = _1001;
    _1034 = _1002;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1037 = (float)((uint)((uint)(_610)));
    if (!(_1037 < _viewDir.w)) {
      if (!(!(_1037 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1048 = 0.0f;
        _1049 = 0.0f;
        _1050 = 0.0f;
      } else {
        _1048 = _1032;
        _1049 = _1033;
        _1050 = _1034;
      }
    } else {
      _1048 = 0.0f;
      _1049 = 0.0f;
      _1050 = 0.0f;
    }
  } else {
    _1048 = _1032;
    _1049 = _1033;
    _1050 = _1034;
  }
  _1054 = exp2(log2(_1048 * 0.0001f) * 0.15930176f);
  _1058 = exp2(log2(_1049 * 0.0001f) * 0.15930176f);
  _1062 = exp2(log2(_1050 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1054 * 18.6875f) + 1.0f)) * ((_1054 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1058 * 18.6875f) + 1.0f)) * ((_1058 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1062 * 18.6875f) + 1.0f)) * ((_1062 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _623;
  return SV_Target;
}
