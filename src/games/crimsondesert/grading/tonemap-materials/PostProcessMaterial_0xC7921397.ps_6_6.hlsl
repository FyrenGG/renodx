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
  float _439;
  float _644;
  float _645;
  float _646;
  float _739;
  float _740;
  float _741;
  float _795;
  float _796;
  float _797;
  float _812;
  float _813;
  float _814;
  float _844;
  float _845;
  float _846;
  float _860;
  float _861;
  float _862;
  float _119;
  float _120;
  float _123;
  float _126;
  float _127;
  float _132;
  float _142;
  float _158;
  float _166;
  float _167;
  float _170;
  float _171;
  bool _172;
  float _174;
  float _180;
  float _184;
  float _185;
  float _188;
  float _192;
  float _195;
  float _197;
  float _199;
  float _201;
  float _202;
  float _206;
  bool _207;
  float _213;
  float _216;
  float _219;
  float _224;
  float _228;
  float _234;
  float _235;
  float _236;
  float _237;
  float _241;
  float _245;
  float _249;
  float _253;
  float _255;
  float _258;
  float _270;
  float _279;
  float _288;
  float _297;
  float _299;
  float _309;
  float _310;
  float _314;
  float _317;
  float _319;
  float _325;
  float _329;
  float _341;
  float _355;
  float _356;
  int _359;
  int _367;
  float4 _377;
  float _381;
  float _388;
  float _401;
  float _412;
  float _425;
  uint _426;
  bool _442;
  float _448;
  float _467;
  float _483;
  float _499;
  float _500;
  float _504;
  float _507;
  float _510;
  float _517;
  float _524;
  float _531;
  float _532;
  float _533;
  float _534;
  float _535;
  float _536;
  float _537;
  float _553;
  float _569;
  float _585;
  float _586;
  float _587;
  float _588;
  float _589;
  float _606;
  float _607;
  float _608;
  float _609;
  float _612;
  float _615;
  float _619;
  float _623;
  float _627;
  float _647;
  float _659;
  float _671;
  float _683;
  float _690;
  float _697;
  float _704;
  float _710;
  float _711;
  float _713;
  float _715;
  float _717;
  float _722;
  float _743;
  float _745;
  float _748;
  float _751;
  float _754;
  float _760;
  float _800;
  float _801;
  float _807;
  float _849;
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
  _166 = 1.0f - _164;
  _167 = _99 - _165;
  _170 = sqrt((_167 * _167) + _116);
  _171 = _170 / _38;
  _172 = (_170 > 1e-05f);
  _174 = select(_172, (_115 / _170), 1.0f);
  _180 = saturate(abs(TEXCOORD.x + -0.5f) / (saturate(_61) * 0.08f));  // [sem: expr_sat]
  _184 = (_180 * _180) * (3.0f - (_180 * 2.0f));
  _185 = 1.0f - _50;
  _188 = saturate((_171 - _185) / _50);  // [sem: expr_sat]
  _192 = (_188 * _188) * (3.0f - (_188 * 2.0f));
  _195 = select(_172, (_167 / _170), 0.0f) / _26;
  _197 = (_184 * _83) * _192;
  _199 = (_197 * _195) + TEXCOORD.x;
  _201 = (_197 * _174) + TEXCOORD.y;
  _202 = _195 * _184;
  _206 = sqrt((_202 * _202) + (_174 * _174));
  _207 = (_206 > 1e-05f);
  _213 = ((_72 * 0.015f) * _192) * ((float)((uint)((uint)(_enableChromaticAberration))));
  _216 = _213 * select(_207, (_202 / _206), 0.0f);
  _219 = _213 * select(_207, (_174 / _206), 1.0f);
  _224 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
  // [sem: invLength]
  _228 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
  // [sem: invLength]
  _234 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
  _235 = _234 * _moonDirection.x;
  _236 = _234 * _moonDirection.y;
  _237 = _234 * _moonDirection.z;
  _241 = (_224 * _224) * (3.0f - (_224 * 2.0f));
  _245 = (((_228 * _sunDirection.x) - _235) * _241) + _235;
  _249 = (((_228 * _sunDirection.y) - _236) * _241) + _236;
  _253 = (((_228 * _sunDirection.z) - _237) * _241) + _237;
  _255 = rsqrt(dot(float3(_245, _249, _253), float3(_245, _249, _253)));  // [sem: invLength]
  _258 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _270 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _258, ((_invViewProjRelative[3].x) * _96));
  _279 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _258, ((_invViewProjRelative[0].x) * _96))) / _270;
  _288 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _258, ((_invViewProjRelative[1].x) * _96))) / _270;
  _297 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _258, ((_invViewProjRelative[2].x) * _96))) / _270;
  _299 = rsqrt(dot(float3(_279, _288, _297), float3(_279, _288, _297)));  // [sem: invLength]
  // [sem: expr_sat]
  _309 = saturate((dot(float3((_299 * _279), (_299 * _288), (_299 * _297)), float3((_245 * _255), (_249 * _255), (_253 * _255))) + -0.5f) * 2.0f);
  _310 = max(0.5f, _185);
  _314 = saturate(((_171 + -0.4f) - _310) * 4.9999995f);  // [sem: expr_sat]
  _317 = saturate((0.5f - _164) * -2.0f);  // [sem: expr_sat]
  _319 = (_310 + 0.4f) * 2.0f;
  _325 = saturate((_171 - _319) / (((_310 + 0.6f) * 0.01f) - _319));  // [sem: expr_sat]
  _329 = (_325 * _325) * (3.0f - (_325 * 2.0f));
  _341 = (_329 * _329) * max((((_314 * _314) * _184) * (3.0f - (_314 * 2.0f))), ((_317 * _317) * (3.0f - (_317 * 2.0f))));
  _355 = (saturate(exp2(log2((_309 * _309) * (3.0f - (_309 * 2.0f))) * 3.0f)) * ((_241 * 1.3999999f) + 5.6f)) * saturate(1.4f - _164);
  _356 = _355 * _341;
  _359 = WaveReadLaneFirst(_materialIndex);
  _367 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessScope._lensDirtTexture);
  _377 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_367 < (uint)65000), _367, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 1.2f) * _26), (TEXCOORD.y * 1.2f)));
  _381 = dot(float3(0.3f, 0.59f, 0.11f), float3(_377.x, _377.y, _377.z));
  _388 = ((_355 + 3.0f) * _341) * (1.0f / max(0.001f, _exposure0.x));
  _401 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_199 - _216), (_201 - _219))))).x) * _166) + (_388 * (lerp(_381, _377.x, _356)))) * _94;
  _412 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_199, _201)))).y) * _166) + (_388 * (lerp(_381, _377.y, _356)))) * _94;
  _425 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_216 + _199), (_219 + _201))))).z) * _166) + (_388 * (lerp(_381, _377.z, _356)))) * _94;
  _426 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _439 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _426, 0)))).x) & 127)))) + 0.5f);
  } else {
    _439 = 1.0f;
  }
  _442 = (_localToneMappingParams.w > 0.0f);
  if (_442) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_401, _412, _425));
    _690 = _rndx_tonemapped_color.x;
    _697 = _rndx_tonemapped_color.y;
    _704 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _710 = 1.0f - abs(_etcParams.w);
      _711 = saturate(_etcParams.w);  // [sem: expr_sat]
      _713 = (_710 * _690) + _711;
      _715 = (_710 * _697) + _711;
      _717 = (_710 * _704) + _711;
      if (_colorGradingParams.w > 0.0f) {
        _722 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _739 = (((max(0.0f, (1.0f - _713)) - _713) * _722) + _713);
        _740 = (((max(0.0f, (1.0f - _715)) - _715) * _722) + _715);
        _741 = (((max(0.0f, (1.0f - _717)) - _717) * _722) + _717);
      } else {
        _739 = _713;
        _740 = _715;
        _741 = _717;
      }
      _743 = _userImageAdjust.y + 1.0f;
      _745 = _userImageAdjust.x + 0.5f;
      _748 = ((_739 + -0.5f) * _743) + _745;
      _751 = ((_740 + -0.5f) * _743) + _745;
      _754 = ((_741 + -0.5f) * _743) + _745;
      _760 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _795 = exp2(log2(saturate(mad(_colorBlind0.z, _754, mad(_colorBlind0.y, _751, (_colorBlind0.x * _748))))) * _760);
      _796 = exp2(log2(saturate(mad(_colorBlind1.z, _754, mad(_colorBlind1.y, _751, (_colorBlind1.x * _748))))) * _760);
      _797 = exp2(log2(saturate(mad(_colorBlind2.z, _754, mad(_colorBlind2.y, _751, (_colorBlind2.x * _748))))) * _760);
    } else {
      _795 = _690;
      _796 = _697;
      _797 = _704;
    }
  } else {
    _795 = _401;
    _796 = _412;
    _797 = _425;
  }
  if (_etcParams.y > 1.0f) {
    _800 = abs(_96);
    _801 = abs(_98);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _807 = saturate(1.0f - (dot(float2(_800, _801), float2(_800, _801)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _812 = (_807 * _795);
    _813 = (_807 * _796);
    _814 = (_807 * _797);
  } else {
    _812 = _795;
    _813 = _796;
    _814 = _797;
  }
  if (_442 && (_etcParams.z > 0.0f)) {
    _844 = select((_812 <= 0.0031308f), (_812 * 12.92f), (((pow(_812, 0.41666666f)) * 1.055f) + -0.055f));
    _845 = select((_813 <= 0.0031308f), (_813 * 12.92f), (((pow(_813, 0.41666666f)) * 1.055f) + -0.055f));
    _846 = select((_814 <= 0.0031308f), (_814 * 12.92f), (((pow(_814, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _844 = _812;
    _845 = _813;
    _846 = _814;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _849 = (float)((uint)((uint)(_426)));
    if (!(_849 < _viewDir.w)) {
      if (!(!(_849 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _860 = 0.0f;
        _861 = 0.0f;
        _862 = 0.0f;
      } else {
        _860 = _844;
        _861 = _845;
        _862 = _846;
      }
    } else {
      _860 = 0.0f;
      _861 = 0.0f;
      _862 = 0.0f;
    }
  } else {
    _860 = _844;
    _861 = _845;
    _862 = _846;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_860, _861, _862), _sunDirection.y, _moonDirection.y);
    _860 = _rndx_final_color.x;
    _861 = _rndx_final_color.y;
    _862 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _860;
  SV_Target.y = _861;
  SV_Target.z = _862;
  SV_Target.w = _439;
  return SV_Target;
}
