struct PostProcessKnowledgeGain_CDStruct {
  uint _noiseTex;
  uint _regionTex;
  float _knowledgeGainRegionRatio;
  float _knowledgeGainCharacterRatio;
  float _knowledgeGainGimmickRatio;
  uint _knowledgeGainColor;
  uint _knowledgeGainRegionNumberR;
  uint _knowledgeGainRegionNumberG;
  float3 _knowledgeGainBoundBoxMin;
  float3 _knowledgeGainBoundBoxMax;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

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

struct BindlessParameters_PostProcessKnowledgeGain_CD {
  PostProcessKnowledgeGain_CDStruct BindlessParameters_PostProcessKnowledgeGain_CD;
};

typedef BindlessParameters_PostProcessKnowledgeGain_CD BindlessParameters_PostProcessKnowledgeGain_CD_t;
ConstantBuffer<BindlessParameters_PostProcessKnowledgeGain_CD_t> BindlessParameters_PostProcessKnowledgeGain_CD[] : register(b0, space100);

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
  float4 _29;
  float _39;
  float _40;
  float _41;
  float _66;
  float _67;
  float _68;
  int _69;
  float _77;
  bool _307;
  float _308;
  float _431;
  float _432;
  float _433;
  float _496;
  float _497;
  float _498;
  float _576;
  float _577;
  float _578;
  float _592;
  float _797;
  float _798;
  float _799;
  float _892;
  float _893;
  float _894;
  float _948;
  float _949;
  float _950;
  float _969;
  float _970;
  float _971;
  float _1001;
  float _1002;
  float _1003;
  float _1017;
  float _1018;
  float _1019;
  int _80;
  int _88;
  int _89;
  int _97;
  int _98;
  float _108;
  float _109;
  float _110;
  int _111;
  float _121;
  float _122;
  float _123;
  float _144;
  float _146;
  float _147;
  float _183;
  float _184;
  float _185;
  float _186;
  int _189;
  int _197;
  float4 _204;
  float _209;
  float _210;
  float _211;
  float _224;
  float _225;
  float _226;
  float _233;
  float _234;
  float _235;
  float _242;
  int _257;
  int _265;
  float4 _272;
  float _292;
  float _293;
  float _294;
  float4 _312;
  int _314;
  int _322;
  float _325;
  float _328;
  float _330;
  float _360;
  float _361;
  float _362;
  float _363;
  float _365;
  float _379;
  float _380;
  float _381;
  float _383;
  float _389;
  float _402;
  float _410;
  float _413;
  float _416;
  float _420;
  float _449;
  float _462;
  float _469;
  float _470;
  float _471;
  float _474;
  float _475;
  float _482;
  float _483;
  float _484;
  float _485;
  int _499;
  float _507;
  int _508;
  float _516;
  float4 _523;
  float _534;
  float _535;
  float _536;
  uint _579;
  bool _595;
  float _601;
  float _650;
  float _651;
  float _652;
  float _654;
  float _661;
  float _662;
  float _663;
  float _682;
  float _683;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _690;
  float _736;
  float _737;
  float _738;
  float _739;
  float _740;
  float _741;
  float _742;
  float _759;
  float _760;
  float _761;
  float _762;
  float _768;
  float _771;
  float _778;
  float _779;
  float _780;
  float _809;
  float _834;
  float _835;
  float _836;
  float _855;
  float _856;
  float _857;
  float _863;
  float _867;
  float _868;
  float _869;
  float _870;
  float _875;
  float _900;
  float _904;
  float _905;
  float _906;
  float _907;
  float _937;
  float _959;
  float _960;
  float _964;
  float _1008;
  float _1029;
  float _1030;
  float _1031;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _39 = (pow(_29.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_29.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_29.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionRatio);
  if (!(!(_77 >= 0.001f))) {
    _80 = WaveReadLaneFirst(_materialIndex);
    _88 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberR);
    _89 = WaveReadLaneFirst(_materialIndex);
    _97 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_89 < (uint)170000), _89, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberG);
    _98 = WaveReadLaneFirst(_materialIndex);
    _108 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.x);
    _109 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.y);
    _110 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.z);
    _111 = WaveReadLaneFirst(_materialIndex);
    _121 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_111 < (uint)170000), _111, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.x);
    _122 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_111 < (uint)170000), _111, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.y);
    _123 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_111 < (uint)170000), _111, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.z);
    if (!(((int)(_97) | (int)(_88)) == 0) || (((!(_108 == 0.0f)) && (!(_109 == 0.0f))) && (!(_110 == 0.0f))) || (((!(_121 == 0.0f)) && (!(_122 == 0.0f))) && (!(_123 == 0.0f)))) {
      _144 = (TEXCOORD.x * 2.0f) + -1.0f;
      _146 = 1.0f - (TEXCOORD.y * 2.0f);
      _147 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _183 = mad((_invViewProj[3].z), _147, mad((_invViewProj[3].y), _146, ((_invViewProj[3].x) * _144))) + (_invViewProj[3].w);
      _184 = (mad((_invViewProj[0].z), _147, mad((_invViewProj[0].y), _146, ((_invViewProj[0].x) * _144))) + (_invViewProj[0].w)) / _183;
      _185 = (mad((_invViewProj[1].z), _147, mad((_invViewProj[1].y), _146, ((_invViewProj[1].x) * _144))) + (_invViewProj[1].w)) / _183;
      _186 = (mad((_invViewProj[2].z), _147, mad((_invViewProj[2].y), _146, ((_invViewProj[2].x) * _144))) + (_invViewProj[2].w)) / _183;
      _189 = WaveReadLaneFirst(_materialIndex);
      _197 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_189 < (uint)170000), _189, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _204 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_197 < (uint)65000), _197, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_184 * 0.02f), (_186 * 0.02f)));
      _209 = _108 - _121;
      _210 = _109 - _122;
      _211 = _110 - _123;
      bool __branch_chain_138;
      if (sqrt(((_210 * _210) + (_209 * _209)) + (_211 * _211)) < 0.01f) {
        __branch_chain_138 = true;
      } else {
        _224 = _121 - _mainPosition.x;
        _225 = _122 - _mainPosition.y;
        _226 = _123 - _mainPosition.z;
        _233 = _108 - _mainPosition.x;
        _234 = _109 - _mainPosition.y;
        _235 = _110 - _mainPosition.z;
        _242 = max(sqrt(((_233 * _233) + (_234 * _234)) + (_235 * _235)), sqrt(((_224 * _224) + (_225 * _225)) + (_226 * _226)));
        if (_242 < 0.01f) {
          __branch_chain_138 = true;
        } else {
          __branch_chain_138 = false;
        }
      }
      if (__branch_chain_138) {
        _257 = WaveReadLaneFirst(_materialIndex);
        _265 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_257 < (uint)170000), _257, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._regionTex);
        _272 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_265 < (uint)65000), _265, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticPointClamp, float2((((_204.x + -0.5f) * 0.0005f) + ((_184 + 16384.0f) * 4.8828126e-05f)), ((1.0f - ((_186 + 11264.0f) * 4.8828126e-05f)) + ((_204.y + -0.5f) * 0.0005f))));
        _307 = ((((int)((uint)(_272.x * 255.0f))) == _88) && (((int)((uint)(_272.y * 255.0f))) == _97));
        _308 = (_77 * 300.0f);
      } else {
        _292 = ((_204.x + -0.5f) * 10.0f) + _184;
        _293 = ((_204.y + -0.5f) * 10.0f) + _185;
        _294 = ((_204.z + -0.5f) * 10.0f) + _186;
        _307 = ((_294 > _123) && ((_294 < _110) && ((_293 > _122) && ((_293 < _109) && ((_292 < _108) && (_292 > _121))))));
        _308 = (min((_242 * 2.0f), 300.0f) * _77);
      }
      if (_307) {
        // [sem: _3__36__0__0__g_specularAO_sampleLod]
        _312 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
        _314 = WaveReadLaneFirst(_materialIndex);
        _322 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_314 < (uint)170000), _314, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
        _325 = (float)((uint)((uint)(((uint)((uint)(_322)) >> 16) & 255)));
        _328 = (float)((uint)((uint)(((uint)((uint)(_322)) >> 8) & 255)));
        _330 = (float)((uint)((uint)(_322 & 255)));
        _360 = max(0.001f, _exposure0.x);
        _361 = select(((_325 * 0.003921569f) < 0.04045f), (_325 * 0.000303527f), exp2(log2((_325 * 0.003717127f) + 0.052132703f) * 2.4f)) / _360;
        _362 = select(((_328 * 0.003921569f) < 0.04045f), (_328 * 0.000303527f), exp2(log2((_328 * 0.003717127f) + 0.052132703f) * 2.4f)) / _360;
        _363 = select(((_330 * 0.003921569f) < 0.04045f), (_330 * 0.000303527f), exp2(log2((_330 * 0.003717127f) + 0.052132703f) * 2.4f)) / _360;
        _365 = min(max(_308, 0.0f), 30.0f);
        _379 = (_184 - _mainPosition.x) + (_365 * (_204.z + -0.5f));
        _380 = (_185 - _mainPosition.y) + (_365 * (_204.w + -0.5f));
        _381 = (_186 - _mainPosition.z) + (_365 * (_204.x + -0.5f));
        _383 = saturate(_308) * 30.0f;
        _389 = sqrt(((_379 * _379) + (_380 * _380)) + (_381 * _381));
        _402 = ((1.0f - saturate(floor(_389 / _308))) * saturate(((_383 - _308) + _389) / _383)) * saturate((1.0f - _77) * 10.0f);
        _410 = log2(_402) * min(max((100.0f - (saturate(_389 * 0.01f) * 100.0f)), 10.0f), 30.0f);
        _413 = exp2(_410 * 0.25f);
        _416 = ((8.0f - _413) * exp2(_410)) + _413;
        _420 = _402 * 0.5f;
        if (!(_312.w < 0.2f)) {
          if (!(_312.w < 0.3f)) {
            if (!(_312.w < 0.4f)) {
              _431 = (_361 * _312.w);
              _432 = (_362 * _312.w);
              _433 = (_363 * _312.w);
            } else {
              _431 = _66;
              _432 = _67;
              _433 = _363;
            }
          } else {
            _431 = _66;
            _432 = _362;
            _433 = _68;
          }
        } else {
          _431 = _361;
          _432 = _67;
          _433 = _68;
        }
        _449 = (float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15));
        _462 = _449 * _413;
        _469 = (_462 * (((((_431 + -1.0f) * 0.025f) + 1.0f) * _66) - _66)) + _66;
        _470 = (_462 * (((((_432 + -1.0f) * 0.025f) + 1.0f) * _67) - _67)) + _67;
        _471 = (_462 * (((((_433 + -1.0f) * 0.025f) + 1.0f) * _68) - _68)) + _68;
        _474 = ((_449 * 0.19999999f) + 0.6f) * _420;
        _475 = 0.001f / _360;
        _482 = ((_475 - _469) * _474) + _469;
        _483 = ((_475 - _470) * _474) + _470;
        _484 = ((_475 - _471) * _474) + _471;
        _485 = _449 * _420;
        _496 = ((((_416 * _361) - _482) * _485) + _482);
        _497 = ((((_416 * _362) - _483) * _485) + _483);
        _498 = ((((_416 * _363) - _484) * _485) + _484);
      } else {
        _496 = _66;
        _497 = _67;
        _498 = _68;
      }
    } else {
      _496 = _66;
      _497 = _67;
      _498 = _68;
    }
  } else {
    _496 = _66;
    _497 = _67;
    _498 = _68;
  }
  _499 = WaveReadLaneFirst(_materialIndex);
  _507 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_499 < (uint)170000), _499, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _508 = WaveReadLaneFirst(_materialIndex);
  _516 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_508 < (uint)170000), _508, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_507 >= 0.001f) || (_516 >= 0.001f)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _523 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
    _534 = (pow(_523.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _535 = (pow(_523.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _536 = (pow(_523.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    if (!(_523.w == 0.0f)) {
      _576 = ((((exp2(log2(max(0.0f, (_534 + -0.8359375f)) / (18.851562f - (_534 * 18.6875f))) * 6.277395f) * 10000.0f) - _496) * _523.w) + _496);
      _577 = ((((exp2(log2(max(0.0f, (_535 + -0.8359375f)) / (18.851562f - (_535 * 18.6875f))) * 6.277395f) * 10000.0f) - _497) * _523.w) + _497);
      _578 = ((((exp2(log2(max(0.0f, (_536 + -0.8359375f)) / (18.851562f - (_536 * 18.6875f))) * 6.277395f) * 10000.0f) - _498) * _523.w) + _498);
    } else {
      _576 = _496;
      _577 = _497;
      _578 = _498;
    }
  } else {
    _576 = _496;
    _577 = _497;
    _578 = _498;
  }
  _579 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _592 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _579, 0)))).x) & 127)))) + 0.5f);
  } else {
    _592 = 1.0f;
  }
  _595 = (_localToneMappingParams.w > 0.0f);
  if (_595) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_576, _577, _578));
    _855 = _rndx_tonemapped_color.x;
    _856 = _rndx_tonemapped_color.y;
    _857 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _863 = 1.0f - abs(_etcParams.w);
      _867 = saturate(_etcParams.w);  // [sem: expr_sat]
      _868 = (_863 * _855) + _867;
      _869 = (_863 * _856) + _867;
      _870 = (_863 * _857) + _867;
      if (_colorGradingParams.w > 0.0f) {
        _875 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _892 = (((max(0.0f, (1.0f - _868)) - _868) * _875) + _868);
        _893 = (((max(0.0f, (1.0f - _869)) - _869) * _875) + _869);
        _894 = (((max(0.0f, (1.0f - _870)) - _870) * _875) + _870);
      } else {
        _892 = _868;
        _893 = _869;
        _894 = _870;
      }
      _900 = _userImageAdjust.y + 1.0f;
      _904 = _userImageAdjust.x + 0.5f;
      _905 = ((_892 + -0.5f) * _900) + _904;
      _906 = ((_893 + -0.5f) * _900) + _904;
      _907 = ((_894 + -0.5f) * _900) + _904;
      _937 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _948 = exp2(log2(saturate(mad(_colorBlind0.z, _907, mad(_colorBlind0.y, _906, (_colorBlind0.x * _905))))) * _937);
      _949 = exp2(log2(saturate(mad(_colorBlind1.z, _907, mad(_colorBlind1.y, _906, (_colorBlind1.x * _905))))) * _937);
      _950 = exp2(log2(saturate(mad(_colorBlind2.z, _907, mad(_colorBlind2.y, _906, (_colorBlind2.x * _905))))) * _937);
    } else {
      _948 = _855;
      _949 = _856;
      _950 = _857;
    }
  } else {
    _948 = _576;
    _949 = _577;
    _950 = _578;
  }
  if (_etcParams.y > 1.0f) {
    _959 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _960 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _964 = saturate(1.0f - (dot(float2(_959, _960), float2(_959, _960)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _969 = (_964 * _948);
    _970 = (_964 * _949);
    _971 = (_964 * _950);
  } else {
    _969 = _948;
    _970 = _949;
    _971 = _950;
  }
  if (_595 && (_etcParams.z > 0.0f)) {
    _1001 = select((_969 <= 0.0031308f), (_969 * 12.92f), (((pow(_969, 0.41666666f)) * 1.055f) + -0.055f));
    _1002 = select((_970 <= 0.0031308f), (_970 * 12.92f), (((pow(_970, 0.41666666f)) * 1.055f) + -0.055f));
    _1003 = select((_971 <= 0.0031308f), (_971 * 12.92f), (((pow(_971, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1001 = _969;
    _1002 = _970;
    _1003 = _971;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1008 = (float)((uint)((uint)(_579)));
    if (!(_1008 < _viewDir.w)) {
      if (!(_1008 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1017 = _1001;
        _1018 = _1002;
        _1019 = _1003;
      } else {
        _1017 = 0.0f;
        _1018 = 0.0f;
        _1019 = 0.0f;
      }
    } else {
      _1017 = 0.0f;
      _1018 = 0.0f;
      _1019 = 0.0f;
    }
  } else {
    _1017 = _1001;
    _1018 = _1002;
    _1019 = _1003;
  }
  _1029 = exp2(log2(_1017 * 0.0001f) * 0.15930176f);
  _1030 = exp2(log2(_1018 * 0.0001f) * 0.15930176f);
  _1031 = exp2(log2(_1019 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1029 * 18.6875f) + 1.0f)) * ((_1029 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1030 * 18.6875f) + 1.0f)) * ((_1030 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1031 * 18.6875f) + 1.0f)) * ((_1031 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _592;
  return SV_Target;
}
