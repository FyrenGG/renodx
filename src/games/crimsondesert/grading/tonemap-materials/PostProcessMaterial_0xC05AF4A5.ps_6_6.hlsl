struct PostProcessChromaticRadialBlurStruct {
  float _ratio;
  float _start;
  float _offsetR;
  float _offsetG;
  float _offsetB;
  float _rangeR;
  float _rangeG;
  float _rangeB;
  float _centerX;
  float _centerY;
};

struct BindlessParameters_PostProcessChromaticRadialBlur {
  PostProcessChromaticRadialBlurStruct BindlessParameters_PostProcessChromaticRadialBlur;
};


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

typedef BindlessParameters_PostProcessChromaticRadialBlur BindlessParameters_PostProcessChromaticRadialBlur_t;
ConstantBuffer<BindlessParameters_PostProcessChromaticRadialBlur_t> BindlessParameters_PostProcessChromaticRadialBlur[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _17;
  float _25;
  int _28;
  float _36;
  int _39;
  float _47;
  int _50;
  float _58;
  int _61;
  float _69;
  int _72;
  float _80;
  int _83;
  float _91;
  int _94;
  float _102;
  int _105;
  float _113;
  int _116;
  float _124;
  float _125;
  float _126;
  float _143;
  float _145;
  float _146;
  float _147;
  int _148;
  float _261;
  float _466;
  float _467;
  float _468;
  float _561;
  float _562;
  float _563;
  float _621;
  float _622;
  float _623;
  float _642;
  float _643;
  float _644;
  float _674;
  float _675;
  float _676;
  float _690;
  float _691;
  float _692;
  float _150;
  float _153;
  float _156;
  float _159;
  float _160;
  float _161;
  float _176;
  float _186;
  float _201;
  float _211;
  float _226;
  float _236;
  int _237;
  uint _245;
  bool _264;
  float _270;
  float _289;
  float _305;
  float _321;
  float _322;
  float _326;
  float _329;
  float _332;
  float _339;
  float _346;
  float _353;
  float _354;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _375;
  float _391;
  float _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float _428;
  float _429;
  float _430;
  float _431;
  float _434;
  float _437;
  float _441;
  float _445;
  float _449;
  float _469;
  float _481;
  float _493;
  float _505;
  float _512;
  float _519;
  float _526;
  float _532;
  float _533;
  float _535;
  float _537;
  float _539;
  float _544;
  float _565;
  float _567;
  float _570;
  float _573;
  float _576;
  float _582;
  float _628;
  float _631;
  float _637;
  float _679;
  float _696;
  float _700;
  float _704;
  int __loop_jump_target = -1;
  _17 = WaveReadLaneFirst(_materialIndex);
  _25 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_17 < (uint)170000), _17, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._ratio);
  _28 = WaveReadLaneFirst(_materialIndex);
  _36 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_28 < (uint)170000), _28, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._start);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeR);
  _50 = WaveReadLaneFirst(_materialIndex);
  _58 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_50 < (uint)170000), _50, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeG);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeB);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetR);
  _83 = WaveReadLaneFirst(_materialIndex);
  _91 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetG);
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetB);
  _105 = WaveReadLaneFirst(_materialIndex);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_105 < (uint)170000), _105, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerX);
  _116 = WaveReadLaneFirst(_materialIndex);
  _124 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerY);
  _125 = TEXCOORD.x - _113;
  _126 = TEXCOORD.y - _124;
  _143 = (((float)((uint)((uint)(_enableChromaticAberration)))) * _25) * saturate(((sqrt((_126 * _126) + (_125 * _125)) * 2.0f) - (_36 * 1.4142135f)) / max(0.001f, ((1.0f - _36) * 1.4142135f)));
  _145 = 0.0f;
  _146 = 0.0f;
  _147 = 0.0f;
  _148 = 0;
  while(true) {
    _150 = ((float)((int)(_148))) * 0.25f;
    _153 = (_150 * _47) + (1.0f - _80);
    _156 = (_150 * _58) + (1.0f - _91);
    _159 = (_150 * _69) + (1.0f - _102);
    _160 = _113 - TEXCOORD.x;
    _161 = _124 - TEXCOORD.y;
    _176 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_153 * _125) + _160) * _143) + TEXCOORD.x), ((((_153 * _126) + _161) * _143) + TEXCOORD.y))))).x) * 0.012683313f);
    _186 = (exp2(log2(max(0.0f, (_176 + -0.8359375f)) / (18.851562f - (_176 * 18.6875f))) * 6.277395f) * 10000.0f) + _145;
    _201 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_156 * _125) + _160) * _143) + TEXCOORD.x), ((((_156 * _126) + _161) * _143) + TEXCOORD.y))))).y) * 0.012683313f);
    _211 = (exp2(log2(max(0.0f, (_201 + -0.8359375f)) / (18.851562f - (_201 * 18.6875f))) * 6.277395f) * 10000.0f) + _146;
    _226 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_159 * _125) + _160) * _143) + TEXCOORD.x), ((((_159 * _126) + _161) * _143) + TEXCOORD.y))))).z) * 0.012683313f);
    _236 = (exp2(log2(max(0.0f, (_226 + -0.8359375f)) / (18.851562f - (_226 * 18.6875f))) * 6.277395f) * 10000.0f) + _147;
    _237 = (int)(_148) + (int)(1);
    if (!(_237 == 5)) {
      _145 = _186;
      _146 = _211;
      _147 = _236;
      _148 = _237;
      continue;
    }
    _245 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _261 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _245, 0)))).x) & 127)))) + 0.5f);
    } else {
      _261 = _postProcessParams.x;
    }
    _264 = (_localToneMappingParams.w > 0.0f);
    if (_264) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_186, _211, _236));
      _512 = _rndx_tonemapped_color.x;
      _519 = _rndx_tonemapped_color.y;
      _526 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _532 = 1.0f - abs(_etcParams.w);
        _533 = saturate(_etcParams.w);  // [sem: expr_sat]
        _535 = (_532 * _512) + _533;
        _537 = (_532 * _519) + _533;
        _539 = (_532 * _526) + _533;
        if (_colorGradingParams.w > 0.0f) {
          _544 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _561 = (((max(0.0f, (1.0f - _535)) - _535) * _544) + _535);
          _562 = (((max(0.0f, (1.0f - _537)) - _537) * _544) + _537);
          _563 = (((max(0.0f, (1.0f - _539)) - _539) * _544) + _539);
        } else {
          _561 = _535;
          _562 = _537;
          _563 = _539;
        }
        _565 = _userImageAdjust.y + 1.0f;
        _567 = _userImageAdjust.x + 0.5f;
        _570 = ((_561 + -0.5f) * _565) + _567;
        _573 = ((_562 + -0.5f) * _565) + _567;
        _576 = ((_563 + -0.5f) * _565) + _567;
        _582 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _621 = exp2(log2(saturate(mad(_colorBlind0.z, _576, mad(_colorBlind0.y, _573, (_colorBlind0.x * _570))))) * _582);
        _622 = exp2(log2(saturate(mad(_colorBlind1.z, _576, mad(_colorBlind1.y, _573, (_colorBlind1.x * _570))))) * _582);
        _623 = exp2(log2(saturate(mad(_colorBlind2.z, _576, mad(_colorBlind2.y, _573, (_colorBlind2.x * _570))))) * _582);
      } else {
        _621 = _512;
        _622 = _519;
        _623 = _526;
      }
    } else {
      _621 = (_186 * 0.2f);
      _622 = (_211 * 0.2f);
      _623 = (_236 * 0.2f);
    }
    if (_etcParams.y > 1.0f) {
      _628 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _631 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _637 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_628, _631), float2(_628, _631))));  // [sem: expr_sat]
      _642 = (_637 * _621);
      _643 = (_637 * _622);
      _644 = (_637 * _623);
    } else {
      _642 = _621;
      _643 = _622;
      _644 = _623;
    }
    if (_264 && (_etcParams.z > 0.0f)) {
      _674 = select((_642 <= 0.0031308f), (_642 * 12.92f), (((pow(_642, 0.41666666f)) * 1.055f) + -0.055f));
      _675 = select((_643 <= 0.0031308f), (_643 * 12.92f), (((pow(_643, 0.41666666f)) * 1.055f) + -0.055f));
      _676 = select((_644 <= 0.0031308f), (_644 * 12.92f), (((pow(_644, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _674 = _642;
      _675 = _643;
      _676 = _644;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _679 = (float)((uint)((uint)(_245)));
      if (!(_679 < _viewDir.w)) {
        if (!(!(_679 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _690 = 0.0f;
          _691 = 0.0f;
          _692 = 0.0f;
        } else {
          _690 = _674;
          _691 = _675;
          _692 = _676;
        }
      } else {
        _690 = 0.0f;
        _691 = 0.0f;
        _692 = 0.0f;
      }
    } else {
      _690 = _674;
      _691 = _675;
      _692 = _676;
    }
    _696 = exp2(log2(_690 * 0.0001f) * 0.15930176f);
    _700 = exp2(log2(_691 * 0.0001f) * 0.15930176f);
    _704 = exp2(log2(_692 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_696 * 18.6875f) + 1.0f)) * ((_696 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_700 * 18.6875f) + 1.0f)) * ((_700 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_704 * 18.6875f) + 1.0f)) * ((_704 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _261;
    break;
  }
  return SV_Target;
}
