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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessEdgeBlur_CD {
  PostProcessEdgeBlur_CDStruct BindlessParameters_PostProcessEdgeBlur_CD;
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
  float _28;
  int _29;
  float _37;
  float _92;
  float _93;
  float _96;
  float _97;
  float _328;
  float _329;
  float _413;
  float _420;
  float _440;
  float _443;
  float _444;
  float _471;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _503;
  float _708;
  float _709;
  float _710;
  float _803;
  float _804;
  float _805;
  float _859;
  float _860;
  float _861;
  float _880;
  float _881;
  float _882;
  float _912;
  float _913;
  float _914;
  float _928;
  float _929;
  float _930;
  float _48;
  float _51;
  float _52;
  float _53;
  float _54;
  float _58;
  float _63;
  float _67;
  float _76;
  float _78;
  float _82;
  float _86;
  float4 _100;
  int _104;
  float _112;
  int _113;
  float _121;
  float4 _128;
  int _134;
  float _142;
  float _143;
  int _160;
  float _170;
  float _171;
  float _172;
  float _180;
  float _181;
  float _182;
  float _184;
  float _185;
  float _187;
  float _189;
  float _192;
  float _228;
  float _229;
  float _230;
  float _231;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _255;
  float _259;
  float _263;
  float _265;
  float _266;
  float _268;
  float _270;
  bool _271;
  bool _272;
  bool _273;
  bool _274;
  float _275;
  int _276;
  float _285;
  float _286;
  int _290;
  float _298;
  int _314;
  float _323;
  float _324;
  int _332;
  float _341;
  float _342;
  int _347;
  int _355;
  float4 _362;
  float _367;
  float _368;
  int _373;
  float _381;
  int _382;
  float _390;
  float _391;
  int _392;
  float _400;
  bool _414;
  int _422;
  int _430;
  int _445;
  float _453;
  int _456;
  float _464;
  float _480;
  float _487;
  float _488;
  float _489;
  uint _490;
  bool _506;
  float _512;
  float _561;
  float _562;
  float _563;
  float _565;
  float _572;
  float _573;
  float _574;
  float _593;
  float _594;
  float _595;
  float _596;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float _653;
  float _670;
  float _671;
  float _672;
  float _673;
  float _679;
  float _682;
  float _689;
  float _690;
  float _691;
  float _720;
  float _745;
  float _746;
  float _747;
  float _766;
  float _767;
  float _768;
  float _774;
  float _778;
  float _779;
  float _780;
  float _781;
  float _786;
  float _811;
  float _815;
  float _816;
  float _817;
  float _818;
  float _848;
  float _870;
  float _871;
  float _875;
  float _919;
  _28 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._fishEyeMaxPower);
  if ((_37 > 0.001f) || (_37 < -0.001f)) {
    _48 = 0.5f / _28;
    _51 = ((_destTargetSizAndInv.x * TEXCOORD.x) / _destTargetSizAndInv.x) + -0.5f;
    _52 = ((_destTargetSizAndInv.y * TEXCOORD.y) / _destTargetSizAndInv.x) - _48;
    _53 = dot(float2(_51, _52), float2(_51, _52));
    _54 = sqrt(_53);
    if (_37 > 0.0f) {
      _58 = sqrt(dot(float2(0.5f, _48), float2(0.5f, _48)));
      _63 = tan(_54 * _37) * (rsqrt(_53) * _58);
      _67 = tan(_58 * _37);
      _92 = (((_63 * _51) / _67) + 0.5f);
      _93 = (((_63 * _52) / _67) + _48);
    } else {
      if (_37 < 0.0f) {
        _76 = select((_28 < 1.0f), 0.5f, _48);
        _78 = _37 * -10.0f;
        _82 = atan(_54 * _78) * (rsqrt(_53) * _76);
        _86 = atan(_76 * _78);
        _92 = (((_82 * _51) / _86) + 0.5f);
        _93 = (((_82 * _52) / _86) + _48);
      } else {
        _92 = 0.0f;
        _93 = 0.0f;
      }
    }
    _96 = _92;
    _97 = (_93 * _28);
  } else {
    _96 = TEXCOORD.x;
    _97 = TEXCOORD.y;
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_96, _97));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _104 = WaveReadLaneFirst(_materialIndex);
  _112 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurRatio);
  _113 = WaveReadLaneFirst(_materialIndex);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_113 < (uint)170000), _113, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  if ((_112 > 0.0f) && (_121 > 0.0f)) {
    _128 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_96, _97));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _134 = WaveReadLaneFirst(_materialIndex);
    _142 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_134 < (uint)170000), _134, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurBrightness);
    _143 = _142 * (1.0f - _128.w);
    _160 = WaveReadLaneFirst(_materialIndex);
    _170 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_160 < (uint)170000), _160, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _171 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_160 < (uint)170000), _160, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _172 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_160 < (uint)170000), _160, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _180 = (_170 + _targetFocusPosition.x) - _viewPos.x;
    _181 = (_171 + _targetFocusPosition.y) - _viewPos.y;
    _182 = (_172 + _targetFocusPosition.z) - _viewPos.z;
    _184 = rsqrt(dot(float3(_180, _181, _182), float3(_180, _181, _182)));  // [sem: invLength]
    _185 = _180 * _184;
    _187 = _182 * _184;
    _189 = (TEXCOORD.x * 2.0f) + -1.0f;
    _192 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _228 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _192, ((_invViewProjRelative[3].x) * _189));
    _229 = ((mad((_invViewProjRelative[0].y), _192, ((_invViewProjRelative[0].x) * _189)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _228;
    _230 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _192, ((_invViewProjRelative[1].x) * _189))) / _228;
    _231 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _192, ((_invViewProjRelative[2].x) * _189))) / _228;
    _233 = rsqrt(dot(float3(_229, _230, _231), float3(_229, _230, _231)));  // [sem: invLength]
    _234 = _233 * _229;
    _235 = _233 * _230;
    _236 = _233 * _231;
    _237 = -0.0f - _185;
    _239 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_185, (_181 * _184), _187)));
    _240 = sin(_239);
    _241 = cos(_239);
    _242 = 1.0f - _241;
    _243 = _242 * _187;
    _244 = _242 * _237;
    _245 = _240 * _187;
    _246 = _240 * _237;
    _255 = mad((_244 * _187), _236, mad(_246, _235, (((_243 * _187) + _241) * _234)));
    _259 = mad(_245, _236, mad(_241, _235, (-0.0f - (_234 * _246))));
    _263 = mad(((_244 * _237) + _241), _236, mad((-0.0f - _245), _235, ((_234 * _237) * _243)));
    _265 = rsqrt(dot(float3(_255, _259, _263), float3(_255, _259, _263)));  // [sem: invLength]
    _266 = _265 * _255;
    _268 = _265 * _263;
    _270 = atan(_268 / _266);
    _271 = (_266 < 0.0f);
    _272 = (_266 == 0.0f);
    _273 = (_268 >= 0.0f);
    _274 = (_268 < 0.0f);
    _275 = acos(_265 * _259);
    _276 = WaveReadLaneFirst(_materialIndex);
    _285 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_276 < (uint)170000), _276, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _286 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_276 < (uint)170000), _276, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _290 = WaveReadLaneFirst(_materialIndex);
    _298 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_290 < (uint)170000), _290, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
    if (_298 > 0.001f) {
      _314 = WaveReadLaneFirst(_materialIndex);
      _323 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_314 < (uint)170000), _314, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
      _324 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_314 < (uint)170000), _314, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
      _328 = (_323 * select((_272 && _273), 0.75f, select((_272 && _274), 0.25f, ((select((_271 && _274), (_270 + -3.1415927f), select((_271 && _273), (_270 + 3.1415927f), _270)) * 0.15915494f) + 0.5f))));
      _329 = ((_275 * 0.31830987f) * _324);
    } else {
      _328 = ((_96 * _28) * _285);
      _329 = (_286 * _97);
    }
    _332 = WaveReadLaneFirst(_materialIndex);
    _341 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_332 < (uint)170000), _332, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
    _342 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_332 < (uint)170000), _332, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
    _347 = WaveReadLaneFirst(_materialIndex);
    _355 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_347 < (uint)170000), _347, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
    _362 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_355 < (uint)65000), _355, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_341 * _time.x) + _328), ((_342 * _time.x) + _329)));
    _367 = (_362.x * 2.0f) + -0.99607843f;
    _368 = (_362.y * 2.0f) + -0.99607843f;
    _373 = WaveReadLaneFirst(_materialIndex);
    _381 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_373 < (uint)170000), _373, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMask);
    _382 = WaveReadLaneFirst(_materialIndex);
    _390 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_382 < (uint)170000), _382, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskEdgeThickness);
    _391 = _390 * _381;
    _392 = WaveReadLaneFirst(_materialIndex);
    _400 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_392 < (uint)170000), _392, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskPower);
    if (!(_381 < 0.001f)) {
      _413 = saturate((((1.0f - _381) + _391) - abs((_275 * 0.63661975f) + -1.0f)) / max(0.001f, _391));  // [sem: expr_sat]
    } else {
      _413 = 1.0f;  // [sem: expr_sat]
    }
    _414 = (_400 < 0.001f);
    if (!_414) {
      _420 = (pow(_413, _400));
    } else {
      _420 = 1.0f;
    }
    _422 = WaveReadLaneFirst(_materialIndex);
    _430 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_422 < (uint)170000), _422, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._debugMode);
    if (_430 == 1) {
      if (!_414) {
        _440 = (pow(_413, _400));
      } else {
        _440 = 1.0f;
      }
      _443 = (_440 * _413);
      _444 = floor(1.0f - _413);
    } else {
      _443 = _100.x;
      _444 = _100.y;
    }
    _445 = WaveReadLaneFirst(_materialIndex);
    _453 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_445 < (uint)170000), _445, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
    if (_453 > 0.001f) {
      _456 = WaveReadLaneFirst(_materialIndex);
      _464 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_456 < (uint)170000), _456, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
      // [sem: expr_sat]
      _471 = saturate(((sqrt(saturate(1.0f - dot(float2(_367, _368), float2(_367, _368)))) - (_464 * 0.75f)) * 2.0f) + -0.5f);
    } else {
      _471 = 1.0f;  // [sem: expr_sat]
    }
    _474 = _443;
    _475 = _444;
    _476 = ((_143 * _100.x) + _128.x);
    _477 = ((_143 * _100.y) + _128.y);
    _478 = ((_143 * _100.z) + _128.z);
    _479 = ((_420 * saturate((1.0f - abs((_128.w * 2.0f) + -1.0f)) * 4.0f)) * _471);
  } else {
    _474 = _100.x;
    _475 = _100.y;
    _476 = _100.x;
    _477 = _100.y;
    _478 = _100.z;
    _479 = 0.0f;
  }
  _480 = _479 * _112;
  _487 = (_480 * (_476 - _474)) + _474;
  _488 = (_480 * (_477 - _475)) + _475;
  _489 = (_480 * (_478 - _100.z)) + _100.z;
  _490 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _503 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _490, 0)))).x) & 127)))) + 0.5f);
  } else {
    _503 = 1.0f;
  }
  _506 = (_localToneMappingParams.w > 0.0f);
  if (_506) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_487, _488, _489));
    _766 = _rndx_tonemapped_color.x;
    _767 = _rndx_tonemapped_color.y;
    _768 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _774 = 1.0f - abs(_etcParams.w);
      _778 = saturate(_etcParams.w);  // [sem: expr_sat]
      _779 = (_774 * _766) + _778;
      _780 = (_774 * _767) + _778;
      _781 = (_774 * _768) + _778;
      if (_colorGradingParams.w > 0.0f) {
        _786 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _803 = (((max(0.0f, (1.0f - _779)) - _779) * _786) + _779);
        _804 = (((max(0.0f, (1.0f - _780)) - _780) * _786) + _780);
        _805 = (((max(0.0f, (1.0f - _781)) - _781) * _786) + _781);
      } else {
        _803 = _779;
        _804 = _780;
        _805 = _781;
      }
      _811 = _userImageAdjust.y + 1.0f;
      _815 = _userImageAdjust.x + 0.5f;
      _816 = ((_803 + -0.5f) * _811) + _815;
      _817 = ((_804 + -0.5f) * _811) + _815;
      _818 = ((_805 + -0.5f) * _811) + _815;
      _848 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _859 = exp2(log2(saturate(mad(_colorBlind0.z, _818, mad(_colorBlind0.y, _817, (_colorBlind0.x * _816))))) * _848);
      _860 = exp2(log2(saturate(mad(_colorBlind1.z, _818, mad(_colorBlind1.y, _817, (_colorBlind1.x * _816))))) * _848);
      _861 = exp2(log2(saturate(mad(_colorBlind2.z, _818, mad(_colorBlind2.y, _817, (_colorBlind2.x * _816))))) * _848);
    } else {
      _859 = _766;
      _860 = _767;
      _861 = _768;
    }
  } else {
    _859 = _487;
    _860 = _488;
    _861 = _489;
  }
  if (_etcParams.y > 1.0f) {
    _870 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _871 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _875 = saturate(1.0f - (dot(float2(_870, _871), float2(_870, _871)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _880 = (_875 * _859);
    _881 = (_875 * _860);
    _882 = (_875 * _861);
  } else {
    _880 = _859;
    _881 = _860;
    _882 = _861;
  }
  if (_506 && (_etcParams.z > 0.0f)) {
    _912 = select((_880 <= 0.0031308f), (_880 * 12.92f), (((pow(_880, 0.41666666f)) * 1.055f) + -0.055f));
    _913 = select((_881 <= 0.0031308f), (_881 * 12.92f), (((pow(_881, 0.41666666f)) * 1.055f) + -0.055f));
    _914 = select((_882 <= 0.0031308f), (_882 * 12.92f), (((pow(_882, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _912 = _880;
    _913 = _881;
    _914 = _882;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _919 = (float)((uint)((uint)(_490)));
    if (!(_919 < _viewDir.w)) {
      if (!(_919 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _928 = _912;
        _929 = _913;
        _930 = _914;
      } else {
        _928 = 0.0f;
        _929 = 0.0f;
        _930 = 0.0f;
      }
    } else {
      _928 = 0.0f;
      _929 = 0.0f;
      _930 = 0.0f;
    }
  } else {
    _928 = _912;
    _929 = _913;
    _930 = _914;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_928, _929, _930), _sunDirection.y, _moonDirection.y);
    _928 = _rndx_final_color.x;
    _929 = _rndx_final_color.y;
    _930 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _928;
  SV_Target.y = _929;
  SV_Target.z = _930;
  SV_Target.w = _503;
  return SV_Target;
}
