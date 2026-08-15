struct PostProcessLensFlareForGimmick_CDStruct {
  uint _lensDirtTexture;
  uint _lensColorTableTexture;
  uint _noiseTex;
  uint _noiseTex2;
  float _lensflareRatio;
  float _sunFlareScale;
  float _sunFlareIntensity;
  float _sunFlareAnimSpeed;
  float _sunFlareWeightThreshold;
  float _sunFlareWeightIntensity;
  float _lensDirtIntensity;
  float _lensDirtThreshold;
  float _chromaticShiftValue;
  float _useFishUV;
  float _fishEyeIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessLensFlareForGimmick_CD {
  PostProcessLensFlareForGimmick_CDStruct BindlessParameters_PostProcessLensFlareForGimmick_CD;
};

typedef BindlessParameters_PostProcessLensFlareForGimmick_CD BindlessParameters_PostProcessLensFlareForGimmick_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLensFlareForGimmick_CD_t> BindlessParameters_PostProcessLensFlareForGimmick_CD[] : register(b0, space100);

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
  int _30;
  float _38;
  float _39;
  float _40;
  float _48;
  float _49;
  float _51;
  float4 _65;
  float _72;
  int _73;
  float _81;
  float _87;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _94;
  bool _95;
  float _103;
  float _140;
  float _141;
  float _670;
  float _671;
  float _672;
  float _686;
  float _891;
  float _892;
  float _893;
  float _986;
  float _987;
  float _988;
  float _1042;
  float _1043;
  float _1044;
  float _1063;
  float _1064;
  float _1065;
  float _1095;
  float _1096;
  float _1097;
  float _1111;
  float _1112;
  float _1113;
  float _105;
  float _107;
  float _115;
  float _123;
  float _124;
  float _126;
  float _134;
  int _143;
  float _151;
  bool _152;
  float _155;
  float _156;
  float _157;
  float _197;
  float _200;
  float _201;
  float _203;
  float _237;
  float _238;
  float _240;
  bool _243;
  bool _244;
  bool _245;
  bool _246;
  bool _249;
  float _250;
  bool _251;
  bool _253;
  float _254;
  float _258;
  int _262;
  int _270;
  int _275;
  float _283;
  int _285;
  float _293;
  float _299;
  float _300;
  int _305;
  float _313;
  float _316;
  float _317;
  int _328;
  float _336;
  float _337;
  int _339;
  int _347;
  float4 _354;
  float _362;
  float _365;
  float _372;
  float _409;
  float _410;
  float _411;
  float _430;
  int _434;
  int _442;
  float _446;
  float _450;
  bool _453;
  bool _454;
  float4 _471;
  float _478;
  bool _481;
  bool _482;
  bool _483;
  bool _484;
  float4 _499;
  float _524;
  float _535;
  float _550;
  float _560;
  int _564;
  int _572;
  float4 _579;
  int _583;
  float _591;
  int _604;
  float _612;
  float _634;
  float _638;
  int _649;
  float _657;
  float _659;
  uint _673;
  bool _689;
  float _695;
  float _744;
  float _745;
  float _746;
  float _748;
  float _755;
  float _756;
  float _757;
  float _776;
  float _777;
  float _778;
  float _779;
  float _780;
  float _781;
  float _782;
  float _783;
  float _784;
  float _830;
  float _831;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _853;
  float _854;
  float _855;
  float _856;
  float _862;
  float _865;
  float _872;
  float _873;
  float _874;
  float _903;
  float _928;
  float _929;
  float _930;
  float _949;
  float _950;
  float _951;
  float _957;
  float _961;
  float _962;
  float _963;
  float _964;
  float _969;
  float _994;
  float _998;
  float _999;
  float _1000;
  float _1001;
  float _1031;
  float _1053;
  float _1054;
  float _1058;
  float _1102;
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
  _39 = TEXCOORD.x + -0.5f;
  _40 = TEXCOORD.y + -0.5f;
  _48 = rsqrt(dot(float2(_39, _40), float2(_39, _40))) * (sqrt((_40 * _40) + (_39 * _39)) * _38);  // [sem: invLength]
  _49 = _48 * _39;
  _51 = _48 * _40;
  _65 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _72 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _73 = WaveReadLaneFirst(_materialIndex);
  _81 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
  _87 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _88 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
  _89 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _90 = 0.5f / _89;
  _91 = _87 + -0.5f;
  _92 = _88 - _90;
  _93 = dot(float2(_91, _92), float2(_91, _92));
  _94 = sqrt(_93);
  _95 = (_81 > 0.0f);
  if (_95) {
    _103 = sqrt(dot(float2(0.5f, _90), float2(0.5f, _90)));
  } else {
    if (!(_89 < 1.0f)) {
      _103 = _90;
    } else {
      _103 = 0.5f;
    }
  }
  if (_95) {
    _105 = rsqrt(_93);  // [sem: rsqrt_val]
    _107 = tan(_94 * _81);
    _115 = tan(_103 * _81);
    _140 = (((((_103 * _91) * _105) * _107) / _115) + 0.5f);
    _141 = (((((_103 * _92) * _105) * _107) / _115) + _90);
  } else {
    if (_81 < 0.0f) {
      _123 = rsqrt(_93);  // [sem: rsqrt_val]
      _124 = _81 * -10.0f;
      _126 = atan(_94 * _124);
      _134 = atan(_103 * _124);
      _140 = (((((_103 * _91) * _123) * _126) / _134) + 0.5f);
      _141 = (((((_103 * _92) * _123) * _126) / _134) + _90);
    } else {
      _140 = _87;
      _141 = _88;
    }
  }
  _143 = WaveReadLaneFirst(_materialIndex);
  _151 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_143 < (uint)170000), _143, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _152 = (_151 == 1.0f);
  _155 = select(_152, _140, TEXCOORD.x) + -0.5f;
  _156 = select(_152, (_141 * _89), TEXCOORD.y) + -0.5f;
  _157 = _155 * _72;
  _197 = mad((_viewProj[3].z), _questGuideWorldPosition.z, mad((_viewProj[3].y), _questGuideWorldPosition.y, ((_viewProj[3].x) * _questGuideWorldPosition.x))) + (_viewProj[3].w);
  _200 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[2].y), _questGuideWorldPosition.y, ((_viewProj[2].x) * _questGuideWorldPosition.x))) + (_viewProj[2].w)) / _197;
  _201 = ((mad((_viewProj[1].z), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, ((_viewProj[1].x) * _questGuideWorldPosition.x))) + (_viewProj[1].w)) / _197) * -0.5f;
  _203 = (_72 * 0.5f) * ((mad((_viewProj[0].z), _questGuideWorldPosition.z, mad((_viewProj[0].y), _questGuideWorldPosition.y, ((_viewProj[0].x) * _questGuideWorldPosition.x))) + (_viewProj[0].w)) / _197);
  if ((!(abs(_questGuideWorldPosition.x) <= 1e-05f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 1e-05f))) && (!(abs(_questGuideWorldPosition.y) <= 1e-05f)))) {
    if (!((_201 >= 1.05f) || ((_201 <= -1.5f) || ((_203 >= 1.6f) || ((_203 <= -1.6f) || ((_200 < 0.0f) || (_203 <= -1.5f))))))) {
      _237 = _157 - _203;
      _238 = _156 - _201;
      _240 = atan(_237 / _238);
      _243 = (_238 < 0.0f);
      _244 = (_238 == 0.0f);
      _245 = (_237 >= 0.0f);
      _246 = (_237 < 0.0f);
      _249 = _246 && _243;
      _250 = select(_249, (_240 + -3.1415927f), select((_245 && _243), (_240 + 3.1415927f), _240));
      _251 = _246 && _244;
      _253 = _245 && _244;
      _254 = select(_253, 1.5707964f, select(_251, -1.5707964f, _250));
      _258 = sqrt((_238 * _238) + (_237 * _237));
      _262 = WaveReadLaneFirst(_materialIndex);
      _270 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_262 < (uint)170000), _262, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _275 = WaveReadLaneFirst(_materialIndex);
      _283 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_275 < (uint)170000), _275, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _285 = WaveReadLaneFirst(_materialIndex);
      _293 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_285 < (uint)170000), _285, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _299 = _203 - _157;
      _300 = _201 - _156;
      _305 = WaveReadLaneFirst(_materialIndex);
      _313 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_305 < (uint)170000), _305, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _316 = max((0.02f / (_313 * sqrt((_300 * _300) + (_299 * _299)))), 0.0f);
      _317 = _316 * _316;
      _328 = WaveReadLaneFirst(_materialIndex);
      _336 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_328 < (uint)170000), _328, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _337 = _336 * _time.x;
      _339 = WaveReadLaneFirst(_materialIndex);
      _347 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_339 < (uint)170000), _339, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _354 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_347 < (uint)65000), _347, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((sin((_254 * 2.0f) + _203) * 4.0f) - cos((_254 * 3.0f) + _201)) + _337), _337));
      _362 = 1.0f / exp2((_258 * 1.442695f) * ((frac(_354.x) * 0.66f) + 0.33f));
      _365 = frac((_362 * 20.0f) + 1.003125f);
      _372 = exp2(log2(1.0f - abs((_362 * 2.0f) + -1.0f)) * 0.3f);
      _409 = sin(select(_253, 6.2831855f, select(_251, -6.2831855f, (_250 * 4.0f))));
      _410 = _409 * _237;
      _411 = _409 * _238;
      _430 = exp2(log2(((saturate(_362 + -0.9f) * 3.0f) + exp2(log2(1.0f - saturate(sqrt((_410 * _410) + (_411 * _411)))) * 8.0f)) * _362) * 12.95f) * (_362 * 0.49999997f);
      _434 = WaveReadLaneFirst(_materialIndex);
      _442 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_434 < (uint)170000), _434, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _446 = exp2(log2(_258 * 16.0f) * 0.5f);
      _450 = atan(_238 / _237);
      _453 = (_237 == 0.0f);
      _454 = (_238 >= 0.0f);
      _471 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_442 < (uint)65000), _442, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_453 && _454), 2.3561945f, select((_453 && _243), -2.3561945f, (select(_249, (_450 + -3.1415927f), select((_246 && _454), (_450 + 3.1415927f), _450)) * 1.5f))), ((_time.x * 0.2f) - _446)));
      _478 = atan((-0.0f - _238) / (-0.0f - _237));
      _481 = (_237 > -0.0f);
      _482 = (_237 == -0.0f);
      _483 = (_238 <= -0.0f);
      _484 = (_238 > -0.0f);
      _499 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_442 < (uint)65000), _442, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_482 && _483), 2.3561945f, select((_482 && _484), -2.3561945f, (select((_481 && _484), (_478 + -3.1415927f), select((_481 && _483), (_478 + 3.1415927f), _478)) * 1.5f))), ((_time.x * 0.2f) - (_446 * 0.5f))));
      _524 = exp2(log2(min(max((1.0f - (_258 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
      _535 = exp2(log2(min(max((1.1f - (_258 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
      _550 = (((pow(_258, 0.1f)) * 0.1f) + 0.8f) + (sin(_354.x * 8.0f) * 0.2f);
      _560 = (exp2(log2(saturate(1.0f - (_283 * sqrt((_155 * _155) + (_156 * _156))))) * _293) * 150.0f) * _exposure2.x;
      _564 = WaveReadLaneFirst(_materialIndex);
      _572 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_564 < (uint)170000), _564, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _579 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_572 < (uint)65000), _572, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _583 = WaveReadLaneFirst(_materialIndex);
      _591 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_583 < (uint)170000), _583, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _604 = WaveReadLaneFirst(_materialIndex);
      _612 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_604 < (uint)170000), _604, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _634 = ((_viewDir.y + _viewDir.x) * 33.600002f) + (TEXCOORD.x * 0.1f);
      _638 = frac(sin(floor(_634)) * 43758.547f);
      _649 = WaveReadLaneFirst(_materialIndex);
      _657 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_649 < (uint)170000), _649, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      _659 = _657 * (((((frac(_634) * (frac(sin(ceil(_634)) * 43758.547f) - _638)) + _638) * 0.65f) + 0.35f) * (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).w));
      _670 = (((_659 * (((((((_535 + (_524 * exp2(log2(saturate(max(_471.x, _499.x))) * 4.0f))) * 5.6f) + (_430 * (((min(max((abs((frac(_365 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _372) + 1.0f))) * _550) + _317) * _560) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _49), (TEXCOORD.y - _51))))).x))) * saturate((_612 * (saturate(pow(_579.x, _591)) + -1.0f)) + 1.0f)) + _65.x);
      _671 = (((_659 * (((((((_535 + (_524 * exp2(log2(saturate(max(_471.y, _499.y))) * 4.0f))) * 5.6f) + (_430 * (((min(max((abs((frac(_365 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _372) + 1.0f))) * _550) + _317) * _560) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y))) * saturate((_612 * (saturate(pow(_579.y, _591)) + -1.0f)) + 1.0f)) + _65.y);
      _672 = (((_659 * (((((((_535 + (_524 * exp2(log2(saturate(max(_471.z, _499.z))) * 4.0f))) * 7.0f) + (_430 * (((min(max((abs((frac(_365 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _372) + 1.0f))) * _550) + _317) * _560) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_49 + TEXCOORD.x), (_51 + TEXCOORD.y))))).z))) * saturate((_612 * (saturate(pow(_579.z, _591)) + -1.0f)) + 1.0f)) + _65.z);
    } else {
      _670 = _65.x;
      _671 = _65.y;
      _672 = _65.z;
    }
  } else {
    if (!((_201 >= 1.05f) || ((_201 <= -1.5f) || ((_203 >= 1.6f) || ((_203 <= -1.6f) || ((_203 <= -1.5f) || ((_200 < 0.0f) || (abs(_questGuideWorldPosition.z) <= 1e-05f)))))))) {
      _237 = _157 - _203;
      _238 = _156 - _201;
      _240 = atan(_237 / _238);
      _243 = (_238 < 0.0f);
      _244 = (_238 == 0.0f);
      _245 = (_237 >= 0.0f);
      _246 = (_237 < 0.0f);
      _249 = _246 && _243;
      _250 = select(_249, (_240 + -3.1415927f), select((_245 && _243), (_240 + 3.1415927f), _240));
      _251 = _246 && _244;
      _253 = _245 && _244;
      _254 = select(_253, 1.5707964f, select(_251, -1.5707964f, _250));
      _258 = sqrt((_238 * _238) + (_237 * _237));
      _262 = WaveReadLaneFirst(_materialIndex);
      _270 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_262 < (uint)170000), _262, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _275 = WaveReadLaneFirst(_materialIndex);
      _283 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_275 < (uint)170000), _275, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _285 = WaveReadLaneFirst(_materialIndex);
      _293 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_285 < (uint)170000), _285, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _299 = _203 - _157;
      _300 = _201 - _156;
      _305 = WaveReadLaneFirst(_materialIndex);
      _313 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_305 < (uint)170000), _305, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _316 = max((0.02f / (_313 * sqrt((_300 * _300) + (_299 * _299)))), 0.0f);
      _317 = _316 * _316;
      _328 = WaveReadLaneFirst(_materialIndex);
      _336 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_328 < (uint)170000), _328, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _337 = _336 * _time.x;
      _339 = WaveReadLaneFirst(_materialIndex);
      _347 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_339 < (uint)170000), _339, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _354 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_347 < (uint)65000), _347, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((sin((_254 * 2.0f) + _203) * 4.0f) - cos((_254 * 3.0f) + _201)) + _337), _337));
      _362 = 1.0f / exp2((_258 * 1.442695f) * ((frac(_354.x) * 0.66f) + 0.33f));
      _365 = frac((_362 * 20.0f) + 1.003125f);
      _372 = exp2(log2(1.0f - abs((_362 * 2.0f) + -1.0f)) * 0.3f);
      _409 = sin(select(_253, 6.2831855f, select(_251, -6.2831855f, (_250 * 4.0f))));
      _410 = _409 * _237;
      _411 = _409 * _238;
      _430 = exp2(log2(((saturate(_362 + -0.9f) * 3.0f) + exp2(log2(1.0f - saturate(sqrt((_410 * _410) + (_411 * _411)))) * 8.0f)) * _362) * 12.95f) * (_362 * 0.49999997f);
      _434 = WaveReadLaneFirst(_materialIndex);
      _442 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_434 < (uint)170000), _434, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _446 = exp2(log2(_258 * 16.0f) * 0.5f);
      _450 = atan(_238 / _237);
      _453 = (_237 == 0.0f);
      _454 = (_238 >= 0.0f);
      _471 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_442 < (uint)65000), _442, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_453 && _454), 2.3561945f, select((_453 && _243), -2.3561945f, (select(_249, (_450 + -3.1415927f), select((_246 && _454), (_450 + 3.1415927f), _450)) * 1.5f))), ((_time.x * 0.2f) - _446)));
      _478 = atan((-0.0f - _238) / (-0.0f - _237));
      _481 = (_237 > -0.0f);
      _482 = (_237 == -0.0f);
      _483 = (_238 <= -0.0f);
      _484 = (_238 > -0.0f);
      _499 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_442 < (uint)65000), _442, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_482 && _483), 2.3561945f, select((_482 && _484), -2.3561945f, (select((_481 && _484), (_478 + -3.1415927f), select((_481 && _483), (_478 + 3.1415927f), _478)) * 1.5f))), ((_time.x * 0.2f) - (_446 * 0.5f))));
      _524 = exp2(log2(min(max((1.0f - (_258 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
      _535 = exp2(log2(min(max((1.1f - (_258 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
      _550 = (((pow(_258, 0.1f)) * 0.1f) + 0.8f) + (sin(_354.x * 8.0f) * 0.2f);
      _560 = (exp2(log2(saturate(1.0f - (_283 * sqrt((_155 * _155) + (_156 * _156))))) * _293) * 150.0f) * _exposure2.x;
      _564 = WaveReadLaneFirst(_materialIndex);
      _572 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_564 < (uint)170000), _564, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _579 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_572 < (uint)65000), _572, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _583 = WaveReadLaneFirst(_materialIndex);
      _591 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_583 < (uint)170000), _583, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _604 = WaveReadLaneFirst(_materialIndex);
      _612 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_604 < (uint)170000), _604, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _634 = ((_viewDir.y + _viewDir.x) * 33.600002f) + (TEXCOORD.x * 0.1f);
      _638 = frac(sin(floor(_634)) * 43758.547f);
      _649 = WaveReadLaneFirst(_materialIndex);
      _657 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_649 < (uint)170000), _649, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      _659 = _657 * (((((frac(_634) * (frac(sin(ceil(_634)) * 43758.547f) - _638)) + _638) * 0.65f) + 0.35f) * (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).w));
      _670 = (((_659 * (((((((_535 + (_524 * exp2(log2(saturate(max(_471.x, _499.x))) * 4.0f))) * 5.6f) + (_430 * (((min(max((abs((frac(_365 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _372) + 1.0f))) * _550) + _317) * _560) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _49), (TEXCOORD.y - _51))))).x))) * saturate((_612 * (saturate(pow(_579.x, _591)) + -1.0f)) + 1.0f)) + _65.x);
      _671 = (((_659 * (((((((_535 + (_524 * exp2(log2(saturate(max(_471.y, _499.y))) * 4.0f))) * 5.6f) + (_430 * (((min(max((abs((frac(_365 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _372) + 1.0f))) * _550) + _317) * _560) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y))) * saturate((_612 * (saturate(pow(_579.y, _591)) + -1.0f)) + 1.0f)) + _65.y);
      _672 = (((_659 * (((((((_535 + (_524 * exp2(log2(saturate(max(_471.z, _499.z))) * 4.0f))) * 7.0f) + (_430 * (((min(max((abs((frac(_365 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _372) + 1.0f))) * _550) + _317) * _560) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_49 + TEXCOORD.x), (_51 + TEXCOORD.y))))).z))) * saturate((_612 * (saturate(pow(_579.z, _591)) + -1.0f)) + 1.0f)) + _65.z);
    } else {
      _670 = _65.x;
      _671 = _65.y;
      _672 = _65.z;
    }
  }
  _673 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _686 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _673, 0)))).x) & 127)))) + 0.5f);
  } else {
    _686 = 1.0f;
  }
  _689 = (_localToneMappingParams.w > 0.0f);
  if (_689) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_670, _671, _672));
    _949 = _rndx_tonemapped_color.x;
    _950 = _rndx_tonemapped_color.y;
    _951 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _957 = 1.0f - abs(_etcParams.w);
      _961 = saturate(_etcParams.w);  // [sem: expr_sat]
      _962 = (_957 * _949) + _961;
      _963 = (_957 * _950) + _961;
      _964 = (_957 * _951) + _961;
      if (_colorGradingParams.w > 0.0f) {
        _969 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _986 = (((max(0.0f, (1.0f - _962)) - _962) * _969) + _962);
        _987 = (((max(0.0f, (1.0f - _963)) - _963) * _969) + _963);
        _988 = (((max(0.0f, (1.0f - _964)) - _964) * _969) + _964);
      } else {
        _986 = _962;
        _987 = _963;
        _988 = _964;
      }
      _994 = _userImageAdjust.y + 1.0f;
      _998 = _userImageAdjust.x + 0.5f;
      _999 = ((_986 + -0.5f) * _994) + _998;
      _1000 = ((_987 + -0.5f) * _994) + _998;
      _1001 = ((_988 + -0.5f) * _994) + _998;
      _1031 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1042 = exp2(log2(saturate(mad(_colorBlind0.z, _1001, mad(_colorBlind0.y, _1000, (_colorBlind0.x * _999))))) * _1031);
      _1043 = exp2(log2(saturate(mad(_colorBlind1.z, _1001, mad(_colorBlind1.y, _1000, (_colorBlind1.x * _999))))) * _1031);
      _1044 = exp2(log2(saturate(mad(_colorBlind2.z, _1001, mad(_colorBlind2.y, _1000, (_colorBlind2.x * _999))))) * _1031);
    } else {
      _1042 = _949;
      _1043 = _950;
      _1044 = _951;
    }
  } else {
    _1042 = _670;
    _1043 = _671;
    _1044 = _672;
  }
  if (_etcParams.y > 1.0f) {
    _1053 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1054 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1058 = saturate(1.0f - (dot(float2(_1053, _1054), float2(_1053, _1054)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1063 = (_1058 * _1042);
    _1064 = (_1058 * _1043);
    _1065 = (_1058 * _1044);
  } else {
    _1063 = _1042;
    _1064 = _1043;
    _1065 = _1044;
  }
  if (_689 && (_etcParams.z > 0.0f)) {
    _1095 = select((_1063 <= 0.0031308f), (_1063 * 12.92f), (((pow(_1063, 0.41666666f)) * 1.055f) + -0.055f));
    _1096 = select((_1064 <= 0.0031308f), (_1064 * 12.92f), (((pow(_1064, 0.41666666f)) * 1.055f) + -0.055f));
    _1097 = select((_1065 <= 0.0031308f), (_1065 * 12.92f), (((pow(_1065, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1095 = _1063;
    _1096 = _1064;
    _1097 = _1065;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1102 = (float)((uint)((uint)(_673)));
    if (!(_1102 < _viewDir.w)) {
      if (!(_1102 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1111 = _1095;
        _1112 = _1096;
        _1113 = _1097;
      } else {
        _1111 = 0.0f;
        _1112 = 0.0f;
        _1113 = 0.0f;
      }
    } else {
      _1111 = 0.0f;
      _1112 = 0.0f;
      _1113 = 0.0f;
    }
  } else {
    _1111 = _1095;
    _1112 = _1096;
    _1113 = _1097;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1111, _1112, _1113), _sunDirection.y, _moonDirection.y);
    _1111 = _rndx_final_color.x;
    _1112 = _rndx_final_color.y;
    _1113 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1111;
  SV_Target.y = _1112;
  SV_Target.z = _1113;
  SV_Target.w = _686;
  return SV_Target;
}
