struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _24;
  float _27;
  float _28;
  float _29;
  float _30;
  float _42;
  int _45;
  float _53;
  float _67;
  float _77;
  float _87;
  float _89;
  float _90;
  float _91;
  float _92;
  int _95;
  int _103;
  float4 _110;
  int _115;
  int _123;
  float4 _134;
  int _139;
  int _147;
  float4 _160;
  float _163;
  float _164;
  int _167;
  int _175;
  float4 _186;
  int _191;
  int _199;
  float4 _212;
  float _216;
  float _218;
  float _221;
  float _224;
  float _228;
  float _232;
  float _234;
  int _237;
  int _245;
  float4 _258;
  float _261;
  float _262;
  int _265;
  float _273;
  float _283;
  float _285;
  float _286;
  float _287;
  float _292;
  float _297;
  float _301;
  float _308;
  float _309;
  float _310;
  float _311;
  float _328;
  float _337;
  float _352;
  uint _353;
  float _367;
  float _572;
  float _573;
  float _574;
  float _667;
  float _668;
  float _669;
  float _723;
  float _724;
  float _725;
  float _741;
  float _742;
  float _743;
  float _773;
  float _774;
  float _775;
  float _789;
  float _790;
  float _791;
  bool _370;
  float _376;
  float _395;
  float _411;
  float _427;
  float _428;
  float _432;
  float _435;
  float _438;
  float _445;
  float _452;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _481;
  float _497;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _534;
  float _535;
  float _536;
  float _537;
  float _540;
  float _543;
  float _547;
  float _551;
  float _555;
  float _575;
  float _587;
  float _599;
  float _611;
  float _618;
  float _625;
  float _632;
  float _638;
  float _639;
  float _641;
  float _643;
  float _645;
  float _650;
  float _671;
  float _673;
  float _676;
  float _679;
  float _682;
  float _688;
  float _728;
  float _730;
  float _736;
  float _778;
  _24 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _27 = (TEXCOORD.x * 2.0f) + -1.0f;
  _28 = TEXCOORD.y * 2.0f;
  _29 = 1.0f - _28;
  _30 = max(1e-07f, _24.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _42 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _30, mad((_invViewProjRelative[3].y), _29, ((_invViewProjRelative[3].x) * _27)));
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._fogDepth);
  _67 = -0.0f - (((_invViewProjRelative[0].w) + mad((_invViewProjRelative[0].z), _30, mad((_invViewProjRelative[0].y), _29, ((_invViewProjRelative[0].x) * _27)))) / _42);
  _77 = -0.0f - ((mad((_invViewProjRelative[1].z), _30, mad((_invViewProjRelative[1].y), _29, ((_invViewProjRelative[1].x) * _27))) + (_invViewProjRelative[1].w)) / _42);
  _87 = -0.0f - ((mad((_invViewProjRelative[2].z), _30, mad((_invViewProjRelative[2].y), _29, ((_invViewProjRelative[2].x) * _27))) + (_invViewProjRelative[2].w)) / _42);
  _89 = rsqrt(dot(float3(_67, _77, _87), float3(_67, _77, _87)));  // [sem: invLength]
  _90 = _89 * _67;
  _91 = _89 * _77;
  _92 = _89 * _87;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_92, _90));
  _115 = WaveReadLaneFirst(_materialIndex);
  _123 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _134 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_123 < (uint)65000), _123, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_92, ((_time.x * 0.05f) + _91)));
  _139 = WaveReadLaneFirst(_materialIndex);
  _147 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_139 < (uint)170000), _139, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _160 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_147 < (uint)65000), _147, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_92 * 2.0f), ((_91 - (_time.x * 0.1f)) * 2.0f)));
  _163 = _160.x + _134.x;
  _164 = _160.y + _134.y;
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _186 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _91), _90));
  _191 = WaveReadLaneFirst(_materialIndex);
  _199 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_191 < (uint)170000), _191, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _212 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_199 < (uint)65000), _199, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _91) * 2.0f), (_90 * 2.0f)));
  _216 = abs(dot(float3(_90, _91, _92), float3(0.0f, 1.0f, 0.0f)));
  _218 = abs(dot(float3(_90, _91, _92), float3(0.0f, 0.0f, 1.0f)));
  _221 = (_216 * (_110.x - _163)) + _163;
  _224 = (_216 * (_110.y - _164)) + _164;
  _228 = (((_212.x + _186.x) - _221) * _218) + _221;
  _232 = (((_212.y + _186.y) - _224) * _218) + _224;
  _234 = saturate(_24.x * 35.0f);  // [sem: expr_sat]
  _237 = WaveReadLaneFirst(_materialIndex);
  _245 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_237 < (uint)170000), _237, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _258 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_245 < (uint)65000), _245, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _261 = TEXCOORD.x + -0.5f;
  _262 = TEXCOORD.y + -0.5f;
  _265 = WaveReadLaneFirst(_materialIndex);
  _273 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_265 < (uint)170000), _265, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._chromaticShiftValue);
  _283 = ((_273 * 0.01f) * sqrt((_262 * _262) + (_261 * _261))) * ((float)((uint)((uint)(_enableChromaticAberration))));
  _285 = rsqrt(dot(float2(_261, _262), float2(_261, _262)));  // [sem: invLength]
  _286 = _285 * _261;
  _287 = _285 * _262;
  _292 = ((lerp(_228, _258.x, _234)) * 4.0f) + -1.9921569f;
  _297 = ((lerp(_232, _258.y, _234)) * 4.0f) + -1.9921569f;
  _301 = 1.0f / max(0.001f, _exposure0.x);
  _308 = (1.0f - saturate((pow(_24.x, _53)) * 4.0f)) * _301;
  _309 = _308 * 0.080000006f;
  _310 = _308 * 0.089999996f;
  _311 = _308 * 0.11000001f;
  _328 = ((saturate(_309) * 0.06f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((TEXCOORD.x - (_283 * _292)) - (_283 * _286)), ((TEXCOORD.y - (_283 * _297)) - (_283 * _287)))))).x) - _309)) + _309;
  _337 = ((saturate(_310) * 0.06f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) - _310)) + _310;
  _352 = ((saturate(_311) * 0.06f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_286 + _292) * _283) + TEXCOORD.x), (((_287 + _297) * _283) + TEXCOORD.y))))).z) - _311)) + _311;
  _353 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _367 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _353, 0)))).x) & 127)))) + 0.5f);
  } else {
    _367 = _301;
  }
  _370 = (_localToneMappingParams.w > 0.0f);
  if (_370) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_328, _337, _352));
    _618 = _rndx_tonemapped_color.x;
    _625 = _rndx_tonemapped_color.y;
    _632 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _638 = 1.0f - abs(_etcParams.w);
      _639 = saturate(_etcParams.w);  // [sem: expr_sat]
      _641 = (_638 * _618) + _639;
      _643 = (_638 * _625) + _639;
      _645 = (_638 * _632) + _639;
      if (_colorGradingParams.w > 0.0f) {
        _650 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _667 = (((max(0.0f, (1.0f - _641)) - _641) * _650) + _641);
        _668 = (((max(0.0f, (1.0f - _643)) - _643) * _650) + _643);
        _669 = (((max(0.0f, (1.0f - _645)) - _645) * _650) + _645);
      } else {
        _667 = _641;
        _668 = _643;
        _669 = _645;
      }
      _671 = _userImageAdjust.y + 1.0f;
      _673 = _userImageAdjust.x + 0.5f;
      _676 = ((_667 + -0.5f) * _671) + _673;
      _679 = ((_668 + -0.5f) * _671) + _673;
      _682 = ((_669 + -0.5f) * _671) + _673;
      _688 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _723 = exp2(log2(saturate(mad(_colorBlind0.z, _682, mad(_colorBlind0.y, _679, (_colorBlind0.x * _676))))) * _688);
      _724 = exp2(log2(saturate(mad(_colorBlind1.z, _682, mad(_colorBlind1.y, _679, (_colorBlind1.x * _676))))) * _688);
      _725 = exp2(log2(saturate(mad(_colorBlind2.z, _682, mad(_colorBlind2.y, _679, (_colorBlind2.x * _676))))) * _688);
    } else {
      _723 = _618;
      _724 = _625;
      _725 = _632;
    }
  } else {
    _723 = _328;
    _724 = _337;
    _725 = _352;
  }
  if (_etcParams.y > 1.0f) {
    _728 = abs(_27);
    _730 = abs(_28 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _736 = saturate(1.0f - (dot(float2(_728, _730), float2(_728, _730)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _741 = (_736 * _723);
    _742 = (_736 * _724);
    _743 = (_736 * _725);
  } else {
    _741 = _723;
    _742 = _724;
    _743 = _725;
  }
  if (_370 && (_etcParams.z > 0.0f)) {
    _773 = select((_741 <= 0.0031308f), (_741 * 12.92f), (((pow(_741, 0.41666666f)) * 1.055f) + -0.055f));
    _774 = select((_742 <= 0.0031308f), (_742 * 12.92f), (((pow(_742, 0.41666666f)) * 1.055f) + -0.055f));
    _775 = select((_743 <= 0.0031308f), (_743 * 12.92f), (((pow(_743, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _773 = _741;
    _774 = _742;
    _775 = _743;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _778 = (float)((uint)((uint)(_353)));
    if (!(_778 < _viewDir.w)) {
      if (!(!(_778 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _789 = 0.0f;
        _790 = 0.0f;
        _791 = 0.0f;
      } else {
        _789 = _773;
        _790 = _774;
        _791 = _775;
      }
    } else {
      _789 = 0.0f;
      _790 = 0.0f;
      _791 = 0.0f;
    }
  } else {
    _789 = _773;
    _790 = _774;
    _791 = _775;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_789, _790, _791), _sunDirection.y, _moonDirection.y);
    _789 = _rndx_final_color.x;
    _790 = _rndx_final_color.y;
    _791 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _789;
  SV_Target.y = _790;
  SV_Target.z = _791;
  SV_Target.w = _367;
  return SV_Target;
}
