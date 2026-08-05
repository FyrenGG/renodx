struct PostProcessVHSNoiseStruct {
  float _VHSNoiseProgress;
  float _timeSpeed;
  float _largeNoiseThreshold;
  float _largeNoiseDarkness;
  float _smallNoiseAmplitude;
  float _randomJitterThreshold;
  float _scanlineDarkness;
  float _vignetteRatio;
  float _vignetteWidth;
  float3 _slopeRGB;
  float _saturationRatio;
  float _chromaticAberrationRatio;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessVHSNoise {
  PostProcessVHSNoiseStruct BindlessParameters_PostProcessVHSNoise;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

typedef BindlessParameters_PostProcessVHSNoise BindlessParameters_PostProcessVHSNoise_t;
ConstantBuffer<BindlessParameters_PostProcessVHSNoise_t> BindlessParameters_PostProcessVHSNoise[] : register(b0, space100);

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
  float4 _26;
  int _32;
  float _40;
  float _123;
  float _124;
  float _125;
  float _358;
  float _359;
  float _360;
  float _374;
  float _579;
  float _580;
  float _581;
  float _674;
  float _675;
  float _676;
  float _730;
  float _731;
  float _732;
  float _751;
  float _752;
  float _753;
  float _783;
  float _784;
  float _785;
  float _799;
  float _800;
  float _801;
  int _45;
  float _53;
  float4 _56;
  float _62;
  float _65;
  float4 _67;
  int _73;
  float _81;
  float _82;
  float _89;
  float _90;
  float _98;
  float _99;
  float _100;
  int _128;
  int _136;
  float _139;
  float _148;
  int _151;
  float _159;
  float _173;
  int _176;
  float _184;
  float _204;
  float _208;
  float _212;
  float _216;
  int _219;
  float _227;
  float _231;
  float _235;
  float _239;
  float _243;
  float _247;
  int _250;
  float _258;
  float _259;
  float _265;
  float _271;
  float _277;
  int _280;
  int _288;
  int _291;
  float _299;
  float _301;
  int _304;
  float _312;
  float _316;
  float _320;
  float _324;
  float _350;
  uint _361;
  bool _377;
  float _383;
  float _402;
  float _418;
  float _434;
  float _435;
  float _439;
  float _442;
  float _445;
  float _452;
  float _459;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _471;
  float _472;
  float _488;
  float _504;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _541;
  float _542;
  float _543;
  float _544;
  float _547;
  float _550;
  float _554;
  float _558;
  float _562;
  float _582;
  float _594;
  float _606;
  float _618;
  float _625;
  float _632;
  float _639;
  float _645;
  float _646;
  float _648;
  float _650;
  float _652;
  float _657;
  float _678;
  float _680;
  float _683;
  float _686;
  float _689;
  float _695;
  float _737;
  float _740;
  float _746;
  float _788;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_40 < 0.001f)) {
    _45 = WaveReadLaneFirst(_materialIndex);
    _53 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._timeSpeed);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _56 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _62 = (_56.x + _56.y) + _56.z;
    _65 = TEXCOORD.x - ((_62 * _62) * 0.01f);
    _67 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_65, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _73 = WaveReadLaneFirst(_materialIndex);
    _81 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._chromaticAberrationRatio);
    _82 = saturate(_81);  // [sem: _81_sat]
    if (!(!(_82 >= 0.001f))) {
      [branch]
      if (!(_enableChromaticAberration == 0)) {
        _89 = _65 + -0.5f;
        _90 = TEXCOORD.y + -0.5f;
        _98 = (rsqrt(dot(float2(_89, _90), float2(_89, _90))) * 0.01f) * sqrt((_89 * _89) + (_90 * _90));
        _99 = _98 * _89;
        _100 = _98 * _90;
        _123 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_99 + _65), (_100 + TEXCOORD.y))))).z) - _67.z) * _82) + _67.z);
        _124 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_65, TEXCOORD.y)))).y) - _67.y) * _82) + _67.y);
        _125 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_65 - _99), (TEXCOORD.y - _100))))).x) - _67.x) * _82) + _67.x);
      } else {
        _123 = _67.z;
        _124 = _67.y;
        _125 = _67.x;
      }
    } else {
      _123 = _67.z;
      _124 = _67.y;
      _125 = _67.x;
    }
    _128 = WaveReadLaneFirst(_materialIndex);
    _136 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _139 = _time.x * 0.02f;
    _148 = (((sin(_139 + 7.13f) + 0.5f) * sin(_139)) + TEXCOORD.y) * _srcTargetSizeAndInv.y;
    _151 = WaveReadLaneFirst(_materialIndex);
    _159 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._scanlineDarkness);
    _173 = (_159 * 0.5f) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_136 < (uint)65000), _136, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, (TEXCOORD.y - (_time.x * 0.025f)))))).x);
    _176 = WaveReadLaneFirst(_materialIndex);
    _184 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_176 < (uint)170000), _176, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._largeNoiseDarkness);
    _204 = 1.0f - ((1.0f - abs(sin((_148 * 3.1415927f) * ((frac(sin(dot(float2(floor(_148 * 0.06f), 17.0f), float2(127.1f, 311.7f))) * 437.545f) * 0.072f) + 0.048f)))) * ((saturate(_56.x * _56.w) * (_184 - _173)) + _173));
    _208 = (((_204 * _125) - _26.x) * _40) + _26.x;
    _212 = (((_204 * _124) - _26.y) * _40) + _26.y;
    _216 = (((_204 * _123) - _26.z) * _40) + _26.z;
    _219 = WaveReadLaneFirst(_materialIndex);
    _227 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.x);
    _231 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.y);
    _235 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.z);
    _239 = (((_208 * _227) - _208) * _40) + _208;
    _243 = (((_231 * _212) - _212) * _40) + _212;
    _247 = (((_235 * _216) - _216) * _40) + _216;
    _250 = WaveReadLaneFirst(_materialIndex);
    _258 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_250 < (uint)170000), _250, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._saturationRatio);
    _259 = dot(float3(_239, _243, _247), float3(0.2126f, 0.7152f, 0.0722f));
    _265 = (((_259 - _239) + ((_239 - _259) * _258)) * _40) + _239;
    _271 = (((_259 - _243) + ((_243 - _259) * _258)) * _40) + _243;
    _277 = (((_259 - _247) + ((_247 - _259) * _258)) * _40) + _247;
    _280 = WaveReadLaneFirst(_materialIndex);
    _288 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_280 < (uint)170000), _280, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _291 = WaveReadLaneFirst(_materialIndex);
    _299 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_291 < (uint)170000), _291, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteRatio);
    _301 = saturate(_299 * _40);  // [sem: expr_sat]
    _304 = WaveReadLaneFirst(_materialIndex);
    _312 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_304 < (uint)170000), _304, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteWidth);
    [branch]
    if (!(!(_301 >= 0.001f))) {
      _316 = (1.0f - _312) * 0.5f;
      _320 = max((abs(TEXCOORD.x + -0.5f) - _316), 0.0f);
      _324 = max((abs(TEXCOORD.y + -0.5f) - _316), 0.0f);
      _350 = saturate(saturate(saturate(sqrt((_324 * _324) + (_320 * _320)) * 1.25f) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_288 < (uint)65000), _288, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((_time.x * 0.02f) + (TEXCOORD.y * 4.0f)))))).x) * 0.1f)) * _301;
      _358 = (_277 - (_350 * _277));
      _359 = (_271 - (_350 * _271));
      _360 = (_265 - (_350 * _265));
    } else {
      _358 = _277;
      _359 = _271;
      _360 = _265;
    }
  } else {
    _358 = _26.z;
    _359 = _26.y;
    _360 = _26.x;
  }
  _361 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _374 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _361, 0)))).x) & 127)))) + 0.5f);
  } else {
    _374 = 1.0f;
  }
  _377 = (_localToneMappingParams.w > 0.0f);
  if (_377) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_360, _359, _358));
    _625 = _rndx_tonemapped_color.x;
    _632 = _rndx_tonemapped_color.y;
    _639 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _645 = 1.0f - abs(_etcParams.w);
      _646 = saturate(_etcParams.w);  // [sem: expr_sat]
      _648 = (_645 * _625) + _646;
      _650 = (_645 * _632) + _646;
      _652 = (_645 * _639) + _646;
      if (_colorGradingParams.w > 0.0f) {
        _657 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _674 = (((max(0.0f, (1.0f - _652)) - _652) * _657) + _652);
        _675 = (((max(0.0f, (1.0f - _650)) - _650) * _657) + _650);
        _676 = (((max(0.0f, (1.0f - _648)) - _648) * _657) + _648);
      } else {
        _674 = _652;
        _675 = _650;
        _676 = _648;
      }
      _678 = _userImageAdjust.y + 1.0f;
      _680 = _userImageAdjust.x + 0.5f;
      _683 = ((_676 + -0.5f) * _678) + _680;
      _686 = ((_675 + -0.5f) * _678) + _680;
      _689 = ((_674 + -0.5f) * _678) + _680;
      _695 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _730 = exp2(log2(saturate(mad(_colorBlind2.z, _689, mad(_colorBlind2.y, _686, (_colorBlind2.x * _683))))) * _695);
      _731 = exp2(log2(saturate(mad(_colorBlind1.z, _689, mad(_colorBlind1.y, _686, (_colorBlind1.x * _683))))) * _695);
      _732 = exp2(log2(saturate(mad(_colorBlind0.z, _689, mad(_colorBlind0.y, _686, (_colorBlind0.x * _683))))) * _695);
    } else {
      _730 = _639;
      _731 = _632;
      _732 = _625;
    }
  } else {
    _730 = _358;
    _731 = _359;
    _732 = _360;
  }
  if (_etcParams.y > 1.0f) {
    _737 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _740 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _746 = saturate(1.0f - (dot(float2(_737, _740), float2(_737, _740)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _751 = (_746 * _730);
    _752 = (_746 * _731);
    _753 = (_746 * _732);
  } else {
    _751 = _730;
    _752 = _731;
    _753 = _732;
  }
  if (_377 && (_etcParams.z > 0.0f)) {
    _783 = select((_753 <= 0.0031308f), (_753 * 12.92f), (((pow(_753, 0.41666666f)) * 1.055f) + -0.055f));
    _784 = select((_752 <= 0.0031308f), (_752 * 12.92f), (((pow(_752, 0.41666666f)) * 1.055f) + -0.055f));
    _785 = select((_751 <= 0.0031308f), (_751 * 12.92f), (((pow(_751, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _783 = _753;
    _784 = _752;
    _785 = _751;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _788 = (float)((uint)((uint)(_361)));
    if (!(_788 < _viewDir.w)) {
      if (!(!(_788 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _799 = 0.0f;
        _800 = 0.0f;
        _801 = 0.0f;
      } else {
        _799 = _783;
        _800 = _784;
        _801 = _785;
      }
    } else {
      _799 = 0.0f;
      _800 = 0.0f;
      _801 = 0.0f;
    }
  } else {
    _799 = _783;
    _800 = _784;
    _801 = _785;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_799, _800, _801), _sunDirection.y, _moonDirection.y);
    _799 = _rndx_final_color.x;
    _800 = _rndx_final_color.y;
    _801 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _799;
  SV_Target.y = _800;
  SV_Target.z = _801;
  SV_Target.w = _374;
  return SV_Target;
}
