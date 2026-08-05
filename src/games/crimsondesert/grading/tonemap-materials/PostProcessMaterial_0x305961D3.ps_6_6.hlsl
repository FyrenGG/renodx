struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessGhost_CD BindlessParameters_PostProcessGhost_CD_t;
ConstantBuffer<BindlessParameters_PostProcessGhost_CD_t> BindlessParameters_PostProcessGhost_CD[] : register(b0, space100);

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
  float4 _27;
  float _33;
  float _36;
  float _39;
  float _48;
  float _57;
  float _66;
  int _69;
  float _77;
  float _183;
  float _184;
  float _436;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _442;
  float _465;
  float _466;
  float _467;
  float _481;
  float _686;
  float _687;
  float _688;
  float _781;
  float _782;
  float _783;
  float _837;
  float _838;
  float _839;
  float _858;
  float _859;
  float _860;
  float _890;
  float _891;
  float _892;
  float _906;
  float _907;
  float _908;
  float _85;
  int _88;
  int _96;
  float4 _110;
  int _116;
  float _124;
  int _127;
  float _135;
  float _137;
  float _139;
  float _141;
  uint2 _143;
  uint _158;
  float _163;
  float _168;
  float _170;
  float _171;
  float _172;
  float _186;
  float _187;
  float _188;
  float _189;
  float _191;
  float _192;
  float _193;
  float _194;
  uint _204;
  uint _208;
  uint4 _210;
  float4 _213;
  float _220;
  float _224;
  float _228;
  float _230;
  float _231;
  float _232;
  float _233;
  float _238;
  float _242;
  float _244;
  float _246;
  float _250;
  float _252;
  float _253;
  float _254;
  float _255;
  float _257;
  float _260;
  float _261;
  float _262;
  float _263;
  float _269;
  float _275;
  float _280;
  float _282;
  float _304;
  float _305;
  float _308;
  int _311;
  float _319;
  float _320;
  int _323;
  float _331;
  float _335;
  float _339;
  float _343;
  float _344;
  float _350;
  int _353;
  int _361;
  float _365;
  float _369;
  float _372;
  float _375;
  int _378;
  int _386;
  float _389;
  float _394;
  float _399;
  float _403;
  float _406;
  float _409;
  float _412;
  int _445;
  float _453;
  float _454;
  uint _468;
  bool _484;
  float _490;
  float _509;
  float _525;
  float _541;
  float _542;
  float _546;
  float _549;
  float _552;
  float _559;
  float _566;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  float _595;
  float _611;
  float _627;
  float _628;
  float _629;
  float _630;
  float _631;
  float _648;
  float _649;
  float _650;
  float _651;
  float _654;
  float _657;
  float _661;
  float _665;
  float _669;
  float _689;
  float _701;
  float _713;
  float _725;
  float _732;
  float _739;
  float _746;
  float _752;
  float _753;
  float _755;
  float _757;
  float _759;
  float _764;
  float _785;
  float _787;
  float _790;
  float _793;
  float _796;
  float _802;
  float _844;
  float _847;
  float _853;
  float _895;
  float _912;
  float _916;
  float _920;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = (pow(_27.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_27.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _48 = exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f;
  _57 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_77 >= 0.001f))) {
    _85 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _88 = WaveReadLaneFirst(_materialIndex);
    _96 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_96 < (uint)65000), _96, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _85), ((_time.x * 0.3f) + (_85 * TEXCOORD.y))));
    _116 = WaveReadLaneFirst(_materialIndex);
    _124 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _127 = WaveReadLaneFirst(_materialIndex);
    _135 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_127 < (uint)170000), _127, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _137 = (_124 * _110.y) * _135;
    _139 = (_137 * 0.01f) + TEXCOORD.x;
    _141 = (_137 * 0.05f) + TEXCOORD.y;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_143.x, _143.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _158 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_143.x))))))) + 0.5f) * _139)), ((int)((((float)((int)((int)((float)((int)((int)(_143.y))))))) + 0.5f) * _141)), 0));
    _163 = (((float)((uint)((uint)((uint)((uint)(_158.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _168 = (((float)((uint)((uint)(((uint)((uint)(_158.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _170 = 1.0f - abs(_163);
    _171 = abs(_168);
    _172 = _170 - _171;
    if (!(_172 >= 0.0f)) {
      _183 = (select((_168 >= 0.0f), 1.0f, -1.0f) * _170);
      _184 = (select((_163 >= 0.0f), 1.0f, -1.0f) * (1.0f - _171));
    } else {
      _183 = _168;
      _184 = _163;
    }
    _186 = rsqrt(dot(float3(_184, _183, _172), float3(_184, _183, _172)));  // [sem: invLength]
    _187 = _186 * _184;
    _188 = _186 * _183;
    _189 = _186 * _172;
    _191 = rsqrt(dot(float3(_187, _188, _189), float3(_187, _188, _189)));  // [sem: invLength]
    _192 = _191 * _187;
    _193 = _191 * _188;
    _194 = _191 * _189;
    if ((_158.x & 255) == _renderPassNPCGhost) {
      _204 = (uint)((_bufferSizeAndInvSize.x * _139) + -0.5f);
      _208 = (uint)((_bufferSizeAndInvSize.y * _141) + -0.5f);
      _210 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_204, _208, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _213 = __3__36__0__0__g_gbufferNormal.Load(int3(_204, _208, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _220 = (saturate(_213.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _224 = (saturate(_213.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _228 = (saturate(_213.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _230 = rsqrt(dot(float3(_220, _224, _228), float3(_220, _224, _228)));  // [sem: invLength]
      _231 = _230 * _220;
      _232 = _230 * _224;
      _233 = _228 * _230;
      _238 = (((float)((uint)((uint)(((uint)((uint)(_210.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _242 = (((float)((uint)((uint)(_210.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _244 = (_238 + _242) * 0.5f;
      _246 = (_238 - _242) * 0.5f;
      _250 = (1.0f - abs(_244)) - abs(_246);
      _252 = rsqrt(dot(float3(_244, _246, _250), float3(_244, _246, _250)));  // [sem: invLength]
      _253 = _252 * _244;
      _254 = _252 * _246;
      _255 = _252 * _250;
      _257 = select((_233 >= 0.0f), 1.0f, -1.0f);
      _260 = -0.0f - (1.0f / (_257 + _233));
      _261 = _232 * _260;
      _262 = _261 * _231;
      _263 = _257 * _231;
      _269 = mad(_255, _231, mad(_254, _262, ((((_263 * _231) * _260) + 1.0f) * _253)));
      _275 = mad(_255, _232, mad(_254, ((_261 * _232) + _257), ((_253 * _257) * _262)));
      _280 = mad(_255, _233, mad(_254, (-0.0f - _232), (-0.0f - (_263 * _253))));
      _282 = rsqrt(dot(float3(_269, _275, _280), float3(_269, _275, _280)));  // [sem: invLength]
      // [sem: expr_sat]
      _304 = saturate(1.0f - dot(float3(((((_282 * _269) - _192) * 0.2f) + _192), ((((_282 * _275) - _193) * 0.2f) + _193), ((((_282 * _280) - _194) * 0.2f) + _194)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _305 = _304 * 2.0f;
      _308 = 1.0f - saturate(_305 * _304);
      _311 = WaveReadLaneFirst(_materialIndex);
      _319 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_311 < (uint)170000), _311, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
      _320 = _319 * _308;
      _323 = WaveReadLaneFirst(_materialIndex);
      _331 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColorInnerBrightness);
      _335 = (((_331 * _48) - _48) * _320) + _48;
      _339 = (((_331 * _57) - _57) * _320) + _57;
      _343 = (((_331 * _66) - _66) * _320) + _66;
      _344 = _308 * _304;
      _350 = saturate((_344 * _344) * 30.0f) * saturate(_110.x * 40.0f);  // [sem: expr_sat]
      _353 = WaveReadLaneFirst(_materialIndex);
      _361 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_353 < (uint)170000), _353, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor1);
      _365 = ((float)((uint)((uint)(((uint)((uint)(_361)) >> 16) & 255)))) * 0.003921569f;
      _369 = ((float)((uint)((uint)(((uint)((uint)(_361)) >> 8) & 255)))) * 0.003921569f;
      _372 = ((float)((uint)((uint)(_361 & 255)))) * 0.003921569f;
      _375 = max(0.001f, _exposure0.x);
      _378 = WaveReadLaneFirst(_materialIndex);
      _386 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_378 < (uint)170000), _378, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor2);
      _389 = max(0.001f, _exposure0.x);
      _394 = (((float)((uint)((uint)(((uint)((uint)(_386)) >> 16) & 255)))) * 0.003921569f) / _389;
      _399 = (((float)((uint)((uint)(((uint)((uint)(_386)) >> 8) & 255)))) * 0.003921569f) / _389;
      _403 = (((float)((uint)((uint)(_386 & 255)))) * 0.003921569f) / _389;
      _406 = ((_335 - _394) * 0.1f) + _394;
      _409 = ((_339 - _399) * 0.1f) + _399;
      _412 = ((_343 - _403) * 0.1f) + _403;
      _436 = (((((lerp(_372, _110.z, 0.1f)) / _375) - _412) * _350) + _412);
      _437 = (((((lerp(_369, _110.y, 0.1f)) / _375) - _409) * _350) + _409);
      _438 = (((((lerp(_365, _110.x, 0.1f)) / _375) - _406) * _350) + _406);
      _439 = saturate(_305);  // [sem: _305_sat]
      _440 = _343;
      _441 = _339;
      _442 = _335;
    } else {
      _436 = _66;
      _437 = _57;
      _438 = _48;
      _439 = 0.0f;  // [sem: _305_sat]
      _440 = _66;
      _441 = _57;
      _442 = _48;
    }
    _445 = WaveReadLaneFirst(_materialIndex);
    _453 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_445 < (uint)170000), _445, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _454 = _453 * _439;
    _465 = ((_454 * (_436 - _440)) + _440);
    _466 = ((_454 * (_437 - _441)) + _441);
    _467 = ((_454 * (_438 - _442)) + _442);
  } else {
    _465 = _66;
    _466 = _57;
    _467 = _48;
  }
  _468 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _481 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _468, 0)))).x) & 127)))) + 0.5f);
  } else {
    _481 = 0.0f;
  }
  _484 = (_localToneMappingParams.w > 0.0f);
  if (_484) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_467, _466, _465));
    _732 = _rndx_tonemapped_color.x;
    _739 = _rndx_tonemapped_color.y;
    _746 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _752 = 1.0f - abs(_etcParams.w);
      _753 = saturate(_etcParams.w);  // [sem: expr_sat]
      _755 = (_752 * _732) + _753;
      _757 = (_752 * _739) + _753;
      _759 = (_752 * _746) + _753;
      if (_colorGradingParams.w > 0.0f) {
        _764 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _781 = (((max(0.0f, (1.0f - _759)) - _759) * _764) + _759);
        _782 = (((max(0.0f, (1.0f - _757)) - _757) * _764) + _757);
        _783 = (((max(0.0f, (1.0f - _755)) - _755) * _764) + _755);
      } else {
        _781 = _759;
        _782 = _757;
        _783 = _755;
      }
      _785 = _userImageAdjust.y + 1.0f;
      _787 = _userImageAdjust.x + 0.5f;
      _790 = ((_783 + -0.5f) * _785) + _787;
      _793 = ((_782 + -0.5f) * _785) + _787;
      _796 = ((_781 + -0.5f) * _785) + _787;
      _802 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _837 = exp2(log2(saturate(mad(_colorBlind1.z, _796, mad(_colorBlind1.y, _793, (_colorBlind1.x * _790))))) * _802);
      _838 = exp2(log2(saturate(mad(_colorBlind0.z, _796, mad(_colorBlind0.y, _793, (_colorBlind0.x * _790))))) * _802);
      _839 = exp2(log2(saturate(mad(_colorBlind2.z, _796, mad(_colorBlind2.y, _793, (_colorBlind2.x * _790))))) * _802);
    } else {
      _837 = _739;
      _838 = _732;
      _839 = _746;
    }
  } else {
    _837 = _466;
    _838 = _467;
    _839 = _465;
  }
  if (_etcParams.y > 1.0f) {
    _844 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _847 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _853 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_844, _847), float2(_844, _847))));  // [sem: expr_sat]
    _858 = (_853 * _838);
    _859 = (_853 * _837);
    _860 = (_853 * _839);
  } else {
    _858 = _838;
    _859 = _837;
    _860 = _839;
  }
  if (_484 && (_etcParams.z > 0.0f)) {
    _890 = select((_858 <= 0.0031308f), (_858 * 12.92f), (((pow(_858, 0.41666666f)) * 1.055f) + -0.055f));
    _891 = select((_859 <= 0.0031308f), (_859 * 12.92f), (((pow(_859, 0.41666666f)) * 1.055f) + -0.055f));
    _892 = select((_860 <= 0.0031308f), (_860 * 12.92f), (((pow(_860, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _890 = _858;
    _891 = _859;
    _892 = _860;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _895 = (float)((uint)((uint)(_468)));
    if (!(_895 < _viewDir.w)) {
      if (!(!(_895 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _906 = 0.0f;
        _907 = 0.0f;
        _908 = 0.0f;
      } else {
        _906 = _890;
        _907 = _891;
        _908 = _892;
      }
    } else {
      _906 = 0.0f;
      _907 = 0.0f;
      _908 = 0.0f;
    }
  } else {
    _906 = _890;
    _907 = _891;
    _908 = _892;
  }
  _912 = exp2(log2(_906 * 0.0001f) * 0.15930176f);
  _916 = exp2(log2(_907 * 0.0001f) * 0.15930176f);
  _920 = exp2(log2(_908 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_912 * 18.6875f) + 1.0f)) * ((_912 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_916 * 18.6875f) + 1.0f)) * ((_916 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_920 * 18.6875f) + 1.0f)) * ((_920 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _481;
  return SV_Target;
}
