struct PostProcessEdgeBlur_CDStruct {
  float _edgeBlurRatio;
  float _edgeBlurShiftValue;
  float _edgeBlurBrightness;
  float _fishEyeMaxPower;
  uint _edgeBlurNoiseTex;
  float _edgeBlurNoiseIntensity;
  float _edgeBlurNoiseOffset;
  float2 _edgeBlurNoiseScale;
  float2 _edgeBlurNoiseSpeed;
  float _edgeBlurNoiseDissolve;
  float _useTargetFocusDir;
  float3 _targetFocusPositionOffset;
  uint _debugMode;
  float _targetFocusCenterMask;
  float _targetFocusCenterMaskEdgeThickness;
  float _targetFocusCenterMaskPower;
};

struct BindlessParameters_PostProcessEdgeBlur_CD {
  PostProcessEdgeBlur_CDStruct BindlessParameters_PostProcessEdgeBlur_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

typedef BindlessParameters_PostProcessEdgeBlur_CD BindlessParameters_PostProcessEdgeBlur_CD_t;
ConstantBuffer<BindlessParameters_PostProcessEdgeBlur_CD_t> BindlessParameters_PostProcessEdgeBlur_CD[] : register(b0, space100);

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
  float _26;
  int _29;
  float _37;
  float _92;
  float _93;
  float _96;
  float _97;
  float _339;
  float _340;
  float _432;
  float _439;
  float _458;
  float _463;
  float _464;
  float _499;
  float _515;
  float _516;
  float _517;
  float _518;
  float _519;
  float _520;
  float _544;
  float _749;
  float _750;
  float _751;
  float _844;
  float _845;
  float _846;
  float _900;
  float _901;
  float _902;
  float _921;
  float _922;
  float _923;
  float _953;
  float _954;
  float _955;
  float _969;
  float _970;
  float _971;
  float _43;
  float _48;
  float _52;
  float _53;
  float _54;
  float _58;
  float _63;
  float _65;
  float _76;
  float _77;
  float _82;
  float _84;
  float4 _100;
  int _106;
  float _114;
  int _117;
  float _125;
  float4 _132;
  int _139;
  float _147;
  float _149;
  int _152;
  float _160;
  float _164;
  float _168;
  float _174;
  float _178;
  float _182;
  float _184;
  float _185;
  float _186;
  float _188;
  float _191;
  float _203;
  float _212;
  float _221;
  float _230;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _252;
  float _256;
  float _263;
  float _265;
  float _266;
  float _267;
  float _269;
  bool _270;
  bool _271;
  bool _272;
  bool _273;
  float _275;
  int _278;
  float _286;
  float _290;
  int _293;
  float _301;
  int _306;
  float _314;
  float _318;
  int _343;
  float _351;
  float _355;
  int _358;
  int _366;
  float4 _379;
  float _383;
  float _385;
  int _388;
  float _396;
  int _399;
  float _407;
  float _408;
  int _411;
  float _419;
  bool _433;
  int _442;
  int _450;
  int _467;
  float _475;
  int _480;
  float _488;
  float _521;
  float _524;
  float _527;
  float _530;
  uint _531;
  bool _547;
  float _553;
  float _572;
  float _588;
  float _604;
  float _605;
  float _609;
  float _612;
  float _615;
  float _622;
  float _629;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _641;
  float _642;
  float _658;
  float _674;
  float _690;
  float _691;
  float _692;
  float _693;
  float _694;
  float _711;
  float _712;
  float _713;
  float _714;
  float _717;
  float _720;
  float _724;
  float _728;
  float _732;
  float _752;
  float _764;
  float _776;
  float _788;
  float _795;
  float _802;
  float _809;
  float _815;
  float _816;
  float _818;
  float _820;
  float _822;
  float _827;
  float _848;
  float _850;
  float _853;
  float _856;
  float _859;
  float _865;
  float _907;
  float _910;
  float _916;
  float _958;
  _26 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._fishEyeMaxPower);
  if ((_37 > 0.001f) || (_37 < -0.001f)) {
    _43 = 0.5f / _26;
    _48 = ((_destTargetSizAndInv.x * TEXCOORD.x) / _destTargetSizAndInv.x) + -0.5f;
    _52 = ((_destTargetSizAndInv.y * TEXCOORD.y) / _destTargetSizAndInv.x) - _43;
    _53 = dot(float2(_48, _52), float2(_48, _52));
    _54 = sqrt(_53);
    if (_37 > 0.0f) {
      _58 = sqrt(dot(float2(0.5f, _43), float2(0.5f, _43)));
      _63 = (tan(_54 * _37) * _58) * rsqrt(_53);
      _65 = tan(_58 * _37);
      _92 = (((_63 * _52) / _65) + _43);
      _93 = (((_63 * _48) / _65) + 0.5f);
    } else {
      if (_37 < 0.0f) {
        _76 = select((_26 < 1.0f), 0.5f, _43);
        _77 = _37 * -10.0f;
        _82 = (atan(_54 * _77) * _76) * rsqrt(_53);
        _84 = atan(_76 * _77);
        _92 = (((_82 * _52) / _84) + _43);
        _93 = (((_82 * _48) / _84) + 0.5f);
      } else {
        _92 = 0.0f;
        _93 = 0.0f;
      }
    }
    _96 = (_92 * _26);
    _97 = _93;
  } else {
    _96 = TEXCOORD.y;
    _97 = TEXCOORD.x;
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_97, _96));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _106 = WaveReadLaneFirst(_materialIndex);
  _114 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_106 < (uint)170000), _106, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurRatio);
  _117 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_117 < (uint)170000), _117, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  if ((_114 > 0.0f) && (_125 > 0.0f)) {
    _132 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_97, _96));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _139 = WaveReadLaneFirst(_materialIndex);
    _147 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_139 < (uint)170000), _139, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurBrightness);
    _149 = _147 * (1.0f - _132.w);
    _152 = WaveReadLaneFirst(_materialIndex);
    _160 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_152 < (uint)170000), _152, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _164 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_152 < (uint)170000), _152, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _168 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_152 < (uint)170000), _152, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _174 = (_targetFocusPosition.x + _160) - _viewPos.x;
    _178 = (_targetFocusPosition.y + _164) - _viewPos.y;
    _182 = (_targetFocusPosition.z + _168) - _viewPos.z;
    _184 = rsqrt(dot(float3(_174, _178, _182), float3(_174, _178, _182)));  // [sem: invLength]
    _185 = _184 * _174;
    _186 = _182 * _184;
    _188 = (TEXCOORD.x * 2.0f) + -1.0f;
    _191 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _203 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _191, ((_invViewProjRelative[3].x) * _188));
    _212 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _191, ((_invViewProjRelative[0].x) * _188))) / _203;
    _221 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _191, ((_invViewProjRelative[1].x) * _188))) / _203;
    _230 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _191, ((_invViewProjRelative[2].x) * _188))) / _203;
    _232 = rsqrt(dot(float3(_212, _221, _230), float3(_212, _221, _230)));  // [sem: invLength]
    _233 = _232 * _212;
    _234 = _232 * _221;
    _235 = _232 * _230;
    _236 = -0.0f - _185;
    _239 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_185, (_184 * _178), _186)));
    _240 = sin(_239);
    _241 = cos(_239);
    _242 = 1.0f - _241;
    _243 = _242 * _186;
    _244 = _242 * _236;
    _245 = _240 * _186;
    _246 = _240 * _236;
    _252 = mad((_244 * _186), _235, mad(_246, _234, (((_243 * _186) + _241) * _233)));
    _256 = mad(_245, _235, mad(_241, _234, (-0.0f - (_233 * _246))));
    _263 = mad(((_244 * _236) + _241), _235, mad((-0.0f - _245), _234, ((_233 * _236) * _243)));
    _265 = rsqrt(dot(float3(_252, _256, _263), float3(_252, _256, _263)));  // [sem: invLength]
    _266 = _265 * _252;
    _267 = _265 * _263;
    _269 = atan(_267 / _266);
    _270 = (_266 < 0.0f);
    _271 = (_266 == 0.0f);
    _272 = (_267 >= 0.0f);
    _273 = (_267 < 0.0f);
    _275 = acos(_265 * _256);
    _278 = WaveReadLaneFirst(_materialIndex);
    _286 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_278 < (uint)170000), _278, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _290 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_278 < (uint)170000), _278, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _293 = WaveReadLaneFirst(_materialIndex);
    _301 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_293 < (uint)170000), _293, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
    if (_301 > 0.001f) {
      _306 = WaveReadLaneFirst(_materialIndex);
      _314 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_306 < (uint)170000), _306, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
      _318 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_306 < (uint)170000), _306, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
      _339 = ((_275 * 0.31830987f) * _318);
      _340 = (_314 * select((_271 && _272), 0.75f, select((_271 && _273), 0.25f, ((select((_270 && _273), (_269 + -3.1415927f), select((_270 && _272), (_269 + 3.1415927f), _269)) * 0.15915494f) + 0.5f))));
    } else {
      _339 = (_290 * _96);
      _340 = ((_97 * _26) * _286);
    }
    _343 = WaveReadLaneFirst(_materialIndex);
    _351 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_343 < (uint)170000), _343, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
    _355 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_343 < (uint)170000), _343, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
    _358 = WaveReadLaneFirst(_materialIndex);
    _366 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_358 < (uint)170000), _358, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
    _379 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_366 < (uint)65000), _366, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * _351) + _340), ((_time.x * _355) + _339)));
    _383 = (_379.x * 2.0f) + -0.99607843f;
    _385 = (_379.y * 2.0f) + -0.99607843f;
    _388 = WaveReadLaneFirst(_materialIndex);
    _396 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMask);
    _399 = WaveReadLaneFirst(_materialIndex);
    _407 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_399 < (uint)170000), _399, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskEdgeThickness);
    _408 = _407 * _396;
    _411 = WaveReadLaneFirst(_materialIndex);
    _419 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_411 < (uint)170000), _411, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskPower);
    if (!(_396 < 0.001f)) {
      _432 = saturate((((1.0f - _396) + _408) - abs((_275 * 0.63661975f) + -1.0f)) / max(0.001f, _408));  // [sem: expr_sat]
    } else {
      _432 = 1.0f;  // [sem: expr_sat]
    }
    _433 = (_419 < 0.001f);
    if (!_433) {
      _439 = (pow(_432, _419));
    } else {
      _439 = 1.0f;
    }
    _442 = WaveReadLaneFirst(_materialIndex);
    _450 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_442 < (uint)170000), _442, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._debugMode);
    if (_450 == 1) {
      if (!_433) {
        _458 = (pow(_432, _419));
      } else {
        _458 = 1.0f;
      }
      _463 = floor(1.0f - _432);
      _464 = (_458 * _432);
    } else {
      _463 = _100.y;
      _464 = _100.x;
    }
    _467 = WaveReadLaneFirst(_materialIndex);
    _475 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_467 < (uint)170000), _467, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
    if (_475 > 0.001f) {
      _480 = WaveReadLaneFirst(_materialIndex);
      _488 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_480 < (uint)170000), _480, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
      // [sem: expr_sat]
      _499 = saturate(((sqrt(saturate(1.0f - dot(float2(_383, _385), float2(_383, _385)))) - (_488 * 0.75f)) * 2.0f) + -0.5f);
    } else {
      _499 = 1.0f;  // [sem: expr_sat]
    }
    _515 = ((_499 * _439) * saturate((1.0f - abs((_132.w * 2.0f) + -1.0f)) * 4.0f));
    _516 = ((_149 * _100.z) + _132.z);
    _517 = ((_149 * _100.y) + _132.y);
    _518 = ((_149 * _100.x) + _132.x);
    _519 = _463;
    _520 = _464;
  } else {
    _515 = 0.0f;
    _516 = _100.z;
    _517 = _100.y;
    _518 = _100.x;
    _519 = _100.y;
    _520 = _100.x;
  }
  _521 = _515 * _114;
  _524 = ((_518 - _520) * _521) + _520;
  _527 = ((_517 - _519) * _521) + _519;
  _530 = ((_516 - _100.z) * _521) + _100.z;
  _531 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _544 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _531, 0)))).x) & 127)))) + 0.5f);
  } else {
    _544 = 1.0f;
  }
  _547 = (_localToneMappingParams.w > 0.0f);
  if (_547) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_524, _527, _530));
    _795 = _rndx_tonemapped_color.x;
    _802 = _rndx_tonemapped_color.y;
    _809 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _815 = 1.0f - abs(_etcParams.w);
      _816 = saturate(_etcParams.w);  // [sem: expr_sat]
      _818 = (_815 * _795) + _816;
      _820 = (_815 * _802) + _816;
      _822 = (_815 * _809) + _816;
      if (_colorGradingParams.w > 0.0f) {
        _827 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _844 = (((max(0.0f, (1.0f - _822)) - _822) * _827) + _822);
        _845 = (((max(0.0f, (1.0f - _820)) - _820) * _827) + _820);
        _846 = (((max(0.0f, (1.0f - _818)) - _818) * _827) + _818);
      } else {
        _844 = _822;
        _845 = _820;
        _846 = _818;
      }
      _848 = _userImageAdjust.y + 1.0f;
      _850 = _userImageAdjust.x + 0.5f;
      _853 = ((_846 + -0.5f) * _848) + _850;
      _856 = ((_845 + -0.5f) * _848) + _850;
      _859 = ((_844 + -0.5f) * _848) + _850;
      _865 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _900 = exp2(log2(saturate(mad(_colorBlind2.z, _859, mad(_colorBlind2.y, _856, (_colorBlind2.x * _853))))) * _865);
      _901 = exp2(log2(saturate(mad(_colorBlind1.z, _859, mad(_colorBlind1.y, _856, (_colorBlind1.x * _853))))) * _865);
      _902 = exp2(log2(saturate(mad(_colorBlind0.z, _859, mad(_colorBlind0.y, _856, (_colorBlind0.x * _853))))) * _865);
    } else {
      _900 = _809;
      _901 = _802;
      _902 = _795;
    }
  } else {
    _900 = _530;
    _901 = _527;
    _902 = _524;
  }
  if (_etcParams.y > 1.0f) {
    _907 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _910 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _916 = saturate(1.0f - (dot(float2(_907, _910), float2(_907, _910)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _921 = (_916 * _900);
    _922 = (_916 * _901);
    _923 = (_916 * _902);
  } else {
    _921 = _900;
    _922 = _901;
    _923 = _902;
  }
  if (_547 && (_etcParams.z > 0.0f)) {
    _953 = select((_923 <= 0.0031308f), (_923 * 12.92f), (((pow(_923, 0.41666666f)) * 1.055f) + -0.055f));
    _954 = select((_922 <= 0.0031308f), (_922 * 12.92f), (((pow(_922, 0.41666666f)) * 1.055f) + -0.055f));
    _955 = select((_921 <= 0.0031308f), (_921 * 12.92f), (((pow(_921, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _953 = _923;
    _954 = _922;
    _955 = _921;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _958 = (float)((uint)((uint)(_531)));
    if (!(_958 < _viewDir.w)) {
      if (!(!(_958 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _969 = 0.0f;
        _970 = 0.0f;
        _971 = 0.0f;
      } else {
        _969 = _953;
        _970 = _954;
        _971 = _955;
      }
    } else {
      _969 = 0.0f;
      _970 = 0.0f;
      _971 = 0.0f;
    }
  } else {
    _969 = _953;
    _970 = _954;
    _971 = _955;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_969, _970, _971), _sunDirection.y, _moonDirection.y);
    _969 = _rndx_final_color.x;
    _970 = _rndx_final_color.y;
    _971 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _969;
  SV_Target.y = _970;
  SV_Target.z = _971;
  SV_Target.w = _544;
  return SV_Target;
}
