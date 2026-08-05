struct PostProcessLearningHolo_CDStruct {
  float _learningEffectRatio;
  uint _learningEffectColor;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessLearningHolo_CD {
  PostProcessLearningHolo_CDStruct BindlessParameters_PostProcessLearningHolo_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessLearningHolo_CD BindlessParameters_PostProcessLearningHolo_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLearningHolo_CD_t> BindlessParameters_PostProcessLearningHolo_CD[] : register(b0, space100);

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
  float4 _28;
  float _34;
  float _37;
  float _40;
  float _49;
  float _58;
  float _67;
  int _70;
  float _78;
  int _81;
  int _89;
  uint2 _91;
  uint _125;
  int _127;
  float _131;
  float _136;
  float _138;
  float _139;
  float _140;
  float _151;
  float _152;
  float _449;
  float _450;
  float _451;
  float _452;
  float _745;
  float _746;
  float _747;
  float _748;
  float _756;
  float _757;
  float _758;
  float _759;
  float _760;
  float _761;
  float _762;
  float _785;
  float _990;
  float _991;
  float _992;
  float _1085;
  float _1086;
  float _1087;
  float _1141;
  float _1142;
  float _1143;
  float _1162;
  float _1163;
  float _1164;
  float _1194;
  float _1195;
  float _1196;
  float _1210;
  float _1211;
  float _1212;
  float _154;
  float _155;
  float _156;
  float _157;
  float _159;
  float _160;
  float _161;
  float _162;
  bool _163;
  float _171;
  float _173;
  float _175;
  float _177;
  float _178;
  uint _183;
  uint _187;
  uint4 _189;
  float4 _192;
  float _199;
  float _203;
  float _207;
  float _209;
  float _210;
  float _211;
  float _212;
  float _217;
  float _221;
  float _223;
  float _225;
  float _229;
  float _231;
  float _232;
  float _233;
  float _234;
  float _236;
  float _239;
  float _240;
  float _241;
  float _242;
  float _248;
  float _254;
  float _259;
  float _261;
  float _265;
  float _266;
  int _269;
  int _277;
  float _280;
  float _283;
  float _285;
  float _288;
  float _300;
  float _301;
  float _326;
  float _327;
  float _339;
  float _351;
  float _363;
  float _368;
  float _370;
  float _372;
  float _374;
  float _396;
  float _403;
  float _407;
  float _413;
  float _415;
  float _435;
  float _455;
  float _467;
  float _469;
  float _471;
  float _473;
  float _474;
  uint _479;
  uint _483;
  uint4 _485;
  float4 _488;
  float _495;
  float _499;
  float _503;
  float _505;
  float _506;
  float _507;
  float _508;
  float _513;
  float _517;
  float _519;
  float _521;
  float _525;
  float _527;
  float _528;
  float _529;
  float _530;
  float _532;
  float _535;
  float _536;
  float _537;
  float _538;
  float _544;
  float _550;
  float _555;
  float _557;
  float _561;
  float _562;
  int _565;
  int _573;
  float _576;
  float _579;
  float _581;
  float _584;
  float _596;
  float _597;
  float _622;
  float _623;
  float _635;
  float _647;
  float _659;
  float _664;
  float _666;
  float _668;
  float _670;
  float _692;
  float _699;
  float _703;
  float _709;
  float _711;
  float _731;
  float _751;
  float _765;
  float _768;
  float _771;
  uint _772;
  bool _788;
  float _794;
  float _813;
  float _829;
  float _845;
  float _846;
  float _850;
  float _853;
  float _856;
  float _863;
  float _870;
  float _877;
  float _878;
  float _879;
  float _880;
  float _881;
  float _882;
  float _883;
  float _899;
  float _915;
  float _931;
  float _932;
  float _933;
  float _934;
  float _935;
  float _952;
  float _953;
  float _954;
  float _955;
  float _958;
  float _961;
  float _965;
  float _969;
  float _973;
  float _993;
  float _1005;
  float _1017;
  float _1029;
  float _1036;
  float _1043;
  float _1050;
  float _1056;
  float _1057;
  float _1059;
  float _1061;
  float _1063;
  float _1068;
  float _1089;
  float _1091;
  float _1094;
  float _1097;
  float _1100;
  float _1106;
  float _1148;
  float _1151;
  float _1157;
  float _1199;
  float _1216;
  float _1220;
  float _1224;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _34 = (pow(_28.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_28.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_28.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _49 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _58 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectRatio);
  _81 = WaveReadLaneFirst(_materialIndex);
  _89 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_81 < (uint)170000), _81, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._noiseTexture);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_91.x, _91.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _125 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_91.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_89 < (uint)65000), _89, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_78 + (TEXCOORD.x * 5.0f)), (_78 + (TEXCOORD.y * 0.1f)))))).y) * 0.016f) + -0.007968628f) * saturate(1.0f - _78)) + TEXCOORD.y) * (((float)((int)((int)((float)((int)((int)(_91.y))))))) + 0.5f))), 0));
  _127 = _125.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _131 = (((float)((uint)((uint)((uint)((uint)(_125.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _136 = (((float)((uint)((uint)(((uint)((uint)(_125.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _138 = 1.0f - abs(_131);
  _139 = abs(_136);
  _140 = _138 - _139;
  if (!(_140 >= 0.0f)) {
    _151 = (select((_136 >= 0.0f), 1.0f, -1.0f) * _138);
    _152 = (select((_131 >= 0.0f), 1.0f, -1.0f) * (1.0f - _139));
  } else {
    _151 = _136;
    _152 = _131;
  }
  _154 = rsqrt(dot(float3(_152, _151, _140), float3(_152, _151, _140)));  // [sem: invLength]
  _155 = _154 * _152;
  _156 = _154 * _151;
  _157 = _154 * _140;
  _159 = rsqrt(dot(float3(_155, _156, _157), float3(_155, _156, _157)));  // [sem: invLength]
  _160 = _159 * _155;
  _161 = _159 * _156;
  _162 = _159 * _157;
  _163 = (_78 > 0.001f);
  if (_127 == _renderPassLearning) {
    if (_163) {
      _171 = -0.0f - _viewDir.x;
      _173 = -0.0f - _viewDir.y;
      _175 = -0.0f - _viewDir.z;
      _177 = saturate(dot(float3(_160, _161, _162), float3(_171, _173, _175)));  // [sem: expr_sat]
      _178 = 1.0f - _177;
      _183 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _187 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _189 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_183, _187, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _192 = __3__36__0__0__g_gbufferNormal.Load(int3(_183, _187, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _199 = (saturate(_192.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _203 = (saturate(_192.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _207 = (saturate(_192.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _209 = rsqrt(dot(float3(_199, _203, _207), float3(_199, _203, _207)));  // [sem: invLength]
      _210 = _209 * _199;
      _211 = _209 * _203;
      _212 = _207 * _209;
      _217 = (((float)((uint)((uint)(((uint)((uint)(_189.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _221 = (((float)((uint)((uint)(_189.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _223 = (_217 + _221) * 0.5f;
      _225 = (_217 - _221) * 0.5f;
      _229 = (1.0f - abs(_223)) - abs(_225);
      _231 = rsqrt(dot(float3(_223, _225, _229), float3(_223, _225, _229)));  // [sem: invLength]
      _232 = _231 * _223;
      _233 = _231 * _225;
      _234 = _231 * _229;
      _236 = select((_212 >= 0.0f), 1.0f, -1.0f);
      _239 = -0.0f - (1.0f / (_236 + _212));
      _240 = _211 * _239;
      _241 = _240 * _210;
      _242 = _236 * _210;
      _248 = mad(_234, _210, mad(_233, _241, ((((_242 * _210) * _239) + 1.0f) * _232)));
      _254 = mad(_234, _211, mad(_233, ((_240 * _211) + _236), ((_232 * _236) * _241)));
      _259 = mad(_234, _212, mad(_233, (-0.0f - _211), (-0.0f - (_242 * _232))));
      _261 = rsqrt(dot(float3(_248, _254, _259), float3(_248, _254, _259)));  // [sem: invLength]
      _265 = dot(float3((_261 * _248), (_261 * _254), (_261 * _259)), float3(_171, _173, _175));
      _266 = 1.0f - _265;
      _269 = WaveReadLaneFirst(_materialIndex);
      _277 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_269 < (uint)170000), _269, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
      _280 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 16) & 255)));
      _283 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 8) & 255)));
      _285 = (float)((uint)((uint)(_277 & 255)));
      _288 = max(0.001f, _exposure0.x);
      _300 = saturate((abs(sin(((_162 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
      _301 = _265 * _177;
      _326 = (_301 * _301) * (((saturate((abs(sin(((_160 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _300) * saturate((abs(sin(((_161 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f)) + _300);
      _327 = dot(float3(_49, _58, _67), float3(0.2126f, 0.7152f, 0.0722f));
      _339 = ((select(((_280 * 0.003921569f) < 0.04045f), (_280 * 0.000303527f), exp2(log2((_280 * 0.003717127f) + 0.052132703f) * 2.4f)) / _288) + _327) * _326;
      _351 = ((select(((_283 * 0.003921569f) < 0.04045f), (_283 * 0.000303527f), exp2(log2((_283 * 0.003717127f) + 0.052132703f) * 2.4f)) / _288) + _327) * _326;
      _363 = ((select(((_285 * 0.003921569f) < 0.04045f), (_285 * 0.000303527f), exp2(log2((_285 * 0.003717127f) + 0.052132703f) * 2.4f)) / _288) + _327) * _326;
      _368 = exp2(log2(_266 * _178) * 3.0f) * 10.0f;
      _370 = (_368 * _339) + _339;
      _372 = (_368 * _351) + _351;
      _374 = (_368 * _363) + _363;
      // [sem: expr_sat]
      _396 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
      _403 = (saturate(1.0f - abs((_78 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
      if (_396 < 1.0f) {
        _407 = log2(1.0f - _396);
        _413 = exp2(_407 * 8.0f) * (pow(_396, 3.0f));
        _415 = (_413 * 600.0f) / _288;
        _449 = saturate(exp2(_407 * 3.0f) * _78);  // [sem: expr_sat]
        _450 = ((((_413 * 1800.0f) / _288) + _374) * _403);
        _451 = ((_415 + _372) * _403);
        _452 = ((_415 + _370) * _403);
      } else {
        if (_127 == _renderPassAimHighlight) {
          _435 = ((_266 - _178) * 0.4f) + _178;
          _449 = _78;  // [sem: expr_sat]
          _450 = ((((_435 * 2.0f) / _288) + _374) * _403);
          _451 = ((((_435 * 1.2f) / _288) + _372) * _403);
          _452 = ((((_435 * 0.8f) / _288) + _370) * _403);
        } else {
          _449 = 0.0f;  // [sem: expr_sat]
          _450 = _67;
          _451 = _58;
          _452 = _49;
        }
      }
      _455 = ((_78 * 3.0f) * _449) + 1.0f;
      _756 = _449;
      _757 = _450;
      _758 = _451;
      _759 = _452;
      _760 = (_455 * _67);
      _761 = (_455 * _58);
      _762 = (_455 * _49);
    } else {
      _756 = 0.0f;
      _757 = _67;
      _758 = _58;
      _759 = _49;
      _760 = _67;
      _761 = _58;
      _762 = _49;
    }
  } else {
    if (_163) {
      if (_127 == _renderPassAimHighlight) {
        _467 = -0.0f - _viewDir.x;
        _469 = -0.0f - _viewDir.y;
        _471 = -0.0f - _viewDir.z;
        _473 = saturate(dot(float3(_160, _161, _162), float3(_467, _469, _471)));  // [sem: expr_sat]
        _474 = 1.0f - _473;
        _479 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
        _483 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
        _485 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_479, _483, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _488 = __3__36__0__0__g_gbufferNormal.Load(int3(_479, _483, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _495 = (saturate(_488.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _499 = (saturate(_488.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _503 = (saturate(_488.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _505 = rsqrt(dot(float3(_495, _499, _503), float3(_495, _499, _503)));  // [sem: invLength]
        _506 = _505 * _495;
        _507 = _505 * _499;
        _508 = _503 * _505;
        _513 = (((float)((uint)((uint)(((uint)((uint)(_485.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _517 = (((float)((uint)((uint)(_485.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _519 = (_513 + _517) * 0.5f;
        _521 = (_513 - _517) * 0.5f;
        _525 = (1.0f - abs(_519)) - abs(_521);
        _527 = rsqrt(dot(float3(_519, _521, _525), float3(_519, _521, _525)));  // [sem: invLength]
        _528 = _527 * _519;
        _529 = _527 * _521;
        _530 = _527 * _525;
        _532 = select((_508 >= 0.0f), 1.0f, -1.0f);
        _535 = -0.0f - (1.0f / (_532 + _508));
        _536 = _507 * _535;
        _537 = _536 * _506;
        _538 = _532 * _506;
        _544 = mad(_530, _506, mad(_529, _537, ((((_538 * _506) * _535) + 1.0f) * _528)));
        _550 = mad(_530, _507, mad(_529, ((_536 * _507) + _532), ((_528 * _532) * _537)));
        _555 = mad(_530, _508, mad(_529, (-0.0f - _507), (-0.0f - (_538 * _528))));
        _557 = rsqrt(dot(float3(_544, _550, _555), float3(_544, _550, _555)));  // [sem: invLength]
        _561 = dot(float3((_557 * _544), (_557 * _550), (_557 * _555)), float3(_467, _469, _471));
        _562 = 1.0f - _561;
        _565 = WaveReadLaneFirst(_materialIndex);
        _573 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_565 < (uint)170000), _565, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
        _576 = (float)((uint)((uint)(((uint)((uint)(_573)) >> 16) & 255)));
        _579 = (float)((uint)((uint)(((uint)((uint)(_573)) >> 8) & 255)));
        _581 = (float)((uint)((uint)(_573 & 255)));
        _584 = max(0.001f, _exposure0.x);
        _596 = saturate((abs(sin(((_162 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
        _597 = _561 * _473;
        _622 = (_597 * _597) * (((saturate((abs(sin(((_160 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _596) * saturate((abs(sin(((_161 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f)) + _596);
        _623 = dot(float3(_49, _58, _67), float3(0.2126f, 0.7152f, 0.0722f));
        _635 = ((select(((_576 * 0.003921569f) < 0.04045f), (_576 * 0.000303527f), exp2(log2((_576 * 0.003717127f) + 0.052132703f) * 2.4f)) / _584) + _623) * _622;
        _647 = ((select(((_579 * 0.003921569f) < 0.04045f), (_579 * 0.000303527f), exp2(log2((_579 * 0.003717127f) + 0.052132703f) * 2.4f)) / _584) + _623) * _622;
        _659 = ((select(((_581 * 0.003921569f) < 0.04045f), (_581 * 0.000303527f), exp2(log2((_581 * 0.003717127f) + 0.052132703f) * 2.4f)) / _584) + _623) * _622;
        _664 = exp2(log2(_562 * _474) * 3.0f) * 10.0f;
        _666 = (_664 * _635) + _635;
        _668 = (_664 * _647) + _647;
        _670 = (_664 * _659) + _659;
        // [sem: expr_sat]
        _692 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
        _699 = (saturate(1.0f - abs((_78 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
        if (_692 < 1.0f) {
          _703 = log2(1.0f - _692);
          _709 = exp2(_703 * 8.0f) * (pow(_692, 3.0f));
          _711 = (_709 * 600.0f) / _584;
          _745 = saturate(exp2(_703 * 3.0f) * _78);  // [sem: expr_sat]
          _746 = ((((_709 * 1800.0f) / _584) + _670) * _699);
          _747 = ((_711 + _668) * _699);
          _748 = ((_711 + _666) * _699);
        } else {
          if (_127 == _renderPassAimHighlight) {
            _731 = ((_562 - _474) * 0.4f) + _474;
            _745 = _78;  // [sem: expr_sat]
            _746 = ((((_731 * 2.0f) / _584) + _670) * _699);
            _747 = ((((_731 * 1.2f) / _584) + _668) * _699);
            _748 = ((((_731 * 0.8f) / _584) + _666) * _699);
          } else {
            _745 = 0.0f;  // [sem: expr_sat]
            _746 = _67;
            _747 = _58;
            _748 = _49;
          }
        }
        _751 = ((_78 * 3.0f) * _745) + 1.0f;
        _756 = _745;
        _757 = _746;
        _758 = _747;
        _759 = _748;
        _760 = (_751 * _67);
        _761 = (_751 * _58);
        _762 = (_751 * _49);
      } else {
        _756 = 0.0f;
        _757 = _67;
        _758 = _58;
        _759 = _49;
        _760 = _67;
        _761 = _58;
        _762 = _49;
      }
    } else {
      _756 = 0.0f;
      _757 = _67;
      _758 = _58;
      _759 = _49;
      _760 = _67;
      _761 = _58;
      _762 = _49;
    }
  }
  _765 = ((_759 - _762) * _756) + _762;
  _768 = ((_758 - _761) * _756) + _761;
  _771 = ((_757 - _760) * _756) + _760;
  _772 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _785 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _772, 0)))).x) & 127)))) + 0.5f);
  } else {
    _785 = 1.0f;
  }
  _788 = (_localToneMappingParams.w > 0.0f);
  if (_788) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_765, _768, _771));
    _1036 = _rndx_tonemapped_color.x;
    _1043 = _rndx_tonemapped_color.y;
    _1050 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1056 = 1.0f - abs(_etcParams.w);
      _1057 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1059 = (_1056 * _1036) + _1057;
      _1061 = (_1056 * _1043) + _1057;
      _1063 = (_1056 * _1050) + _1057;
      if (_colorGradingParams.w > 0.0f) {
        _1068 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1085 = (((max(0.0f, (1.0f - _1063)) - _1063) * _1068) + _1063);
        _1086 = (((max(0.0f, (1.0f - _1061)) - _1061) * _1068) + _1061);
        _1087 = (((max(0.0f, (1.0f - _1059)) - _1059) * _1068) + _1059);
      } else {
        _1085 = _1063;
        _1086 = _1061;
        _1087 = _1059;
      }
      _1089 = _userImageAdjust.y + 1.0f;
      _1091 = _userImageAdjust.x + 0.5f;
      _1094 = ((_1087 + -0.5f) * _1089) + _1091;
      _1097 = ((_1086 + -0.5f) * _1089) + _1091;
      _1100 = ((_1085 + -0.5f) * _1089) + _1091;
      _1106 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1141 = exp2(log2(saturate(mad(_colorBlind2.z, _1100, mad(_colorBlind2.y, _1097, (_colorBlind2.x * _1094))))) * _1106);
      _1142 = exp2(log2(saturate(mad(_colorBlind1.z, _1100, mad(_colorBlind1.y, _1097, (_colorBlind1.x * _1094))))) * _1106);
      _1143 = exp2(log2(saturate(mad(_colorBlind0.z, _1100, mad(_colorBlind0.y, _1097, (_colorBlind0.x * _1094))))) * _1106);
    } else {
      _1141 = _1050;
      _1142 = _1043;
      _1143 = _1036;
    }
  } else {
    _1141 = _771;
    _1142 = _768;
    _1143 = _765;
  }
  if (_etcParams.y > 1.0f) {
    _1148 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1151 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1157 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1148, _1151), float2(_1148, _1151))));  // [sem: expr_sat]
    _1162 = (_1157 * _1141);
    _1163 = (_1157 * _1142);
    _1164 = (_1157 * _1143);
  } else {
    _1162 = _1141;
    _1163 = _1142;
    _1164 = _1143;
  }
  if (_788 && (_etcParams.z > 0.0f)) {
    _1194 = select((_1162 <= 0.0031308f), (_1162 * 12.92f), (((pow(_1162, 0.41666666f)) * 1.055f) + -0.055f));
    _1195 = select((_1163 <= 0.0031308f), (_1163 * 12.92f), (((pow(_1163, 0.41666666f)) * 1.055f) + -0.055f));
    _1196 = select((_1164 <= 0.0031308f), (_1164 * 12.92f), (((pow(_1164, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1194 = _1162;
    _1195 = _1163;
    _1196 = _1164;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1199 = (float)((uint)((uint)(_772)));
    if (!(_1199 < _viewDir.w)) {
      if (!(!(_1199 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1210 = 0.0f;
        _1211 = 0.0f;
        _1212 = 0.0f;
      } else {
        _1210 = _1194;
        _1211 = _1195;
        _1212 = _1196;
      }
    } else {
      _1210 = 0.0f;
      _1211 = 0.0f;
      _1212 = 0.0f;
    }
  } else {
    _1210 = _1194;
    _1211 = _1195;
    _1212 = _1196;
  }
  _1216 = exp2(log2(_1212 * 0.0001f) * 0.15930176f);
  _1220 = exp2(log2(_1211 * 0.0001f) * 0.15930176f);
  _1224 = exp2(log2(_1210 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1216 * 18.6875f) + 1.0f)) * ((_1216 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1220 * 18.6875f) + 1.0f)) * ((_1220 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1224 * 18.6875f) + 1.0f)) * ((_1224 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _785;
  return SV_Target;
}
