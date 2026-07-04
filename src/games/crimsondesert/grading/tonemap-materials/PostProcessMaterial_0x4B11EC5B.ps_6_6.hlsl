struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

#if 0 // Provided by tonemap.hlsli
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
#endif

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _targetFocusPosition : packoffset(c002.x);
  float _hpPercentage : packoffset(c002.w);
  uint _skinnedMeshNoiseTexture : packoffset(c003.x);
  float _highLightForVision : packoffset(c003.y);
  float _highLightForVisionRemoteCatch : packoffset(c003.z);
  float _characterHighlight : packoffset(c003.w);
  uint _specialModeType : packoffset(c004.x);
  float _visionRadius : packoffset(c004.y);
  float _interactionTime : packoffset(c004.z);
  float3 _questGuideWorldPosition : packoffset(c005.x);
  float3 _detectModeUp : packoffset(c006.x);
  float3 _detectModeLook : packoffset(c007.x);
  float3 _detectModePosition : packoffset(c008.x);
  float2 _detectModeLightProfileOffset : packoffset(c009.x);
  uint _detectModeLightProfileIndex : packoffset(c009.z);
  float _detectModeAngle : packoffset(c009.w);
  float _detectModeRadius : packoffset(c010.x);
  uint _useHatMode : packoffset(c010.y);
  uint4 _oreVeinBitMask : packoffset(c011.x);
  uint _oreVeinDissolveIndex : packoffset(c012.x);
  float _oreVeinDissolveRatio : packoffset(c012.y);
  float _hideStateRatio : packoffset(c012.z);
  float3 _hazardAlertPosition : packoffset(c013.x);
  float _wantedRegionRatio : packoffset(c013.w);
  float _wantedRegionOpacity : packoffset(c014.x);
  float _wantedRegionRadius : packoffset(c014.y);
  float3 _wantedRegionPosition : packoffset(c015.x);
  float _elementActivateDuration : packoffset(c015.w);
  float _temperatureWarning : packoffset(c016.x);
  float _electrocutionWarning : packoffset(c016.y);
  float _fleeCount : packoffset(c016.z);
  float _followLearning : packoffset(c016.w);
  float4 _enemyAlert1 : packoffset(c017.x);
  float4 _enemyAlert2 : packoffset(c018.x);
  float _pullingEffectAttractionOffRadius : packoffset(c019.x);
  float _pullingEffectPushFromCharacter : packoffset(c019.y);
  float _pullingEffectPushScale : packoffset(c019.z);
  float _pullingEffectAttractionScale : packoffset(c019.w);
  float _pullingEffectExternalScale : packoffset(c020.x);
  float _pullingEffectVectorFieldScale : packoffset(c020.y);
  float _pullingEffectHeightOffset : packoffset(c020.z);
  float _housingPreviewState : packoffset(c020.w);
  float _customEffectOpacity : packoffset(c021.x);
  uint _renderPassInteraction : packoffset(c021.y);
  uint _renderPassSelfPlayer : packoffset(c021.z);
  uint _renderPassEnemy : packoffset(c021.w);
  uint _renderPassTargetFocus : packoffset(c022.x);
  uint _renderPassLearning : packoffset(c022.y);
  uint _renderPassTest : packoffset(c022.z);
  uint _enableChromaticAberration : packoffset(c022.w);
  uint _renderPassDetectObjective : packoffset(c023.x);
  uint _renderPassDetectItem : packoffset(c023.y);
  uint _renderPassDetectGimmick : packoffset(c023.z);
  uint _renderPassDetectRemoteCatch : packoffset(c023.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c024.x);
  uint _renderPassDetectLift : packoffset(c024.y);
  uint _renderPassKnowledgeNPC : packoffset(c024.z);
  uint _renderPassKnowledgeGain : packoffset(c024.w);
  uint _renderPassAnamorphicMural : packoffset(c025.x);
  uint _renderPassMemoryBackground : packoffset(c025.y);
  uint _renderPassMemory : packoffset(c025.z);
  uint _renderPassEnemyBoss : packoffset(c025.w);
  uint _renderPassAimHighlight : packoffset(c026.x);
  float4 _aimHighlightPosition : packoffset(c027.x);
  uint _renderPassNPCGhost : packoffset(c028.x);
  uint _renderPassHousing : packoffset(c028.y);
  uint _characterMeshEffectType : packoffset(c028.z);
};

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
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
  float _26;
  float _29;
  float _30;
  float _31;
  float _32;
  float _68;
  int _72;
  float _80;
  float _87;
  float _88;
  float _89;
  float _91;
  float _92;
  float _93;
  float _94;
  int _95;
  int _103;
  float4 _110;
  int _117;
  int _125;
  float4 _132;
  int _141;
  int _149;
  float4 _156;
  float _159;
  float _160;
  int _165;
  int _173;
  float4 _180;
  int _189;
  int _197;
  float4 _204;
  float _210;
  float _212;
  float _217;
  float _218;
  float _223;
  float _224;
  float _226;
  int _233;
  int _241;
  float4 _248;
  float _257;
  float _258;
  int _266;
  float _274;
  float _277;
  float _279;
  float _280;
  float _281;
  float _285;
  float _287;
  float _306;
  float _320;
  float _334;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _364;
  float _365;
  float _366;
  uint _367;
  float _381;
  float _584;
  float _585;
  float _586;
  float _679;
  float _680;
  float _681;
  float _735;
  float _736;
  float _737;
  float _753;
  float _754;
  float _755;
  float _785;
  float _786;
  float _787;
  float _801;
  float _802;
  float _803;
  bool _384;
  float _388;
  float _437;
  float _438;
  float _439;
  float _441;
  float _448;
  float _449;
  float _450;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _528;
  float _529;
  float _546;
  float _547;
  float _548;
  float _549;
  float _555;
  float _558;
  float _565;
  float _566;
  float _567;
  float _596;
  float _621;
  float _622;
  float _623;
  float _642;
  float _643;
  float _644;
  float _650;
  float _654;
  float _655;
  float _656;
  float _657;
  float _662;
  float _687;
  float _691;
  float _692;
  float _693;
  float _694;
  float _724;
  float _743;
  float _744;
  float _748;
  float _792;
  float _813;
  float _814;
  float _815;
  _26 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _29 = (TEXCOORD.x * 2.0f) + -1.0f;
  _30 = TEXCOORD.y * 2.0f;
  _31 = 1.0f - _30;
  _32 = max(1.0000000116860974e-07f, _26.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _68 = mad((_invViewProjRelative[2].w), _32, mad((_invViewProjRelative[1].w), _31, ((_invViewProjRelative[0].w) * _29))) + (_invViewProjRelative[3].w);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_72 < (uint)170000), _72, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._fogDepth);
  _87 = -0.0f - ((mad((_invViewProjRelative[2].x), _32, mad((_invViewProjRelative[1].x), _31, ((_invViewProjRelative[0].x) * _29))) + (_invViewProjRelative[3].x)) / _68);
  _88 = -0.0f - ((mad((_invViewProjRelative[2].y), _32, mad((_invViewProjRelative[1].y), _31, ((_invViewProjRelative[0].y) * _29))) + (_invViewProjRelative[3].y)) / _68);
  _89 = -0.0f - ((mad((_invViewProjRelative[2].z), _32, mad((_invViewProjRelative[1].z), _31, ((_invViewProjRelative[0].z) * _29))) + (_invViewProjRelative[3].z)) / _68);
  _91 = rsqrt(dot(float3(_87, _88, _89), float3(_87, _88, _89)));  // [sem: invLength]
  _92 = _91 * _87;
  _93 = _91 * _88;
  _94 = _91 * _89;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_95 < (uint)170000), _95, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_103 < (uint)65000), _103, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, _92));
  _117 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_117 < (uint)170000), _117, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _132 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_125 < (uint)65000), _125, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, ((_time.x * 0.05000000074505806f) + _93)));
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_141 < (uint)170000), _141, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _156 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_149 < (uint)65000), _149, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_94 * 2.0f), ((_93 - (_time.x * 0.10000000149011612f)) * 2.0f)));
  _159 = _156.x + _132.x;
  _160 = _156.y + _132.y;
  _165 = WaveReadLaneFirst(_materialIndex);
  _173 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_165 < (uint)170000), _165, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _180 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_173 < (uint)65000), _173, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.12999999523162842f) + _93), _92));
  _189 = WaveReadLaneFirst(_materialIndex);
  _197 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_189 < (uint)170000), _189, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _204 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_197 < (uint)65000), _197, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.10000000149011612f) + _93) * 2.0f), (_92 * 2.0f)));
  _210 = abs(dot(float3(_92, _93, _94), float3(0.0f, 1.0f, 0.0f)));
  _212 = abs(dot(float3(_92, _93, _94), float3(0.0f, 0.0f, 1.0f)));
  _217 = (_210 * (_110.x - _159)) + _159;
  _218 = (_210 * (_110.y - _160)) + _160;
  _223 = (((_204.x + _180.x) - _217) * _212) + _217;
  _224 = (((_204.y + _180.y) - _218) * _212) + _218;
  _226 = saturate(_26.x * 35.0f);  // [sem: expr_sat]
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_233 < (uint)170000), _233, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _248 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_241 < (uint)65000), _241, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.009999999776482582f)), ((_time.x * 0.10000000149011612f) + TEXCOORD.y)));
  _257 = TEXCOORD.x + -0.5f;
  _258 = TEXCOORD.y + -0.5f;
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_266 < (uint)170000), _266, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._chromaticShiftValue);
  _277 = ((sqrt((_258 * _258) + (_257 * _257)) * 0.009999999776482582f) * ((float)((uint)(uint)(_enableChromaticAberration)))) * _274;
  _279 = rsqrt(dot(float2(_257, _258), float2(_257, _258)));  // [sem: invLength]
  _280 = _279 * _257;
  _281 = _279 * _258;
  _285 = ((lerp(_223, _248.x, _226)) * 4.0f) + -1.9921568632125854f;
  _287 = ((lerp(_224, _248.y, _226)) * 4.0f) + -1.9921568632125854f;
  _306 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((TEXCOORD.x - (_277 * _285)) - (_280 * _277)), ((TEXCOORD.y - (_277 * _287)) - (_281 * _277)))))).x) * 0.012683313339948654f);
  _320 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) * 0.012683313339948654f);
  _334 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_280 + _285) * _277) + TEXCOORD.x), (((_281 + _287) * _277) + TEXCOORD.y))))).z) * 0.012683313339948654f);
  _347 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
  _348 = _347 * (1.0f - saturate((pow(_26.x, _80)) * 4.0f));
  _349 = _348 * 0.08000000566244125f;
  _350 = _348 * 0.08999999612569809f;
  _351 = _348 * 0.11000000685453415f;
  _364 = ((saturate(_349) * 0.05999999865889549f) * ((exp2(log2(max(0.0f, (_306 + -0.8359375f)) / (18.8515625f - (_306 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _349)) + _349;
  _365 = ((saturate(_350) * 0.05999999865889549f) * ((exp2(log2(max(0.0f, (_320 + -0.8359375f)) / (18.8515625f - (_320 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _350)) + _350;
  _366 = ((((exp2(log2(max(0.0f, (_334 + -0.8359375f)) / (18.8515625f - (_334 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _351) * 0.05999999865889549f) * saturate(_351)) + _351;
  _367 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _381 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _367, 0)))).x) & 127)))) + 0.5f);
  } else {
    _381 = _347;
  }
  _384 = (_localToneMappingParams.w > 0.0f);
  if (_384) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_364, _365, _366));
    _642 = _rndx_tonemapped_color.x;
    _643 = _rndx_tonemapped_color.y;
    _644 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _650 = 1.0f - abs(_etcParams.w);
      _654 = saturate(_etcParams.w);  // [sem: expr_sat]
      _655 = (_650 * _642) + _654;
      _656 = (_650 * _643) + _654;
      _657 = (_650 * _644) + _654;
      if (_colorGradingParams.w > 0.0f) {
        _662 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _679 = (((max(0.0f, (1.0f - _655)) - _655) * _662) + _655);
        _680 = (((max(0.0f, (1.0f - _656)) - _656) * _662) + _656);
        _681 = (((max(0.0f, (1.0f - _657)) - _657) * _662) + _657);
      } else {
        _679 = _655;
        _680 = _656;
        _681 = _657;
      }
      _687 = _userImageAdjust.y + 1.0f;
      _691 = _userImageAdjust.x + 0.5f;
      _692 = ((_679 + -0.5f) * _687) + _691;
      _693 = ((_680 + -0.5f) * _687) + _691;
      _694 = ((_681 + -0.5f) * _687) + _691;
      _724 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _735 = exp2(log2(saturate(mad(_colorBlind0.z, _694, mad(_colorBlind0.y, _693, (_colorBlind0.x * _692))))) * _724);
      _736 = exp2(log2(saturate(mad(_colorBlind1.z, _694, mad(_colorBlind1.y, _693, (_colorBlind1.x * _692))))) * _724);
      _737 = exp2(log2(saturate(mad(_colorBlind2.z, _694, mad(_colorBlind2.y, _693, (_colorBlind2.x * _692))))) * _724);
    } else {
      _735 = _642;
      _736 = _643;
      _737 = _644;
    }
  } else {
    _735 = _364;
    _736 = _365;
    _737 = _366;
  }
  if (_etcParams.y > 1.0f) {
    _743 = abs(_29);
    _744 = abs(_30 + -1.0f);
    _748 = saturate(1.0f - (dot(float2(_743, _744), float2(_743, _744)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _753 = (_748 * _735);
    _754 = (_748 * _736);
    _755 = (_748 * _737);
  } else {
    _753 = _735;
    _754 = _736;
    _755 = _737;
  }
  if (_384 && (_etcParams.z > 0.0f)) {
    _785 = select((_753 <= 0.0031308000907301903f), (_753 * 12.920000076293945f), (((pow(_753, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _786 = select((_754 <= 0.0031308000907301903f), (_754 * 12.920000076293945f), (((pow(_754, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _787 = select((_755 <= 0.0031308000907301903f), (_755 * 12.920000076293945f), (((pow(_755, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _785 = _753;
    _786 = _754;
    _787 = _755;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _792 = (float)((uint)_367);
    if (!(_792 < _viewDir.w)) {
      if (!(_792 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _801 = _785;
        _802 = _786;
        _803 = _787;
      } else {
        _801 = 0.0f;
        _802 = 0.0f;
        _803 = 0.0f;
      }
    } else {
      _801 = 0.0f;
      _802 = 0.0f;
      _803 = 0.0f;
    }
  } else {
    _801 = _785;
    _802 = _786;
    _803 = _787;
  }
  _813 = exp2(log2(_801 * 9.999999747378752e-05f) * 0.1593017578125f);
  _814 = exp2(log2(_802 * 9.999999747378752e-05f) * 0.1593017578125f);
  _815 = exp2(log2(_803 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_813 * 18.6875f) + 1.0f)) * ((_813 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_814 * 18.6875f) + 1.0f)) * ((_814 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_815 * 18.6875f) + 1.0f)) * ((_815 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _381;
  return SV_Target;
}
