struct PostProcessInteraction_CDStruct {
  uint _lineTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

struct BindlessParameters_PostProcessInteraction_CD {
  PostProcessInteraction_CDStruct BindlessParameters_PostProcessInteraction_CD;
};

typedef BindlessParameters_PostProcessInteraction_CD BindlessParameters_PostProcessInteraction_CD_t;
ConstantBuffer<BindlessParameters_PostProcessInteraction_CD_t> BindlessParameters_PostProcessInteraction_CD[] : register(b0, space100);

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
  uint2 _28;
  int _45;
  float4 _48;
  float _103;
  float _104;
  float _523;
  float _524;
  float _525;
  float _539;
  float _744;
  float _745;
  float _746;
  float _839;
  float _840;
  float _841;
  float _895;
  float _896;
  float _897;
  float _916;
  float _917;
  float _918;
  float _948;
  float _949;
  float _950;
  float _964;
  float _965;
  float _966;
  int _61;
  int _69;
  int _120;
  float4 _122;
  float _124;
  float _125;
  float _131;
  float _133;
  float _134;
  float _170;
  float _174;
  float _180;
  float _181;
  float _197;
  float _201;
  float _202;
  int _205;
  float _210;
  float _212;
  float _213;
  float _214;
  float _218;
  float _222;
  float _226;
  float _229;
  float _233;
  float _239;
  float _240;
  float _252;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _264;
  float _267;
  float _270;
  float _272;
  float _273;
  float _274;
  float _275;
  float _284;
  float _300;
  float _304;
  float _307;
  float _315;
  float _316;
  float _322;
  float _324;
  float _330;
  float _331;
  float _332;
  float _333;
  float _334;
  float _339;
  float _340;
  float _341;
  float _349;
  uint _377;
  uint _378;
  uint4 _380;
  float4 _383;
  float _401;
  float _402;
  float _403;
  float _405;
  float _406;
  float _407;
  float _408;
  float _411;
  float _412;
  float _415;
  float _416;
  float _420;
  float _422;
  float _423;
  float _424;
  float _425;
  float _427;
  float _430;
  float _431;
  float _432;
  float _433;
  float _442;
  float _446;
  float _450;
  float _452;
  float _453;
  float _454;
  float _455;
  float _464;
  float _481;
  float _488;
  float _491;
  float _507;
  float _508;
  float _515;
  uint _526;
  bool _542;
  float _548;
  float _597;
  float _598;
  float _599;
  float _601;
  float _608;
  float _609;
  float _610;
  float _629;
  float _630;
  float _631;
  float _632;
  float _633;
  float _634;
  float _635;
  float _636;
  float _637;
  float _683;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _706;
  float _707;
  float _708;
  float _709;
  float _715;
  float _718;
  float _725;
  float _726;
  float _727;
  float _756;
  float _781;
  float _782;
  float _783;
  float _802;
  float _803;
  float _804;
  float _810;
  float _814;
  float _815;
  float _816;
  float _817;
  float _822;
  float _847;
  float _851;
  float _852;
  float _853;
  float _854;
  float _884;
  float _906;
  float _907;
  float _911;
  float _955;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  _45 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
  _48 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_45 == _renderPassInteraction) {
    _61 = WaveReadLaneFirst(_materialIndex);
    _69 = WaveReadLaneFirst(BindlessParameters_PostProcessInteraction_CD[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessInteraction_CD._lineTex);
    _103 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_69 < (uint)65000), _69, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 50.0f), (TEXCOORD.y * 50.0f))))).x);
    // [sem: expr_sat]
    _104 = saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))));
  } else {
    _103 = 0.0f;
    _104 = 0.0f;  // [sem: expr_sat]
  }
  if (_45 == _renderPassInteraction) {
    _120 = (int)(_customRenderPassSizeInvSize.y * TEXCOORD.y);
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _122 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * (TEXCOORD.x - (0.1f / _srcTargetSizeAndInv.x)))), _120, 0));
    _124 = 2.2f / _srcTargetSizeAndInv.x;
    _125 = TEXCOORD.x - _124;
    _131 = (_125 * 2.0f) + -1.0f;
    _133 = 1.0f - (TEXCOORD.y * 2.0f);
    _134 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_125 * _customRenderPassSizeInvSize.x)), _120, 0)))).x));
    _170 = mad((_invViewProj[3].z), _134, mad((_invViewProj[3].y), _133, ((_invViewProj[3].x) * _131))) + (_invViewProj[3].w);
    _174 = _124 + TEXCOORD.x;
    _180 = (_174 * 2.0f) + -1.0f;
    _181 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_174 * _customRenderPassSizeInvSize.x)), _120, 0)))).x));
    _197 = mad((_invViewProj[3].z), _181, mad((_invViewProj[3].y), _133, ((_invViewProj[3].x) * _180))) + (_invViewProj[3].w);
    _201 = 2.2f / _srcTargetSizeAndInv.y;
    _202 = TEXCOORD.y - _201;
    _205 = (int)(_customRenderPassSizeInvSize.x * TEXCOORD.x);
    _210 = (TEXCOORD.x * 2.0f) + -1.0f;
    _212 = 1.0f - (_202 * 2.0f);
    _213 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_205, ((int)(_202 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _214 = (_invViewProj[0].x) * _210;
    _218 = (_invViewProj[1].x) * _210;
    _222 = (_invViewProj[2].x) * _210;
    _226 = (_invViewProj[3].x) * _210;
    _229 = mad((_invViewProj[3].z), _213, mad((_invViewProj[3].y), _212, _226)) + (_invViewProj[3].w);
    _233 = _201 + TEXCOORD.y;
    _239 = 1.0f - (_233 * 2.0f);
    _240 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_205, ((int)(_233 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _252 = mad((_invViewProj[3].z), _240, mad((_invViewProj[3].y), _239, _226)) + (_invViewProj[3].w);
    _256 = ((mad((_invViewProj[0].z), _240, mad((_invViewProj[0].y), _239, _214)) + (_invViewProj[0].w)) / _252) - ((mad((_invViewProj[0].z), _213, mad((_invViewProj[0].y), _212, _214)) + (_invViewProj[0].w)) / _229);
    _257 = ((mad((_invViewProj[1].z), _240, mad((_invViewProj[1].y), _239, _218)) + (_invViewProj[1].w)) / _252) - ((mad((_invViewProj[1].z), _213, mad((_invViewProj[1].y), _212, _218)) + (_invViewProj[1].w)) / _229);
    _258 = ((mad((_invViewProj[2].z), _240, mad((_invViewProj[2].y), _239, _222)) + (_invViewProj[2].w)) / _252) - ((mad((_invViewProj[2].z), _213, mad((_invViewProj[2].y), _212, _222)) + (_invViewProj[2].w)) / _229);
    _259 = ((mad((_invViewProj[0].z), _181, mad((_invViewProj[0].y), _133, ((_invViewProj[0].x) * _180))) + (_invViewProj[0].w)) / _197) - ((mad((_invViewProj[0].z), _134, mad((_invViewProj[0].y), _133, ((_invViewProj[0].x) * _131))) + (_invViewProj[0].w)) / _170);
    _260 = ((mad((_invViewProj[1].z), _181, mad((_invViewProj[1].y), _133, ((_invViewProj[1].x) * _180))) + (_invViewProj[1].w)) / _197) - ((mad((_invViewProj[1].z), _134, mad((_invViewProj[1].y), _133, ((_invViewProj[1].x) * _131))) + (_invViewProj[1].w)) / _170);
    _261 = ((mad((_invViewProj[2].z), _181, mad((_invViewProj[2].y), _133, ((_invViewProj[2].x) * _180))) + (_invViewProj[2].w)) / _197) - ((mad((_invViewProj[2].z), _134, mad((_invViewProj[2].y), _133, ((_invViewProj[2].x) * _131))) + (_invViewProj[2].w)) / _170);
    _264 = (_258 * _260) - (_257 * _261);
    _267 = (_256 * _261) - (_258 * _259);
    _270 = (_257 * _259) - (_256 * _260);
    _272 = rsqrt(dot(float3(_264, _267, _270), float3(_264, _267, _270)));  // [sem: invLength]
    _273 = _264 * _272;
    _274 = _267 * _272;
    _275 = _270 * _272;
    // [sem: expr_sat]
    _284 = saturate(dot(float3(_273, _274, _275), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _300 = frac(_time.x * 0.4f);
    _304 = abs((1.999f - _284) - (_300 * 2.5f));
    _307 = saturate(1.0f - (_304 * 5.0f));  // [sem: expr_sat]
    // [sem: expr_sat]
    _315 = saturate((saturate(((2.0f - _284) * _103) + exp2(log2(1.0f - _284) * 4.0f)) * _122.x) * (_307 - (_307 * _300)));
    _316 = _315 * _104;
    _322 = _122.x * 50.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    _324 = saturate(_322 * _322);  // [sem: expr_sat]
    _330 = saturate(1.0f - (_304 * 1.25f)) * _324;
    _331 = _330 * 0.002f;
    _332 = _331 * _48.x;
    _333 = _331 * _48.y;
    _334 = _331 * _48.z;
    _339 = (_exposure2.x * 5000.0f) * (lerp(_316, _315, 2.0f));
    _340 = (_324 - (_324 * _104)) * _exposure2.x;
    _341 = _340 * 2.0f;
    _349 = (_340 * 8.0f) * saturate(exp2(log2(1.0f - abs(dot(float3(_273, _274, _275), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f));
    _523 = (((((_339 + _48.x) - (_330 * _48.x)) + _332) + _349) + ((1.0f - _332) * _341));
    _524 = (((((_339 + _48.y) - (_330 * _48.y)) + _333) + _349) + ((1.0f - _333) * _341));
    _525 = (((((_48.z - (_330 * _48.z)) + _339) + _334) + _349) + ((1.0f - _334) * _341));
  } else {
    if (_45 == _renderPassDetectObjective) {
      _377 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _378 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _380 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_377, _378, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _383 = __3__36__0__0__g_gbufferNormal.Load(int3(_377, _378, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _401 = (saturate(_383.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _402 = (saturate(_383.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _403 = (saturate(_383.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _405 = rsqrt(dot(float3(_401, _402, _403), float3(_401, _402, _403)));  // [sem: invLength]
      _406 = _405 * _401;
      _407 = _405 * _402;
      _408 = _403 * _405;
      _411 = (((float)((uint)((uint)(((uint)((uint)(_380.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _412 = (((float)((uint)((uint)(_380.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _415 = (_411 + _412) * 0.5f;
      _416 = (_411 - _412) * 0.5f;
      _420 = (1.0f - abs(_415)) - abs(_416);
      _422 = rsqrt(dot(float3(_415, _416, _420), float3(_415, _416, _420)));  // [sem: invLength]
      _423 = _422 * _415;
      _424 = _422 * _416;
      _425 = _422 * _420;
      _427 = select((_408 >= 0.0f), 1.0f, -1.0f);
      _430 = -0.0f - (1.0f / (_427 + _408));
      _431 = _407 * _430;
      _432 = _431 * _406;
      _433 = _427 * _406;
      _442 = mad(_425, _406, mad(_424, _432, ((((_433 * _406) * _430) + 1.0f) * _423)));
      _446 = mad(_425, _407, mad(_424, (_427 + (_431 * _407)), ((_423 * _427) * _432)));
      _450 = mad(_425, _408, mad(_424, (-0.0f - _407), (-0.0f - (_433 * _423))));
      _452 = rsqrt(dot(float3(_442, _446, _450), float3(_442, _446, _450)));  // [sem: invLength]
      _453 = _452 * _442;
      _454 = _452 * _446;
      _455 = _452 * _450;
      // [sem: expr_sat]
      _464 = saturate(dot(float3(_453, _454, _455), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _481 = _time.x - _interactionTime;
      _488 = abs((1.999f - _464) - ((pow(_481, 0.5f)) * 2.25f));
      _491 = saturate(1.0f - (_488 * 40.0f));  // [sem: expr_sat]
      _507 = (saturate(exp2(log2(1.0f - abs(dot(float3(_453, _454, _455), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 0.8f)) * _104) * saturate(1.0f - (_488 * 3.3333333f));
      _508 = _exposure2.x * 25.0f;
      _515 = _508 * saturate((saturate(((2.0f - _464) * _103) + exp2(log2(1.0f - _464) * 4.0f)) * _104) * (_491 - ((_481 * 0.9f) * _491)));
      _523 = ((_515 + _48.x) + ((_508 - _48.x) * _507));
      _524 = ((_515 + _48.y) + ((_508 - _48.y) * _507));
      _525 = ((_515 + _48.z) + ((_508 - _48.z) * _507));
    } else {
      _523 = _48.x;
      _524 = _48.y;
      _525 = _48.z;
    }
  }
  _526 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _539 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _526, 0)))).x) & 127)))) + 0.5f);
  } else {
    _539 = 1.0f;
  }
  _542 = (_localToneMappingParams.w > 0.0f);
  if (_542) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_523, _524, _525));
    _802 = _rndx_tonemapped_color.x;
    _803 = _rndx_tonemapped_color.y;
    _804 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _810 = 1.0f - abs(_etcParams.w);
      _814 = saturate(_etcParams.w);  // [sem: expr_sat]
      _815 = (_810 * _802) + _814;
      _816 = (_810 * _803) + _814;
      _817 = (_810 * _804) + _814;
      if (_colorGradingParams.w > 0.0f) {
        _822 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _839 = (((max(0.0f, (1.0f - _815)) - _815) * _822) + _815);
        _840 = (((max(0.0f, (1.0f - _816)) - _816) * _822) + _816);
        _841 = (((max(0.0f, (1.0f - _817)) - _817) * _822) + _817);
      } else {
        _839 = _815;
        _840 = _816;
        _841 = _817;
      }
      _847 = _userImageAdjust.y + 1.0f;
      _851 = _userImageAdjust.x + 0.5f;
      _852 = ((_839 + -0.5f) * _847) + _851;
      _853 = ((_840 + -0.5f) * _847) + _851;
      _854 = ((_841 + -0.5f) * _847) + _851;
      _884 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _895 = exp2(log2(saturate(mad(_colorBlind0.z, _854, mad(_colorBlind0.y, _853, (_colorBlind0.x * _852))))) * _884);
      _896 = exp2(log2(saturate(mad(_colorBlind1.z, _854, mad(_colorBlind1.y, _853, (_colorBlind1.x * _852))))) * _884);
      _897 = exp2(log2(saturate(mad(_colorBlind2.z, _854, mad(_colorBlind2.y, _853, (_colorBlind2.x * _852))))) * _884);
    } else {
      _895 = _802;
      _896 = _803;
      _897 = _804;
    }
  } else {
    _895 = _523;
    _896 = _524;
    _897 = _525;
  }
  if (_etcParams.y > 1.0f) {
    _906 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _907 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _911 = saturate(1.0f - (dot(float2(_906, _907), float2(_906, _907)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _916 = (_911 * _895);
    _917 = (_911 * _896);
    _918 = (_911 * _897);
  } else {
    _916 = _895;
    _917 = _896;
    _918 = _897;
  }
  if (_542 && (_etcParams.z > 0.0f)) {
    _948 = select((_916 <= 0.0031308f), (_916 * 12.92f), (((pow(_916, 0.41666666f)) * 1.055f) + -0.055f));
    _949 = select((_917 <= 0.0031308f), (_917 * 12.92f), (((pow(_917, 0.41666666f)) * 1.055f) + -0.055f));
    _950 = select((_918 <= 0.0031308f), (_918 * 12.92f), (((pow(_918, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _948 = _916;
    _949 = _917;
    _950 = _918;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _955 = (float)((uint)((uint)(_526)));
    if (!(_955 < _viewDir.w)) {
      if (!(_955 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _964 = _948;
        _965 = _949;
        _966 = _950;
      } else {
        _964 = 0.0f;
        _965 = 0.0f;
        _966 = 0.0f;
      }
    } else {
      _964 = 0.0f;
      _965 = 0.0f;
      _966 = 0.0f;
    }
  } else {
    _964 = _948;
    _965 = _949;
    _966 = _950;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_964, _965, _966), _sunDirection.y, _moonDirection.y);
    _964 = _rndx_final_color.x;
    _965 = _rndx_final_color.y;
    _966 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _964;
  SV_Target.y = _965;
  SV_Target.z = _966;
  SV_Target.w = _539;
  return SV_Target;
}
