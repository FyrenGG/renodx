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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_332, _331, _330));
    _597 = _rndx_tonemapped_color.x;
    _604 = _rndx_tonemapped_color.y;
    _611 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
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
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _718 = saturate(1.0f - (dot(float2(_709, _712), float2(_709, _712)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
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
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_771, _772, _773), _sunDirection.y, _moonDirection.y);
    _771 = _rndx_final_color.x;
    _772 = _rndx_final_color.y;
    _773 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _771;
  SV_Target.y = _772;
  SV_Target.z = _773;
  SV_Target.w = _346;
  return SV_Target;
}
