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

struct BindlessParameters_PostProcessScope {
  PostProcessScopeStruct BindlessParameters_PostProcessScope;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  float _26;
  int _29;
  float _37;
  float _38;
  int _41;
  float _49;
  float _50;
  int _53;
  float _61;
  int _64;
  float _72;
  int _75;
  float _83;
  int _86;
  float _94;
  float _96;
  float _98;
  float _99;
  int _102;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  float _164;
  float _165;
  float _473;
  float _676;
  float _677;
  float _678;
  float _771;
  float _772;
  float _773;
  float _827;
  float _828;
  float _829;
  float _844;
  float _845;
  float _846;
  float _876;
  float _877;
  float _878;
  float _892;
  float _893;
  float _894;
  float _119;
  float _120;
  float _123;
  float _126;
  float _127;
  float _132;
  float _142;
  float _158;
  float _166;
  float _169;
  float _170;
  bool _171;
  float _173;
  float _179;
  float _183;
  float _184;
  float _187;
  float _191;
  float _194;
  float _196;
  float _198;
  float _200;
  float _201;
  float _205;
  bool _206;
  float _212;
  float _215;
  float _218;
  float _227;
  float _234;
  float _243;
  float _248;
  float _252;
  float _258;
  float _259;
  float _260;
  float _261;
  float _265;
  float _269;
  float _273;
  float _277;
  float _279;
  float _282;
  float _294;
  float _303;
  float _312;
  float _321;
  float _323;
  float _333;
  float _334;
  float _338;
  float _341;
  float _343;
  float _349;
  float _353;
  float _365;
  float _379;
  float _380;
  int _383;
  int _391;
  float4 _401;
  float _405;
  float _412;
  float _414;
  float _429;
  float _444;
  float _459;
  uint _460;
  bool _476;
  float _480;
  float _499;
  float _515;
  float _531;
  float _532;
  float _536;
  float _539;
  float _542;
  float _549;
  float _556;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _585;
  float _601;
  float _617;
  float _618;
  float _619;
  float _620;
  float _621;
  float _638;
  float _639;
  float _640;
  float _641;
  float _644;
  float _647;
  float _651;
  float _655;
  float _659;
  float _679;
  float _691;
  float _703;
  float _715;
  float _722;
  float _729;
  float _736;
  float _742;
  float _743;
  float _745;
  float _747;
  float _749;
  float _754;
  float _775;
  float _777;
  float _780;
  float _783;
  float _786;
  float _792;
  float _832;
  float _833;
  float _839;
  float _881;
  float _898;
  float _902;
  float _906;
  _26 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensRadius);
  _38 = max(_37, 0.0001f);
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._edgeSmoothness);
  _50 = max(_49, 0.0001f);
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensDistance);
  _64 = WaveReadLaneFirst(_materialIndex);
  _72 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_64 < (uint)170000), _64, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._chromaticRatio);
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._distortionIntensity);
  _86 = WaveReadLaneFirst(_materialIndex);
  _94 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._opacity);
  _96 = (TEXCOORD.x * 2.0f) + -1.0f;
  _98 = (TEXCOORD.y * 2.0f) + -1.0f;
  _99 = _26 * _96;
  _102 = WaveReadLaneFirst(_materialIndex);
  _110 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_102 < (uint)170000), _102, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensYOffset);
  _111 = _61 * -0.5f;
  _112 = _61 * 0.5f;
  _113 = _50 * _38;
  _114 = _113 - _38;
  _115 = _110 + _98;
  _116 = _115 * _115;
  if (_61 > 0.1f) {
    _119 = _99 - _111;
    _120 = _99 - _112;
    _123 = sqrt(_116 + (_119 * _119));
    _126 = sqrt(_116 + (_120 * _120));
    _127 = _38 * 0.6f;
    _132 = saturate((((_126 - _123) * 0.5f) / _127) + 0.5f);  // [sem: expr_sat]
    _142 = saturate((((_126 + _114) + (_132 * (_123 - _126))) - ((_132 * _127) * (1.0f - _132))) / _113);  // [sem: expr_sat]
    _164 = ((_142 * _142) * (3.0f - (_142 * 2.0f)));
    _165 = select(((_123 / _38) < (_126 / _38)), _111, _112);
  } else {
    _158 = saturate((sqrt((_99 * _99) + (_98 * _98)) + _114) / _113);  // [sem: expr_sat]
    _164 = ((_158 * _158) * (3.0f - (_158 * 2.0f)));
    _165 = 0.0f;
  }
  _166 = _99 - _165;
  _169 = sqrt((_166 * _166) + _116);
  _170 = _169 / _38;
  _171 = (_169 > 1e-05f);
  _173 = select(_171, (_115 / _169), 1.0f);
  _179 = saturate(abs(TEXCOORD.x + -0.5f) / (saturate(_61) * 0.08f));  // [sem: expr_sat]
  _183 = (_179 * _179) * (3.0f - (_179 * 2.0f));
  _184 = 1.0f - _50;
  _187 = saturate((_170 - _184) / _50);  // [sem: expr_sat]
  _191 = (_187 * _187) * (3.0f - (_187 * 2.0f));
  _194 = select(_171, (_166 / _169), 0.0f) / _26;
  _196 = (_183 * _83) * _191;
  _198 = (_196 * _194) + TEXCOORD.x;
  _200 = (_196 * _173) + TEXCOORD.y;
  _201 = _194 * _183;
  _205 = sqrt((_201 * _201) + (_173 * _173));
  _206 = (_205 > 1e-05f);
  _212 = ((_72 * 0.015f) * _191) * ((float)((uint)((uint)(_enableChromaticAberration))));
  _215 = _212 * select(_206, (_201 / _205), 0.0f);
  _218 = _212 * select(_206, (_173 / _205), 1.0f);
  _227 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_198 - _215), (_200 - _218))))).x) * 0.012683313f);
  _234 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_198, _200)))).y) * 0.012683313f);
  _243 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_215 + _198), (_218 + _200))))).z) * 0.012683313f);
  _248 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
  // [sem: invLength]
  _252 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
  // [sem: invLength]
  _258 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
  _259 = _258 * _moonDirection.x;
  _260 = _258 * _moonDirection.y;
  _261 = _258 * _moonDirection.z;
  _265 = (_248 * _248) * (3.0f - (_248 * 2.0f));
  _269 = (((_252 * _sunDirection.x) - _259) * _265) + _259;
  _273 = (((_252 * _sunDirection.y) - _260) * _265) + _260;
  _277 = (((_252 * _sunDirection.z) - _261) * _265) + _261;
  _279 = rsqrt(dot(float3(_269, _273, _277), float3(_269, _273, _277)));  // [sem: invLength]
  _282 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _294 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _282, ((_invViewProjRelative[3].x) * _96));
  _303 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _282, ((_invViewProjRelative[0].x) * _96))) / _294;
  _312 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _282, ((_invViewProjRelative[1].x) * _96))) / _294;
  _321 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _282, ((_invViewProjRelative[2].x) * _96))) / _294;
  _323 = rsqrt(dot(float3(_303, _312, _321), float3(_303, _312, _321)));  // [sem: invLength]
  // [sem: expr_sat]
  _333 = saturate((dot(float3((_323 * _303), (_323 * _312), (_323 * _321)), float3((_269 * _279), (_273 * _279), (_277 * _279))) + -0.5f) * 2.0f);
  _334 = max(0.5f, _184);
  _338 = saturate(((_170 + -0.4f) - _334) * 4.9999995f);  // [sem: expr_sat]
  _341 = saturate((0.5f - _164) * -2.0f);  // [sem: expr_sat]
  _343 = (_334 + 0.4f) * 2.0f;
  _349 = saturate((_170 - _343) / (((_334 + 0.6f) * 0.01f) - _343));  // [sem: expr_sat]
  _353 = (_349 * _349) * (3.0f - (_349 * 2.0f));
  _365 = (_353 * _353) * max((((_338 * _338) * _183) * (3.0f - (_338 * 2.0f))), ((_341 * _341) * (3.0f - (_341 * 2.0f))));
  _379 = (saturate(exp2(log2((_333 * _333) * (3.0f - (_333 * 2.0f))) * 3.0f)) * ((_265 * 1.3999999f) + 5.6f)) * saturate(1.4f - _164);
  _380 = _379 * _365;
  _383 = WaveReadLaneFirst(_materialIndex);
  _391 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_383 < (uint)170000), _383, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensDirtTexture);
  _401 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_391 < (uint)65000), _391, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 1.2f) * _26), (TEXCOORD.y * 1.2f)));
  _405 = dot(float3(0.3f, 0.59f, 0.11f), float3(_401.x, _401.y, _401.z));
  _412 = ((_379 + 3.0f) * _365) * (1.0f / max(0.001f, _exposure0.x));
  _414 = (1.0f - _164) * 10000.0f;
  _429 = ((exp2(log2(max(0.0f, (_227 + -0.8359375f)) / (18.851562f - (_227 * 18.6875f))) * 6.277395f) * _414) + (_412 * (lerp(_405, _401.x, _380)))) * _94;
  _444 = ((exp2(log2(max(0.0f, (_234 + -0.8359375f)) / (18.851562f - (_234 * 18.6875f))) * 6.277395f) * _414) + (_412 * (lerp(_405, _401.y, _380)))) * _94;
  _459 = ((exp2(log2(max(0.0f, (_243 + -0.8359375f)) / (18.851562f - (_243 * 18.6875f))) * 6.277395f) * _414) + (_412 * (lerp(_405, _401.z, _380)))) * _94;
  _460 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _473 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _460, 0)))).x) & 127)))) + 0.5f);
  } else {
    _473 = 1.0f;
  }
  _476 = (_localToneMappingParams.w > 0.0f);
  if (_476) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_429, _444, _459));
    _722 = _rndx_tonemapped_color.x;
    _729 = _rndx_tonemapped_color.y;
    _736 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _742 = 1.0f - abs(_etcParams.w);
      _743 = saturate(_etcParams.w);  // [sem: expr_sat]
      _745 = (_742 * _722) + _743;
      _747 = (_742 * _729) + _743;
      _749 = (_742 * _736) + _743;
      if (_colorGradingParams.w > 0.0f) {
        _754 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _771 = (((max(0.0f, (1.0f - _745)) - _745) * _754) + _745);
        _772 = (((max(0.0f, (1.0f - _747)) - _747) * _754) + _747);
        _773 = (((max(0.0f, (1.0f - _749)) - _749) * _754) + _749);
      } else {
        _771 = _745;
        _772 = _747;
        _773 = _749;
      }
      _775 = _userImageAdjust.y + 1.0f;
      _777 = _userImageAdjust.x + 0.5f;
      _780 = ((_771 + -0.5f) * _775) + _777;
      _783 = ((_772 + -0.5f) * _775) + _777;
      _786 = ((_773 + -0.5f) * _775) + _777;
      _792 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _827 = exp2(log2(saturate(mad(_colorBlind0.z, _786, mad(_colorBlind0.y, _783, (_colorBlind0.x * _780))))) * _792);
      _828 = exp2(log2(saturate(mad(_colorBlind1.z, _786, mad(_colorBlind1.y, _783, (_colorBlind1.x * _780))))) * _792);
      _829 = exp2(log2(saturate(mad(_colorBlind2.z, _786, mad(_colorBlind2.y, _783, (_colorBlind2.x * _780))))) * _792);
    } else {
      _827 = _722;
      _828 = _729;
      _829 = _736;
    }
  } else {
    _827 = _429;
    _828 = _444;
    _829 = _459;
  }
  if (_etcParams.y > 1.0f) {
    _832 = abs(_96);
    _833 = abs(_98);
    _839 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_832, _833), float2(_832, _833))));  // [sem: expr_sat]
    _844 = (_839 * _827);
    _845 = (_839 * _828);
    _846 = (_839 * _829);
  } else {
    _844 = _827;
    _845 = _828;
    _846 = _829;
  }
  if (_476 && (_etcParams.z > 0.0f)) {
    _876 = select((_844 <= 0.0031308f), (_844 * 12.92f), (((pow(_844, 0.41666666f)) * 1.055f) + -0.055f));
    _877 = select((_845 <= 0.0031308f), (_845 * 12.92f), (((pow(_845, 0.41666666f)) * 1.055f) + -0.055f));
    _878 = select((_846 <= 0.0031308f), (_846 * 12.92f), (((pow(_846, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _876 = _844;
    _877 = _845;
    _878 = _846;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _881 = (float)((uint)((uint)(_460)));
    if (!(_881 < _viewDir.w)) {
      if (!(!(_881 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _892 = 0.0f;
        _893 = 0.0f;
        _894 = 0.0f;
      } else {
        _892 = _876;
        _893 = _877;
        _894 = _878;
      }
    } else {
      _892 = 0.0f;
      _893 = 0.0f;
      _894 = 0.0f;
    }
  } else {
    _892 = _876;
    _893 = _877;
    _894 = _878;
  }
  _898 = exp2(log2(_892 * 0.0001f) * 0.15930176f);
  _902 = exp2(log2(_893 * 0.0001f) * 0.15930176f);
  _906 = exp2(log2(_894 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_898 * 18.6875f) + 1.0f)) * ((_898 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_902 * 18.6875f) + 1.0f)) * ((_902 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_906 * 18.6875f) + 1.0f)) * ((_906 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _473;
  return SV_Target;
}
