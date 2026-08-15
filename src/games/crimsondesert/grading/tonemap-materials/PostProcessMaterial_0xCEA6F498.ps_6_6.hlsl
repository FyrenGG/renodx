struct PostProcessScopeStruct {
  float _progress;
  float _lensRadius;
  float _lensDistance;
  float _lensYOffset;
  float _edgeSmoothness;
  float _distortionIntensity;
  float _chromaticRatio;
  float _opacity;
  uint _lensDirtTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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

struct BindlessParameters_PostProcessScope {
  PostProcessScopeStruct BindlessParameters_PostProcessScope;
};

typedef BindlessParameters_PostProcessScope BindlessParameters_PostProcessScope_t;
ConstantBuffer<BindlessParameters_PostProcessScope_t> BindlessParameters_PostProcessScope[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _28;
  int _29;
  float _37;
  float _38;
  int _39;
  float _47;
  float _48;
  int _49;
  float _57;
  int _61;
  float _69;
  int _70;
  float _78;
  int _79;
  float _87;
  float _90;
  float _91;
  float _92;
  int _94;
  float _102;
  float _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _108;
  float _155;
  float _156;
  float _455;
  float _658;
  float _659;
  float _660;
  float _753;
  float _754;
  float _755;
  float _809;
  float _810;
  float _811;
  float _826;
  float _827;
  float _828;
  float _858;
  float _859;
  float _860;
  float _874;
  float _875;
  float _876;
  float _110;
  float _111;
  float _114;
  float _118;
  float _122;
  float _127;
  float _137;
  float _149;
  float _158;
  float _161;
  float _162;
  bool _163;
  float _167;
  float _173;
  float _177;
  float _178;
  float _181;
  float _185;
  float _186;
  float _188;
  float _191;
  float _192;
  float _193;
  float _197;
  bool _198;
  float _205;
  float _206;
  float _207;
  float _218;
  float _231;
  float _244;
  float _257;
  float _263;
  float _272;
  float _273;
  float _274;
  float _275;
  float _277;
  float _284;
  float _285;
  float _286;
  float _288;
  float _294;
  float _330;
  float _331;
  float _332;
  float _333;
  float _335;
  float _342;
  float _351;
  float _355;
  float _363;
  float _372;
  float _376;
  float _380;
  float _382;
  float _388;
  float _389;
  int _395;
  int _403;
  float4 _410;
  float _414;
  float _428;
  float _432;
  float _439;
  float _440;
  float _441;
  uint _442;
  bool _458;
  float _462;
  float _511;
  float _512;
  float _513;
  float _515;
  float _522;
  float _523;
  float _524;
  float _543;
  float _544;
  float _545;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _602;
  float _603;
  float _620;
  float _621;
  float _622;
  float _623;
  float _629;
  float _632;
  float _639;
  float _640;
  float _641;
  float _670;
  float _695;
  float _696;
  float _697;
  float _716;
  float _717;
  float _718;
  float _724;
  float _728;
  float _729;
  float _730;
  float _731;
  float _736;
  float _761;
  float _765;
  float _766;
  float _767;
  float _768;
  float _798;
  float _816;
  float _817;
  float _821;
  float _865;
  float _886;
  float _887;
  float _888;
  _28 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensRadius);
  _38 = max(_37, 0.0001f);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._edgeSmoothness);
  _48 = max(_47, 0.0001f);
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensDistance);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._chromaticRatio);
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._distortionIntensity);
  _79 = WaveReadLaneFirst(_materialIndex);
  _87 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_79 < (uint)170000), _79, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._opacity);
  _90 = (TEXCOORD.x * 2.0f) + -1.0f;
  _91 = (TEXCOORD.y * 2.0f) + -1.0f;
  _92 = _28 * _90;
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensYOffset);
  _103 = _57 * -0.5f;
  _104 = _57 * 0.5f;
  _105 = _48 * _38;
  _106 = _105 - _38;
  _107 = _102 + _91;
  _108 = _107 * _107;
  if (_57 > 0.1f) {
    _110 = _92 - _103;
    _111 = _92 - _104;
    _114 = sqrt(_108 + (_110 * _110));
    _118 = sqrt(_108 + (_111 * _111));
    _122 = _38 * 0.6f;
    _127 = saturate((((_118 - _114) * 0.5f) / _122) + 0.5f);  // [sem: expr_sat]
    _137 = saturate((((_118 + _106) + (_127 * (_114 - _118))) - ((_127 * _122) * (1.0f - _127))) / _105);  // [sem: expr_sat]
    _155 = ((_137 * _137) * (3.0f - (_137 * 2.0f)));
    _156 = select(((_114 / _38) < (_118 / _38)), _103, _104);
  } else {
    _149 = saturate((sqrt((_92 * _92) + (_91 * _91)) + _106) / _105);  // [sem: expr_sat]
    _155 = ((_149 * _149) * (3.0f - (_149 * 2.0f)));
    _156 = 0.0f;
  }
  _158 = _92 - _156;
  _161 = sqrt((_158 * _158) + _108);
  _162 = _161 / _38;
  _163 = (_161 > 1e-05f);
  _167 = select(_163, (_107 / _161), 1.0f);
  _173 = saturate(abs(TEXCOORD.x + -0.5f) / (saturate(_57) * 0.08f));  // [sem: expr_sat]
  _177 = (_173 * _173) * (3.0f - (_173 * 2.0f));
  _178 = 1.0f - _48;
  _181 = saturate((_162 - _178) / _48);  // [sem: expr_sat]
  _185 = (_181 * _181) * (3.0f - (_181 * 2.0f));
  _186 = select(_163, (_158 / _161), 0.0f) / _28;
  _188 = (_177 * _78) * _185;
  _191 = (_188 * _186) + TEXCOORD.x;
  _192 = (_188 * _167) + TEXCOORD.y;
  _193 = _186 * _177;
  _197 = sqrt((_193 * _193) + (_167 * _167));
  _198 = (_197 > 1e-05f);
  _205 = ((((float)((uint)((uint)(_enableChromaticAberration)))) * 0.015f) * _69) * _185;
  _206 = select(_198, (_193 / _197), 0.0f) * _205;
  _207 = select(_198, (_167 / _197), 1.0f) * _205;
  _218 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_191 - _206), (_192 - _207))))).x) * 0.012683313f);
  _231 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_191, _192)))).y) * 0.012683313f);
  _244 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_206 + _191), (_207 + _192))))).z) * 0.012683313f);
  _257 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
  // [sem: invLength]
  _263 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
  // [sem: invLength]
  _272 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
  _273 = _272 * _moonDirection.x;
  _274 = _272 * _moonDirection.y;
  _275 = _272 * _moonDirection.z;
  _277 = (3.0f - (_257 * 2.0f)) * (_257 * _257);
  _284 = (((_263 * _sunDirection.x) - _273) * _277) + _273;
  _285 = (((_263 * _sunDirection.y) - _274) * _277) + _274;
  _286 = (((_263 * _sunDirection.z) - _275) * _277) + _275;
  _288 = rsqrt(dot(float3(_284, _285, _286), float3(_284, _285, _286)));  // [sem: invLength]
  _294 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _330 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _294, ((_invViewProjRelative[3].x) * _90));
  _331 = ((mad((_invViewProjRelative[0].y), _294, ((_invViewProjRelative[0].x) * _90)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _330;
  _332 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _294, ((_invViewProjRelative[1].x) * _90))) / _330;
  _333 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _294, ((_invViewProjRelative[2].x) * _90))) / _330;
  _335 = rsqrt(dot(float3(_331, _332, _333), float3(_331, _332, _333)));  // [sem: invLength]
  // [sem: expr_sat]
  _342 = saturate((dot(float3((_335 * _331), (_335 * _332), (_335 * _333)), float3((_284 * _288), (_285 * _288), (_286 * _288))) + -0.5f) * 2.0f);
  _351 = max(0.5f, _178);
  _355 = saturate(((_162 + -0.4f) - _351) * 4.9999995f);  // [sem: expr_sat]
  _363 = saturate((0.5f - _155) * -2.0f);  // [sem: expr_sat]
  _372 = (_351 + 0.4f) * 2.0f;
  _376 = saturate((_162 - _372) / (((_351 + 0.6f) * 0.01f) - _372));  // [sem: expr_sat]
  _380 = (_376 * _376) * (3.0f - (_376 * 2.0f));
  _382 = (_380 * _380) * max((((_355 * _355) * _177) * (3.0f - (_355 * 2.0f))), ((_363 * _363) * (3.0f - (_363 * 2.0f))));
  _388 = (((_277 * 1.3999999f) + 5.6f) * saturate(exp2(log2((_342 * _342) * (3.0f - (_342 * 2.0f))) * 3.0f))) * saturate(1.4f - _155);
  _389 = _382 * _388;
  _395 = WaveReadLaneFirst(_materialIndex);
  _403 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_395 < (uint)170000), _395, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensDirtTexture);
  _410 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_403 < (uint)65000), _403, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 1.2f) * _28), (TEXCOORD.y * 1.2f)));
  _414 = dot(float3(0.3f, 0.59f, 0.11f), float3(_410.x, _410.y, _410.z));
  _428 = (1.0f / max(0.001f, _exposure0.x)) * (_382 * (_388 + 3.0f));
  _432 = (1.0f - _155) * 10000.0f;
  _439 = ((_428 * (lerp(_414, _410.x, _389))) + (exp2(log2(max(0.0f, (_218 + -0.8359375f)) / (18.851562f - (_218 * 18.6875f))) * 6.277395f) * _432)) * _87;
  _440 = ((_428 * (lerp(_414, _410.y, _389))) + (exp2(log2(max(0.0f, (_231 + -0.8359375f)) / (18.851562f - (_231 * 18.6875f))) * 6.277395f) * _432)) * _87;
  _441 = ((_428 * (lerp(_414, _410.z, _389))) + (exp2(log2(max(0.0f, (_244 + -0.8359375f)) / (18.851562f - (_244 * 18.6875f))) * 6.277395f) * _432)) * _87;
  _442 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _455 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _442, 0)))).x) & 127)))) + 0.5f);
  } else {
    _455 = 1.0f;
  }
  _458 = (_localToneMappingParams.w > 0.0f);
  if (_458) {
    _462 = _userImageAdjust.z * _exposure0.x;
    _511 = exp2(log2(max(0.0f, (((_462 * max(0.0f, (((_439 * 1.70505f) - (_440 * 0.62179f)) - (_441 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _512 = exp2(log2(max(0.0f, (((max(0.0f, (((_440 * 1.1408f) - (_439 * 0.13026f)) - (_441 * 0.01055f))) * _462) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _513 = exp2(log2(max(0.0f, (((max(0.0f, (((_439 * -0.024f) - (_440 * 0.12897f)) + (_441 * 1.15297f))) * _462) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _515 = dot(float3(_511, _512, _513), float3(0.212671f, 0.71516f, 0.072169f));
    _522 = ((_511 - _515) * _powerParams.w) + _515;
    _523 = ((_512 - _515) * _powerParams.w) + _515;
    _524 = ((_513 - _515) * _powerParams.w) + _515;
    _543 = min(max(log2(mad(_524, 0.079223745f, mad(_523, 0.0784336f, (_522 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _544 = min(max(log2(mad(_524, 0.07916613f, mad(_523, 0.87846863f, (_522 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _545 = min(max(log2(mad(_524, 0.879143f, mad(_523, 0.0784336f, (_522 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _546 = _543 * 0.060606062f;
    _547 = _544 * 0.060606062f;
    _548 = _545 * 0.060606062f;
    _549 = _546 * _546;
    _550 = _547 * _547;
    _551 = _548 * _548;
    _597 = min(0.0f, (-0.0f - (((_543 * 0.0072181816f) + ((_549 * 0.4298f) + (((_549 * _549) * ((31.96f - (_543 * 2.4327273f)) + (_549 * 15.5f))) - ((_543 * 0.41624245f) * _549)))) + -0.00232f)));
    _598 = min(0.0f, (-0.0f - (((_544 * 0.0072181816f) + ((_550 * 0.4298f) + (((_550 * _550) * ((31.96f - (_544 * 2.4327273f)) + (_550 * 15.5f))) - ((_544 * 0.41624245f) * _550)))) + -0.00232f)));
    _599 = min(0.0f, (-0.0f - (((_545 * 0.0072181816f) + ((_551 * 0.4298f) + (((_551 * _551) * ((31.96f - (_545 * 2.4327273f)) + (_551 * 15.5f))) - ((_545 * 0.41624245f) * _551)))) + -0.00232f)));
    _600 = -0.0f - _597;
    _601 = -0.0f - _598;
    _602 = -0.0f - _599;
    _603 = dot(float3(_600, _601, _602), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _620 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _621 = -0.79999995f / _620;
      _622 = -1.2f / _620;
      _623 = 0.20000005f / _620;
      _629 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _632 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _639 = (_621 + 1.4f) + (_632 * (-0.39999998f - _621));
      _640 = (_622 + 1.6f) + (_632 * (-0.6f - _622));
      _641 = (_623 + 0.9f) + (_632 * (0.5f - _623));
      _658 = (lerp(_640, 1.2f, _629));  // [sem: blended]
      _659 = (lerp(_639, 1.0f, _629));  // [sem: blended]
      _660 = (lerp(_641, 1.4f, _629));  // [sem: blended]
    } else {
      _658 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _659 = 1.0f;  // [sem: blended]
      _660 = 1.4f;  // [sem: blended]
    }
    _670 = 1.0f - _658;
    _695 = ((exp2(log2(((saturate((_597 * _597) * _600) * _670) + _658) * _600) * _659) - _603) * _660) + _603;
    _696 = ((exp2(log2(((saturate((_598 * _598) * _601) * _670) + _658) * _601) * _659) - _603) * _660) + _603;
    _697 = ((exp2(log2(((saturate((_599 * _599) * _602) * _670) + _658) * _602) * _659) - _603) * _660) + _603;
    _716 = saturate(exp2(log2(mad(_697, -0.09902974f, mad(_696, -0.09802088f, (_695 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _717 = saturate(exp2(log2(mad(_697, -0.098961174f, mad(_696, 1.1519032f, (_695 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _718 = saturate(exp2(log2(mad(_697, 1.1510737f, mad(_696, -0.09804345f, (_695 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _724 = 1.0f - abs(_etcParams.w);
      _728 = saturate(_etcParams.w);  // [sem: expr_sat]
      _729 = (_724 * _716) + _728;
      _730 = (_724 * _717) + _728;
      _731 = (_724 * _718) + _728;
      if (_colorGradingParams.w > 0.0f) {
        _736 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _753 = (((max(0.0f, (1.0f - _729)) - _729) * _736) + _729);
        _754 = (((max(0.0f, (1.0f - _730)) - _730) * _736) + _730);
        _755 = (((max(0.0f, (1.0f - _731)) - _731) * _736) + _731);
      } else {
        _753 = _729;
        _754 = _730;
        _755 = _731;
      }
      _761 = _userImageAdjust.y + 1.0f;
      _765 = _userImageAdjust.x + 0.5f;
      _766 = ((_753 + -0.5f) * _761) + _765;
      _767 = ((_754 + -0.5f) * _761) + _765;
      _768 = ((_755 + -0.5f) * _761) + _765;
      _798 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _809 = exp2(log2(saturate(mad(_colorBlind0.z, _768, mad(_colorBlind0.y, _767, (_colorBlind0.x * _766))))) * _798);
      _810 = exp2(log2(saturate(mad(_colorBlind1.z, _768, mad(_colorBlind1.y, _767, (_colorBlind1.x * _766))))) * _798);
      _811 = exp2(log2(saturate(mad(_colorBlind2.z, _768, mad(_colorBlind2.y, _767, (_colorBlind2.x * _766))))) * _798);
    } else {
      _809 = _716;
      _810 = _717;
      _811 = _718;
    }
  } else {
    _809 = _439;
    _810 = _440;
    _811 = _441;
  }
  if (_etcParams.y > 1.0f) {
    _816 = abs(_90);
    _817 = abs(_91);
    _821 = saturate(1.0f - (dot(float2(_816, _817), float2(_816, _817)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _826 = (_821 * _809);
    _827 = (_821 * _810);
    _828 = (_821 * _811);
  } else {
    _826 = _809;
    _827 = _810;
    _828 = _811;
  }
  if (_458 && (_etcParams.z > 0.0f)) {
    _858 = select((_826 <= 0.0031308f), (_826 * 12.92f), (((pow(_826, 0.41666666f)) * 1.055f) + -0.055f));
    _859 = select((_827 <= 0.0031308f), (_827 * 12.92f), (((pow(_827, 0.41666666f)) * 1.055f) + -0.055f));
    _860 = select((_828 <= 0.0031308f), (_828 * 12.92f), (((pow(_828, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _858 = _826;
    _859 = _827;
    _860 = _828;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _865 = (float)((uint)((uint)(_442)));
    if (!(_865 < _viewDir.w)) {
      if (!(_865 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _874 = _858;
        _875 = _859;
        _876 = _860;
      } else {
        _874 = 0.0f;
        _875 = 0.0f;
        _876 = 0.0f;
      }
    } else {
      _874 = 0.0f;
      _875 = 0.0f;
      _876 = 0.0f;
    }
  } else {
    _874 = _858;
    _875 = _859;
    _876 = _860;
  }
  _886 = exp2(log2(_874 * 0.0001f) * 0.15930176f);
  _887 = exp2(log2(_875 * 0.0001f) * 0.15930176f);
  _888 = exp2(log2(_876 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_886 * 18.6875f) + 1.0f)) * ((_886 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_887 * 18.6875f) + 1.0f)) * ((_887 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_888 * 18.6875f) + 1.0f)) * ((_888 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _455;
  return SV_Target;
}
