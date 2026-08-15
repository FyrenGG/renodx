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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessKnowledgeGain_CD {
  PostProcessKnowledgeGain_CDStruct BindlessParameters_PostProcessKnowledgeGain_CD;
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
  int _38;
  float _46;
  float _430;
  float _431;
  float _432;
  float _433;
  float _447;
  float _652;
  float _653;
  float _654;
  float _747;
  float _748;
  float _749;
  float _803;
  float _804;
  float _805;
  float _824;
  float _825;
  float _826;
  float _856;
  float _857;
  float _858;
  float _872;
  float _873;
  float _874;
  float _61;
  float _67;
  float _70;
  float _73;
  int _82;
  int _90;
  float4 _97;
  float _101;
  float _102;
  float _105;
  float _106;
  float _110;
  float _111;
  float _112;
  uint2 _116;
  float _125;
  float _126;
  float4 _193;
  float _206;
  float _207;
  float _208;
  float _210;
  float _222;
  float _225;
  float _227;
  float _228;
  float _229;
  float4 _231;
  float _241;
  float _242;
  float _243;
  float _271;
  float4 _274;
  float _284;
  float _285;
  float _286;
  float _314;
  float4 _317;
  float _327;
  float _328;
  float _329;
  float _357;
  int _358;
  int _366;
  float _369;
  float _372;
  float _374;
  float _399;
  float _400;
  float _401;
  float _413;
  uint _434;
  bool _450;
  float _456;
  float _505;
  float _506;
  float _507;
  float _509;
  float _516;
  float _517;
  float _518;
  float _537;
  float _538;
  float _539;
  float _540;
  float _541;
  float _542;
  float _543;
  float _544;
  float _545;
  float _591;
  float _592;
  float _593;
  float _594;
  float _595;
  float _596;
  float _597;
  float _614;
  float _615;
  float _616;
  float _617;
  float _623;
  float _626;
  float _633;
  float _634;
  float _635;
  float _664;
  float _689;
  float _690;
  float _691;
  float _710;
  float _711;
  float _712;
  float _718;
  float _722;
  float _723;
  float _724;
  float _725;
  float _730;
  float _755;
  float _759;
  float _760;
  float _761;
  float _762;
  float _792;
  float _814;
  float _815;
  float _819;
  float _863;
  float _884;
  float _885;
  float _886;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_37 >= 0.001f) || (_46 >= 0.001f)) {
    _61 = saturate(saturate(((1.0f - abs((1.25f - TEXCOORD.y) - (max(_37, _46) * 1.5f))) * 4.0f) + -3.0f) * 2.0f);  // [sem: expr_sat]
    if (_61 > 0.001f) {
      _67 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
      _70 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
      _73 = min(max(_70.x, 0.01f), 0.1f);  // [sem: _3__36__0__0__g_depth_sample_derived]
      _82 = WaveReadLaneFirst(_materialIndex);
      _90 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _97 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_90 < (uint)65000), _90, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((8.0f / _67) * TEXCOORD.x), ((_time.x * 0.1f) + ((3.0f / _67) * TEXCOORD.y))));
      _101 = _97.y + -0.4f;
      _102 = _73 * 0.25f;
      _105 = ((_97.x + -0.4f) * _102) + TEXCOORD.x;
      _106 = (_101 * _102) + TEXCOORD.y;
      _110 = _73 * 200.0f;
      _111 = _bufferSizeAndInvSize.z * _110;
      _112 = _bufferSizeAndInvSize.w * _110;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_116.x, _116.y);
      _125 = ((float)((int)((int)((float)((int)((int)(_116.x))))))) + 0.5f;
      _126 = ((float)((int)((int)((float)((int)((int)(_116.y))))))) + 0.5f;
      // [sem: _3__36__0__0__g_gbufferNormal_load]
      _193 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0));
      _206 = (saturate(_193.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _207 = (saturate(_193.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _208 = (saturate(_193.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _210 = rsqrt(dot(float3(_206, _207, _208), float3(_206, _207, _208)));  // [sem: invLength]
      _222 = abs(dot(float3((_210 * _206), (_210 * _207), (_208 * _210)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _225 = saturate((_222 * _222) * 2.0f);  // [sem: expr_sat]
      _227 = (_73 * 0.1f) * _101;
      _228 = _227 + TEXCOORD.x;
      _229 = _227 + TEXCOORD.y;
      _231 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_228, _229));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _241 = (pow(_231.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _242 = (pow(_231.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _243 = (pow(_231.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _271 = dot(float3((exp2(log2(max(0.0f, (_241 + -0.8359375f)) / (18.851562f - (_241 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_242 + -0.8359375f)) / (18.851562f - (_242 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_243 + -0.8359375f)) / (18.851562f - (_243 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _274 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 + -0.002f), (_229 + -0.002f)));
      _284 = (pow(_274.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _285 = (pow(_274.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _286 = (pow(_274.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _314 = dot(float3((exp2(log2(max(0.0f, (_284 + -0.8359375f)) / (18.851562f - (_284 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_285 + -0.8359375f)) / (18.851562f - (_285 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_286 + -0.8359375f)) / (18.851562f - (_286 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _317 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 + 0.002f), (_229 + 0.002f)));
      _327 = (pow(_317.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _328 = (pow(_317.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _329 = (pow(_317.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _357 = dot(float3((exp2(log2(max(0.0f, (_327 + -0.8359375f)) / (18.851562f - (_327 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_328 + -0.8359375f)) / (18.851562f - (_328 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_329 + -0.8359375f)) / (18.851562f - (_329 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
      _358 = WaveReadLaneFirst(_materialIndex);
      _366 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_358 < (uint)170000), _358, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
      _369 = (float)((uint)((uint)(((uint)((uint)(_366)) >> 16) & 255)));
      _372 = (float)((uint)((uint)(((uint)((uint)(_366)) >> 8) & 255)));
      _374 = (float)((uint)((uint)(_366 & 255)));
      _399 = select(((_369 * 0.003921569f) < 0.04045f), (_369 * 0.000303527f), exp2(log2((_369 * 0.003717127f) + 0.052132703f) * 2.4f));
      _400 = select(((_372 * 0.003921569f) < 0.04045f), (_372 * 0.000303527f), exp2(log2((_372 * 0.003717127f) + 0.052132703f) * 2.4f));
      _401 = select(((_374 * 0.003921569f) < 0.04045f), (_374 * 0.000303527f), exp2(log2((_374 * 0.003717127f) + 0.052132703f) * 2.4f));
      _413 = max(0.001f, _exposure0.x);
      _430 = ((((((lerp(_399, 0.001f, _225)) / _413) * _314) - _314) * 0.4f) + _314);
      _431 = ((((((lerp(_400, 0.001f, _225)) / _413) * _271) - _271) * 0.4f) + _271);
      _432 = ((((((lerp(_401, 0.001f, _225)) / _413) * _357) - _357) * 0.4f) + _357);
      _433 = ((saturate((float)((int)((int)((int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_125 * (_105 - _111))), ((int)(_126 * (_106 - _112))), 0)))).x) & 255) == _renderPassKnowledgeGain))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_125 * _105)), ((int)(_126 * _106)), 0)))).x) & 255) == _renderPassKnowledgeGain)))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_125 * (_105 + _111))), ((int)(_126 * (_106 + _112))), 0)))).x) & 255) == _renderPassKnowledgeGain)))))) * _61) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _70.x)) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _105)), ((int)(_customRenderPassSizeInvSize.y * _106)), 0)))).x))))));
    } else {
      _430 = 0.0f;
      _431 = 0.0f;
      _432 = 0.0f;
      _433 = 0.0f;
    }
  } else {
    _430 = 0.0f;
    _431 = 0.0f;
    _432 = 0.0f;
    _433 = 0.0f;
  }
  _434 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _447 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _434, 0)))).x) & 127)))) + 0.5f);
  } else {
    _447 = _433;
  }
  _450 = (_localToneMappingParams.w > 0.0f);
  if (_450) {
    _456 = _userImageAdjust.z * _exposure0.x;
    _505 = exp2(log2(max(0.0f, (((_456 * max(0.0f, (((_430 * 1.70505f) - (_431 * 0.62179f)) - (_432 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _506 = exp2(log2(max(0.0f, (((max(0.0f, (((_431 * 1.1408f) - (_430 * 0.13026f)) - (_432 * 0.01055f))) * _456) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _507 = exp2(log2(max(0.0f, (((max(0.0f, (((_430 * -0.024f) - (_431 * 0.12897f)) + (_432 * 1.15297f))) * _456) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _509 = dot(float3(_505, _506, _507), float3(0.212671f, 0.71516f, 0.072169f));
    _516 = ((_505 - _509) * _powerParams.w) + _509;
    _517 = ((_506 - _509) * _powerParams.w) + _509;
    _518 = ((_507 - _509) * _powerParams.w) + _509;
    _537 = min(max(log2(mad(_518, 0.079223745f, mad(_517, 0.0784336f, (_516 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _538 = min(max(log2(mad(_518, 0.07916613f, mad(_517, 0.87846863f, (_516 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _539 = min(max(log2(mad(_518, 0.879143f, mad(_517, 0.0784336f, (_516 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _540 = _537 * 0.060606062f;
    _541 = _538 * 0.060606062f;
    _542 = _539 * 0.060606062f;
    _543 = _540 * _540;
    _544 = _541 * _541;
    _545 = _542 * _542;
    _591 = min(0.0f, (-0.0f - (((_537 * 0.0072181816f) + ((_543 * 0.4298f) + (((_543 * _543) * ((31.96f - (_537 * 2.4327273f)) + (_543 * 15.5f))) - ((_537 * 0.41624245f) * _543)))) + -0.00232f)));
    _592 = min(0.0f, (-0.0f - (((_538 * 0.0072181816f) + ((_544 * 0.4298f) + (((_544 * _544) * ((31.96f - (_538 * 2.4327273f)) + (_544 * 15.5f))) - ((_538 * 0.41624245f) * _544)))) + -0.00232f)));
    _593 = min(0.0f, (-0.0f - (((_539 * 0.0072181816f) + ((_545 * 0.4298f) + (((_545 * _545) * ((31.96f - (_539 * 2.4327273f)) + (_545 * 15.5f))) - ((_539 * 0.41624245f) * _545)))) + -0.00232f)));
    _594 = -0.0f - _591;
    _595 = -0.0f - _592;
    _596 = -0.0f - _593;
    _597 = dot(float3(_594, _595, _596), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _614 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _615 = -0.79999995f / _614;
      _616 = -1.2f / _614;
      _617 = 0.20000005f / _614;
      _623 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _626 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _633 = (_615 + 1.4f) + (_626 * (-0.39999998f - _615));
      _634 = (_616 + 1.6f) + (_626 * (-0.6f - _616));
      _635 = (_617 + 0.9f) + (_626 * (0.5f - _617));
      _652 = (lerp(_634, 1.2f, _623));  // [sem: blended]
      _653 = (lerp(_633, 1.0f, _623));  // [sem: blended]
      _654 = (lerp(_635, 1.4f, _623));  // [sem: blended]
    } else {
      _652 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _653 = 1.0f;  // [sem: blended]
      _654 = 1.4f;  // [sem: blended]
    }
    _664 = 1.0f - _652;
    _689 = ((exp2(log2(((saturate((_591 * _591) * _594) * _664) + _652) * _594) * _653) - _597) * _654) + _597;
    _690 = ((exp2(log2(((saturate((_592 * _592) * _595) * _664) + _652) * _595) * _653) - _597) * _654) + _597;
    _691 = ((exp2(log2(((saturate((_593 * _593) * _596) * _664) + _652) * _596) * _653) - _597) * _654) + _597;
    _710 = saturate(exp2(log2(mad(_691, -0.09902974f, mad(_690, -0.09802088f, (_689 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _711 = saturate(exp2(log2(mad(_691, -0.098961174f, mad(_690, 1.1519032f, (_689 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _712 = saturate(exp2(log2(mad(_691, 1.1510737f, mad(_690, -0.09804345f, (_689 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _718 = 1.0f - abs(_etcParams.w);
      _722 = saturate(_etcParams.w);  // [sem: expr_sat]
      _723 = (_718 * _710) + _722;
      _724 = (_718 * _711) + _722;
      _725 = (_718 * _712) + _722;
      if (_colorGradingParams.w > 0.0f) {
        _730 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _747 = (((max(0.0f, (1.0f - _723)) - _723) * _730) + _723);
        _748 = (((max(0.0f, (1.0f - _724)) - _724) * _730) + _724);
        _749 = (((max(0.0f, (1.0f - _725)) - _725) * _730) + _725);
      } else {
        _747 = _723;
        _748 = _724;
        _749 = _725;
      }
      _755 = _userImageAdjust.y + 1.0f;
      _759 = _userImageAdjust.x + 0.5f;
      _760 = ((_747 + -0.5f) * _755) + _759;
      _761 = ((_748 + -0.5f) * _755) + _759;
      _762 = ((_749 + -0.5f) * _755) + _759;
      _792 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _803 = exp2(log2(saturate(mad(_colorBlind0.z, _762, mad(_colorBlind0.y, _761, (_colorBlind0.x * _760))))) * _792);
      _804 = exp2(log2(saturate(mad(_colorBlind1.z, _762, mad(_colorBlind1.y, _761, (_colorBlind1.x * _760))))) * _792);
      _805 = exp2(log2(saturate(mad(_colorBlind2.z, _762, mad(_colorBlind2.y, _761, (_colorBlind2.x * _760))))) * _792);
    } else {
      _803 = _710;
      _804 = _711;
      _805 = _712;
    }
  } else {
    _803 = _430;
    _804 = _431;
    _805 = _432;
  }
  if (_etcParams.y > 1.0f) {
    _814 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _815 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _819 = saturate(1.0f - (dot(float2(_814, _815), float2(_814, _815)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _824 = (_819 * _803);
    _825 = (_819 * _804);
    _826 = (_819 * _805);
  } else {
    _824 = _803;
    _825 = _804;
    _826 = _805;
  }
  if (_450 && (_etcParams.z > 0.0f)) {
    _856 = select((_824 <= 0.0031308f), (_824 * 12.92f), (((pow(_824, 0.41666666f)) * 1.055f) + -0.055f));
    _857 = select((_825 <= 0.0031308f), (_825 * 12.92f), (((pow(_825, 0.41666666f)) * 1.055f) + -0.055f));
    _858 = select((_826 <= 0.0031308f), (_826 * 12.92f), (((pow(_826, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _856 = _824;
    _857 = _825;
    _858 = _826;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _863 = (float)((uint)((uint)(_434)));
    if (!(_863 < _viewDir.w)) {
      if (!(_863 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _872 = _856;
        _873 = _857;
        _874 = _858;
      } else {
        _872 = 0.0f;
        _873 = 0.0f;
        _874 = 0.0f;
      }
    } else {
      _872 = 0.0f;
      _873 = 0.0f;
      _874 = 0.0f;
    }
  } else {
    _872 = _856;
    _873 = _857;
    _874 = _858;
  }
  _884 = exp2(log2(_872 * 0.0001f) * 0.15930176f);
  _885 = exp2(log2(_873 * 0.0001f) * 0.15930176f);
  _886 = exp2(log2(_874 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_884 * 18.6875f) + 1.0f)) * ((_884 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_885 * 18.6875f) + 1.0f)) * ((_885 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_886 * 18.6875f) + 1.0f)) * ((_886 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _447;
  return SV_Target;
}
