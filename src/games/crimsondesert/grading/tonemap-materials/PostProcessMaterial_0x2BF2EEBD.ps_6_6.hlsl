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
  float _322;
  float _323;
  float _324;
  float _325;
  float _339;
  float _544;
  float _545;
  float _546;
  float _639;
  float _640;
  float _641;
  float _695;
  float _696;
  float _697;
  float _716;
  float _717;
  float _718;
  float _748;
  float _749;
  float _750;
  float _764;
  float _765;
  float _766;
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
  float _235;
  float4 _238;
  float _242;
  float4 _245;
  float _249;
  int _250;
  int _258;
  float _261;
  float _264;
  float _266;
  float _291;
  float _292;
  float _293;
  float _305;
  uint _326;
  bool _342;
  float _348;
  float _397;
  float _398;
  float _399;
  float _401;
  float _408;
  float _409;
  float _410;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _506;
  float _507;
  float _508;
  float _509;
  float _515;
  float _518;
  float _525;
  float _526;
  float _527;
  float _556;
  float _581;
  float _582;
  float _583;
  float _602;
  float _603;
  float _604;
  float _610;
  float _614;
  float _615;
  float _616;
  float _617;
  float _622;
  float _647;
  float _651;
  float _652;
  float _653;
  float _654;
  float _684;
  float _706;
  float _707;
  float _711;
  float _755;
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
      _235 = dot(float3(_231.x, _231.y, _231.z), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _238 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 + -0.002f), (_229 + -0.002f)));
      _242 = dot(float3(_238.x, _238.y, _238.z), float3(0.2126f, 0.7152f, 0.0722f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _245 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 + 0.002f), (_229 + 0.002f)));
      _249 = dot(float3(_245.x, _245.y, _245.z), float3(0.2126f, 0.7152f, 0.0722f));
      _250 = WaveReadLaneFirst(_materialIndex);
      _258 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_250 < (uint)170000), _250, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
      _261 = (float)((uint)((uint)(((uint)((uint)(_258)) >> 16) & 255)));
      _264 = (float)((uint)((uint)(((uint)((uint)(_258)) >> 8) & 255)));
      _266 = (float)((uint)((uint)(_258 & 255)));
      _291 = select(((_261 * 0.003921569f) < 0.04045f), (_261 * 0.000303527f), exp2(log2((_261 * 0.003717127f) + 0.052132703f) * 2.4f));
      _292 = select(((_264 * 0.003921569f) < 0.04045f), (_264 * 0.000303527f), exp2(log2((_264 * 0.003717127f) + 0.052132703f) * 2.4f));
      _293 = select(((_266 * 0.003921569f) < 0.04045f), (_266 * 0.000303527f), exp2(log2((_266 * 0.003717127f) + 0.052132703f) * 2.4f));
      _305 = max(0.001f, _exposure0.x);
      _322 = ((((((lerp(_291, 0.001f, _225)) / _305) * _242) - _242) * 0.4f) + _242);
      _323 = ((((((lerp(_292, 0.001f, _225)) / _305) * _235) - _235) * 0.4f) + _235);
      _324 = ((((((lerp(_293, 0.001f, _225)) / _305) * _249) - _249) * 0.4f) + _249);
      _325 = ((saturate((float)((int)((int)((int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_125 * (_105 - _111))), ((int)(_126 * (_106 - _112))), 0)))).x) & 255) == _renderPassKnowledgeGain))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_125 * _105)), ((int)(_126 * _106)), 0)))).x) & 255) == _renderPassKnowledgeGain)))) + (int)((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)(_125 * (_105 + _111))), ((int)(_126 * (_106 + _112))), 0)))).x) & 255) == _renderPassKnowledgeGain)))))) * _61) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _70.x)) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _105)), ((int)(_customRenderPassSizeInvSize.y * _106)), 0)))).x))))));
    } else {
      _322 = 0.0f;
      _323 = 0.0f;
      _324 = 0.0f;
      _325 = 0.0f;
    }
  } else {
    _322 = 0.0f;
    _323 = 0.0f;
    _324 = 0.0f;
    _325 = 0.0f;
  }
  _326 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _339 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _326, 0)))).x) & 127)))) + 0.5f);
  } else {
    _339 = _325;
  }
  _342 = (_localToneMappingParams.w > 0.0f);
  if (_342) {
    _348 = _userImageAdjust.z * _exposure0.x;
    _397 = exp2(log2(max(0.0f, (((_348 * max(0.0f, (((_322 * 1.70505f) - (_323 * 0.62179f)) - (_324 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _398 = exp2(log2(max(0.0f, (((max(0.0f, (((_323 * 1.1408f) - (_322 * 0.13026f)) - (_324 * 0.01055f))) * _348) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _399 = exp2(log2(max(0.0f, (((max(0.0f, (((_322 * -0.024f) - (_323 * 0.12897f)) + (_324 * 1.15297f))) * _348) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _401 = dot(float3(_397, _398, _399), float3(0.212671f, 0.71516f, 0.072169f));
    _408 = ((_397 - _401) * _powerParams.w) + _401;
    _409 = ((_398 - _401) * _powerParams.w) + _401;
    _410 = ((_399 - _401) * _powerParams.w) + _401;
    _429 = min(max(log2(mad(_410, 0.079223745f, mad(_409, 0.0784336f, (_408 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _430 = min(max(log2(mad(_410, 0.07916613f, mad(_409, 0.87846863f, (_408 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _431 = min(max(log2(mad(_410, 0.879143f, mad(_409, 0.0784336f, (_408 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _432 = _429 * 0.060606062f;
    _433 = _430 * 0.060606062f;
    _434 = _431 * 0.060606062f;
    _435 = _432 * _432;
    _436 = _433 * _433;
    _437 = _434 * _434;
    _483 = min(0.0f, (-0.0f - (((_429 * 0.0072181816f) + ((_435 * 0.4298f) + (((_435 * _435) * ((31.96f - (_429 * 2.4327273f)) + (_435 * 15.5f))) - ((_429 * 0.41624245f) * _435)))) + -0.00232f)));
    _484 = min(0.0f, (-0.0f - (((_430 * 0.0072181816f) + ((_436 * 0.4298f) + (((_436 * _436) * ((31.96f - (_430 * 2.4327273f)) + (_436 * 15.5f))) - ((_430 * 0.41624245f) * _436)))) + -0.00232f)));
    _485 = min(0.0f, (-0.0f - (((_431 * 0.0072181816f) + ((_437 * 0.4298f) + (((_437 * _437) * ((31.96f - (_431 * 2.4327273f)) + (_437 * 15.5f))) - ((_431 * 0.41624245f) * _437)))) + -0.00232f)));
    _486 = -0.0f - _483;
    _487 = -0.0f - _484;
    _488 = -0.0f - _485;
    _489 = dot(float3(_486, _487, _488), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _506 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _507 = -0.79999995f / _506;
      _508 = -1.2f / _506;
      _509 = 0.20000005f / _506;
      _515 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _518 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _525 = (_507 + 1.4f) + (_518 * (-0.39999998f - _507));
      _526 = (_508 + 1.6f) + (_518 * (-0.6f - _508));
      _527 = (_509 + 0.9f) + (_518 * (0.5f - _509));
      _544 = (lerp(_526, 1.2f, _515));  // [sem: blended]
      _545 = (lerp(_525, 1.0f, _515));  // [sem: blended]
      _546 = (lerp(_527, 1.4f, _515));  // [sem: blended]
    } else {
      _544 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _545 = 1.0f;  // [sem: blended]
      _546 = 1.4f;  // [sem: blended]
    }
    _556 = 1.0f - _544;
    _581 = ((exp2(log2(((saturate((_483 * _483) * _486) * _556) + _544) * _486) * _545) - _489) * _546) + _489;
    _582 = ((exp2(log2(((saturate((_484 * _484) * _487) * _556) + _544) * _487) * _545) - _489) * _546) + _489;
    _583 = ((exp2(log2(((saturate((_485 * _485) * _488) * _556) + _544) * _488) * _545) - _489) * _546) + _489;
    _602 = saturate(exp2(log2(mad(_583, -0.09902974f, mad(_582, -0.09802088f, (_581 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _603 = saturate(exp2(log2(mad(_583, -0.098961174f, mad(_582, 1.1519032f, (_581 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _604 = saturate(exp2(log2(mad(_583, 1.1510737f, mad(_582, -0.09804345f, (_581 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _610 = 1.0f - abs(_etcParams.w);
      _614 = saturate(_etcParams.w);  // [sem: expr_sat]
      _615 = (_610 * _602) + _614;
      _616 = (_610 * _603) + _614;
      _617 = (_610 * _604) + _614;
      if (_colorGradingParams.w > 0.0f) {
        _622 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _639 = (((max(0.0f, (1.0f - _615)) - _615) * _622) + _615);
        _640 = (((max(0.0f, (1.0f - _616)) - _616) * _622) + _616);
        _641 = (((max(0.0f, (1.0f - _617)) - _617) * _622) + _617);
      } else {
        _639 = _615;
        _640 = _616;
        _641 = _617;
      }
      _647 = _userImageAdjust.y + 1.0f;
      _651 = _userImageAdjust.x + 0.5f;
      _652 = ((_639 + -0.5f) * _647) + _651;
      _653 = ((_640 + -0.5f) * _647) + _651;
      _654 = ((_641 + -0.5f) * _647) + _651;
      _684 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _695 = exp2(log2(saturate(mad(_colorBlind0.z, _654, mad(_colorBlind0.y, _653, (_colorBlind0.x * _652))))) * _684);
      _696 = exp2(log2(saturate(mad(_colorBlind1.z, _654, mad(_colorBlind1.y, _653, (_colorBlind1.x * _652))))) * _684);
      _697 = exp2(log2(saturate(mad(_colorBlind2.z, _654, mad(_colorBlind2.y, _653, (_colorBlind2.x * _652))))) * _684);
    } else {
      _695 = _602;
      _696 = _603;
      _697 = _604;
    }
  } else {
    _695 = _322;
    _696 = _323;
    _697 = _324;
  }
  if (_etcParams.y > 1.0f) {
    _706 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _707 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _711 = saturate(1.0f - (dot(float2(_706, _707), float2(_706, _707)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _716 = (_711 * _695);
    _717 = (_711 * _696);
    _718 = (_711 * _697);
  } else {
    _716 = _695;
    _717 = _696;
    _718 = _697;
  }
  if (_342 && (_etcParams.z > 0.0f)) {
    _748 = select((_716 <= 0.0031308f), (_716 * 12.92f), (((pow(_716, 0.41666666f)) * 1.055f) + -0.055f));
    _749 = select((_717 <= 0.0031308f), (_717 * 12.92f), (((pow(_717, 0.41666666f)) * 1.055f) + -0.055f));
    _750 = select((_718 <= 0.0031308f), (_718 * 12.92f), (((pow(_718, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _748 = _716;
    _749 = _717;
    _750 = _718;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _755 = (float)((uint)((uint)(_326)));
    if (!(_755 < _viewDir.w)) {
      if (!(_755 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _764 = _748;
        _765 = _749;
        _766 = _750;
      } else {
        _764 = 0.0f;
        _765 = 0.0f;
        _766 = 0.0f;
      }
    } else {
      _764 = 0.0f;
      _765 = 0.0f;
      _766 = 0.0f;
    }
  } else {
    _764 = _748;
    _765 = _749;
    _766 = _750;
  }
  SV_Target.x = _764;
  SV_Target.y = _765;
  SV_Target.z = _766;
  SV_Target.w = _339;
  return SV_Target;
}
