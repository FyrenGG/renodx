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
  float _421;
  float _624;
  float _625;
  float _626;
  float _719;
  float _720;
  float _721;
  float _775;
  float _776;
  float _777;
  float _792;
  float _793;
  float _794;
  float _824;
  float _825;
  float _826;
  float _840;
  float _841;
  float _842;
  float _110;
  float _111;
  float _114;
  float _118;
  float _122;
  float _127;
  float _137;
  float _149;
  float _157;
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
  float _224;
  float _230;
  float _239;
  float _240;
  float _241;
  float _242;
  float _244;
  float _251;
  float _252;
  float _253;
  float _255;
  float _261;
  float _297;
  float _298;
  float _299;
  float _300;
  float _302;
  float _309;
  float _318;
  float _322;
  float _330;
  float _339;
  float _343;
  float _347;
  float _349;
  float _355;
  float _356;
  int _362;
  int _370;
  float4 _377;
  float _381;
  float _395;
  float _405;
  float _406;
  float _407;
  uint _408;
  bool _424;
  float _428;
  float _477;
  float _478;
  float _479;
  float _481;
  float _488;
  float _489;
  float _490;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _586;
  float _587;
  float _588;
  float _589;
  float _595;
  float _598;
  float _605;
  float _606;
  float _607;
  float _636;
  float _661;
  float _662;
  float _663;
  float _682;
  float _683;
  float _684;
  float _690;
  float _694;
  float _695;
  float _696;
  float _697;
  float _702;
  float _727;
  float _731;
  float _732;
  float _733;
  float _734;
  float _764;
  float _782;
  float _783;
  float _787;
  float _831;
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
  _157 = 1.0f - _155;
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
  _224 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
  // [sem: invLength]
  _230 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
  // [sem: invLength]
  _239 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
  _240 = _239 * _moonDirection.x;
  _241 = _239 * _moonDirection.y;
  _242 = _239 * _moonDirection.z;
  _244 = (3.0f - (_224 * 2.0f)) * (_224 * _224);
  _251 = (((_230 * _sunDirection.x) - _240) * _244) + _240;
  _252 = (((_230 * _sunDirection.y) - _241) * _244) + _241;
  _253 = (((_230 * _sunDirection.z) - _242) * _244) + _242;
  _255 = rsqrt(dot(float3(_251, _252, _253), float3(_251, _252, _253)));  // [sem: invLength]
  _261 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _297 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _261, ((_invViewProjRelative[3].x) * _90));
  _298 = ((mad((_invViewProjRelative[0].y), _261, ((_invViewProjRelative[0].x) * _90)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _297;
  _299 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _261, ((_invViewProjRelative[1].x) * _90))) / _297;
  _300 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _261, ((_invViewProjRelative[2].x) * _90))) / _297;
  _302 = rsqrt(dot(float3(_298, _299, _300), float3(_298, _299, _300)));  // [sem: invLength]
  // [sem: expr_sat]
  _309 = saturate((dot(float3((_302 * _298), (_302 * _299), (_302 * _300)), float3((_251 * _255), (_252 * _255), (_253 * _255))) + -0.5f) * 2.0f);
  _318 = max(0.5f, _178);
  _322 = saturate(((_162 + -0.4f) - _318) * 4.9999995f);  // [sem: expr_sat]
  _330 = saturate((0.5f - _155) * -2.0f);  // [sem: expr_sat]
  _339 = (_318 + 0.4f) * 2.0f;
  _343 = saturate((_162 - _339) / (((_318 + 0.6f) * 0.01f) - _339));  // [sem: expr_sat]
  _347 = (_343 * _343) * (3.0f - (_343 * 2.0f));
  _349 = (_347 * _347) * max((((_322 * _322) * _177) * (3.0f - (_322 * 2.0f))), ((_330 * _330) * (3.0f - (_330 * 2.0f))));
  _355 = (((_244 * 1.3999999f) + 5.6f) * saturate(exp2(log2((_309 * _309) * (3.0f - (_309 * 2.0f))) * 3.0f))) * saturate(1.4f - _155);
  _356 = _349 * _355;
  _362 = WaveReadLaneFirst(_materialIndex);
  _370 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_362 < (uint)170000), _362, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensDirtTexture);
  _377 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_370 < (uint)65000), _370, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 1.2f) * _28), (TEXCOORD.y * 1.2f)));
  _381 = dot(float3(0.3f, 0.59f, 0.11f), float3(_377.x, _377.y, _377.z));
  _395 = (1.0f / max(0.001f, _exposure0.x)) * (_349 * (_355 + 3.0f));
  _405 = ((_395 * (lerp(_381, _377.x, _356))) + ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_191 - _206), (_192 - _207))))).x) * _157)) * _87;
  _406 = ((_395 * (lerp(_381, _377.y, _356))) + ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_191, _192)))).y) * _157)) * _87;
  _407 = ((_395 * (lerp(_381, _377.z, _356))) + ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_206 + _191), (_207 + _192))))).z) * _157)) * _87;
  _408 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _421 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _408, 0)))).x) & 127)))) + 0.5f);
  } else {
    _421 = 1.0f;
  }
  _424 = (_localToneMappingParams.w > 0.0f);
  if (_424) {
    _428 = _userImageAdjust.z * _exposure0.x;
    _477 = exp2(log2(max(0.0f, (((_428 * max(0.0f, (((_405 * 1.70505f) - (_406 * 0.62179f)) - (_407 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _478 = exp2(log2(max(0.0f, (((max(0.0f, (((_406 * 1.1408f) - (_405 * 0.13026f)) - (_407 * 0.01055f))) * _428) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _479 = exp2(log2(max(0.0f, (((max(0.0f, (((_405 * -0.024f) - (_406 * 0.12897f)) + (_407 * 1.15297f))) * _428) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _481 = dot(float3(_477, _478, _479), float3(0.212671f, 0.71516f, 0.072169f));
    _488 = ((_477 - _481) * _powerParams.w) + _481;
    _489 = ((_478 - _481) * _powerParams.w) + _481;
    _490 = ((_479 - _481) * _powerParams.w) + _481;
    _509 = min(max(log2(mad(_490, 0.079223745f, mad(_489, 0.0784336f, (_488 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _510 = min(max(log2(mad(_490, 0.07916613f, mad(_489, 0.87846863f, (_488 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _511 = min(max(log2(mad(_490, 0.879143f, mad(_489, 0.0784336f, (_488 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _512 = _509 * 0.060606062f;
    _513 = _510 * 0.060606062f;
    _514 = _511 * 0.060606062f;
    _515 = _512 * _512;
    _516 = _513 * _513;
    _517 = _514 * _514;
    _563 = min(0.0f, (-0.0f - (((_509 * 0.0072181816f) + ((_515 * 0.4298f) + (((_515 * _515) * ((31.96f - (_509 * 2.4327273f)) + (_515 * 15.5f))) - ((_509 * 0.41624245f) * _515)))) + -0.00232f)));
    _564 = min(0.0f, (-0.0f - (((_510 * 0.0072181816f) + ((_516 * 0.4298f) + (((_516 * _516) * ((31.96f - (_510 * 2.4327273f)) + (_516 * 15.5f))) - ((_510 * 0.41624245f) * _516)))) + -0.00232f)));
    _565 = min(0.0f, (-0.0f - (((_511 * 0.0072181816f) + ((_517 * 0.4298f) + (((_517 * _517) * ((31.96f - (_511 * 2.4327273f)) + (_517 * 15.5f))) - ((_511 * 0.41624245f) * _517)))) + -0.00232f)));
    _566 = -0.0f - _563;
    _567 = -0.0f - _564;
    _568 = -0.0f - _565;
    _569 = dot(float3(_566, _567, _568), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _586 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _587 = -0.79999995f / _586;
      _588 = -1.2f / _586;
      _589 = 0.20000005f / _586;
      _595 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _598 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _605 = (_587 + 1.4f) + (_598 * (-0.39999998f - _587));
      _606 = (_588 + 1.6f) + (_598 * (-0.6f - _588));
      _607 = (_589 + 0.9f) + (_598 * (0.5f - _589));
      _624 = (lerp(_606, 1.2f, _595));  // [sem: blended]
      _625 = (lerp(_605, 1.0f, _595));  // [sem: blended]
      _626 = (lerp(_607, 1.4f, _595));  // [sem: blended]
    } else {
      _624 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _625 = 1.0f;  // [sem: blended]
      _626 = 1.4f;  // [sem: blended]
    }
    _636 = 1.0f - _624;
    _661 = ((exp2(log2(((saturate((_563 * _563) * _566) * _636) + _624) * _566) * _625) - _569) * _626) + _569;
    _662 = ((exp2(log2(((saturate((_564 * _564) * _567) * _636) + _624) * _567) * _625) - _569) * _626) + _569;
    _663 = ((exp2(log2(((saturate((_565 * _565) * _568) * _636) + _624) * _568) * _625) - _569) * _626) + _569;
    _682 = saturate(exp2(log2(mad(_663, -0.09902974f, mad(_662, -0.09802088f, (_661 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _683 = saturate(exp2(log2(mad(_663, -0.098961174f, mad(_662, 1.1519032f, (_661 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _684 = saturate(exp2(log2(mad(_663, 1.1510737f, mad(_662, -0.09804345f, (_661 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _690 = 1.0f - abs(_etcParams.w);
      _694 = saturate(_etcParams.w);  // [sem: expr_sat]
      _695 = (_690 * _682) + _694;
      _696 = (_690 * _683) + _694;
      _697 = (_690 * _684) + _694;
      if (_colorGradingParams.w > 0.0f) {
        _702 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _719 = (((max(0.0f, (1.0f - _695)) - _695) * _702) + _695);
        _720 = (((max(0.0f, (1.0f - _696)) - _696) * _702) + _696);
        _721 = (((max(0.0f, (1.0f - _697)) - _697) * _702) + _697);
      } else {
        _719 = _695;
        _720 = _696;
        _721 = _697;
      }
      _727 = _userImageAdjust.y + 1.0f;
      _731 = _userImageAdjust.x + 0.5f;
      _732 = ((_719 + -0.5f) * _727) + _731;
      _733 = ((_720 + -0.5f) * _727) + _731;
      _734 = ((_721 + -0.5f) * _727) + _731;
      _764 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _775 = exp2(log2(saturate(mad(_colorBlind0.z, _734, mad(_colorBlind0.y, _733, (_colorBlind0.x * _732))))) * _764);
      _776 = exp2(log2(saturate(mad(_colorBlind1.z, _734, mad(_colorBlind1.y, _733, (_colorBlind1.x * _732))))) * _764);
      _777 = exp2(log2(saturate(mad(_colorBlind2.z, _734, mad(_colorBlind2.y, _733, (_colorBlind2.x * _732))))) * _764);
    } else {
      _775 = _682;
      _776 = _683;
      _777 = _684;
    }
  } else {
    _775 = _405;
    _776 = _406;
    _777 = _407;
  }
  if (_etcParams.y > 1.0f) {
    _782 = abs(_90);
    _783 = abs(_91);
    _787 = saturate(1.0f - (dot(float2(_782, _783), float2(_782, _783)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _792 = (_787 * _775);
    _793 = (_787 * _776);
    _794 = (_787 * _777);
  } else {
    _792 = _775;
    _793 = _776;
    _794 = _777;
  }
  if (_424 && (_etcParams.z > 0.0f)) {
    _824 = select((_792 <= 0.0031308f), (_792 * 12.92f), (((pow(_792, 0.41666666f)) * 1.055f) + -0.055f));
    _825 = select((_793 <= 0.0031308f), (_793 * 12.92f), (((pow(_793, 0.41666666f)) * 1.055f) + -0.055f));
    _826 = select((_794 <= 0.0031308f), (_794 * 12.92f), (((pow(_794, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _824 = _792;
    _825 = _793;
    _826 = _794;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _831 = (float)((uint)((uint)(_408)));
    if (!(_831 < _viewDir.w)) {
      if (!(_831 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _840 = _824;
        _841 = _825;
        _842 = _826;
      } else {
        _840 = 0.0f;
        _841 = 0.0f;
        _842 = 0.0f;
      }
    } else {
      _840 = 0.0f;
      _841 = 0.0f;
      _842 = 0.0f;
    }
  } else {
    _840 = _824;
    _841 = _825;
    _842 = _826;
  }
  SV_Target.x = _840;
  SV_Target.y = _841;
  SV_Target.z = _842;
  SV_Target.w = _421;
  return SV_Target;
}
