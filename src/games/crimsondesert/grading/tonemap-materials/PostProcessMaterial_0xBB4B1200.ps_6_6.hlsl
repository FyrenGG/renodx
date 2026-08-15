struct PostProcessLearningHolo_CDStruct {
  float _learningEffectRatio;
  uint _learningEffectColor;
  uint _noiseTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessLearningHolo_CD {
  PostProcessLearningHolo_CDStruct BindlessParameters_PostProcessLearningHolo_CD;
};

typedef BindlessParameters_PostProcessLearningHolo_CD BindlessParameters_PostProcessLearningHolo_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLearningHolo_CD_t> BindlessParameters_PostProcessLearningHolo_CD[] : register(b0, space100);

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
  float4 _30;
  float _40;
  float _41;
  float _42;
  float _67;
  float _68;
  float _69;
  int _70;
  float _78;
  int _83;
  int _91;
  uint2 _107;
  uint _122;
  int _124;
  float _132;
  float _133;
  float _135;
  float _136;
  float _137;
  float _148;
  float _149;
  float _449;
  float _450;
  float _451;
  float _452;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _489;
  float _694;
  float _695;
  float _696;
  float _789;
  float _790;
  float _791;
  float _845;
  float _846;
  float _847;
  float _866;
  float _867;
  float _868;
  float _898;
  float _899;
  float _900;
  float _914;
  float _915;
  float _916;
  float _151;
  float _152;
  float _153;
  float _154;
  float _156;
  float _157;
  float _158;
  float _159;
  bool _163;
  float _175;
  float _176;
  float _177;
  float _179;
  float _180;
  uint _188;
  uint _189;
  uint4 _191;
  float4 _194;
  float _212;
  float _213;
  float _214;
  float _216;
  float _217;
  float _218;
  float _219;
  float _222;
  float _223;
  float _226;
  float _227;
  float _231;
  float _233;
  float _234;
  float _235;
  float _236;
  float _238;
  float _241;
  float _242;
  float _243;
  float _244;
  float _253;
  float _257;
  float _261;
  float _263;
  float _267;
  float _268;
  int _269;
  int _277;
  float _280;
  float _283;
  float _285;
  float _315;
  float _330;
  float _354;
  float _356;
  float _357;
  float _361;
  float _362;
  float _363;
  float _368;
  float _372;
  float _373;
  float _374;
  float _396;
  float _403;
  float _407;
  float _413;
  float _416;
  float _435;
  float _455;
  float _473;
  float _474;
  float _475;
  uint _476;
  bool _492;
  float _498;
  float _547;
  float _548;
  float _549;
  float _551;
  float _558;
  float _559;
  float _560;
  float _579;
  float _580;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _633;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _639;
  float _656;
  float _657;
  float _658;
  float _659;
  float _665;
  float _668;
  float _675;
  float _676;
  float _677;
  float _706;
  float _731;
  float _732;
  float _733;
  float _752;
  float _753;
  float _754;
  float _760;
  float _764;
  float _765;
  float _766;
  float _767;
  float _772;
  float _797;
  float _801;
  float _802;
  float _803;
  float _804;
  float _834;
  float _856;
  float _857;
  float _861;
  float _905;
  float _926;
  float _927;
  float _928;
  _30 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _40 = (pow(_30.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_30.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _42 = (pow(_30.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f) * 10000.0f;
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectRatio);
  _83 = WaveReadLaneFirst(_materialIndex);
  _91 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._noiseTexture);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_107.x, _107.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _122 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_107.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_107.y))))))) + 0.5f) * (((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_91 < (uint)65000), _91, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_78 + (TEXCOORD.x * 5.0f)), (_78 + (TEXCOORD.y * 0.1f)))))).y) * 0.016f) + -0.007968628f) * saturate(1.0f - _78)) + TEXCOORD.y))), 0));
  _124 = _122.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _132 = (((float)((uint)((uint)((uint)((uint)(_122.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _133 = (((float)((uint)((uint)(((uint)((uint)(_122.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _135 = 1.0f - abs(_132);
  _136 = abs(_133);
  _137 = _135 - _136;
  if (!(_137 >= 0.0f)) {
    _148 = (select((_132 >= 0.0f), 1.0f, -1.0f) * (1.0f - _136));
    _149 = (select((_133 >= 0.0f), 1.0f, -1.0f) * _135);
  } else {
    _148 = _132;
    _149 = _133;
  }
  _151 = rsqrt(dot(float3(_148, _149, _137), float3(_148, _149, _137)));  // [sem: invLength]
  _152 = _151 * _148;
  _153 = _151 * _149;
  _154 = _151 * _137;
  _156 = rsqrt(dot(float3(_152, _153, _154), float3(_152, _153, _154)));  // [sem: invLength]
  _157 = _156 * _152;
  _158 = _156 * _153;
  _159 = _156 * _154;
  _163 = (_78 > 0.001f);
  if (_124 == _renderPassLearning) {
    if (_163) {
      _175 = -0.0f - _viewDir.x;
      _176 = -0.0f - _viewDir.y;
      _177 = -0.0f - _viewDir.z;
      _179 = saturate(dot(float3(_157, _158, _159), float3(_175, _176, _177)));  // [sem: expr_sat]
      _180 = 1.0f - _179;
      _188 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _189 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _191 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_188, _189, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _194 = __3__36__0__0__g_gbufferNormal.Load(int3(_188, _189, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _212 = (saturate(_194.x * 1.0009785f) * 2.0f) + -1.0f;
      _213 = (saturate(_194.y * 1.0009785f) * 2.0f) + -1.0f;
      _214 = (saturate(_194.z * 1.0009785f) * 2.0f) + -1.0f;
      _216 = rsqrt(dot(float3(_212, _213, _214), float3(_212, _213, _214)));  // [sem: invLength]
      _217 = _216 * _212;
      _218 = _216 * _213;
      _219 = _214 * _216;
      _222 = (((float)((uint)((uint)(((uint)((uint)(_191.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;
      _223 = (((float)((uint)((uint)(_191.w & 255)))) * 0.007843138f) + -1.0f;
      _226 = (_222 + _223) * 0.5f;
      _227 = (_222 - _223) * 0.5f;
      _231 = (1.0f - abs(_226)) - abs(_227);
      _233 = rsqrt(dot(float3(_226, _227, _231), float3(_226, _227, _231)));  // [sem: invLength]
      _234 = _233 * _226;
      _235 = _233 * _227;
      _236 = _233 * _231;
      _238 = select((_219 >= 0.0f), 1.0f, -1.0f);
      _241 = -0.0f - (1.0f / (_238 + _219));
      _242 = _218 * _241;
      _243 = _242 * _217;
      _244 = _238 * _217;
      _253 = mad(_236, _217, mad(_235, _243, ((((_244 * _217) * _241) + 1.0f) * _234)));
      _257 = mad(_236, _218, mad(_235, (_238 + (_242 * _218)), ((_234 * _238) * _243)));
      _261 = mad(_236, _219, mad(_235, (-0.0f - _218), (-0.0f - (_244 * _234))));
      _263 = rsqrt(dot(float3(_253, _257, _261), float3(_253, _257, _261)));  // [sem: invLength]
      _267 = dot(float3((_263 * _253), (_263 * _257), (_263 * _261)), float3(_175, _176, _177));
      _268 = 1.0f - _267;
      _269 = WaveReadLaneFirst(_materialIndex);
      _277 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_269 < (uint)170000), _269, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
      _280 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 16) & 255)));
      _283 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 8) & 255)));
      _285 = (float)((uint)((uint)(_277 & 255)));
      _315 = max(0.001f, _exposure0.x);
      _330 = saturate((abs(sin(((_159 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
      _354 = _179 * _267;
      _356 = ((saturate((abs(sin(((_158 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f) * (saturate((abs(sin(((_157 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _330)) + _330) * (_354 * _354);
      _357 = dot(float3(_67, _68, _69), float3(0.2126f, 0.7152f, 0.0722f));
      _361 = _356 * (_357 + (select(((_280 * 0.003921569f) < 0.04045f), (_280 * 0.000303527f), exp2(log2((_280 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315));
      _362 = _356 * (_357 + (select(((_283 * 0.003921569f) < 0.04045f), (_283 * 0.000303527f), exp2(log2((_283 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315));
      _363 = _356 * (_357 + (select(((_285 * 0.003921569f) < 0.04045f), (_285 * 0.000303527f), exp2(log2((_285 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315));
      _368 = exp2(log2(_268 * _180) * 3.0f) * 10.0f;
      _372 = (_368 * _361) + _361;
      _373 = (_368 * _362) + _362;
      _374 = (_368 * _363) + _363;
      // [sem: expr_sat]
      _396 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
      _403 = (saturate(1.0f - abs((_78 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
      if (_396 < 1.0f) {
        _407 = log2(1.0f - _396);
        _413 = (pow(_396, 3.0f)) * exp2(_407 * 8.0f);
        _416 = (_413 * 600.0f) / _315;
        _449 = ((_416 + _372) * _403);
        _450 = ((_416 + _373) * _403);
        _451 = ((((_413 * 1800.0f) / _315) + _374) * _403);
        _452 = saturate(exp2(_407 * 3.0f) * _78);  // [sem: expr_sat]
      } else {
        if (_124 == _renderPassAimHighlight) {
          _435 = ((_268 - _180) * 0.4f) + _180;
          _449 = ((((_435 * 0.8f) / _315) + _372) * _403);
          _450 = ((((_435 * 1.2f) / _315) + _373) * _403);
          _451 = ((((_435 * 2.0f) / _315) + _374) * _403);
          _452 = _78;  // [sem: expr_sat]
        } else {
          _449 = _67;
          _450 = _68;
          _451 = _69;
          _452 = 0.0f;  // [sem: expr_sat]
        }
      }
      _455 = ((_78 * 3.0f) * _452) + 1.0f;
      _460 = (_455 * _67);
      _461 = (_455 * _68);
      _462 = (_455 * _69);
      _463 = _449;
      _464 = _450;
      _465 = _451;
      _466 = _452;
    } else {
      _460 = _67;
      _461 = _68;
      _462 = _69;
      _463 = _67;
      _464 = _68;
      _465 = _69;
      _466 = 0.0f;
    }
  } else {
    if (_163 && (_124 == _renderPassAimHighlight)) {
      _175 = -0.0f - _viewDir.x;
      _176 = -0.0f - _viewDir.y;
      _177 = -0.0f - _viewDir.z;
      _179 = saturate(dot(float3(_157, _158, _159), float3(_175, _176, _177)));  // [sem: expr_sat]
      _180 = 1.0f - _179;
      _188 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _189 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _191 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_188, _189, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _194 = __3__36__0__0__g_gbufferNormal.Load(int3(_188, _189, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _212 = (saturate(_194.x * 1.0009785f) * 2.0f) + -1.0f;
      _213 = (saturate(_194.y * 1.0009785f) * 2.0f) + -1.0f;
      _214 = (saturate(_194.z * 1.0009785f) * 2.0f) + -1.0f;
      _216 = rsqrt(dot(float3(_212, _213, _214), float3(_212, _213, _214)));  // [sem: invLength]
      _217 = _216 * _212;
      _218 = _216 * _213;
      _219 = _214 * _216;
      _222 = (((float)((uint)((uint)(((uint)((uint)(_191.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;
      _223 = (((float)((uint)((uint)(_191.w & 255)))) * 0.007843138f) + -1.0f;
      _226 = (_222 + _223) * 0.5f;
      _227 = (_222 - _223) * 0.5f;
      _231 = (1.0f - abs(_226)) - abs(_227);
      _233 = rsqrt(dot(float3(_226, _227, _231), float3(_226, _227, _231)));  // [sem: invLength]
      _234 = _233 * _226;
      _235 = _233 * _227;
      _236 = _233 * _231;
      _238 = select((_219 >= 0.0f), 1.0f, -1.0f);
      _241 = -0.0f - (1.0f / (_238 + _219));
      _242 = _218 * _241;
      _243 = _242 * _217;
      _244 = _238 * _217;
      _253 = mad(_236, _217, mad(_235, _243, ((((_244 * _217) * _241) + 1.0f) * _234)));
      _257 = mad(_236, _218, mad(_235, (_238 + (_242 * _218)), ((_234 * _238) * _243)));
      _261 = mad(_236, _219, mad(_235, (-0.0f - _218), (-0.0f - (_244 * _234))));
      _263 = rsqrt(dot(float3(_253, _257, _261), float3(_253, _257, _261)));  // [sem: invLength]
      _267 = dot(float3((_263 * _253), (_263 * _257), (_263 * _261)), float3(_175, _176, _177));
      _268 = 1.0f - _267;
      _269 = WaveReadLaneFirst(_materialIndex);
      _277 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_269 < (uint)170000), _269, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
      _280 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 16) & 255)));
      _283 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 8) & 255)));
      _285 = (float)((uint)((uint)(_277 & 255)));
      _315 = max(0.001f, _exposure0.x);
      _330 = saturate((abs(sin(((_159 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
      _354 = _179 * _267;
      _356 = ((saturate((abs(sin(((_158 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f) * (saturate((abs(sin(((_157 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _330)) + _330) * (_354 * _354);
      _357 = dot(float3(_67, _68, _69), float3(0.2126f, 0.7152f, 0.0722f));
      _361 = _356 * (_357 + (select(((_280 * 0.003921569f) < 0.04045f), (_280 * 0.000303527f), exp2(log2((_280 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315));
      _362 = _356 * (_357 + (select(((_283 * 0.003921569f) < 0.04045f), (_283 * 0.000303527f), exp2(log2((_283 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315));
      _363 = _356 * (_357 + (select(((_285 * 0.003921569f) < 0.04045f), (_285 * 0.000303527f), exp2(log2((_285 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315));
      _368 = exp2(log2(_268 * _180) * 3.0f) * 10.0f;
      _372 = (_368 * _361) + _361;
      _373 = (_368 * _362) + _362;
      _374 = (_368 * _363) + _363;
      // [sem: expr_sat]
      _396 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
      _403 = (saturate(1.0f - abs((_78 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
      if (_396 < 1.0f) {
        _407 = log2(1.0f - _396);
        _413 = (pow(_396, 3.0f)) * exp2(_407 * 8.0f);
        _416 = (_413 * 600.0f) / _315;
        _449 = ((_416 + _372) * _403);
        _450 = ((_416 + _373) * _403);
        _451 = ((((_413 * 1800.0f) / _315) + _374) * _403);
        _452 = saturate(exp2(_407 * 3.0f) * _78);  // [sem: expr_sat]
      } else {
        if (_124 == _renderPassAimHighlight) {
          _435 = ((_268 - _180) * 0.4f) + _180;
          _449 = ((((_435 * 0.8f) / _315) + _372) * _403);
          _450 = ((((_435 * 1.2f) / _315) + _373) * _403);
          _451 = ((((_435 * 2.0f) / _315) + _374) * _403);
          _452 = _78;  // [sem: expr_sat]
        } else {
          _449 = _67;
          _450 = _68;
          _451 = _69;
          _452 = 0.0f;  // [sem: expr_sat]
        }
      }
      _455 = ((_78 * 3.0f) * _452) + 1.0f;
      _460 = (_455 * _67);
      _461 = (_455 * _68);
      _462 = (_455 * _69);
      _463 = _449;
      _464 = _450;
      _465 = _451;
      _466 = _452;
    } else {
      _460 = _67;
      _461 = _68;
      _462 = _69;
      _463 = _67;
      _464 = _68;
      _465 = _69;
      _466 = 0.0f;
    }
  }
  _473 = (_466 * (_463 - _460)) + _460;
  _474 = (_466 * (_464 - _461)) + _461;
  _475 = (_466 * (_465 - _462)) + _462;
  _476 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _489 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _476, 0)))).x) & 127)))) + 0.5f);
  } else {
    _489 = 1.0f;
  }
  _492 = (_localToneMappingParams.w > 0.0f);
  if (_492) {
    _498 = _userImageAdjust.z * _exposure0.x;
    _547 = exp2(log2(max(0.0f, (((_498 * max(0.0f, (((_473 * 1.70505f) - (_474 * 0.62179f)) - (_475 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _548 = exp2(log2(max(0.0f, (((max(0.0f, (((_474 * 1.1408f) - (_473 * 0.13026f)) - (_475 * 0.01055f))) * _498) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _549 = exp2(log2(max(0.0f, (((max(0.0f, (((_473 * -0.024f) - (_474 * 0.12897f)) + (_475 * 1.15297f))) * _498) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _551 = dot(float3(_547, _548, _549), float3(0.212671f, 0.71516f, 0.072169f));
    _558 = ((_547 - _551) * _powerParams.w) + _551;
    _559 = ((_548 - _551) * _powerParams.w) + _551;
    _560 = ((_549 - _551) * _powerParams.w) + _551;
    _579 = min(max(log2(mad(_560, 0.079223745f, mad(_559, 0.0784336f, (_558 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _580 = min(max(log2(mad(_560, 0.07916613f, mad(_559, 0.87846863f, (_558 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _581 = min(max(log2(mad(_560, 0.879143f, mad(_559, 0.0784336f, (_558 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _582 = _579 * 0.060606062f;
    _583 = _580 * 0.060606062f;
    _584 = _581 * 0.060606062f;
    _585 = _582 * _582;
    _586 = _583 * _583;
    _587 = _584 * _584;
    _633 = min(0.0f, (-0.0f - (((_579 * 0.0072181816f) + ((_585 * 0.4298f) + (((_585 * _585) * ((31.96f - (_579 * 2.4327273f)) + (_585 * 15.5f))) - ((_579 * 0.41624245f) * _585)))) + -0.00232f)));
    _634 = min(0.0f, (-0.0f - (((_580 * 0.0072181816f) + ((_586 * 0.4298f) + (((_586 * _586) * ((31.96f - (_580 * 2.4327273f)) + (_586 * 15.5f))) - ((_580 * 0.41624245f) * _586)))) + -0.00232f)));
    _635 = min(0.0f, (-0.0f - (((_581 * 0.0072181816f) + ((_587 * 0.4298f) + (((_587 * _587) * ((31.96f - (_581 * 2.4327273f)) + (_587 * 15.5f))) - ((_581 * 0.41624245f) * _587)))) + -0.00232f)));
    _636 = -0.0f - _633;
    _637 = -0.0f - _634;
    _638 = -0.0f - _635;
    _639 = dot(float3(_636, _637, _638), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _656 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _657 = -0.79999995f / _656;
      _658 = -1.2f / _656;
      _659 = 0.20000005f / _656;
      _665 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _668 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _675 = (_657 + 1.4f) + (_668 * (-0.39999998f - _657));
      _676 = (_658 + 1.6f) + (_668 * (-0.6f - _658));
      _677 = (_659 + 0.9f) + (_668 * (0.5f - _659));
      _694 = (lerp(_676, 1.2f, _665));  // [sem: blended]
      _695 = (lerp(_675, 1.0f, _665));  // [sem: blended]
      _696 = (lerp(_677, 1.4f, _665));  // [sem: blended]
    } else {
      _694 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _695 = 1.0f;  // [sem: blended]
      _696 = 1.4f;  // [sem: blended]
    }
    _706 = 1.0f - _694;
    _731 = ((exp2(log2(((saturate((_633 * _633) * _636) * _706) + _694) * _636) * _695) - _639) * _696) + _639;
    _732 = ((exp2(log2(((saturate((_634 * _634) * _637) * _706) + _694) * _637) * _695) - _639) * _696) + _639;
    _733 = ((exp2(log2(((saturate((_635 * _635) * _638) * _706) + _694) * _638) * _695) - _639) * _696) + _639;
    _752 = saturate(exp2(log2(mad(_733, -0.09902974f, mad(_732, -0.09802088f, (_731 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _753 = saturate(exp2(log2(mad(_733, -0.098961174f, mad(_732, 1.1519032f, (_731 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _754 = saturate(exp2(log2(mad(_733, 1.1510737f, mad(_732, -0.09804345f, (_731 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _760 = 1.0f - abs(_etcParams.w);
      _764 = saturate(_etcParams.w);  // [sem: expr_sat]
      _765 = (_760 * _752) + _764;
      _766 = (_760 * _753) + _764;
      _767 = (_760 * _754) + _764;
      if (_colorGradingParams.w > 0.0f) {
        _772 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _789 = (((max(0.0f, (1.0f - _765)) - _765) * _772) + _765);
        _790 = (((max(0.0f, (1.0f - _766)) - _766) * _772) + _766);
        _791 = (((max(0.0f, (1.0f - _767)) - _767) * _772) + _767);
      } else {
        _789 = _765;
        _790 = _766;
        _791 = _767;
      }
      _797 = _userImageAdjust.y + 1.0f;
      _801 = _userImageAdjust.x + 0.5f;
      _802 = ((_789 + -0.5f) * _797) + _801;
      _803 = ((_790 + -0.5f) * _797) + _801;
      _804 = ((_791 + -0.5f) * _797) + _801;
      _834 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _845 = exp2(log2(saturate(mad(_colorBlind0.z, _804, mad(_colorBlind0.y, _803, (_colorBlind0.x * _802))))) * _834);
      _846 = exp2(log2(saturate(mad(_colorBlind1.z, _804, mad(_colorBlind1.y, _803, (_colorBlind1.x * _802))))) * _834);
      _847 = exp2(log2(saturate(mad(_colorBlind2.z, _804, mad(_colorBlind2.y, _803, (_colorBlind2.x * _802))))) * _834);
    } else {
      _845 = _752;
      _846 = _753;
      _847 = _754;
    }
  } else {
    _845 = _473;
    _846 = _474;
    _847 = _475;
  }
  if (_etcParams.y > 1.0f) {
    _856 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _857 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _861 = saturate(1.0f - (dot(float2(_856, _857), float2(_856, _857)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _866 = (_861 * _845);
    _867 = (_861 * _846);
    _868 = (_861 * _847);
  } else {
    _866 = _845;
    _867 = _846;
    _868 = _847;
  }
  if (_492 && (_etcParams.z > 0.0f)) {
    _898 = select((_866 <= 0.0031308f), (_866 * 12.92f), (((pow(_866, 0.41666666f)) * 1.055f) + -0.055f));
    _899 = select((_867 <= 0.0031308f), (_867 * 12.92f), (((pow(_867, 0.41666666f)) * 1.055f) + -0.055f));
    _900 = select((_868 <= 0.0031308f), (_868 * 12.92f), (((pow(_868, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _898 = _866;
    _899 = _867;
    _900 = _868;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _905 = (float)((uint)((uint)(_476)));
    if (!(_905 < _viewDir.w)) {
      if (!(_905 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _914 = _898;
        _915 = _899;
        _916 = _900;
      } else {
        _914 = 0.0f;
        _915 = 0.0f;
        _916 = 0.0f;
      }
    } else {
      _914 = 0.0f;
      _915 = 0.0f;
      _916 = 0.0f;
    }
  } else {
    _914 = _898;
    _915 = _899;
    _916 = _900;
  }
  _926 = exp2(log2(_914 * 0.0001f) * 0.15930176f);
  _927 = exp2(log2(_915 * 0.0001f) * 0.15930176f);
  _928 = exp2(log2(_916 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_926 * 18.6875f) + 1.0f)) * ((_926 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_927 * 18.6875f) + 1.0f)) * ((_927 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_928 * 18.6875f) + 1.0f)) * ((_928 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _489;
  return SV_Target;
}
