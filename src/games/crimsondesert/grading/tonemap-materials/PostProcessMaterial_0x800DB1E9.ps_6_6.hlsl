struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

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
  float _26;
  float _29;
  float _30;
  float _31;
  float _32;
  float _68;
  int _72;
  float _80;
  float _87;
  float _88;
  float _89;
  float _91;
  float _92;
  float _93;
  float _94;
  int _95;
  int _103;
  float4 _110;
  int _117;
  int _125;
  float4 _132;
  int _141;
  int _149;
  float4 _156;
  float _159;
  float _160;
  int _165;
  int _173;
  float4 _180;
  int _189;
  int _197;
  float4 _204;
  float _210;
  float _212;
  float _217;
  float _218;
  float _223;
  float _224;
  float _226;
  int _233;
  int _241;
  float4 _248;
  float _257;
  float _258;
  int _266;
  float _274;
  float _277;
  float _279;
  float _280;
  float _281;
  float _285;
  float _287;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _328;
  float _329;
  float _330;
  uint _331;
  float _345;
  float _548;
  float _549;
  float _550;
  float _643;
  float _644;
  float _645;
  float _699;
  float _700;
  float _701;
  float _717;
  float _718;
  float _719;
  float _749;
  float _750;
  float _751;
  float _765;
  float _766;
  float _767;
  bool _348;
  float _352;
  float _401;
  float _402;
  float _403;
  float _405;
  float _412;
  float _413;
  float _414;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _492;
  float _493;
  float _510;
  float _511;
  float _512;
  float _513;
  float _519;
  float _522;
  float _529;
  float _530;
  float _531;
  float _560;
  float _585;
  float _586;
  float _587;
  float _606;
  float _607;
  float _608;
  float _614;
  float _618;
  float _619;
  float _620;
  float _621;
  float _626;
  float _651;
  float _655;
  float _656;
  float _657;
  float _658;
  float _688;
  float _707;
  float _708;
  float _712;
  float _756;
  _26 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _29 = (TEXCOORD.x * 2.0f) + -1.0f;
  _30 = TEXCOORD.y * 2.0f;
  _31 = 1.0f - _30;
  _32 = max(1e-07f, _26.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _68 = mad((_invViewProjRelative[3].z), _32, mad((_invViewProjRelative[3].y), _31, ((_invViewProjRelative[3].x) * _29))) + (_invViewProjRelative[3].w);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._fogDepth);
  _87 = -0.0f - ((mad((_invViewProjRelative[0].z), _32, mad((_invViewProjRelative[0].y), _31, ((_invViewProjRelative[0].x) * _29))) + (_invViewProjRelative[0].w)) / _68);
  _88 = -0.0f - ((mad((_invViewProjRelative[1].z), _32, mad((_invViewProjRelative[1].y), _31, ((_invViewProjRelative[1].x) * _29))) + (_invViewProjRelative[1].w)) / _68);
  _89 = -0.0f - ((mad((_invViewProjRelative[2].z), _32, mad((_invViewProjRelative[2].y), _31, ((_invViewProjRelative[2].x) * _29))) + (_invViewProjRelative[2].w)) / _68);
  _91 = rsqrt(dot(float3(_87, _88, _89), float3(_87, _88, _89)));  // [sem: invLength]
  _92 = _91 * _87;
  _93 = _91 * _88;
  _94 = _91 * _89;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, _92));
  _117 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_117 < (uint)170000), _117, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _132 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_125 < (uint)65000), _125, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, ((_time.x * 0.05f) + _93)));
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_141 < (uint)170000), _141, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _156 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_149 < (uint)65000), _149, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_94 * 2.0f), ((_93 - (_time.x * 0.1f)) * 2.0f)));
  _159 = _156.x + _132.x;
  _160 = _156.y + _132.y;
  _165 = WaveReadLaneFirst(_materialIndex);
  _173 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_165 < (uint)170000), _165, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _180 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_173 < (uint)65000), _173, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _93), _92));
  _189 = WaveReadLaneFirst(_materialIndex);
  _197 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_189 < (uint)170000), _189, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _204 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_197 < (uint)65000), _197, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _93) * 2.0f), (_92 * 2.0f)));
  _210 = abs(dot(float3(_92, _93, _94), float3(0.0f, 1.0f, 0.0f)));
  _212 = abs(dot(float3(_92, _93, _94), float3(0.0f, 0.0f, 1.0f)));
  _217 = (_210 * (_110.x - _159)) + _159;
  _218 = (_210 * (_110.y - _160)) + _160;
  _223 = (((_204.x + _180.x) - _217) * _212) + _217;
  _224 = (((_204.y + _180.y) - _218) * _212) + _218;
  _226 = saturate(_26.x * 35.0f);  // [sem: expr_sat]
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _248 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_241 < (uint)65000), _241, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _257 = TEXCOORD.x + -0.5f;
  _258 = TEXCOORD.y + -0.5f;
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_266 < (uint)170000), _266, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._chromaticShiftValue);
  _277 = ((sqrt((_258 * _258) + (_257 * _257)) * 0.01f) * ((float)((uint)((uint)(_enableChromaticAberration))))) * _274;
  _279 = rsqrt(dot(float2(_257, _258), float2(_257, _258)));  // [sem: invLength]
  _280 = _279 * _257;
  _281 = _279 * _258;
  _285 = ((lerp(_223, _248.x, _226)) * 4.0f) + -1.9921569f;
  _287 = ((lerp(_224, _248.y, _226)) * 4.0f) + -1.9921569f;
  _311 = 1.0f / max(0.001f, _exposure0.x);
  _312 = _311 * (1.0f - saturate((pow(_26.x, _80)) * 4.0f));
  _313 = _312 * 0.080000006f;
  _314 = _312 * 0.089999996f;
  _315 = _312 * 0.11000001f;
  _328 = ((saturate(_313) * 0.06f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((TEXCOORD.x - (_277 * _285)) - (_280 * _277)), ((TEXCOORD.y - (_277 * _287)) - (_281 * _277)))))).x) - _313)) + _313;
  _329 = ((saturate(_314) * 0.06f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) - _314)) + _314;
  _330 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_280 + _285) * _277) + TEXCOORD.x), (((_281 + _287) * _277) + TEXCOORD.y))))).z) - _315) * 0.06f) * saturate(_315)) + _315;
  _331 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _345 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _331, 0)))).x) & 127)))) + 0.5f);
  } else {
    _345 = _311;
  }
  _348 = (_localToneMappingParams.w > 0.0f);
  if (_348) {
    _352 = _userImageAdjust.z * _exposure0.x;
    _401 = exp2(log2(max(0.0f, (((_352 * max(0.0f, (((_328 * 1.70505f) - (_329 * 0.62179f)) - (_330 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _402 = exp2(log2(max(0.0f, (((max(0.0f, (((_329 * 1.1408f) - (_328 * 0.13026f)) - (_330 * 0.01055f))) * _352) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _403 = exp2(log2(max(0.0f, (((max(0.0f, (((_328 * -0.024f) - (_329 * 0.12897f)) + (_330 * 1.15297f))) * _352) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _405 = dot(float3(_401, _402, _403), float3(0.212671f, 0.71516f, 0.072169f));
    _412 = ((_401 - _405) * _powerParams.w) + _405;
    _413 = ((_402 - _405) * _powerParams.w) + _405;
    _414 = ((_403 - _405) * _powerParams.w) + _405;
    _433 = min(max(log2(mad(_414, 0.079223745f, mad(_413, 0.0784336f, (_412 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _434 = min(max(log2(mad(_414, 0.07916613f, mad(_413, 0.87846863f, (_412 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _435 = min(max(log2(mad(_414, 0.879143f, mad(_413, 0.0784336f, (_412 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _436 = _433 * 0.060606062f;
    _437 = _434 * 0.060606062f;
    _438 = _435 * 0.060606062f;
    _439 = _436 * _436;
    _440 = _437 * _437;
    _441 = _438 * _438;
    _487 = min(0.0f, (-0.0f - (((_433 * 0.0072181816f) + ((_439 * 0.4298f) + (((_439 * _439) * ((31.96f - (_433 * 2.4327273f)) + (_439 * 15.5f))) - ((_433 * 0.41624245f) * _439)))) + -0.00232f)));
    _488 = min(0.0f, (-0.0f - (((_434 * 0.0072181816f) + ((_440 * 0.4298f) + (((_440 * _440) * ((31.96f - (_434 * 2.4327273f)) + (_440 * 15.5f))) - ((_434 * 0.41624245f) * _440)))) + -0.00232f)));
    _489 = min(0.0f, (-0.0f - (((_435 * 0.0072181816f) + ((_441 * 0.4298f) + (((_441 * _441) * ((31.96f - (_435 * 2.4327273f)) + (_441 * 15.5f))) - ((_435 * 0.41624245f) * _441)))) + -0.00232f)));
    _490 = -0.0f - _487;
    _491 = -0.0f - _488;
    _492 = -0.0f - _489;
    _493 = dot(float3(_490, _491, _492), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _510 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _511 = -0.79999995f / _510;
      _512 = -1.2f / _510;
      _513 = 0.20000005f / _510;
      _519 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _522 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _529 = (_511 + 1.4f) + (_522 * (-0.39999998f - _511));
      _530 = (_512 + 1.6f) + (_522 * (-0.6f - _512));
      _531 = (_513 + 0.9f) + (_522 * (0.5f - _513));
      _548 = (lerp(_530, 1.2f, _519));  // [sem: blended]
      _549 = (lerp(_529, 1.0f, _519));  // [sem: blended]
      _550 = (lerp(_531, 1.4f, _519));  // [sem: blended]
    } else {
      _548 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _549 = 1.0f;  // [sem: blended]
      _550 = 1.4f;  // [sem: blended]
    }
    _560 = 1.0f - _548;
    _585 = ((exp2(log2(((saturate((_487 * _487) * _490) * _560) + _548) * _490) * _549) - _493) * _550) + _493;
    _586 = ((exp2(log2(((saturate((_488 * _488) * _491) * _560) + _548) * _491) * _549) - _493) * _550) + _493;
    _587 = ((exp2(log2(((saturate((_489 * _489) * _492) * _560) + _548) * _492) * _549) - _493) * _550) + _493;
    _606 = saturate(exp2(log2(mad(_587, -0.09902974f, mad(_586, -0.09802088f, (_585 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _607 = saturate(exp2(log2(mad(_587, -0.098961174f, mad(_586, 1.1519032f, (_585 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _608 = saturate(exp2(log2(mad(_587, 1.1510737f, mad(_586, -0.09804345f, (_585 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _614 = 1.0f - abs(_etcParams.w);
      _618 = saturate(_etcParams.w);  // [sem: expr_sat]
      _619 = (_614 * _606) + _618;
      _620 = (_614 * _607) + _618;
      _621 = (_614 * _608) + _618;
      if (_colorGradingParams.w > 0.0f) {
        _626 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _643 = (((max(0.0f, (1.0f - _619)) - _619) * _626) + _619);
        _644 = (((max(0.0f, (1.0f - _620)) - _620) * _626) + _620);
        _645 = (((max(0.0f, (1.0f - _621)) - _621) * _626) + _621);
      } else {
        _643 = _619;
        _644 = _620;
        _645 = _621;
      }
      _651 = _userImageAdjust.y + 1.0f;
      _655 = _userImageAdjust.x + 0.5f;
      _656 = ((_643 + -0.5f) * _651) + _655;
      _657 = ((_644 + -0.5f) * _651) + _655;
      _658 = ((_645 + -0.5f) * _651) + _655;
      _688 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _699 = exp2(log2(saturate(mad(_colorBlind0.z, _658, mad(_colorBlind0.y, _657, (_colorBlind0.x * _656))))) * _688);
      _700 = exp2(log2(saturate(mad(_colorBlind1.z, _658, mad(_colorBlind1.y, _657, (_colorBlind1.x * _656))))) * _688);
      _701 = exp2(log2(saturate(mad(_colorBlind2.z, _658, mad(_colorBlind2.y, _657, (_colorBlind2.x * _656))))) * _688);
    } else {
      _699 = _606;
      _700 = _607;
      _701 = _608;
    }
  } else {
    _699 = _328;
    _700 = _329;
    _701 = _330;
  }
  if (_etcParams.y > 1.0f) {
    _707 = abs(_29);
    _708 = abs(_30 + -1.0f);
    _712 = saturate(1.0f - (dot(float2(_707, _708), float2(_707, _708)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _717 = (_712 * _699);
    _718 = (_712 * _700);
    _719 = (_712 * _701);
  } else {
    _717 = _699;
    _718 = _700;
    _719 = _701;
  }
  if (_348 && (_etcParams.z > 0.0f)) {
    _749 = select((_717 <= 0.0031308f), (_717 * 12.92f), (((pow(_717, 0.41666666f)) * 1.055f) + -0.055f));
    _750 = select((_718 <= 0.0031308f), (_718 * 12.92f), (((pow(_718, 0.41666666f)) * 1.055f) + -0.055f));
    _751 = select((_719 <= 0.0031308f), (_719 * 12.92f), (((pow(_719, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _749 = _717;
    _750 = _718;
    _751 = _719;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _756 = (float)((uint)((uint)(_331)));
    if (!(_756 < _viewDir.w)) {
      if (!(_756 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _765 = _749;
        _766 = _750;
        _767 = _751;
      } else {
        _765 = 0.0f;
        _766 = 0.0f;
        _767 = 0.0f;
      }
    } else {
      _765 = 0.0f;
      _766 = 0.0f;
      _767 = 0.0f;
    }
  } else {
    _765 = _749;
    _766 = _750;
    _767 = _751;
  }
  SV_Target.x = _765;
  SV_Target.y = _766;
  SV_Target.z = _767;
  SV_Target.w = _345;
  return SV_Target;
}
