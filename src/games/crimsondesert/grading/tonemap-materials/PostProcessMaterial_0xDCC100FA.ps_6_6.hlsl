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

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessKnowledgeGain_CD BindlessParameters_PostProcessKnowledgeGain_CD_t;
ConstantBuffer<BindlessParameters_PostProcessKnowledgeGain_CD_t> BindlessParameters_PostProcessKnowledgeGain_CD[] : register(b0, space100);

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
  int _29;
  float _37;
  int _40;
  float _48;
  float _329;
  float _330;
  float _331;
  float _332;
  float _346;
  float _551;
  float _552;
  float _553;
  float _646;
  float _647;
  float _648;
  float _702;
  float _703;
  float _704;
  float _723;
  float _724;
  float _725;
  float _755;
  float _756;
  float _757;
  float _771;
  float _772;
  float _773;
  float _63;
  float _69;
  float _72;
  float _75;
  int _78;
  int _86;
  float4 _101;
  float _104;
  float _105;
  float _108;
  float _110;
  float _111;
  float _114;
  float _116;
  uint2 _118;
  float _124;
  float _128;
  float4 _138;
  float _145;
  float _149;
  float _153;
  float _155;
  float _167;
  float _170;
  float _172;
  float _173;
  float _174;
  float4 _176;
  float _180;
  float4 _183;
  float _187;
  float4 _190;
  float _194;
  int _197;
  int _205;
  float _208;
  float _211;
  float _213;
  float _222;
  float _231;
  float _240;
  float _243;
  uint _333;
  bool _349;
  float _355;
  float _374;
  float _390;
  float _406;
  float _407;
  float _411;
  float _414;
  float _417;
  float _424;
  float _431;
  float _438;
  float _439;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _460;
  float _476;
  float _492;
  float _493;
  float _494;
  float _495;
  float _496;
  float _513;
  float _514;
  float _515;
  float _516;
  float _519;
  float _522;
  float _526;
  float _530;
  float _534;
  float _554;
  float _566;
  float _578;
  float _590;
  float _597;
  float _604;
  float _611;
  float _617;
  float _618;
  float _620;
  float _622;
  float _624;
  float _629;
  float _650;
  float _652;
  float _655;
  float _658;
  float _661;
  float _667;
  float _709;
  float _712;
  float _718;
  float _760;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _40 = WaveReadLaneFirst(_materialIndex);
  _48 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_40 < (uint)170000), _40, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_37 >= 0.001f) || (_48 >= 0.001f)) {
    _63 = saturate(saturate(((1.0f - abs((1.25f - TEXCOORD.y) - (max(_37, _48) * 1.5f))) * 4.0f) + -3.0f) * 2.0f);  // [sem: expr_sat]
    if (_63 > 0.001f) {
      _69 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
      _72 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
      _75 = min(max(_72.x, 0.01f), 0.1f);  // [sem: _3__36__0__0__g_depth_sample_derived]
      _78 = WaveReadLaneFirst(_materialIndex);
      _86 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _101 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_86 < (uint)65000), _86, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((8.0f / _69) * TEXCOORD.x), ((_time.x * 0.1f) + ((3.0f / _69) * TEXCOORD.y))));
      _104 = _101.y + -0.4f;
      _105 = _75 * 0.25f;
      _108 = ((_101.x + -0.4f) * _105) + TEXCOORD.x;
      _110 = (_104 * _105) + TEXCOORD.y;
      _111 = _75 * 200.0f;
      _114 = _bufferSizeAndInvSize.z * _111;
      _116 = _bufferSizeAndInvSize.w * _111;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_118.x, _118.y);
      _124 = ((float)((int)((int)((float)((int)((int)(_118.x))))))) + 0.5f;
      _128 = ((float)((int)((int)((float)((int)((int)(_118.y))))))) + 0.5f;
      // [sem: _3__36__0__0__g_gbufferNormal_load]
      _138 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0));
      _145 = (saturate(_138.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _149 = (saturate(_138.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _153 = (saturate(_138.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _155 = rsqrt(dot(float3(_145, _149, _153), float3(_145, _149, _153)));  // [sem: invLength]
      _167 = abs(dot(float3((_155 * _145), (_155 * _149), (_153 * _155)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _170 = saturate((_167 * _167) * 2.0f);  // [sem: expr_sat]
      _172 = (_75 * 0.1f) * _104;
      _173 = _172 + TEXCOORD.x;
      _174 = _172 + TEXCOORD.y;
      _176 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_173, _174));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _180 = dot(float3(_176.x, _176.y, _176.z), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _183 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_173 + -0.002f), (_174 + -0.002f)));
      _187 = dot(float3(_183.x, _183.y, _183.z), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _190 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_173 + 0.002f), (_174 + 0.002f)));
      _194 = dot(float3(_190.x, _190.y, _190.z), float3(0.2126f, 0.7152f, 0.0722f));
      _197 = WaveReadLaneFirst(_materialIndex);
      _205 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_197 < (uint)170000), _197, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
      _208 = (float)((uint)((uint)(((uint)((uint)(_205)) >> 16) & 255)));
      _211 = (float)((uint)((uint)(((uint)((uint)(_205)) >> 8) & 255)));
      _213 = (float)((uint)((uint)(_205 & 255)));
      _222 = select(((_208 * 0.003921569f) < 0.04045f), (_208 * 0.000303527f), exp2(log2((_208 * 0.003717127f) + 0.052132703f) * 2.4f));
      _231 = select(((_211 * 0.003921569f) < 0.04045f), (_211 * 0.000303527f), exp2(log2((_211 * 0.003717127f) + 0.052132703f) * 2.4f));
      _240 = select(((_213 * 0.003921569f) < 0.04045f), (_213 * 0.000303527f), exp2(log2((_213 * 0.003717127f) + 0.052132703f) * 2.4f));
      _243 = max(0.001f, _exposure0.x);
      _329 = ((saturate((float)((int)((int)((int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_124 * _108)), ((int)(_128 * _110)), 0)))).x) & 255) == _renderPassKnowledgeGain))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_124 * (_108 - _114))), ((int)(_128 * (_110 - _116))), 0)))).x) & 255) == _renderPassKnowledgeGain)))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_124 * (_108 + _114))), ((int)(_128 * (_110 + _116))), 0)))).x) & 255) == _renderPassKnowledgeGain)))))) * _63) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _72.x)) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _108)), ((int)(_customRenderPassSizeInvSize.y * _110)), 0)))).x))))));
      _330 = ((((((lerp(_240, 0.001f, _170)) / _243) * _194) - _194) * 0.4f) + _194);
      _331 = ((((((lerp(_231, 0.001f, _170)) / _243) * _180) - _180) * 0.4f) + _180);
      _332 = ((((((lerp(_222, 0.001f, _170)) / _243) * _187) - _187) * 0.4f) + _187);
    } else {
      _329 = 0.0f;
      _330 = 0.0f;
      _331 = 0.0f;
      _332 = 0.0f;
    }
  } else {
    _329 = 0.0f;
    _330 = 0.0f;
    _331 = 0.0f;
    _332 = 0.0f;
  }
  _333 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _346 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _333, 0)))).x) & 127)))) + 0.5f);
  } else {
    _346 = _329;
  }
  _349 = (_localToneMappingParams.w > 0.0f);
  if (_349) {
    _355 = _exposure0.x * _userImageAdjust.z;
    _374 = exp2(_powerParams.x * log2(max(0.0f, (((_355 * max(0.0f, (((_331 * -0.62179f) - (_330 * 0.08326f)) + (_332 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _390 = exp2(log2(max(0.0f, (((_slopeParams.y * _355) * max(0.0f, (((_331 * 1.1408f) - (_330 * 0.01055f)) - (_332 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _406 = exp2(log2(max(0.0f, (((_slopeParams.z * _355) * max(0.0f, (((_330 * 1.15297f) - (_331 * 0.12897f)) - (_332 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _407 = dot(float3(_374, _390, _406), float3(0.212671f, 0.71516f, 0.072169f));
    _411 = ((_374 - _407) * _powerParams.w) + _407;
    _414 = ((_390 - _407) * _powerParams.w) + _407;
    _417 = ((_406 - _407) * _powerParams.w) + _407;
    _424 = min(max(log2(mad(_417, 0.079223745f, mad(_414, 0.0784336f, (_411 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _431 = min(max(log2(mad(_417, 0.07916613f, mad(_414, 0.87846863f, (_411 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _438 = min(max(log2(mad(_417, 0.879143f, mad(_414, 0.0784336f, (_411 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _439 = _424 * 0.060606062f;
    _440 = _431 * 0.060606062f;
    _441 = _438 * 0.060606062f;
    _442 = _439 * _439;
    _443 = _440 * _440;
    _444 = _441 * _441;
    _460 = min(0.0f, (-0.0f - (((_424 * 0.0072181816f) + ((_442 * 0.4298f) + (((_442 * _442) * ((31.96f - (_424 * 2.4327273f)) + (_442 * 15.5f))) - ((_424 * 0.41624245f) * _442)))) + -0.00232f)));
    _476 = min(0.0f, (-0.0f - (((_431 * 0.0072181816f) + ((_443 * 0.4298f) + (((_443 * _443) * ((31.96f - (_431 * 2.4327273f)) + (_443 * 15.5f))) - ((_431 * 0.41624245f) * _443)))) + -0.00232f)));
    _492 = min(0.0f, (-0.0f - (((_438 * 0.0072181816f) + ((_444 * 0.4298f) + (((_444 * _444) * ((31.96f - (_438 * 2.4327273f)) + (_444 * 15.5f))) - ((_438 * 0.41624245f) * _444)))) + -0.00232f)));
    _493 = -0.0f - _460;
    _494 = -0.0f - _476;
    _495 = -0.0f - _492;
    _496 = dot(float3(_493, _494, _495), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _513 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _514 = -0.79999995f / _513;
      _515 = -1.2f / _513;
      _516 = 0.20000005f / _513;
      _519 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _522 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _526 = (_514 + 1.4f) + (_522 * (-0.39999998f - _514));
      _530 = (_515 + 1.6f) + (_522 * (-0.6f - _515));
      _534 = (_516 + 0.9f) + (_522 * (0.5f - _516));
      _551 = (lerp(_534, 1.4f, _519));  // [sem: blended]
      _552 = (lerp(_526, 1.0f, _519));  // [sem: blended]
      _553 = (lerp(_530, 1.2f, _519));  // [sem: blended]
    } else {
      _551 = 1.4f;  // [sem: blended]
      _552 = 1.0f;  // [sem: blended]
      _553 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _554 = 1.0f - _553;
    _566 = ((exp2(log2(((saturate((_460 * _460) * _493) * _554) + _553) * _493) * _552) - _496) * _551) + _496;
    _578 = ((exp2(log2(((saturate((_476 * _476) * _494) * _554) + _553) * _494) * _552) - _496) * _551) + _496;
    _590 = ((exp2(log2(((saturate((_492 * _492) * _495) * _554) + _553) * _495) * _552) - _496) * _551) + _496;
    _597 = saturate(exp2(log2(mad(_590, -0.09902974f, mad(_578, -0.09802088f, (_566 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _604 = saturate(exp2(log2(mad(_590, -0.098961174f, mad(_578, 1.1519032f, (_566 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _611 = saturate(exp2(log2(mad(_590, 1.1510737f, mad(_578, -0.09804345f, (_566 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _617 = 1.0f - abs(_etcParams.w);
      _618 = saturate(_etcParams.w);  // [sem: expr_sat]
      _620 = (_617 * _597) + _618;
      _622 = (_617 * _604) + _618;
      _624 = (_617 * _611) + _618;
      if (_colorGradingParams.w > 0.0f) {
        _629 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _646 = (((max(0.0f, (1.0f - _624)) - _624) * _629) + _624);
        _647 = (((max(0.0f, (1.0f - _622)) - _622) * _629) + _622);
        _648 = (((max(0.0f, (1.0f - _620)) - _620) * _629) + _620);
      } else {
        _646 = _624;
        _647 = _622;
        _648 = _620;
      }
      _650 = _userImageAdjust.y + 1.0f;
      _652 = _userImageAdjust.x + 0.5f;
      _655 = ((_648 + -0.5f) * _650) + _652;
      _658 = ((_647 + -0.5f) * _650) + _652;
      _661 = ((_646 + -0.5f) * _650) + _652;
      _667 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _702 = exp2(log2(saturate(mad(_colorBlind2.z, _661, mad(_colorBlind2.y, _658, (_colorBlind2.x * _655))))) * _667);
      _703 = exp2(log2(saturate(mad(_colorBlind1.z, _661, mad(_colorBlind1.y, _658, (_colorBlind1.x * _655))))) * _667);
      _704 = exp2(log2(saturate(mad(_colorBlind0.z, _661, mad(_colorBlind0.y, _658, (_colorBlind0.x * _655))))) * _667);
    } else {
      _702 = _611;
      _703 = _604;
      _704 = _597;
    }
  } else {
    _702 = _330;
    _703 = _331;
    _704 = _332;
  }
  if (_etcParams.y > 1.0f) {
    _709 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _712 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _718 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_709, _712), float2(_709, _712))));  // [sem: expr_sat]
    _723 = (_718 * _702);
    _724 = (_718 * _703);
    _725 = (_718 * _704);
  } else {
    _723 = _702;
    _724 = _703;
    _725 = _704;
  }
  if (_349 && (_etcParams.z > 0.0f)) {
    _755 = select((_725 <= 0.0031308f), (_725 * 12.92f), (((pow(_725, 0.41666666f)) * 1.055f) + -0.055f));
    _756 = select((_724 <= 0.0031308f), (_724 * 12.92f), (((pow(_724, 0.41666666f)) * 1.055f) + -0.055f));
    _757 = select((_723 <= 0.0031308f), (_723 * 12.92f), (((pow(_723, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _755 = _725;
    _756 = _724;
    _757 = _723;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _760 = (float)((uint)((uint)(_333)));
    if (!(_760 < _viewDir.w)) {
      if (!(!(_760 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _771 = 0.0f;
        _772 = 0.0f;
        _773 = 0.0f;
      } else {
        _771 = _755;
        _772 = _756;
        _773 = _757;
      }
    } else {
      _771 = 0.0f;
      _772 = 0.0f;
      _773 = 0.0f;
    }
  } else {
    _771 = _755;
    _772 = _756;
    _773 = _757;
  }
  SV_Target.x = _771;
  SV_Target.y = _772;
  SV_Target.z = _773;
  SV_Target.w = _346;
  return SV_Target;
}
