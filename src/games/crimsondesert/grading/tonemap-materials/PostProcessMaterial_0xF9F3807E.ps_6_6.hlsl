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
  float _32;
  float _35;
  float _38;
  float _47;
  float _56;
  float _65;
  int _68;
  float _76;
  float _262;
  float _263;
  float _264;
  float _498;
  float _499;
  float _500;
  float _514;
  float _719;
  float _720;
  float _721;
  float _814;
  float _815;
  float _816;
  float _870;
  float _871;
  float _872;
  float _891;
  float _892;
  float _893;
  float _923;
  float _924;
  float _925;
  float _939;
  float _940;
  float _941;
  int _81;
  float _89;
  float4 _92;
  float _99;
  float _102;
  float _105;
  float _113;
  float _131;
  float _134;
  float4 _136;
  float _142;
  float _145;
  float _148;
  float _156;
  float _164;
  float _172;
  float _173;
  float _174;
  float _175;
  int _178;
  float _186;
  float _187;
  float _194;
  float _195;
  float _203;
  float _204;
  float _205;
  float _214;
  float _219;
  float _226;
  float _227;
  int _267;
  int _275;
  float _278;
  float _287;
  int _290;
  float _298;
  float _312;
  int _315;
  float _323;
  float _344;
  float _348;
  float _352;
  float _356;
  int _359;
  float _367;
  float _371;
  float _375;
  float _379;
  float _383;
  float _387;
  int _390;
  float _398;
  float _399;
  float _405;
  float _411;
  float _417;
  int _420;
  int _428;
  int _431;
  float _439;
  float _441;
  int _444;
  float _452;
  float _456;
  float _460;
  float _464;
  float _490;
  uint _501;
  bool _517;
  float _523;
  float _542;
  float _558;
  float _574;
  float _575;
  float _579;
  float _582;
  float _585;
  float _592;
  float _599;
  float _606;
  float _607;
  float _608;
  float _609;
  float _610;
  float _611;
  float _612;
  float _628;
  float _644;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _681;
  float _682;
  float _683;
  float _684;
  float _687;
  float _690;
  float _694;
  float _698;
  float _702;
  float _722;
  float _734;
  float _746;
  float _758;
  float _765;
  float _772;
  float _779;
  float _785;
  float _786;
  float _788;
  float _790;
  float _792;
  float _797;
  float _818;
  float _820;
  float _823;
  float _826;
  float _829;
  float _835;
  float _877;
  float _880;
  float _886;
  float _928;
  float _945;
  float _949;
  float _953;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = (pow(_26.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_26.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_26.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _47 = exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.851562f - (_32 * 18.6875f))) * 6.277395f) * 10000.0f;
  _56 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  _65 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = WaveReadLaneFirst(_materialIndex);
  _76 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_76 < 0.001f)) {
    _81 = WaveReadLaneFirst(_materialIndex);
    _89 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_81 < (uint)170000), _81, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._timeSpeed);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _92 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _99 = (pow(_92.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _102 = (pow(_92.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _105 = (pow(_92.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _113 = exp2(log2(max(0.0f, (_99 + -0.8359375f)) / (18.851562f - (_99 * 18.6875f))) * 6.277395f);
    _131 = (exp2(log2(max(0.0f, (_102 + -0.8359375f)) / (18.851562f - (_102 * 18.6875f))) * 6.277395f) + _113) + exp2(log2(max(0.0f, (_105 + -0.8359375f)) / (18.851562f - (_105 * 18.6875f))) * 6.277395f);
    _134 = TEXCOORD.x - ((_131 * _131) * 1e+06f);
    _136 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_134, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _142 = (pow(_136.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _145 = (pow(_136.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _148 = (pow(_136.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _156 = exp2(log2(max(0.0f, (_142 + -0.8359375f)) / (18.851562f - (_142 * 18.6875f))) * 6.277395f);
    _164 = exp2(log2(max(0.0f, (_145 + -0.8359375f)) / (18.851562f - (_145 * 18.6875f))) * 6.277395f);
    _172 = exp2(log2(max(0.0f, (_148 + -0.8359375f)) / (18.851562f - (_148 * 18.6875f))) * 6.277395f);
    _173 = _156 * 10000.0f;
    _174 = _164 * 10000.0f;
    _175 = _172 * 10000.0f;
    _178 = WaveReadLaneFirst(_materialIndex);
    _186 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_178 < (uint)170000), _178, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._chromaticAberrationRatio);
    _187 = saturate(_186);  // [sem: _186_sat]
    if (!(!(_187 >= 0.001f))) {
      [branch]
      if (!(_enableChromaticAberration == 0)) {
        _194 = _134 + -0.5f;
        _195 = TEXCOORD.y + -0.5f;
        _203 = (rsqrt(dot(float2(_194, _195), float2(_194, _195))) * 0.01f) * sqrt((_194 * _194) + (_195 * _195));
        _204 = _203 * _194;
        _205 = _203 * _195;
        _214 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_134 - _204), (TEXCOORD.y - _205))))).x) * 0.012683313f);
        _219 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_134, TEXCOORD.y)))).y) * 0.012683313f);
        _226 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_204 + _134), (_205 + TEXCOORD.y))))).z) * 0.012683313f);
        _227 = _187 * 10000.0f;
        _262 = (((exp2(log2(max(0.0f, (_226 + -0.8359375f)) / (18.851562f - (_226 * 18.6875f))) * 6.277395f) - _172) * _227) + _175);
        _263 = (((exp2(log2(max(0.0f, (_219 + -0.8359375f)) / (18.851562f - (_219 * 18.6875f))) * 6.277395f) - _164) * _227) + _174);
        _264 = (((exp2(log2(max(0.0f, (_214 + -0.8359375f)) / (18.851562f - (_214 * 18.6875f))) * 6.277395f) - _156) * _227) + _173);
      } else {
        _262 = _175;
        _263 = _174;
        _264 = _173;
      }
    } else {
      _262 = _175;
      _263 = _174;
      _264 = _173;
    }
    _267 = WaveReadLaneFirst(_materialIndex);
    _275 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_267 < (uint)170000), _267, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _278 = _time.x * 0.02f;
    _287 = (((sin(_278 + 7.13f) + 0.5f) * sin(_278)) + TEXCOORD.y) * _srcTargetSizeAndInv.y;
    _290 = WaveReadLaneFirst(_materialIndex);
    _298 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_290 < (uint)170000), _290, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._scanlineDarkness);
    _312 = (_298 * 0.5f) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, (TEXCOORD.y - (_time.x * 0.025f)))))).x);
    _315 = WaveReadLaneFirst(_materialIndex);
    _323 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_315 < (uint)170000), _315, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._largeNoiseDarkness);
    _344 = 1.0f - ((1.0f - abs(sin((_287 * 3.1415927f) * ((frac(sin(dot(float2(floor(_287 * 0.06f), 17.0f), float2(127.1f, 311.7f))) * 437.545f) * 0.072f) + 0.048f)))) * ((saturate((_92.w * 10000.0f) * _113) * (_323 - _312)) + _312));
    _348 = (((_344 * _264) - _47) * _76) + _47;
    _352 = (((_344 * _263) - _56) * _76) + _56;
    _356 = (((_344 * _262) - _65) * _76) + _65;
    _359 = WaveReadLaneFirst(_materialIndex);
    _367 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.x);
    _371 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.y);
    _375 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.z);
    _379 = (((_348 * _367) - _348) * _76) + _348;
    _383 = (((_371 * _352) - _352) * _76) + _352;
    _387 = (((_375 * _356) - _356) * _76) + _356;
    _390 = WaveReadLaneFirst(_materialIndex);
    _398 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_390 < (uint)170000), _390, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._saturationRatio);
    _399 = dot(float3(_379, _383, _387), float3(0.2126f, 0.7152f, 0.0722f));
    _405 = (((_399 - _379) + ((_379 - _399) * _398)) * _76) + _379;
    _411 = (((_399 - _383) + ((_383 - _399) * _398)) * _76) + _383;
    _417 = (((_399 - _387) + ((_387 - _399) * _398)) * _76) + _387;
    _420 = WaveReadLaneFirst(_materialIndex);
    _428 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_420 < (uint)170000), _420, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _431 = WaveReadLaneFirst(_materialIndex);
    _439 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteRatio);
    _441 = saturate(_439 * _76);  // [sem: expr_sat]
    _444 = WaveReadLaneFirst(_materialIndex);
    _452 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_444 < (uint)170000), _444, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteWidth);
    [branch]
    if (!(!(_441 >= 0.001f))) {
      _456 = (1.0f - _452) * 0.5f;
      _460 = max((abs(TEXCOORD.x + -0.5f) - _456), 0.0f);
      _464 = max((abs(TEXCOORD.y + -0.5f) - _456), 0.0f);
      _490 = saturate(saturate(saturate(sqrt((_464 * _464) + (_460 * _460)) * 1.25f) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_428 < (uint)65000), _428, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((_time.x * 0.02f) + (TEXCOORD.y * 4.0f)))))).x) * 0.1f)) * _441;
      _498 = (_417 - (_490 * _417));
      _499 = (_411 - (_490 * _411));
      _500 = (_405 - (_490 * _405));
    } else {
      _498 = _417;
      _499 = _411;
      _500 = _405;
    }
  } else {
    _498 = _65;
    _499 = _56;
    _500 = _47;
  }
  _501 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _514 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _501, 0)))).x) & 127)))) + 0.5f);
  } else {
    _514 = 1.0f;
  }
  _517 = (_localToneMappingParams.w > 0.0f);
  if (_517) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_500, _499, _498));
    _765 = _rndx_tonemapped_color.x;
    _772 = _rndx_tonemapped_color.y;
    _779 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _785 = 1.0f - abs(_etcParams.w);
      _786 = saturate(_etcParams.w);  // [sem: expr_sat]
      _788 = (_785 * _765) + _786;
      _790 = (_785 * _772) + _786;
      _792 = (_785 * _779) + _786;
      if (_colorGradingParams.w > 0.0f) {
        _797 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _814 = (((max(0.0f, (1.0f - _792)) - _792) * _797) + _792);
        _815 = (((max(0.0f, (1.0f - _790)) - _790) * _797) + _790);
        _816 = (((max(0.0f, (1.0f - _788)) - _788) * _797) + _788);
      } else {
        _814 = _792;
        _815 = _790;
        _816 = _788;
      }
      _818 = _userImageAdjust.y + 1.0f;
      _820 = _userImageAdjust.x + 0.5f;
      _823 = ((_816 + -0.5f) * _818) + _820;
      _826 = ((_815 + -0.5f) * _818) + _820;
      _829 = ((_814 + -0.5f) * _818) + _820;
      _835 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _870 = exp2(log2(saturate(mad(_colorBlind0.z, _829, mad(_colorBlind0.y, _826, (_colorBlind0.x * _823))))) * _835);
      _871 = exp2(log2(saturate(mad(_colorBlind1.z, _829, mad(_colorBlind1.y, _826, (_colorBlind1.x * _823))))) * _835);
      _872 = exp2(log2(saturate(mad(_colorBlind2.z, _829, mad(_colorBlind2.y, _826, (_colorBlind2.x * _823))))) * _835);
    } else {
      _870 = _765;
      _871 = _772;
      _872 = _779;
    }
  } else {
    _870 = _500;
    _871 = _499;
    _872 = _498;
  }
  if (_etcParams.y > 1.0f) {
    _877 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _880 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _886 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_877, _880), float2(_877, _880))));  // [sem: expr_sat]
    _891 = (_886 * _870);
    _892 = (_886 * _871);
    _893 = (_886 * _872);
  } else {
    _891 = _870;
    _892 = _871;
    _893 = _872;
  }
  if (_517 && (_etcParams.z > 0.0f)) {
    _923 = select((_891 <= 0.0031308f), (_891 * 12.92f), (((pow(_891, 0.41666666f)) * 1.055f) + -0.055f));
    _924 = select((_892 <= 0.0031308f), (_892 * 12.92f), (((pow(_892, 0.41666666f)) * 1.055f) + -0.055f));
    _925 = select((_893 <= 0.0031308f), (_893 * 12.92f), (((pow(_893, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _923 = _891;
    _924 = _892;
    _925 = _893;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _928 = (float)((uint)((uint)(_501)));
    if (!(_928 < _viewDir.w)) {
      if (!(!(_928 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _939 = 0.0f;
        _940 = 0.0f;
        _941 = 0.0f;
      } else {
        _939 = _923;
        _940 = _924;
        _941 = _925;
      }
    } else {
      _939 = 0.0f;
      _940 = 0.0f;
      _941 = 0.0f;
    }
  } else {
    _939 = _923;
    _940 = _924;
    _941 = _925;
  }
  _945 = exp2(log2(_939 * 0.0001f) * 0.15930176f);
  _949 = exp2(log2(_940 * 0.0001f) * 0.15930176f);
  _953 = exp2(log2(_941 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_945 * 18.6875f) + 1.0f)) * ((_945 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_949 * 18.6875f) + 1.0f)) * ((_949 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_953 * 18.6875f) + 1.0f)) * ((_953 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _514;
  return SV_Target;
}
