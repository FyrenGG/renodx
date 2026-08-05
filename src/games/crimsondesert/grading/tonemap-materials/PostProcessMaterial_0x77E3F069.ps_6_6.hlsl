struct PostProcessAxiom_CDStruct {
  float _axiomEyeProgress;
  float _axiomEyeRadius;
  uint _axiomEyeTargetColor;
  uint _axiomPlayerColor;
  uint _axiomBackgroundColor;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessAxiom_CD {
  PostProcessAxiom_CDStruct BindlessParameters_PostProcessAxiom_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessAxiom_CD BindlessParameters_PostProcessAxiom_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAxiom_CD_t> BindlessParameters_PostProcessAxiom_CD[] : register(b0, space100);

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
  float _30;
  float4 _33;
  float _38;
  float _39;
  float _40;
  float _45;
  float _57;
  float _58;
  int _61;
  int _69;
  float4 _82;
  float _85;
  float _86;
  float _87;
  float _88;
  float _89;
  float _90;
  uint2 _92;
  uint _107;
  int _109;
  float _113;
  float _118;
  float _120;
  float _121;
  float _122;
  float _133;
  float _134;
  float _559;
  float _560;
  float _561;
  float _793;
  float _794;
  float _795;
  float _821;
  float _822;
  float _823;
  float _849;
  float _1054;
  float _1055;
  float _1056;
  float _1149;
  float _1150;
  float _1151;
  float _1205;
  float _1206;
  float _1207;
  float _1223;
  float _1224;
  float _1225;
  float _1255;
  float _1256;
  float _1257;
  float _1271;
  float _1272;
  float _1273;
  float _136;
  float _137;
  float _138;
  float _139;
  float _141;
  float _142;
  float _143;
  float _144;
  int _147;
  float _155;
  float _171;
  float _182;
  float _193;
  float _206;
  float _212;
  int _217;
  int _225;
  float _228;
  float _231;
  float _233;
  float4 _238;
  float _249;
  float _259;
  float _269;
  float _280;
  float _292;
  float _304;
  float _315;
  float _326;
  int _329;
  float _337;
  float _348;
  float _359;
  int _362;
  int _370;
  float4 _387;
  float _400;
  float _401;
  float _405;
  int _416;
  int _424;
  float _427;
  float _430;
  float _432;
  int _470;
  int _478;
  float _481;
  float _484;
  float _486;
  float _495;
  float _504;
  float _513;
  float _531;
  float _533;
  float _536;
  float4 _543;
  float _562;
  float _563;
  float _564;
  float _593;
  int _596;
  int _604;
  float4 _621;
  float _634;
  float _635;
  float _639;
  int _650;
  int _658;
  float _661;
  float _664;
  float _666;
  int _704;
  int _712;
  float _715;
  float _718;
  float _720;
  float _729;
  float _738;
  float _747;
  float _765;
  float _767;
  float _770;
  float4 _777;
  float _796;
  float _797;
  float _798;
  float _827;
  float _831;
  float _835;
  uint _836;
  bool _852;
  float _858;
  float _877;
  float _893;
  float _909;
  float _910;
  float _914;
  float _917;
  float _920;
  float _927;
  float _934;
  float _941;
  float _942;
  float _943;
  float _944;
  float _945;
  float _946;
  float _947;
  float _963;
  float _979;
  float _995;
  float _996;
  float _997;
  float _998;
  float _999;
  float _1016;
  float _1017;
  float _1018;
  float _1019;
  float _1022;
  float _1025;
  float _1029;
  float _1033;
  float _1037;
  float _1057;
  float _1069;
  float _1081;
  float _1093;
  float _1100;
  float _1107;
  float _1114;
  float _1120;
  float _1121;
  float _1123;
  float _1125;
  float _1127;
  float _1132;
  float _1153;
  float _1155;
  float _1158;
  float _1161;
  float _1164;
  float _1170;
  float _1210;
  float _1212;
  float _1218;
  float _1260;
  _30 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _38 = (TEXCOORD.x * 2.0f) + -1.0f;
  _39 = TEXCOORD.y * 2.0f;
  _40 = 1.0f - _39;
  _45 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _57 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _45, mad((_invViewProj[3].y), _40, ((_invViewProj[3].x) * _38)));
  _58 = 6.0f / _30;
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
  _82 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_69 < (uint)65000), _69, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_58 * TEXCOORD.x), ((_time.x * 0.01f) + (_58 * TEXCOORD.y))));
  _85 = _82.x + -0.5f;
  _86 = _82.y + -0.5f;
  _87 = _85 * 0.005f;
  _88 = _86 * 0.005f;
  _89 = _87 + TEXCOORD.x;
  _90 = _88 + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_92.x, _92.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _107 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_92.x))))))) + 0.5f) * _89)), ((int)((((float)((int)((int)((float)((int)((int)(_92.y))))))) + 0.5f) * _90)), 0));
  _109 = _107.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _113 = (((float)((uint)((uint)((uint)((uint)(_107.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _118 = (((float)((uint)((uint)(((uint)((uint)(_107.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _120 = 1.0f - abs(_113);
  _121 = abs(_118);
  _122 = _120 - _121;
  if (!(_122 >= 0.0f)) {
    _133 = (select((_118 >= 0.0f), 1.0f, -1.0f) * _120);
    _134 = (select((_113 >= 0.0f), 1.0f, -1.0f) * (1.0f - _121));
  } else {
    _133 = _118;
    _134 = _113;
  }
  _136 = rsqrt(dot(float3(_134, _133, _122), float3(_134, _133, _122)));  // [sem: invLength]
  _137 = _136 * _134;
  _138 = _136 * _133;
  _139 = _136 * _122;
  _141 = rsqrt(dot(float3(_137, _138, _139), float3(_137, _138, _139)));  // [sem: invLength]
  _142 = _141 * _137;
  _143 = _141 * _138;
  _144 = _141 * _139;
  _147 = WaveReadLaneFirst(_materialIndex);
  _155 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeProgress);
  _171 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _45, mad((_invViewProj[0].y), _40, ((_invViewProj[0].x) * _38)))) / _57) - _mainPosition.x;
  _182 = ((mad((_invViewProj[1].z), _45, mad((_invViewProj[1].y), _40, ((_invViewProj[1].x) * _38))) + (_invViewProj[1].w)) / _57) - _mainPosition.y;
  _193 = ((mad((_invViewProj[2].z), _45, mad((_invViewProj[2].y), _40, ((_invViewProj[2].x) * _38))) + (_invViewProj[2].w)) / _57) - _mainPosition.z;
  // [sem: expr_sat]
  _206 = saturate((1.0f - saturate(sqrt(((_182 * _182) + (_171 * _171)) + (_193 * _193)) / max(0.001f, (_155 * 50.0f)))) * 1.25f);
  _212 = (saturate((_155 * 4.0f) + -3.0f) * (1.0f - _206)) + _206;
  if (_206 > 0.0f) {
    _217 = WaveReadLaneFirst(_materialIndex);
    _225 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_217 < (uint)170000), _217, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomBackgroundColor);
    _228 = (float)((uint)((uint)(((uint)((uint)(_225)) >> 16) & 255)));
    _231 = (float)((uint)((uint)(((uint)((uint)(_225)) >> 8) & 255)));
    _233 = (float)((uint)((uint)(_225 & 255)));
    // [sem: _3__36__0__0__g_specularAO_sampleLod]
    _238 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _87), (TEXCOORD.y - _88)), 0.0f);
    _249 = select(((_228 * 0.003921569f) < 0.04045f), (_228 * 0.000303527f), exp2(log2((_228 * 0.003717127f) + 0.052132703f) * 2.4f)) * _238.w;
    _259 = select(((_231 * 0.003921569f) < 0.04045f), (_231 * 0.000303527f), exp2(log2((_231 * 0.003717127f) + 0.052132703f) * 2.4f)) * _238.w;
    _269 = select(((_233 * 0.003921569f) < 0.04045f), (_233 * 0.000303527f), exp2(log2((_233 * 0.003717127f) + 0.052132703f) * 2.4f)) * _238.w;
    _280 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _89)), ((int)(_customRenderPassSizeInvSize.y * _90)), 0)))).x));
    _292 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _280, mad((_invViewProj[3].y), _40, ((_invViewProj[3].x) * _38)));
    _304 = ((mad((_invViewProj[0].z), _280, mad((_invViewProj[0].y), _40, ((_invViewProj[0].x) * _38))) + (_invViewProj[0].w)) / _292) - _mainPosition.x;
    _315 = ((mad((_invViewProj[1].z), _280, mad((_invViewProj[1].y), _40, ((_invViewProj[1].x) * _38))) + (_invViewProj[1].w)) / _292) - _mainPosition.y;
    _326 = ((mad((_invViewProj[2].z), _280, mad((_invViewProj[2].y), _40, ((_invViewProj[2].x) * _38))) + (_invViewProj[2].w)) / _292) - _mainPosition.z;
    _329 = WaveReadLaneFirst(_materialIndex);
    _337 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_329 < (uint)170000), _329, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeRadius);
    _348 = 1.0f - saturate(sqrt(((_315 * _315) + (_304 * _304)) + (_326 * _326)) / max(0.001f, (_337 * _212)));
    if ((_109 == _renderPassSelfPlayer) || ((!(_109 == _renderPassSelfPlayer)) && (_109 == _renderPassTest))) {
      if (_348 > 0.0f) {
        _359 = 2.0f / _30;
        _362 = WaveReadLaneFirst(_materialIndex);
        _370 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_362 < (uint)170000), _362, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
        _387 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_370 < (uint)65000), _370, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_359 * TEXCOORD.x) - (_82.x * 0.25f)) + (_time.x * 0.1f)), ((_359 * TEXCOORD.y) - (_82.y * 0.25f))));
        // [sem: expr_sat]
        _400 = saturate(1.0f - dot(float3(_142, _143, _144), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _401 = _387.z + -0.5f;
        _405 = saturate(((_400 * _400) * _400) + _401);  // [sem: expr_sat]
        if ((_109 == _renderPassSelfPlayer) || ((!(_109 == _renderPassSelfPlayer)) && (_109 == _renderPassTest))) {
          _416 = WaveReadLaneFirst(_materialIndex);
          _424 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_416 < (uint)170000), _416, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
          _427 = (float)((uint)((uint)(((uint)((uint)(_424)) >> 16) & 255)));
          _430 = (float)((uint)((uint)(((uint)((uint)(_424)) >> 8) & 255)));
          _432 = (float)((uint)((uint)(_424 & 255)));
          _821 = (select(((_432 * 0.003921569f) < 0.04045f), (_432 * 0.000303527f), exp2(log2((_432 * 0.003717127f) + 0.052132703f) * 2.4f)) * _405);
          _822 = (select(((_430 * 0.003921569f) < 0.04045f), (_430 * 0.000303527f), exp2(log2((_430 * 0.003717127f) + 0.052132703f) * 2.4f)) * _405);
          _823 = (select(((_427 * 0.003921569f) < 0.04045f), (_427 * 0.000303527f), exp2(log2((_427 * 0.003717127f) + 0.052132703f) * 2.4f)) * _405);
        } else {
          if (_109 == _renderPassDetectItem) {
            _470 = WaveReadLaneFirst(_materialIndex);
            _478 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_470 < (uint)170000), _470, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
            _481 = (float)((uint)((uint)(((uint)((uint)(_478)) >> 16) & 255)));
            _484 = (float)((uint)((uint)(((uint)((uint)(_478)) >> 8) & 255)));
            _486 = (float)((uint)((uint)(_478 & 255)));
            _495 = select(((_481 * 0.003921569f) < 0.04045f), (_481 * 0.000303527f), exp2(log2((_481 * 0.003717127f) + 0.052132703f) * 2.4f));
            _504 = select(((_484 * 0.003921569f) < 0.04045f), (_484 * 0.000303527f), exp2(log2((_484 * 0.003717127f) + 0.052132703f) * 2.4f));
            _513 = select(((_486 * 0.003921569f) < 0.04045f), (_486 * 0.000303527f), exp2(log2((_486 * 0.003717127f) + 0.052132703f) * 2.4f));
            // [sem: expr_sat]
            _531 = saturate(1.0f - dot(float3((((_387.x + -0.5f) * 4.0f) + _142), (((_387.y + -0.5f) * 4.0f) + _143), ((_401 * 4.0f) + _144)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
            _533 = saturate(_531 * _531);  // [sem: expr_sat]
            _536 = saturate((_348 * 2.0f) + -1.0f);  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_specularAO_sampleLod]
            _543 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_85 * 0.049999997f)), (TEXCOORD.y - (_86 * 0.049999997f))), 0.0f);
            if (!(_543.w < 0.1f)) {
              if (_543.w < 0.14f) {
                _559 = _513;
                _560 = _504;
                _561 = (_495 + 1.0f);
              } else {
                if (_543.w < 0.17f) {
                  _559 = _513;
                  _560 = (_504 + 1.0f);
                  _561 = _495;
                } else {
                  if (_543.w < 0.3f) {
                    _559 = (_513 + 1.0f);
                    _560 = _504;
                    _561 = _495;
                  } else {
                    _559 = _513;
                    _560 = _504;
                    _561 = _495;
                  }
                }
              }
            } else {
              _559 = _513;
              _560 = _504;
              _561 = _495;
            }
            _562 = _495 * _405;
            _563 = _504 * _405;
            _564 = _513 * _405;
            _821 = ((((_564 - _269) + (((_559 * _533) - _564) * _536)) * _348) + _269);
            _822 = ((((_563 - _259) + (((_560 * _533) - _563) * _536)) * _348) + _259);
            _823 = ((((_562 - _249) + (((_561 * _533) - _562) * _536)) * _348) + _249);
          } else {
            _821 = _269;
            _822 = _259;
            _823 = _249;
          }
        }
      } else {
        _821 = _269;
        _822 = _259;
        _823 = _249;
      }
    } else {
      if (_348 > 0.0f) {
        if (_109 == _renderPassDetectItem) {
          _593 = 2.0f / _30;
          _596 = WaveReadLaneFirst(_materialIndex);
          _604 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
          _621 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_604 < (uint)65000), _604, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_593 * TEXCOORD.x) - (_82.x * 0.25f)) + (_time.x * 0.1f)), ((_593 * TEXCOORD.y) - (_82.y * 0.25f))));
          // [sem: expr_sat]
          _634 = saturate(1.0f - dot(float3(_142, _143, _144), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _635 = _621.z + -0.5f;
          _639 = saturate(((_634 * _634) * _634) + _635);  // [sem: expr_sat]
          if ((_109 == _renderPassSelfPlayer) || ((!(_109 == _renderPassSelfPlayer)) && (_109 == _renderPassTest))) {
            _650 = WaveReadLaneFirst(_materialIndex);
            _658 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_650 < (uint)170000), _650, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
            _661 = (float)((uint)((uint)(((uint)((uint)(_658)) >> 16) & 255)));
            _664 = (float)((uint)((uint)(((uint)((uint)(_658)) >> 8) & 255)));
            _666 = (float)((uint)((uint)(_658 & 255)));
            _821 = (select(((_666 * 0.003921569f) < 0.04045f), (_666 * 0.000303527f), exp2(log2((_666 * 0.003717127f) + 0.052132703f) * 2.4f)) * _639);
            _822 = (select(((_664 * 0.003921569f) < 0.04045f), (_664 * 0.000303527f), exp2(log2((_664 * 0.003717127f) + 0.052132703f) * 2.4f)) * _639);
            _823 = (select(((_661 * 0.003921569f) < 0.04045f), (_661 * 0.000303527f), exp2(log2((_661 * 0.003717127f) + 0.052132703f) * 2.4f)) * _639);
          } else {
            if (_109 == _renderPassDetectItem) {
              _704 = WaveReadLaneFirst(_materialIndex);
              _712 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_704 < (uint)170000), _704, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
              _715 = (float)((uint)((uint)(((uint)((uint)(_712)) >> 16) & 255)));
              _718 = (float)((uint)((uint)(((uint)((uint)(_712)) >> 8) & 255)));
              _720 = (float)((uint)((uint)(_712 & 255)));
              _729 = select(((_715 * 0.003921569f) < 0.04045f), (_715 * 0.000303527f), exp2(log2((_715 * 0.003717127f) + 0.052132703f) * 2.4f));
              _738 = select(((_718 * 0.003921569f) < 0.04045f), (_718 * 0.000303527f), exp2(log2((_718 * 0.003717127f) + 0.052132703f) * 2.4f));
              _747 = select(((_720 * 0.003921569f) < 0.04045f), (_720 * 0.000303527f), exp2(log2((_720 * 0.003717127f) + 0.052132703f) * 2.4f));
              // [sem: expr_sat]
              _765 = saturate(1.0f - dot(float3((((_621.x + -0.5f) * 4.0f) + _142), (((_621.y + -0.5f) * 4.0f) + _143), ((_635 * 4.0f) + _144)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
              _767 = saturate(_765 * _765);  // [sem: expr_sat]
              _770 = saturate((_348 * 2.0f) + -1.0f);  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_specularAO_sampleLod]
              _777 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_85 * 0.049999997f)), (TEXCOORD.y - (_86 * 0.049999997f))), 0.0f);
              if (!(_777.w < 0.1f)) {
                if (_777.w < 0.14f) {
                  _793 = _747;
                  _794 = _738;
                  _795 = (_729 + 1.0f);
                } else {
                  if (_777.w < 0.17f) {
                    _793 = _747;
                    _794 = (_738 + 1.0f);
                    _795 = _729;
                  } else {
                    if (_777.w < 0.3f) {
                      _793 = (_747 + 1.0f);
                      _794 = _738;
                      _795 = _729;
                    } else {
                      _793 = _747;
                      _794 = _738;
                      _795 = _729;
                    }
                  }
                }
              } else {
                _793 = _747;
                _794 = _738;
                _795 = _729;
              }
              _796 = _729 * _639;
              _797 = _738 * _639;
              _798 = _747 * _639;
              _821 = ((((_798 - _269) + (((_793 * _767) - _798) * _770)) * _348) + _269);
              _822 = ((((_797 - _259) + (((_794 * _767) - _797) * _770)) * _348) + _259);
              _823 = ((((_796 - _249) + (((_795 * _767) - _796) * _770)) * _348) + _249);
            } else {
              _821 = _269;
              _822 = _259;
              _823 = _249;
            }
          }
        } else {
          _821 = _269;
          _822 = _259;
          _823 = _249;
        }
      } else {
        _821 = _269;
        _822 = _259;
        _823 = _249;
      }
    }
  } else {
    _821 = _33.z;
    _822 = _33.y;
    _823 = _33.x;
  }
  _827 = (((_823 * _206) - _33.x) * _212) + _33.x;
  _831 = (((_822 * _206) - _33.y) * _212) + _33.y;
  _835 = (((_821 * _206) - _33.z) * _212) + _33.z;
  _836 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _849 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _836, 0)))).x) & 127)))) + 0.5f);
  } else {
    _849 = 1.0f;
  }
  _852 = (_localToneMappingParams.w > 0.0f);
  if (_852) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_827, _831, _835));
    _1100 = _rndx_tonemapped_color.x;
    _1107 = _rndx_tonemapped_color.y;
    _1114 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1120 = 1.0f - abs(_etcParams.w);
      _1121 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1123 = (_1120 * _1100) + _1121;
      _1125 = (_1120 * _1107) + _1121;
      _1127 = (_1120 * _1114) + _1121;
      if (_colorGradingParams.w > 0.0f) {
        _1132 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1149 = (((max(0.0f, (1.0f - _1127)) - _1127) * _1132) + _1127);
        _1150 = (((max(0.0f, (1.0f - _1125)) - _1125) * _1132) + _1125);
        _1151 = (((max(0.0f, (1.0f - _1123)) - _1123) * _1132) + _1123);
      } else {
        _1149 = _1127;
        _1150 = _1125;
        _1151 = _1123;
      }
      _1153 = _userImageAdjust.y + 1.0f;
      _1155 = _userImageAdjust.x + 0.5f;
      _1158 = ((_1151 + -0.5f) * _1153) + _1155;
      _1161 = ((_1150 + -0.5f) * _1153) + _1155;
      _1164 = ((_1149 + -0.5f) * _1153) + _1155;
      _1170 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1205 = exp2(log2(saturate(mad(_colorBlind2.z, _1164, mad(_colorBlind2.y, _1161, (_colorBlind2.x * _1158))))) * _1170);
      _1206 = exp2(log2(saturate(mad(_colorBlind1.z, _1164, mad(_colorBlind1.y, _1161, (_colorBlind1.x * _1158))))) * _1170);
      _1207 = exp2(log2(saturate(mad(_colorBlind0.z, _1164, mad(_colorBlind0.y, _1161, (_colorBlind0.x * _1158))))) * _1170);
    } else {
      _1205 = _1114;
      _1206 = _1107;
      _1207 = _1100;
    }
  } else {
    _1205 = _835;
    _1206 = _831;
    _1207 = _827;
  }
  if (_etcParams.y > 1.0f) {
    _1210 = abs(_38);
    _1212 = abs(_39 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1218 = saturate(1.0f - (dot(float2(_1210, _1212), float2(_1210, _1212)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1223 = (_1218 * _1205);
    _1224 = (_1218 * _1206);
    _1225 = (_1218 * _1207);
  } else {
    _1223 = _1205;
    _1224 = _1206;
    _1225 = _1207;
  }
  if (_852 && (_etcParams.z > 0.0f)) {
    _1255 = select((_1223 <= 0.0031308f), (_1223 * 12.92f), (((pow(_1223, 0.41666666f)) * 1.055f) + -0.055f));
    _1256 = select((_1224 <= 0.0031308f), (_1224 * 12.92f), (((pow(_1224, 0.41666666f)) * 1.055f) + -0.055f));
    _1257 = select((_1225 <= 0.0031308f), (_1225 * 12.92f), (((pow(_1225, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1255 = _1223;
    _1256 = _1224;
    _1257 = _1225;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1260 = (float)((uint)((uint)(_836)));
    if (!(_1260 < _viewDir.w)) {
      if (!(!(_1260 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1271 = 0.0f;
        _1272 = 0.0f;
        _1273 = 0.0f;
      } else {
        _1271 = _1255;
        _1272 = _1256;
        _1273 = _1257;
      }
    } else {
      _1271 = 0.0f;
      _1272 = 0.0f;
      _1273 = 0.0f;
    }
  } else {
    _1271 = _1255;
    _1272 = _1256;
    _1273 = _1257;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1273, _1272, _1271), _sunDirection.y, _moonDirection.y);
    _1273 = _rndx_final_color.x;
    _1272 = _rndx_final_color.y;
    _1271 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1273;
  SV_Target.y = _1272;
  SV_Target.z = _1271;
  SV_Target.w = _849;
  return SV_Target;
}
