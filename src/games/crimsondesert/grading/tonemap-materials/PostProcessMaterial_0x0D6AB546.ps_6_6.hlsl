struct PostProcessScreenDamage_CDStruct {
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor1;
  uint _borderColor2;
  uint _sceneColorTint;
  uint _borderEdgeNoiseTexture;
  uint _borderInsideDistortionTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
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

struct BindlessParameters_PostProcessScreenDamage_CD {
  PostProcessScreenDamage_CDStruct BindlessParameters_PostProcessScreenDamage_CD;
};

typedef BindlessParameters_PostProcessScreenDamage_CD BindlessParameters_PostProcessScreenDamage_CD_t;
ConstantBuffer<BindlessParameters_PostProcessScreenDamage_CD_t> BindlessParameters_PostProcessScreenDamage_CD[] : register(b0, space100);

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
  float4 _25;
  float _36;
  float _37;
  float _38;
  float _63;
  float _64;
  float _65;
  float _404;
  float _405;
  float _406;
  float _420;
  float _625;
  float _626;
  float _627;
  float _720;
  float _721;
  float _722;
  float _776;
  float _777;
  float _778;
  float _797;
  float _798;
  float _799;
  float _829;
  float _830;
  float _831;
  float _845;
  float _846;
  float _847;
  float _71;
  float _77;
  float _79;
  int _80;
  float _89;
  float _90;
  int _93;
  float _102;
  float _103;
  float _110;
  int _113;
  int _121;
  float _130;
  int _133;
  int _141;
  int _150;
  float _158;
  float _164;
  float _167;
  float _168;
  int _181;
  float _190;
  float _191;
  int _195;
  float _203;
  int _208;
  float _216;
  float _222;
  int _223;
  int _231;
  float _234;
  float _237;
  float _239;
  float _270;
  int _274;
  int _282;
  float _285;
  float _288;
  float _290;
  float _315;
  float _316;
  float _317;
  int _318;
  int _326;
  float _329;
  float _332;
  float _334;
  float _368;
  float _381;
  float _391;
  float _392;
  float _393;
  uint _407;
  bool _423;
  float _429;
  float _478;
  float _479;
  float _480;
  float _482;
  float _489;
  float _490;
  float _491;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _518;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _570;
  float _587;
  float _588;
  float _589;
  float _590;
  float _596;
  float _599;
  float _606;
  float _607;
  float _608;
  float _637;
  float _662;
  float _663;
  float _664;
  float _683;
  float _684;
  float _685;
  float _691;
  float _695;
  float _696;
  float _697;
  float _698;
  float _703;
  float _728;
  float _732;
  float _733;
  float _734;
  float _735;
  float _765;
  float _787;
  float _788;
  float _792;
  float _836;
  float _857;
  float _858;
  float _859;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _36 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _65 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f) * 10000.0f;
  if (!(!(_hpPercentage <= 20.0f))) {
    _71 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_71 > 0.0f)) {
      _77 = 0.13f - (_hpPercentage * 0.006f);
      _79 = 2.0f - (_hpPercentage * 0.05f);
      _80 = WaveReadLaneFirst(_materialIndex);
      _89 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.x);
      _90 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.y);
      _93 = WaveReadLaneFirst(_materialIndex);
      _102 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.x);
      _103 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.y);
      _110 = _time.x * 0.3f;
      _113 = WaveReadLaneFirst(_materialIndex);
      _121 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_113 < (uint)170000), _113, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderInsideDistortionTexture);
      _130 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_121 < (uint)65000), _121, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_110 + (TEXCOORD.x * 12.0f)), (_110 + (TEXCOORD.y * 6.0f)))))).x) * 0.1f;
      _133 = WaveReadLaneFirst(_materialIndex);
      _141 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTexture);
      _150 = WaveReadLaneFirst(_materialIndex);
      _158 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_150 < (uint)170000), _150, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderSmoothness);
      _164 = (_hpPercentage * 0.002f) + 0.36f;
      _167 = max((abs(TEXCOORD.x + -0.5f) - _164), 0.0f);
      _168 = max((abs(TEXCOORD.y + -0.5f) - _164), 0.0f);
      _181 = WaveReadLaneFirst(_materialIndex);
      _190 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_181 < (uint)170000), _181, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.x);
      _191 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_181 < (uint)170000), _181, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.y);
      _195 = WaveReadLaneFirst(_materialIndex);
      _203 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_195 < (uint)170000), _195, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerIntensity);
      _208 = WaveReadLaneFirst(_materialIndex);
      _216 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_208 < (uint)170000), _208, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseRatio);
      _222 = min(max(_71, 0.0f), 1.0f) * saturate((saturate(((((_191 - _190) * sin(frac(_time.x * _79) * 3.1415927f)) + _190) * saturate(sqrt((_168 * _168) + (_167 * _167)) / _158)) * _203) * 2.0f) - (_216 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_141 < (uint)65000), _141, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_102 + (_89 * TEXCOORD.x)) + _130), ((_103 + (_90 * TEXCOORD.y)) + _130))))).x)));
      _223 = WaveReadLaneFirst(_materialIndex);
      _231 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._sceneColorTint);
      _234 = (float)((uint)((uint)(((uint)((uint)(_231)) >> 16) & 255)));
      _237 = (float)((uint)((uint)(((uint)((uint)(_231)) >> 8) & 255)));
      _239 = (float)((uint)((uint)(_231 & 255)));
      _270 = 1.0f / max(0.001f, _exposure0.x);
      _274 = WaveReadLaneFirst(_materialIndex);
      _282 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_274 < (uint)170000), _274, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor1);
      _285 = (float)((uint)((uint)(((uint)((uint)(_282)) >> 16) & 255)));
      _288 = (float)((uint)((uint)(((uint)((uint)(_282)) >> 8) & 255)));
      _290 = (float)((uint)((uint)(_282 & 255)));
      _315 = select(((_285 * 0.003921569f) < 0.04045f), (_285 * 0.000303527f), exp2(log2((_285 * 0.003717127f) + 0.052132703f) * 2.4f));
      _316 = select(((_288 * 0.003921569f) < 0.04045f), (_288 * 0.000303527f), exp2(log2((_288 * 0.003717127f) + 0.052132703f) * 2.4f));
      _317 = select(((_290 * 0.003921569f) < 0.04045f), (_290 * 0.000303527f), exp2(log2((_290 * 0.003717127f) + 0.052132703f) * 2.4f));
      _318 = WaveReadLaneFirst(_materialIndex);
      _326 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_318 < (uint)170000), _318, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor2);
      _329 = (float)((uint)((uint)(((uint)((uint)(_326)) >> 16) & 255)));
      _332 = (float)((uint)((uint)(((uint)((uint)(_326)) >> 8) & 255)));
      _334 = (float)((uint)((uint)(_326 & 255)));
      _368 = saturate(sin(frac(_time.x * _79) * 3.1415927f));  // [sem: expr_sat]
      _381 = 1.0f / max(0.001f, _exposure0.x);
      _391 = (((_270 * select(((_234 * 0.003921569f) < 0.04045f), (_234 * 0.000303527f), exp2(log2((_234 * 0.003717127f) + 0.052132703f) * 2.4f))) - _63) * _77) + _63;
      _392 = (((_270 * select(((_237 * 0.003921569f) < 0.04045f), (_237 * 0.000303527f), exp2(log2((_237 * 0.003717127f) + 0.052132703f) * 2.4f))) - _64) * _77) + _64;
      _393 = (((_270 * select(((_239 * 0.003921569f) < 0.04045f), (_239 * 0.000303527f), exp2(log2((_239 * 0.003717127f) + 0.052132703f) * 2.4f))) - _65) * _77) + _65;
      _404 = ((((_381 * ((_368 * (select(((_329 * 0.003921569f) < 0.04045f), (_329 * 0.000303527f), exp2(log2((_329 * 0.003717127f) + 0.052132703f) * 2.4f)) - _315)) + _315)) - _391) * _222) + _391);
      _405 = ((((_381 * ((_368 * (select(((_332 * 0.003921569f) < 0.04045f), (_332 * 0.000303527f), exp2(log2((_332 * 0.003717127f) + 0.052132703f) * 2.4f)) - _316)) + _316)) - _392) * _222) + _392);
      _406 = ((((_381 * ((_368 * (select(((_334 * 0.003921569f) < 0.04045f), (_334 * 0.000303527f), exp2(log2((_334 * 0.003717127f) + 0.052132703f) * 2.4f)) - _317)) + _317)) - _393) * _222) + _393);
    } else {
      _404 = _63;
      _405 = _64;
      _406 = _65;
    }
  } else {
    _404 = _63;
    _405 = _64;
    _406 = _65;
  }
  _407 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _420 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _407, 0)))).x) & 127)))) + 0.5f);
  } else {
    _420 = _25.w;
  }
  _423 = (_localToneMappingParams.w > 0.0f);
  if (_423) {
    _429 = _userImageAdjust.z * _exposure0.x;
    _478 = exp2(log2(max(0.0f, (((_429 * max(0.0f, (((_404 * 1.70505f) - (_405 * 0.62179f)) - (_406 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _479 = exp2(log2(max(0.0f, (((max(0.0f, (((_405 * 1.1408f) - (_404 * 0.13026f)) - (_406 * 0.01055f))) * _429) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _480 = exp2(log2(max(0.0f, (((max(0.0f, (((_404 * -0.024f) - (_405 * 0.12897f)) + (_406 * 1.15297f))) * _429) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _482 = dot(float3(_478, _479, _480), float3(0.212671f, 0.71516f, 0.072169f));
    _489 = ((_478 - _482) * _powerParams.w) + _482;
    _490 = ((_479 - _482) * _powerParams.w) + _482;
    _491 = ((_480 - _482) * _powerParams.w) + _482;
    _510 = min(max(log2(mad(_491, 0.079223745f, mad(_490, 0.0784336f, (_489 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _511 = min(max(log2(mad(_491, 0.07916613f, mad(_490, 0.87846863f, (_489 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _512 = min(max(log2(mad(_491, 0.879143f, mad(_490, 0.0784336f, (_489 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _513 = _510 * 0.060606062f;
    _514 = _511 * 0.060606062f;
    _515 = _512 * 0.060606062f;
    _516 = _513 * _513;
    _517 = _514 * _514;
    _518 = _515 * _515;
    _564 = min(0.0f, (-0.0f - (((_510 * 0.0072181816f) + ((_516 * 0.4298f) + (((_516 * _516) * ((31.96f - (_510 * 2.4327273f)) + (_516 * 15.5f))) - ((_510 * 0.41624245f) * _516)))) + -0.00232f)));
    _565 = min(0.0f, (-0.0f - (((_511 * 0.0072181816f) + ((_517 * 0.4298f) + (((_517 * _517) * ((31.96f - (_511 * 2.4327273f)) + (_517 * 15.5f))) - ((_511 * 0.41624245f) * _517)))) + -0.00232f)));
    _566 = min(0.0f, (-0.0f - (((_512 * 0.0072181816f) + ((_518 * 0.4298f) + (((_518 * _518) * ((31.96f - (_512 * 2.4327273f)) + (_518 * 15.5f))) - ((_512 * 0.41624245f) * _518)))) + -0.00232f)));
    _567 = -0.0f - _564;
    _568 = -0.0f - _565;
    _569 = -0.0f - _566;
    _570 = dot(float3(_567, _568, _569), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _587 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _588 = -0.79999995f / _587;
      _589 = -1.2f / _587;
      _590 = 0.20000005f / _587;
      _596 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _599 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _606 = (_588 + 1.4f) + (_599 * (-0.39999998f - _588));
      _607 = (_589 + 1.6f) + (_599 * (-0.6f - _589));
      _608 = (_590 + 0.9f) + (_599 * (0.5f - _590));
      _625 = (lerp(_607, 1.2f, _596));  // [sem: blended]
      _626 = (lerp(_606, 1.0f, _596));  // [sem: blended]
      _627 = (lerp(_608, 1.4f, _596));  // [sem: blended]
    } else {
      _625 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _626 = 1.0f;  // [sem: blended]
      _627 = 1.4f;  // [sem: blended]
    }
    _637 = 1.0f - _625;
    _662 = ((exp2(log2(((saturate((_564 * _564) * _567) * _637) + _625) * _567) * _626) - _570) * _627) + _570;
    _663 = ((exp2(log2(((saturate((_565 * _565) * _568) * _637) + _625) * _568) * _626) - _570) * _627) + _570;
    _664 = ((exp2(log2(((saturate((_566 * _566) * _569) * _637) + _625) * _569) * _626) - _570) * _627) + _570;
    _683 = saturate(exp2(log2(mad(_664, -0.09902974f, mad(_663, -0.09802088f, (_662 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _684 = saturate(exp2(log2(mad(_664, -0.098961174f, mad(_663, 1.1519032f, (_662 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _685 = saturate(exp2(log2(mad(_664, 1.1510737f, mad(_663, -0.09804345f, (_662 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _691 = 1.0f - abs(_etcParams.w);
      _695 = saturate(_etcParams.w);  // [sem: expr_sat]
      _696 = (_691 * _683) + _695;
      _697 = (_691 * _684) + _695;
      _698 = (_691 * _685) + _695;
      if (_colorGradingParams.w > 0.0f) {
        _703 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _720 = (((max(0.0f, (1.0f - _696)) - _696) * _703) + _696);
        _721 = (((max(0.0f, (1.0f - _697)) - _697) * _703) + _697);
        _722 = (((max(0.0f, (1.0f - _698)) - _698) * _703) + _698);
      } else {
        _720 = _696;
        _721 = _697;
        _722 = _698;
      }
      _728 = _userImageAdjust.y + 1.0f;
      _732 = _userImageAdjust.x + 0.5f;
      _733 = ((_720 + -0.5f) * _728) + _732;
      _734 = ((_721 + -0.5f) * _728) + _732;
      _735 = ((_722 + -0.5f) * _728) + _732;
      _765 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _776 = exp2(log2(saturate(mad(_colorBlind0.z, _735, mad(_colorBlind0.y, _734, (_colorBlind0.x * _733))))) * _765);
      _777 = exp2(log2(saturate(mad(_colorBlind1.z, _735, mad(_colorBlind1.y, _734, (_colorBlind1.x * _733))))) * _765);
      _778 = exp2(log2(saturate(mad(_colorBlind2.z, _735, mad(_colorBlind2.y, _734, (_colorBlind2.x * _733))))) * _765);
    } else {
      _776 = _683;
      _777 = _684;
      _778 = _685;
    }
  } else {
    _776 = _404;
    _777 = _405;
    _778 = _406;
  }
  if (_etcParams.y > 1.0f) {
    _787 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _788 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _792 = saturate(1.0f - (dot(float2(_787, _788), float2(_787, _788)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _797 = (_792 * _776);
    _798 = (_792 * _777);
    _799 = (_792 * _778);
  } else {
    _797 = _776;
    _798 = _777;
    _799 = _778;
  }
  if (_423 && (_etcParams.z > 0.0f)) {
    _829 = select((_797 <= 0.0031308f), (_797 * 12.92f), (((pow(_797, 0.41666666f)) * 1.055f) + -0.055f));
    _830 = select((_798 <= 0.0031308f), (_798 * 12.92f), (((pow(_798, 0.41666666f)) * 1.055f) + -0.055f));
    _831 = select((_799 <= 0.0031308f), (_799 * 12.92f), (((pow(_799, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _829 = _797;
    _830 = _798;
    _831 = _799;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _836 = (float)((uint)((uint)(_407)));
    if (!(_836 < _viewDir.w)) {
      if (!(_836 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _845 = _829;
        _846 = _830;
        _847 = _831;
      } else {
        _845 = 0.0f;
        _846 = 0.0f;
        _847 = 0.0f;
      }
    } else {
      _845 = 0.0f;
      _846 = 0.0f;
      _847 = 0.0f;
    }
  } else {
    _845 = _829;
    _846 = _830;
    _847 = _831;
  }
  _857 = exp2(log2(_845 * 0.0001f) * 0.15930176f);
  _858 = exp2(log2(_846 * 0.0001f) * 0.15930176f);
  _859 = exp2(log2(_847 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_857 * 18.6875f) + 1.0f)) * ((_857 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_858 * 18.6875f) + 1.0f)) * ((_858 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_859 * 18.6875f) + 1.0f)) * ((_859 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _420;
  return SV_Target;
}
