struct PostProcessAbyssEnter_CDStruct {
  float _scanRadius;
  float _startFade;
  uint _noiseTex;
  uint _noiseTex2;
  uint _effectType;
  float _ppAbyssEnterRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessAbyssEnter_CD {
  PostProcessAbyssEnter_CDStruct BindlessParameters_PostProcessAbyssEnter_CD;
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
  float _30;
  float _36;
  float _37;
  float _38;
  uint2 _40;
  int _57;
  float _69;
  float _234;
  float _235;
  float _236;
  float _283;
  float _284;
  float _285;
  float _478;
  float _479;
  float _480;
  float _481;
  float _495;
  float _700;
  float _701;
  float _702;
  float _795;
  float _796;
  float _797;
  float _851;
  float _852;
  float _853;
  float _869;
  float _870;
  float _871;
  float _901;
  float _902;
  float _903;
  float _917;
  float _918;
  float _919;
  int _70;
  int _78;
  float _84;
  float _85;
  float4 _88;
  float _90;
  float4 _92;
  float _94;
  float4 _95;
  float _97;
  float4 _98;
  float4 _101;
  float _103;
  float4 _105;
  float _107;
  float4 _108;
  float _110;
  float4 _111;
  float4 _114;
  float _140;
  float _161;
  float _165;
  float _169;
  float _173;
  float _176;
  float _177;
  float _178;
  float _179;
  float _183;
  float _184;
  float _200;
  float _209;
  float _210;
  float _226;
  float _240;
  float _241;
  float _253;
  float _262;
  float _263;
  float _275;
  float _288;
  float _291;
  float _294;
  float _296;
  int _300;
  int _308;
  float _318;
  int _322;
  float _330;
  float _331;
  int _339;
  int _347;
  float _350;
  float _386;
  float _387;
  float _390;
  float _391;
  float _392;
  float _394;
  float _395;
  float _396;
  int _397;
  int _405;
  float _407;
  float _409;
  float _414;
  float4 _421;
  float _428;
  float _430;
  float4 _431;
  float4 _437;
  float _442;
  float _443;
  float _452;
  float _453;
  float _454;
  float _455;
  float _472;
  uint _482;
  bool _498;
  float _504;
  float _553;
  float _554;
  float _555;
  float _557;
  float _564;
  float _565;
  float _566;
  float _585;
  float _586;
  float _587;
  float _588;
  float _589;
  float _590;
  float _591;
  float _592;
  float _593;
  float _639;
  float _640;
  float _641;
  float _642;
  float _643;
  float _644;
  float _645;
  float _662;
  float _663;
  float _664;
  float _665;
  float _671;
  float _674;
  float _681;
  float _682;
  float _683;
  float _712;
  float _737;
  float _738;
  float _739;
  float _758;
  float _759;
  float _760;
  float _766;
  float _770;
  float _771;
  float _772;
  float _773;
  float _778;
  float _803;
  float _807;
  float _808;
  float _809;
  float _810;
  float _840;
  float _859;
  float _860;
  float _864;
  float _908;
  float _929;
  float _930;
  float _931;
  _30 = 1.0f / max(0.001f, _exposure0.x);
  _36 = (TEXCOORD.x * 2.0f) + -1.0f;
  _37 = TEXCOORD.y * 2.0f;
  _38 = 1.0f - _37;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_40.x, _40.y);
  _57 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_40.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_40.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
  if ((_57 == _renderPassSelfPlayer) || ((_57 == 70) || (_57 == _renderPassTest))) {
    _69 = 1.0f;
  } else {
    _69 = 0.0f;
  }
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
  if (_78 == 0) {
    _84 = 1.0f / _srcTargetSizeAndInv.x;
    _85 = 1.0f / _srcTargetSizeAndInv.y;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _88 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _90 = _84 * 2.0f;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _92 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _90), TEXCOORD.y));
    _94 = TEXCOORD.x - _84;
    _95 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_94, TEXCOORD.y));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _97 = _84 + TEXCOORD.x;
    _98 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_97, TEXCOORD.y));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _101 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_90 + TEXCOORD.x), TEXCOORD.y));
    _103 = _85 * 2.0f;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _105 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _103)));
    _107 = TEXCOORD.y - _85;
    _108 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, _107));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _110 = _85 + TEXCOORD.y;
    _111 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, _110));  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample]
    _114 = __3__36__0__0__g_CustomRenderPassDepth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_103 + TEXCOORD.y)));
    _140 = max(1e-07f, _88.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
    _161 = (_invViewProjRelative[0].x) * _36;
    _165 = (_invViewProjRelative[1].x) * _36;
    _169 = (_invViewProjRelative[2].x) * _36;
    _173 = (_invViewProjRelative[3].x) * _36;
    _176 = mad((_invViewProjRelative[3].z), _140, mad((_invViewProjRelative[3].y), _38, _173)) + (_invViewProjRelative[3].w);
    _177 = (mad((_invViewProjRelative[0].z), _140, mad((_invViewProjRelative[0].y), _38, _161)) + (_invViewProjRelative[0].w)) / _176;
    _178 = (mad((_invViewProjRelative[1].z), _140, mad((_invViewProjRelative[1].y), _38, _165)) + (_invViewProjRelative[1].w)) / _176;
    _179 = (mad((_invViewProjRelative[2].z), _140, mad((_invViewProjRelative[2].y), _38, _169)) + (_invViewProjRelative[2].w)) / _176;
    if (abs(((_95.x * _92.x) / ((_92.x * 2.0f) - _95.x)) - _88.x) < abs(((_101.x * _98.x) / ((_101.x * 2.0f) - _98.x)) - _88.x)) {
      _183 = (_94 * 2.0f) + -1.0f;
      _184 = max(1e-07f, _95.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _200 = mad((_invViewProjRelative[3].z), _184, mad((_invViewProjRelative[3].y), _38, ((_invViewProjRelative[3].x) * _183))) + (_invViewProjRelative[3].w);
      _234 = (_177 - ((mad((_invViewProjRelative[0].z), _184, mad((_invViewProjRelative[0].y), _38, ((_invViewProjRelative[0].x) * _183))) + (_invViewProjRelative[0].w)) / _200));
      _235 = (_178 - ((mad((_invViewProjRelative[1].z), _184, mad((_invViewProjRelative[1].y), _38, ((_invViewProjRelative[1].x) * _183))) + (_invViewProjRelative[1].w)) / _200));
      _236 = (_179 - ((mad((_invViewProjRelative[2].z), _184, mad((_invViewProjRelative[2].y), _38, ((_invViewProjRelative[2].x) * _183))) + (_invViewProjRelative[2].w)) / _200));
    } else {
      _209 = (_97 * 2.0f) + -1.0f;
      _210 = max(1e-07f, _98.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _226 = mad((_invViewProjRelative[3].z), _210, mad((_invViewProjRelative[3].y), _38, ((_invViewProjRelative[3].x) * _209))) + (_invViewProjRelative[3].w);
      _234 = (((mad((_invViewProjRelative[0].z), _210, mad((_invViewProjRelative[0].y), _38, ((_invViewProjRelative[0].x) * _209))) + (_invViewProjRelative[0].w)) / _226) - _177);
      _235 = (((mad((_invViewProjRelative[1].z), _210, mad((_invViewProjRelative[1].y), _38, ((_invViewProjRelative[1].x) * _209))) + (_invViewProjRelative[1].w)) / _226) - _178);
      _236 = (((mad((_invViewProjRelative[2].z), _210, mad((_invViewProjRelative[2].y), _38, ((_invViewProjRelative[2].x) * _209))) + (_invViewProjRelative[2].w)) / _226) - _179);
    }
    if (abs(((_108.x * _105.x) / ((_105.x * 2.0f) - _108.x)) - _88.x) < abs(((_114.x * _111.x) / ((_114.x * 2.0f) - _111.x)) - _88.x)) {
      _240 = 1.0f - (_107 * 2.0f);
      _241 = max(1e-07f, _108.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _253 = mad((_invViewProjRelative[3].z), _241, mad((_invViewProjRelative[3].y), _240, _173)) + (_invViewProjRelative[3].w);
      _283 = (_177 - ((mad((_invViewProjRelative[0].z), _241, mad((_invViewProjRelative[0].y), _240, _161)) + (_invViewProjRelative[0].w)) / _253));
      _284 = (_178 - ((mad((_invViewProjRelative[1].z), _241, mad((_invViewProjRelative[1].y), _240, _165)) + (_invViewProjRelative[1].w)) / _253));
      _285 = (_179 - ((mad((_invViewProjRelative[2].z), _241, mad((_invViewProjRelative[2].y), _240, _169)) + (_invViewProjRelative[2].w)) / _253));
    } else {
      _262 = 1.0f - (_110 * 2.0f);
      _263 = max(1e-07f, _111.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_sample_derived]
      _275 = mad((_invViewProjRelative[3].z), _263, mad((_invViewProjRelative[3].y), _262, _173)) + (_invViewProjRelative[3].w);
      _283 = (((mad((_invViewProjRelative[0].z), _263, mad((_invViewProjRelative[0].y), _262, _161)) + (_invViewProjRelative[0].w)) / _275) - _177);
      _284 = (((mad((_invViewProjRelative[1].z), _263, mad((_invViewProjRelative[1].y), _262, _165)) + (_invViewProjRelative[1].w)) / _275) - _178);
      _285 = (((mad((_invViewProjRelative[2].z), _263, mad((_invViewProjRelative[2].y), _262, _169)) + (_invViewProjRelative[2].w)) / _275) - _179);
    }
    _288 = (_285 * _235) - (_284 * _236);
    _291 = (_283 * _236) - (_285 * _234);
    _294 = (_284 * _234) - (_283 * _235);
    _296 = rsqrt(dot(float3(_288, _291, _294), float3(_288, _291, _294)));  // [sem: invLength]
    _300 = WaveReadLaneFirst(_materialIndex);
    _308 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_300 < (uint)170000), _300, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
    _318 = exp2(log2(1.0f - abs(dot(float3((_288 * _296), (_291 * _296), (_296 * _294)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
    _322 = WaveReadLaneFirst(_materialIndex);
    _330 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_322 < (uint)170000), _322, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._startFade);
    _331 = _330 * _69;
    _478 = (saturate(_318 * 0.45f) + _331);
    _479 = (saturate(_318 * 0.65f) + _331);
    _480 = (saturate(_318 * 0.95f) + _331);
    _481 = _69;
  } else {
    _339 = WaveReadLaneFirst(_materialIndex);
    _347 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_339 < (uint)170000), _339, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
    if (_347 == 1) {
      _350 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _386 = mad((_invViewProjRelative[3].z), _350, mad((_invViewProjRelative[3].y), _38, ((_invViewProjRelative[3].x) * _36))) + (_invViewProjRelative[3].w);
      _387 = (mad((_invViewProjRelative[0].z), _350, mad((_invViewProjRelative[0].y), _38, ((_invViewProjRelative[0].x) * _36))) + (_invViewProjRelative[0].w)) / _386;
      _390 = -0.0f - _387;
      _391 = -0.0f - ((mad((_invViewProjRelative[1].z), _350, mad((_invViewProjRelative[1].y), _38, ((_invViewProjRelative[1].x) * _36))) + (_invViewProjRelative[1].w)) / _386);
      _392 = -0.0f - ((mad((_invViewProjRelative[2].z), _350, mad((_invViewProjRelative[2].y), _38, ((_invViewProjRelative[2].x) * _36))) + (_invViewProjRelative[2].w)) / _386);
      _394 = rsqrt(dot(float3(_390, _391, _392), float3(_390, _391, _392)));  // [sem: invLength]
      _395 = _394 * _391;
      _396 = _394 * _392;
      _397 = WaveReadLaneFirst(_materialIndex);
      _405 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_397 < (uint)170000), _397, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
      _407 = (_387 * -2.0f) * _394;
      _409 = _396 * 2.0f;
      _414 = _time.x * 0.1f;
      _421 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_405 < (uint)65000), _405, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_414 + _407), (_414 + _409)));
      _428 = _time.x * 0.1f;
      _430 = _428 + (_395 * 2.0f);
      _431 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_405 < (uint)65000), _405, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_428 + _409), _430));
      _437 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_405 < (uint)65000), _405, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_430, (_428 + _407)));
      _442 = abs(_395);
      _443 = abs(_396);
      _452 = (_442 * (_421.x - _431.x)) + _431.x;
      _453 = (_442 * (_421.y - _431.y)) + _431.y;
      _454 = (_442 * (_421.z - _431.z)) + _431.z;
      _455 = (_442 * (_421.w - _431.w)) + _431.w;
      _472 = _69 * _30;
      _478 = (saturate(lerp(_452, _437.x, _443)) * _472);
      _479 = (saturate(lerp(_453, _437.y, _443)) * _472);
      _480 = (saturate(lerp(_454, _437.z, _443)) * _472);
      _481 = (saturate(lerp(_455, _437.w, _443)) * _30);
    } else {
      _478 = 0.0f;
      _479 = 0.0f;
      _480 = 0.0f;
      _481 = 0.0f;
    }
  }
  _482 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _495 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _482, 0)))).x) & 127)))) + 0.5f);
  } else {
    _495 = _481;
  }
  _498 = (_localToneMappingParams.w > 0.0f);
  if (_498) {
    _504 = _userImageAdjust.z * _exposure0.x;
    _553 = exp2(log2(max(0.0f, (((_504 * max(0.0f, (((_478 * 1.70505f) - (_479 * 0.62179f)) - (_480 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _554 = exp2(log2(max(0.0f, (((max(0.0f, (((_479 * 1.1408f) - (_478 * 0.13026f)) - (_480 * 0.01055f))) * _504) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _555 = exp2(log2(max(0.0f, (((max(0.0f, (((_478 * -0.024f) - (_479 * 0.12897f)) + (_480 * 1.15297f))) * _504) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _557 = dot(float3(_553, _554, _555), float3(0.212671f, 0.71516f, 0.072169f));
    _564 = ((_553 - _557) * _powerParams.w) + _557;
    _565 = ((_554 - _557) * _powerParams.w) + _557;
    _566 = ((_555 - _557) * _powerParams.w) + _557;
    _585 = min(max(log2(mad(_566, 0.079223745f, mad(_565, 0.0784336f, (_564 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _586 = min(max(log2(mad(_566, 0.07916613f, mad(_565, 0.87846863f, (_564 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _587 = min(max(log2(mad(_566, 0.879143f, mad(_565, 0.0784336f, (_564 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _588 = _585 * 0.060606062f;
    _589 = _586 * 0.060606062f;
    _590 = _587 * 0.060606062f;
    _591 = _588 * _588;
    _592 = _589 * _589;
    _593 = _590 * _590;
    _639 = min(0.0f, (-0.0f - (((_585 * 0.0072181816f) + ((_591 * 0.4298f) + (((_591 * _591) * ((31.96f - (_585 * 2.4327273f)) + (_591 * 15.5f))) - ((_585 * 0.41624245f) * _591)))) + -0.00232f)));
    _640 = min(0.0f, (-0.0f - (((_586 * 0.0072181816f) + ((_592 * 0.4298f) + (((_592 * _592) * ((31.96f - (_586 * 2.4327273f)) + (_592 * 15.5f))) - ((_586 * 0.41624245f) * _592)))) + -0.00232f)));
    _641 = min(0.0f, (-0.0f - (((_587 * 0.0072181816f) + ((_593 * 0.4298f) + (((_593 * _593) * ((31.96f - (_587 * 2.4327273f)) + (_593 * 15.5f))) - ((_587 * 0.41624245f) * _593)))) + -0.00232f)));
    _642 = -0.0f - _639;
    _643 = -0.0f - _640;
    _644 = -0.0f - _641;
    _645 = dot(float3(_642, _643, _644), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _662 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _663 = -0.79999995f / _662;
      _664 = -1.2f / _662;
      _665 = 0.20000005f / _662;
      _671 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _674 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _681 = (_663 + 1.4f) + (_674 * (-0.39999998f - _663));
      _682 = (_664 + 1.6f) + (_674 * (-0.6f - _664));
      _683 = (_665 + 0.9f) + (_674 * (0.5f - _665));
      _700 = (lerp(_682, 1.2f, _671));  // [sem: blended]
      _701 = (lerp(_681, 1.0f, _671));  // [sem: blended]
      _702 = (lerp(_683, 1.4f, _671));  // [sem: blended]
    } else {
      _700 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _701 = 1.0f;  // [sem: blended]
      _702 = 1.4f;  // [sem: blended]
    }
    _712 = 1.0f - _700;
    _737 = ((exp2(log2(((saturate((_639 * _639) * _642) * _712) + _700) * _642) * _701) - _645) * _702) + _645;
    _738 = ((exp2(log2(((saturate((_640 * _640) * _643) * _712) + _700) * _643) * _701) - _645) * _702) + _645;
    _739 = ((exp2(log2(((saturate((_641 * _641) * _644) * _712) + _700) * _644) * _701) - _645) * _702) + _645;
    _758 = saturate(exp2(log2(mad(_739, -0.09902974f, mad(_738, -0.09802088f, (_737 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _759 = saturate(exp2(log2(mad(_739, -0.098961174f, mad(_738, 1.1519032f, (_737 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _760 = saturate(exp2(log2(mad(_739, 1.1510737f, mad(_738, -0.09804345f, (_737 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _766 = 1.0f - abs(_etcParams.w);
      _770 = saturate(_etcParams.w);  // [sem: expr_sat]
      _771 = (_766 * _758) + _770;
      _772 = (_766 * _759) + _770;
      _773 = (_766 * _760) + _770;
      if (_colorGradingParams.w > 0.0f) {
        _778 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _795 = (((max(0.0f, (1.0f - _771)) - _771) * _778) + _771);
        _796 = (((max(0.0f, (1.0f - _772)) - _772) * _778) + _772);
        _797 = (((max(0.0f, (1.0f - _773)) - _773) * _778) + _773);
      } else {
        _795 = _771;
        _796 = _772;
        _797 = _773;
      }
      _803 = _userImageAdjust.y + 1.0f;
      _807 = _userImageAdjust.x + 0.5f;
      _808 = ((_795 + -0.5f) * _803) + _807;
      _809 = ((_796 + -0.5f) * _803) + _807;
      _810 = ((_797 + -0.5f) * _803) + _807;
      _840 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _851 = exp2(log2(saturate(mad(_colorBlind0.z, _810, mad(_colorBlind0.y, _809, (_colorBlind0.x * _808))))) * _840);
      _852 = exp2(log2(saturate(mad(_colorBlind1.z, _810, mad(_colorBlind1.y, _809, (_colorBlind1.x * _808))))) * _840);
      _853 = exp2(log2(saturate(mad(_colorBlind2.z, _810, mad(_colorBlind2.y, _809, (_colorBlind2.x * _808))))) * _840);
    } else {
      _851 = _758;
      _852 = _759;
      _853 = _760;
    }
  } else {
    _851 = _478;
    _852 = _479;
    _853 = _480;
  }
  if (_etcParams.y > 1.0f) {
    _859 = abs(_36);
    _860 = abs(_37 + -1.0f);
    _864 = saturate(1.0f - (dot(float2(_859, _860), float2(_859, _860)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _869 = (_864 * _851);
    _870 = (_864 * _852);
    _871 = (_864 * _853);
  } else {
    _869 = _851;
    _870 = _852;
    _871 = _853;
  }
  if (_498 && (_etcParams.z > 0.0f)) {
    _901 = select((_869 <= 0.0031308f), (_869 * 12.92f), (((pow(_869, 0.41666666f)) * 1.055f) + -0.055f));
    _902 = select((_870 <= 0.0031308f), (_870 * 12.92f), (((pow(_870, 0.41666666f)) * 1.055f) + -0.055f));
    _903 = select((_871 <= 0.0031308f), (_871 * 12.92f), (((pow(_871, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _901 = _869;
    _902 = _870;
    _903 = _871;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _908 = (float)((uint)((uint)(_482)));
    if (!(_908 < _viewDir.w)) {
      if (!(_908 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _917 = _901;
        _918 = _902;
        _919 = _903;
      } else {
        _917 = 0.0f;
        _918 = 0.0f;
        _919 = 0.0f;
      }
    } else {
      _917 = 0.0f;
      _918 = 0.0f;
      _919 = 0.0f;
    }
  } else {
    _917 = _901;
    _918 = _902;
    _919 = _903;
  }
  _929 = exp2(log2(_917 * 0.0001f) * 0.15930176f);
  _930 = exp2(log2(_918 * 0.0001f) * 0.15930176f);
  _931 = exp2(log2(_919 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_929 * 18.6875f) + 1.0f)) * ((_929 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_930 * 18.6875f) + 1.0f)) * ((_930 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_931 * 18.6875f) + 1.0f)) * ((_931 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _495;
  return SV_Target;
}
