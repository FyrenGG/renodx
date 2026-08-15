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

struct BindlessParameters_PostProcessVHSNoise {
  PostProcessVHSNoiseStruct BindlessParameters_PostProcessVHSNoise;
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
  float4 _27;
  float _37;
  float _38;
  float _39;
  float _64;
  float _65;
  float _66;
  int _67;
  float _75;
  float _260;
  float _261;
  float _262;
  float _474;
  float _475;
  float _476;
  float _490;
  float _695;
  float _696;
  float _697;
  float _790;
  float _791;
  float _792;
  float _846;
  float _847;
  float _848;
  float _867;
  float _868;
  float _869;
  float _899;
  float _900;
  float _901;
  float _915;
  float _916;
  float _917;
  int _79;
  float _87;
  float4 _92;
  float _103;
  float _104;
  float _105;
  float _127;
  float _131;
  float _134;
  float4 _136;
  float _146;
  float _147;
  float _148;
  float _170;
  float _171;
  float _172;
  float _173;
  float _174;
  float _175;
  int _176;
  float _184;
  float _185;
  float _192;
  float _193;
  float _201;
  float _202;
  float _204;
  float _214;
  float _227;
  float _240;
  float _252;
  int _267;
  int _275;
  float _287;
  float _294;
  int _308;
  float _316;
  float _317;
  int _318;
  float _326;
  float _334;
  float _344;
  float _345;
  float _346;
  int _347;
  float _357;
  float _358;
  float _359;
  float _369;
  float _370;
  float _371;
  int _372;
  float _380;
  float _381;
  float _397;
  float _398;
  float _399;
  int _406;
  int _414;
  int _422;
  float _430;
  float _432;
  int _433;
  float _441;
  float _450;
  float _453;
  float _454;
  float _466;
  uint _477;
  bool _493;
  float _499;
  float _548;
  float _549;
  float _550;
  float _552;
  float _559;
  float _560;
  float _561;
  float _580;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _657;
  float _658;
  float _659;
  float _660;
  float _666;
  float _669;
  float _676;
  float _677;
  float _678;
  float _707;
  float _732;
  float _733;
  float _734;
  float _753;
  float _754;
  float _755;
  float _761;
  float _765;
  float _766;
  float _767;
  float _768;
  float _773;
  float _798;
  float _802;
  float _803;
  float _804;
  float _805;
  float _835;
  float _857;
  float _858;
  float _862;
  float _906;
  float _927;
  float _928;
  float _929;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_27.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_27.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _65 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f) * 10000.0f;
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_75 < 0.001f)) {
    _79 = WaveReadLaneFirst(_materialIndex);
    _87 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_79 < (uint)170000), _79, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._timeSpeed);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _92 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _103 = (pow(_92.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _104 = (pow(_92.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _105 = (pow(_92.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _127 = exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.851562f - (_103 * 18.6875f))) * 6.277395f);
    _131 = (exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.851562f - (_104 * 18.6875f))) * 6.277395f) + _127) + exp2(log2(max(0.0f, (_105 + -0.8359375f)) / (18.851562f - (_105 * 18.6875f))) * 6.277395f);
    _134 = TEXCOORD.x - ((_131 * _131) * 1e+06f);
    _136 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_134, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _146 = (pow(_136.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _147 = (pow(_136.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _148 = (pow(_136.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _170 = exp2(log2(max(0.0f, (_146 + -0.8359375f)) / (18.851562f - (_146 * 18.6875f))) * 6.277395f);
    _171 = exp2(log2(max(0.0f, (_147 + -0.8359375f)) / (18.851562f - (_147 * 18.6875f))) * 6.277395f);
    _172 = exp2(log2(max(0.0f, (_148 + -0.8359375f)) / (18.851562f - (_148 * 18.6875f))) * 6.277395f);
    _173 = _170 * 10000.0f;
    _174 = _171 * 10000.0f;
    _175 = _172 * 10000.0f;
    _176 = WaveReadLaneFirst(_materialIndex);
    _184 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_176 < (uint)170000), _176, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._chromaticAberrationRatio);
    _185 = saturate(_184);  // [sem: _184_sat]
    if (!(!(_185 >= 0.001f))) {
      [branch]
      if (!(_enableChromaticAberration == 0)) {
        _192 = _134 + -0.5f;
        _193 = TEXCOORD.y + -0.5f;
        _201 = rsqrt(dot(float2(_192, _193), float2(_192, _193))) * (sqrt((_192 * _192) + (_193 * _193)) * 0.01f);  // [sem: invLength]
        _202 = _201 * _192;
        _204 = _201 * _193;
        _214 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_134 - _202), (TEXCOORD.y - _204))))).x) * 0.012683313f);
        _227 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_134, TEXCOORD.y)))).y) * 0.012683313f);
        _240 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_202 + _134), (_204 + TEXCOORD.y))))).z) * 0.012683313f);
        _252 = _185 * 10000.0f;
        _260 = (((exp2(log2(max(0.0f, (_214 + -0.8359375f)) / (18.851562f - (_214 * 18.6875f))) * 6.277395f) - _170) * _252) + _173);
        _261 = (((exp2(log2(max(0.0f, (_227 + -0.8359375f)) / (18.851562f - (_227 * 18.6875f))) * 6.277395f) - _171) * _252) + _174);
        _262 = (((exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.851562f - (_240 * 18.6875f))) * 6.277395f) - _172) * _252) + _175);
      } else {
        _260 = _173;
        _261 = _174;
        _262 = _175;
      }
    } else {
      _260 = _173;
      _261 = _174;
      _262 = _175;
    }
    _267 = WaveReadLaneFirst(_materialIndex);
    _275 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_267 < (uint)170000), _267, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _287 = _time.x * 0.02f;
    _294 = ((sin(_287) * (sin(_287 + 7.13f) + 0.5f)) + TEXCOORD.y) * _srcTargetSizeAndInv.y;
    _308 = WaveReadLaneFirst(_materialIndex);
    _316 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_308 < (uint)170000), _308, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._scanlineDarkness);
    _317 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, (TEXCOORD.y - (_time.x * 0.025f)))))).x) * 0.5f) * _316;
    _318 = WaveReadLaneFirst(_materialIndex);
    _326 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_318 < (uint)170000), _318, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._largeNoiseDarkness);
    _334 = 1.0f - (((saturate((_92.w * 10000.0f) * _127) * (_326 - _317)) + _317) * (1.0f - abs(sin((_294 * 3.1415927f) * ((frac(sin(dot(float2(floor(_294 * 0.06f), 17.0f), float2(127.1f, 311.7f))) * 437.545f) * 0.072f) + 0.048f)))));
    _344 = (((_334 * _260) - _64) * _75) + _64;
    _345 = (((_334 * _261) - _65) * _75) + _65;
    _346 = (((_334 * _262) - _66) * _75) + _66;
    _347 = WaveReadLaneFirst(_materialIndex);
    _357 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_347 < (uint)170000), _347, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.x);
    _358 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_347 < (uint)170000), _347, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.y);
    _359 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_347 < (uint)170000), _347, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.z);
    _369 = (((_344 * _357) - _344) * _75) + _344;
    _370 = (((_345 * _358) - _345) * _75) + _345;
    _371 = (((_346 * _359) - _346) * _75) + _346;
    _372 = WaveReadLaneFirst(_materialIndex);
    _380 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_372 < (uint)170000), _372, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._saturationRatio);
    _381 = dot(float3(_369, _370, _371), float3(0.2126f, 0.7152f, 0.0722f));
    _397 = (((_381 - _369) + ((_369 - _381) * _380)) * _75) + _369;
    _398 = (((_381 - _370) + ((_370 - _381) * _380)) * _75) + _370;
    _399 = (((_381 - _371) + ((_371 - _381) * _380)) * _75) + _371;
    _406 = WaveReadLaneFirst(_materialIndex);
    _414 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_406 < (uint)170000), _406, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _422 = WaveReadLaneFirst(_materialIndex);
    _430 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_422 < (uint)170000), _422, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteRatio);
    _432 = saturate(_430 * _75);  // [sem: expr_sat]
    _433 = WaveReadLaneFirst(_materialIndex);
    _441 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_433 < (uint)170000), _433, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteWidth);
    [branch]
    if (!(!(_432 >= 0.001f))) {
      _450 = (1.0f - _441) * 0.5f;
      _453 = max((abs(TEXCOORD.x + -0.5f) - _450), 0.0f);
      _454 = max((abs(TEXCOORD.y + -0.5f) - _450), 0.0f);
      _466 = saturate(saturate(saturate(sqrt((_454 * _454) + (_453 * _453)) * 1.25f) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_414 < (uint)65000), _414, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((_time.x * 0.02f) + (TEXCOORD.y * 4.0f)))))).x) * 0.1f)) * _432;
      _474 = (_397 - (_466 * _397));
      _475 = (_398 - (_466 * _398));
      _476 = (_399 - (_466 * _399));
    } else {
      _474 = _397;
      _475 = _398;
      _476 = _399;
    }
  } else {
    _474 = _64;
    _475 = _65;
    _476 = _66;
  }
  _477 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _490 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _477, 0)))).x) & 127)))) + 0.5f);
  } else {
    _490 = 1.0f;
  }
  _493 = (_localToneMappingParams.w > 0.0f);
  if (_493) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_474, _475, _476));
    _753 = _rndx_tonemapped_color.x;
    _754 = _rndx_tonemapped_color.y;
    _755 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _761 = 1.0f - abs(_etcParams.w);
      _765 = saturate(_etcParams.w);  // [sem: expr_sat]
      _766 = (_761 * _753) + _765;
      _767 = (_761 * _754) + _765;
      _768 = (_761 * _755) + _765;
      if (_colorGradingParams.w > 0.0f) {
        _773 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _790 = (((max(0.0f, (1.0f - _766)) - _766) * _773) + _766);
        _791 = (((max(0.0f, (1.0f - _767)) - _767) * _773) + _767);
        _792 = (((max(0.0f, (1.0f - _768)) - _768) * _773) + _768);
      } else {
        _790 = _766;
        _791 = _767;
        _792 = _768;
      }
      _798 = _userImageAdjust.y + 1.0f;
      _802 = _userImageAdjust.x + 0.5f;
      _803 = ((_790 + -0.5f) * _798) + _802;
      _804 = ((_791 + -0.5f) * _798) + _802;
      _805 = ((_792 + -0.5f) * _798) + _802;
      _835 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _846 = exp2(log2(saturate(mad(_colorBlind0.z, _805, mad(_colorBlind0.y, _804, (_colorBlind0.x * _803))))) * _835);
      _847 = exp2(log2(saturate(mad(_colorBlind1.z, _805, mad(_colorBlind1.y, _804, (_colorBlind1.x * _803))))) * _835);
      _848 = exp2(log2(saturate(mad(_colorBlind2.z, _805, mad(_colorBlind2.y, _804, (_colorBlind2.x * _803))))) * _835);
    } else {
      _846 = _753;
      _847 = _754;
      _848 = _755;
    }
  } else {
    _846 = _474;
    _847 = _475;
    _848 = _476;
  }
  if (_etcParams.y > 1.0f) {
    _857 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _858 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _862 = saturate(1.0f - (dot(float2(_857, _858), float2(_857, _858)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _867 = (_862 * _846);
    _868 = (_862 * _847);
    _869 = (_862 * _848);
  } else {
    _867 = _846;
    _868 = _847;
    _869 = _848;
  }
  if (_493 && (_etcParams.z > 0.0f)) {
    _899 = select((_867 <= 0.0031308f), (_867 * 12.92f), (((pow(_867, 0.41666666f)) * 1.055f) + -0.055f));
    _900 = select((_868 <= 0.0031308f), (_868 * 12.92f), (((pow(_868, 0.41666666f)) * 1.055f) + -0.055f));
    _901 = select((_869 <= 0.0031308f), (_869 * 12.92f), (((pow(_869, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _899 = _867;
    _900 = _868;
    _901 = _869;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _906 = (float)((uint)((uint)(_477)));
    if (!(_906 < _viewDir.w)) {
      if (!(_906 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _915 = _899;
        _916 = _900;
        _917 = _901;
      } else {
        _915 = 0.0f;
        _916 = 0.0f;
        _917 = 0.0f;
      }
    } else {
      _915 = 0.0f;
      _916 = 0.0f;
      _917 = 0.0f;
    }
  } else {
    _915 = _899;
    _916 = _900;
    _917 = _901;
  }
  _927 = exp2(log2(_915 * 0.0001f) * 0.15930176f);
  _928 = exp2(log2(_916 * 0.0001f) * 0.15930176f);
  _929 = exp2(log2(_917 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_927 * 18.6875f) + 1.0f)) * ((_927 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_928 * 18.6875f) + 1.0f)) * ((_928 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_929 * 18.6875f) + 1.0f)) * ((_929 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _490;
  return SV_Target;
}
