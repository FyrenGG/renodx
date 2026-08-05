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

struct BindlessParameters_PostProcessScreenDamage_CD {
  PostProcessScreenDamage_CDStruct BindlessParameters_PostProcessScreenDamage_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  uint _characterMeshEffectType : packoffset(c029.z);
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
  float4 _23;
  float _396;
  float _397;
  float _398;
  float _412;
  float _617;
  float _618;
  float _619;
  float _712;
  float _713;
  float _714;
  float _768;
  float _769;
  float _770;
  float _789;
  float _790;
  float _791;
  float _821;
  float _822;
  float _823;
  float _837;
  float _838;
  float _839;
  float _33;
  float _39;
  float _41;
  int _44;
  float _52;
  float _56;
  int _59;
  float _67;
  float _71;
  float _74;
  int _77;
  int _85;
  float _98;
  int _101;
  int _109;
  int _112;
  float _120;
  float _124;
  float _128;
  float _132;
  int _135;
  float _143;
  float _147;
  int _150;
  float _158;
  int _161;
  float _169;
  float _208;
  int _211;
  int _219;
  float _222;
  float _225;
  float _227;
  float _231;
  int _234;
  int _242;
  float _245;
  float _248;
  float _250;
  float _259;
  float _268;
  float _277;
  int _280;
  int _288;
  float _291;
  float _294;
  float _296;
  float _303;
  float _307;
  float _320;
  float _333;
  float _346;
  uint _399;
  bool _415;
  float _421;
  float _440;
  float _456;
  float _472;
  float _473;
  float _477;
  float _480;
  float _483;
  float _490;
  float _497;
  float _504;
  float _505;
  float _506;
  float _507;
  float _508;
  float _509;
  float _510;
  float _526;
  float _542;
  float _558;
  float _559;
  float _560;
  float _561;
  float _562;
  float _579;
  float _580;
  float _581;
  float _582;
  float _585;
  float _588;
  float _592;
  float _596;
  float _600;
  float _620;
  float _632;
  float _644;
  float _656;
  float _663;
  float _670;
  float _677;
  float _683;
  float _684;
  float _686;
  float _688;
  float _690;
  float _695;
  float _716;
  float _718;
  float _721;
  float _724;
  float _727;
  float _733;
  float _775;
  float _778;
  float _784;
  float _826;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (!(!(_hpPercentage <= 20.0f))) {
    _33 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_33 > 0.0f)) {
      _39 = 0.13f - (_hpPercentage * 0.006f);
      _41 = 2.0f - (_hpPercentage * 0.05f);
      _44 = WaveReadLaneFirst(_materialIndex);
      _52 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.x);
      _56 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.y);
      _59 = WaveReadLaneFirst(_materialIndex);
      _67 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.x);
      _71 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.y);
      _74 = _time.x * 0.3f;
      _77 = WaveReadLaneFirst(_materialIndex);
      _85 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderInsideDistortionTexture);
      _98 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_85 < (uint)65000), _85, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_74 + (TEXCOORD.x * 12.0f)), (_74 + (TEXCOORD.y * 6.0f)))))).x) * 0.1f;
      _101 = WaveReadLaneFirst(_materialIndex);
      _109 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTexture);
      _112 = WaveReadLaneFirst(_materialIndex);
      _120 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_112 < (uint)170000), _112, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderSmoothness);
      _124 = (_hpPercentage * 0.002f) + 0.36f;
      _128 = max((abs(TEXCOORD.x + -0.5f) - _124), 0.0f);
      _132 = max((abs(TEXCOORD.y + -0.5f) - _124), 0.0f);
      _135 = WaveReadLaneFirst(_materialIndex);
      _143 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_135 < (uint)170000), _135, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.x);
      _147 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_135 < (uint)170000), _135, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.y);
      _150 = WaveReadLaneFirst(_materialIndex);
      _158 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_150 < (uint)170000), _150, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerIntensity);
      _161 = WaveReadLaneFirst(_materialIndex);
      _169 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_161 < (uint)170000), _161, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseRatio);
      // [sem: expr_sat]
      _208 = saturate((saturate((((sin(frac(_time.x * _41) * 3.1415927f) * (_147 - _143)) + _143) * _158) * saturate(sqrt((_132 * _132) + (_128 * _128)) / _120)) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_109 < (uint)65000), _109, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_67 + (_52 * TEXCOORD.x)) + _98), ((_71 + (_56 * TEXCOORD.y)) + _98))))).x) * _169)) * min(max(_33, 0.0f), 1.0f);
      _211 = WaveReadLaneFirst(_materialIndex);
      _219 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_211 < (uint)170000), _211, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._sceneColorTint);
      _222 = (float)((uint)((uint)(((uint)((uint)(_219)) >> 16) & 255)));
      _225 = (float)((uint)((uint)(((uint)((uint)(_219)) >> 8) & 255)));
      _227 = (float)((uint)((uint)(_219 & 255)));
      _231 = 1.0f / max(0.001f, _exposure0.x);
      _234 = WaveReadLaneFirst(_materialIndex);
      _242 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_234 < (uint)170000), _234, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor1);
      _245 = (float)((uint)((uint)(((uint)((uint)(_242)) >> 16) & 255)));
      _248 = (float)((uint)((uint)(((uint)((uint)(_242)) >> 8) & 255)));
      _250 = (float)((uint)((uint)(_242 & 255)));
      _259 = select(((_245 * 0.003921569f) < 0.04045f), (_245 * 0.000303527f), exp2(log2((_245 * 0.003717127f) + 0.052132703f) * 2.4f));
      _268 = select(((_248 * 0.003921569f) < 0.04045f), (_248 * 0.000303527f), exp2(log2((_248 * 0.003717127f) + 0.052132703f) * 2.4f));
      _277 = select(((_250 * 0.003921569f) < 0.04045f), (_250 * 0.000303527f), exp2(log2((_250 * 0.003717127f) + 0.052132703f) * 2.4f));
      _280 = WaveReadLaneFirst(_materialIndex);
      _288 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_280 < (uint)170000), _280, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor2);
      _291 = (float)((uint)((uint)(((uint)((uint)(_288)) >> 16) & 255)));
      _294 = (float)((uint)((uint)(((uint)((uint)(_288)) >> 8) & 255)));
      _296 = (float)((uint)((uint)(_288 & 255)));
      _303 = saturate(sin(frac(_time.x * _41) * 3.1415927f));  // [sem: expr_sat]
      _307 = 1.0f / max(0.001f, _exposure0.x);
      _320 = (((select(((_222 * 0.003921569f) < 0.04045f), (_222 * 0.000303527f), exp2(log2((_222 * 0.003717127f) + 0.052132703f) * 2.4f)) * _231) - _23.x) * _39) + _23.x;
      _333 = (((select(((_225 * 0.003921569f) < 0.04045f), (_225 * 0.000303527f), exp2(log2((_225 * 0.003717127f) + 0.052132703f) * 2.4f)) * _231) - _23.y) * _39) + _23.y;
      _346 = (((select(((_227 * 0.003921569f) < 0.04045f), (_227 * 0.000303527f), exp2(log2((_227 * 0.003717127f) + 0.052132703f) * 2.4f)) * _231) - _23.z) * _39) + _23.z;
      _396 = (((((((select(((_296 * 0.003921569f) < 0.04045f), (_296 * 0.000303527f), exp2(log2((_296 * 0.003717127f) + 0.052132703f) * 2.4f)) - _277) * _303) + _277) * _307) - _346) * _208) + _346);
      _397 = (((((((select(((_294 * 0.003921569f) < 0.04045f), (_294 * 0.000303527f), exp2(log2((_294 * 0.003717127f) + 0.052132703f) * 2.4f)) - _268) * _303) + _268) * _307) - _333) * _208) + _333);
      _398 = (((((((select(((_291 * 0.003921569f) < 0.04045f), (_291 * 0.000303527f), exp2(log2((_291 * 0.003717127f) + 0.052132703f) * 2.4f)) - _259) * _303) + _259) * _307) - _320) * _208) + _320);
    } else {
      _396 = _23.z;
      _397 = _23.y;
      _398 = _23.x;
    }
  } else {
    _396 = _23.z;
    _397 = _23.y;
    _398 = _23.x;
  }
  _399 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _412 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _399, 0)))).x) & 127)))) + 0.5f);
  } else {
    _412 = _23.w;
  }
  _415 = (_localToneMappingParams.w > 0.0f);
  if (_415) {
    _421 = _exposure0.x * _userImageAdjust.z;
    _440 = exp2(_powerParams.x * log2(max(0.0f, (((_421 * max(0.0f, (((_397 * -0.62179f) - (_396 * 0.08326f)) + (_398 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _456 = exp2(log2(max(0.0f, (((_slopeParams.y * _421) * max(0.0f, (((_397 * 1.1408f) - (_396 * 0.01055f)) - (_398 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _472 = exp2(log2(max(0.0f, (((_slopeParams.z * _421) * max(0.0f, (((_396 * 1.15297f) - (_397 * 0.12897f)) - (_398 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _473 = dot(float3(_440, _456, _472), float3(0.212671f, 0.71516f, 0.072169f));
    _477 = ((_440 - _473) * _powerParams.w) + _473;
    _480 = ((_456 - _473) * _powerParams.w) + _473;
    _483 = ((_472 - _473) * _powerParams.w) + _473;
    _490 = min(max(log2(mad(_483, 0.079223745f, mad(_480, 0.0784336f, (_477 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _497 = min(max(log2(mad(_483, 0.07916613f, mad(_480, 0.87846863f, (_477 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _504 = min(max(log2(mad(_483, 0.879143f, mad(_480, 0.0784336f, (_477 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _505 = _490 * 0.060606062f;
    _506 = _497 * 0.060606062f;
    _507 = _504 * 0.060606062f;
    _508 = _505 * _505;
    _509 = _506 * _506;
    _510 = _507 * _507;
    _526 = min(0.0f, (-0.0f - (((_490 * 0.0072181816f) + ((_508 * 0.4298f) + (((_508 * _508) * ((31.96f - (_490 * 2.4327273f)) + (_508 * 15.5f))) - ((_490 * 0.41624245f) * _508)))) + -0.00232f)));
    _542 = min(0.0f, (-0.0f - (((_497 * 0.0072181816f) + ((_509 * 0.4298f) + (((_509 * _509) * ((31.96f - (_497 * 2.4327273f)) + (_509 * 15.5f))) - ((_497 * 0.41624245f) * _509)))) + -0.00232f)));
    _558 = min(0.0f, (-0.0f - (((_504 * 0.0072181816f) + ((_510 * 0.4298f) + (((_510 * _510) * ((31.96f - (_504 * 2.4327273f)) + (_510 * 15.5f))) - ((_504 * 0.41624245f) * _510)))) + -0.00232f)));
    _559 = -0.0f - _526;
    _560 = -0.0f - _542;
    _561 = -0.0f - _558;
    _562 = dot(float3(_559, _560, _561), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _579 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _580 = -0.79999995f / _579;
      _581 = -1.2f / _579;
      _582 = 0.20000005f / _579;
      _585 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _588 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _592 = (_580 + 1.4f) + (_588 * (-0.39999998f - _580));
      _596 = (_581 + 1.6f) + (_588 * (-0.6f - _581));
      _600 = (_582 + 0.9f) + (_588 * (0.5f - _582));
      _617 = (lerp(_600, 1.4f, _585));  // [sem: blended]
      _618 = (lerp(_592, 1.0f, _585));  // [sem: blended]
      _619 = (lerp(_596, 1.2f, _585));  // [sem: blended]
    } else {
      _617 = 1.4f;  // [sem: blended]
      _618 = 1.0f;  // [sem: blended]
      _619 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _620 = 1.0f - _619;
    _632 = ((exp2(log2(((saturate((_526 * _526) * _559) * _620) + _619) * _559) * _618) - _562) * _617) + _562;
    _644 = ((exp2(log2(((saturate((_542 * _542) * _560) * _620) + _619) * _560) * _618) - _562) * _617) + _562;
    _656 = ((exp2(log2(((saturate((_558 * _558) * _561) * _620) + _619) * _561) * _618) - _562) * _617) + _562;
    _663 = saturate(exp2(log2(mad(_656, -0.09902974f, mad(_644, -0.09802088f, (_632 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _670 = saturate(exp2(log2(mad(_656, -0.098961174f, mad(_644, 1.1519032f, (_632 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _677 = saturate(exp2(log2(mad(_656, 1.1510737f, mad(_644, -0.09804345f, (_632 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _683 = 1.0f - abs(_etcParams.w);
      _684 = saturate(_etcParams.w);  // [sem: expr_sat]
      _686 = (_683 * _663) + _684;
      _688 = (_683 * _670) + _684;
      _690 = (_683 * _677) + _684;
      if (_colorGradingParams.w > 0.0f) {
        _695 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _712 = (((max(0.0f, (1.0f - _690)) - _690) * _695) + _690);
        _713 = (((max(0.0f, (1.0f - _688)) - _688) * _695) + _688);
        _714 = (((max(0.0f, (1.0f - _686)) - _686) * _695) + _686);
      } else {
        _712 = _690;
        _713 = _688;
        _714 = _686;
      }
      _716 = _userImageAdjust.y + 1.0f;
      _718 = _userImageAdjust.x + 0.5f;
      _721 = ((_714 + -0.5f) * _716) + _718;
      _724 = ((_713 + -0.5f) * _716) + _718;
      _727 = ((_712 + -0.5f) * _716) + _718;
      _733 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _768 = exp2(log2(saturate(mad(_colorBlind2.z, _727, mad(_colorBlind2.y, _724, (_colorBlind2.x * _721))))) * _733);
      _769 = exp2(log2(saturate(mad(_colorBlind1.z, _727, mad(_colorBlind1.y, _724, (_colorBlind1.x * _721))))) * _733);
      _770 = exp2(log2(saturate(mad(_colorBlind0.z, _727, mad(_colorBlind0.y, _724, (_colorBlind0.x * _721))))) * _733);
    } else {
      _768 = _677;
      _769 = _670;
      _770 = _663;
    }
  } else {
    _768 = _396;
    _769 = _397;
    _770 = _398;
  }
  if (_etcParams.y > 1.0f) {
    _775 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _778 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _784 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_775, _778), float2(_775, _778))));  // [sem: expr_sat]
    _789 = (_784 * _768);
    _790 = (_784 * _769);
    _791 = (_784 * _770);
  } else {
    _789 = _768;
    _790 = _769;
    _791 = _770;
  }
  if (_415 && (_etcParams.z > 0.0f)) {
    _821 = select((_789 <= 0.0031308f), (_789 * 12.92f), (((pow(_789, 0.41666666f)) * 1.055f) + -0.055f));
    _822 = select((_790 <= 0.0031308f), (_790 * 12.92f), (((pow(_790, 0.41666666f)) * 1.055f) + -0.055f));
    _823 = select((_791 <= 0.0031308f), (_791 * 12.92f), (((pow(_791, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _821 = _789;
    _822 = _790;
    _823 = _791;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _826 = (float)((uint)((uint)(_399)));
    if (!(_826 < _viewDir.w)) {
      if (!(!(_826 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _837 = 0.0f;
        _838 = 0.0f;
        _839 = 0.0f;
      } else {
        _837 = _823;
        _838 = _822;
        _839 = _821;
      }
    } else {
      _837 = 0.0f;
      _838 = 0.0f;
      _839 = 0.0f;
    }
  } else {
    _837 = _823;
    _838 = _822;
    _839 = _821;
  }
  SV_Target.x = _837;
  SV_Target.y = _838;
  SV_Target.z = _839;
  SV_Target.w = _412;
  return SV_Target;
}
