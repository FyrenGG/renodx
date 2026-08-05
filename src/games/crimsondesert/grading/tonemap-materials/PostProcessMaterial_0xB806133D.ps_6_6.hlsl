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
  float _437;
  float _438;
  float _439;
  float _440;
  float _454;
  float _659;
  float _660;
  float _661;
  float _754;
  float _755;
  float _756;
  float _810;
  float _811;
  float _812;
  float _831;
  float _832;
  float _833;
  float _863;
  float _864;
  float _865;
  float _879;
  float _880;
  float _881;
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
  float _182;
  float _185;
  float _188;
  float _216;
  float4 _219;
  float _225;
  float _228;
  float _231;
  float _259;
  float4 _262;
  float _268;
  float _271;
  float _274;
  float _302;
  int _305;
  int _313;
  float _316;
  float _319;
  float _321;
  float _330;
  float _339;
  float _348;
  float _351;
  uint _441;
  bool _457;
  float _463;
  float _482;
  float _498;
  float _514;
  float _515;
  float _519;
  float _522;
  float _525;
  float _532;
  float _539;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _568;
  float _584;
  float _600;
  float _601;
  float _602;
  float _603;
  float _604;
  float _621;
  float _622;
  float _623;
  float _624;
  float _627;
  float _630;
  float _634;
  float _638;
  float _642;
  float _662;
  float _674;
  float _686;
  float _698;
  float _705;
  float _712;
  float _719;
  float _725;
  float _726;
  float _728;
  float _730;
  float _732;
  float _737;
  float _758;
  float _760;
  float _763;
  float _766;
  float _769;
  float _775;
  float _817;
  float _820;
  float _826;
  float _868;
  float _885;
  float _889;
  float _893;
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
      _182 = (pow(_176.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _185 = (pow(_176.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _188 = (pow(_176.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _216 = dot(float3((exp2(log2(max(0.0f, (_182 + -0.8359375f)) / (18.851562f - (_182 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_185 + -0.8359375f)) / (18.851562f - (_185 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_188 + -0.8359375f)) / (18.851562f - (_188 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _219 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_173 + -0.002f), (_174 + -0.002f)));
      _225 = (pow(_219.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _228 = (pow(_219.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _231 = (pow(_219.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _259 = dot(float3((exp2(log2(max(0.0f, (_225 + -0.8359375f)) / (18.851562f - (_225 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_228 + -0.8359375f)) / (18.851562f - (_228 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_231 + -0.8359375f)) / (18.851562f - (_231 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _262 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_173 + 0.002f), (_174 + 0.002f)));
      _268 = (pow(_262.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _271 = (pow(_262.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _274 = (pow(_262.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _302 = dot(float3((exp2(log2(max(0.0f, (_268 + -0.8359375f)) / (18.851562f - (_268 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_271 + -0.8359375f)) / (18.851562f - (_271 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_274 + -0.8359375f)) / (18.851562f - (_274 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
      _305 = WaveReadLaneFirst(_materialIndex);
      _313 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_305 < (uint)170000), _305, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
      _316 = (float)((uint)((uint)(((uint)((uint)(_313)) >> 16) & 255)));
      _319 = (float)((uint)((uint)(((uint)((uint)(_313)) >> 8) & 255)));
      _321 = (float)((uint)((uint)(_313 & 255)));
      _330 = select(((_316 * 0.003921569f) < 0.04045f), (_316 * 0.000303527f), exp2(log2((_316 * 0.003717127f) + 0.052132703f) * 2.4f));
      _339 = select(((_319 * 0.003921569f) < 0.04045f), (_319 * 0.000303527f), exp2(log2((_319 * 0.003717127f) + 0.052132703f) * 2.4f));
      _348 = select(((_321 * 0.003921569f) < 0.04045f), (_321 * 0.000303527f), exp2(log2((_321 * 0.003717127f) + 0.052132703f) * 2.4f));
      _351 = max(0.001f, _exposure0.x);
      _437 = ((saturate((float)((int)((int)((int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_124 * _108)), ((int)(_128 * _110)), 0)))).x) & 255) == _renderPassKnowledgeGain))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_124 * (_108 - _114))), ((int)(_128 * (_110 - _116))), 0)))).x) & 255) == _renderPassKnowledgeGain)))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_124 * (_108 + _114))), ((int)(_128 * (_110 + _116))), 0)))).x) & 255) == _renderPassKnowledgeGain)))))) * _63) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _72.x)) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _108)), ((int)(_customRenderPassSizeInvSize.y * _110)), 0)))).x))))));
      _438 = ((((((lerp(_348, 0.001f, _170)) / _351) * _302) - _302) * 0.4f) + _302);
      _439 = ((((((lerp(_339, 0.001f, _170)) / _351) * _216) - _216) * 0.4f) + _216);
      _440 = ((((((lerp(_330, 0.001f, _170)) / _351) * _259) - _259) * 0.4f) + _259);
    } else {
      _437 = 0.0f;
      _438 = 0.0f;
      _439 = 0.0f;
      _440 = 0.0f;
    }
  } else {
    _437 = 0.0f;
    _438 = 0.0f;
    _439 = 0.0f;
    _440 = 0.0f;
  }
  _441 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _454 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _441, 0)))).x) & 127)))) + 0.5f);
  } else {
    _454 = _437;
  }
  _457 = (_localToneMappingParams.w > 0.0f);
  if (_457) {
    _463 = _exposure0.x * _userImageAdjust.z;
    _482 = exp2(_powerParams.x * log2(max(0.0f, (((_463 * max(0.0f, (((_439 * -0.62179f) - (_438 * 0.08326f)) + (_440 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _498 = exp2(log2(max(0.0f, (((_slopeParams.y * _463) * max(0.0f, (((_439 * 1.1408f) - (_438 * 0.01055f)) - (_440 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _514 = exp2(log2(max(0.0f, (((_slopeParams.z * _463) * max(0.0f, (((_438 * 1.15297f) - (_439 * 0.12897f)) - (_440 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _515 = dot(float3(_482, _498, _514), float3(0.212671f, 0.71516f, 0.072169f));
    _519 = ((_482 - _515) * _powerParams.w) + _515;
    _522 = ((_498 - _515) * _powerParams.w) + _515;
    _525 = ((_514 - _515) * _powerParams.w) + _515;
    _532 = min(max(log2(mad(_525, 0.079223745f, mad(_522, 0.0784336f, (_519 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _539 = min(max(log2(mad(_525, 0.07916613f, mad(_522, 0.87846863f, (_519 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _546 = min(max(log2(mad(_525, 0.879143f, mad(_522, 0.0784336f, (_519 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _547 = _532 * 0.060606062f;
    _548 = _539 * 0.060606062f;
    _549 = _546 * 0.060606062f;
    _550 = _547 * _547;
    _551 = _548 * _548;
    _552 = _549 * _549;
    _568 = min(0.0f, (-0.0f - (((_532 * 0.0072181816f) + ((_550 * 0.4298f) + (((_550 * _550) * ((31.96f - (_532 * 2.4327273f)) + (_550 * 15.5f))) - ((_532 * 0.41624245f) * _550)))) + -0.00232f)));
    _584 = min(0.0f, (-0.0f - (((_539 * 0.0072181816f) + ((_551 * 0.4298f) + (((_551 * _551) * ((31.96f - (_539 * 2.4327273f)) + (_551 * 15.5f))) - ((_539 * 0.41624245f) * _551)))) + -0.00232f)));
    _600 = min(0.0f, (-0.0f - (((_546 * 0.0072181816f) + ((_552 * 0.4298f) + (((_552 * _552) * ((31.96f - (_546 * 2.4327273f)) + (_552 * 15.5f))) - ((_546 * 0.41624245f) * _552)))) + -0.00232f)));
    _601 = -0.0f - _568;
    _602 = -0.0f - _584;
    _603 = -0.0f - _600;
    _604 = dot(float3(_601, _602, _603), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _621 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _622 = -0.79999995f / _621;
      _623 = -1.2f / _621;
      _624 = 0.20000005f / _621;
      _627 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _630 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _634 = (_622 + 1.4f) + (_630 * (-0.39999998f - _622));
      _638 = (_623 + 1.6f) + (_630 * (-0.6f - _623));
      _642 = (_624 + 0.9f) + (_630 * (0.5f - _624));
      _659 = (lerp(_642, 1.4f, _627));  // [sem: blended]
      _660 = (lerp(_634, 1.0f, _627));  // [sem: blended]
      _661 = (lerp(_638, 1.2f, _627));  // [sem: blended]
    } else {
      _659 = 1.4f;  // [sem: blended]
      _660 = 1.0f;  // [sem: blended]
      _661 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _662 = 1.0f - _661;
    _674 = ((exp2(log2(((saturate((_568 * _568) * _601) * _662) + _661) * _601) * _660) - _604) * _659) + _604;
    _686 = ((exp2(log2(((saturate((_584 * _584) * _602) * _662) + _661) * _602) * _660) - _604) * _659) + _604;
    _698 = ((exp2(log2(((saturate((_600 * _600) * _603) * _662) + _661) * _603) * _660) - _604) * _659) + _604;
    _705 = saturate(exp2(log2(mad(_698, -0.09902974f, mad(_686, -0.09802088f, (_674 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _712 = saturate(exp2(log2(mad(_698, -0.098961174f, mad(_686, 1.1519032f, (_674 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _719 = saturate(exp2(log2(mad(_698, 1.1510737f, mad(_686, -0.09804345f, (_674 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _725 = 1.0f - abs(_etcParams.w);
      _726 = saturate(_etcParams.w);  // [sem: expr_sat]
      _728 = (_725 * _705) + _726;
      _730 = (_725 * _712) + _726;
      _732 = (_725 * _719) + _726;
      if (_colorGradingParams.w > 0.0f) {
        _737 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _754 = (((max(0.0f, (1.0f - _732)) - _732) * _737) + _732);
        _755 = (((max(0.0f, (1.0f - _730)) - _730) * _737) + _730);
        _756 = (((max(0.0f, (1.0f - _728)) - _728) * _737) + _728);
      } else {
        _754 = _732;
        _755 = _730;
        _756 = _728;
      }
      _758 = _userImageAdjust.y + 1.0f;
      _760 = _userImageAdjust.x + 0.5f;
      _763 = ((_756 + -0.5f) * _758) + _760;
      _766 = ((_755 + -0.5f) * _758) + _760;
      _769 = ((_754 + -0.5f) * _758) + _760;
      _775 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _810 = exp2(log2(saturate(mad(_colorBlind2.z, _769, mad(_colorBlind2.y, _766, (_colorBlind2.x * _763))))) * _775);
      _811 = exp2(log2(saturate(mad(_colorBlind1.z, _769, mad(_colorBlind1.y, _766, (_colorBlind1.x * _763))))) * _775);
      _812 = exp2(log2(saturate(mad(_colorBlind0.z, _769, mad(_colorBlind0.y, _766, (_colorBlind0.x * _763))))) * _775);
    } else {
      _810 = _719;
      _811 = _712;
      _812 = _705;
    }
  } else {
    _810 = _438;
    _811 = _439;
    _812 = _440;
  }
  if (_etcParams.y > 1.0f) {
    _817 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _820 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _826 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_817, _820), float2(_817, _820))));  // [sem: expr_sat]
    _831 = (_826 * _810);
    _832 = (_826 * _811);
    _833 = (_826 * _812);
  } else {
    _831 = _810;
    _832 = _811;
    _833 = _812;
  }
  if (_457 && (_etcParams.z > 0.0f)) {
    _863 = select((_833 <= 0.0031308f), (_833 * 12.92f), (((pow(_833, 0.41666666f)) * 1.055f) + -0.055f));
    _864 = select((_832 <= 0.0031308f), (_832 * 12.92f), (((pow(_832, 0.41666666f)) * 1.055f) + -0.055f));
    _865 = select((_831 <= 0.0031308f), (_831 * 12.92f), (((pow(_831, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _863 = _833;
    _864 = _832;
    _865 = _831;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _868 = (float)((uint)((uint)(_441)));
    if (!(_868 < _viewDir.w)) {
      if (!(!(_868 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _879 = 0.0f;
        _880 = 0.0f;
        _881 = 0.0f;
      } else {
        _879 = _863;
        _880 = _864;
        _881 = _865;
      }
    } else {
      _879 = 0.0f;
      _880 = 0.0f;
      _881 = 0.0f;
    }
  } else {
    _879 = _863;
    _880 = _864;
    _881 = _865;
  }
  _885 = exp2(log2(_879 * 0.0001f) * 0.15930176f);
  _889 = exp2(log2(_880 * 0.0001f) * 0.15930176f);
  _893 = exp2(log2(_881 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_885 * 18.6875f) + 1.0f)) * ((_885 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_889 * 18.6875f) + 1.0f)) * ((_889 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_893 * 18.6875f) + 1.0f)) * ((_893 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _454;
  return SV_Target;
}
