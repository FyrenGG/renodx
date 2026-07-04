struct PostProcessChromaticAberrationStruct {
  float _ratio;
  float _shiftValue;
  float2 _shiftPosition;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

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

struct BindlessParameters_PostProcessChromaticAberration {
  PostProcessChromaticAberrationStruct BindlessParameters_PostProcessChromaticAberration;
};

typedef BindlessParameters_PostProcessChromaticAberration BindlessParameters_PostProcessChromaticAberration_t;
ConstantBuffer<BindlessParameters_PostProcessChromaticAberration_t> BindlessParameters_PostProcessChromaticAberration[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _32;
  float _33;
  float _34;
  float _35;
  int _45;
  float _53;
  float _57;
  float _58;
  float _60;
  float _70;
  float _78;
  float _84;
  float _92;
  float _98;
  float _106;
  uint _108;
  float _122;
  float _327;
  float _328;
  float _329;
  float _422;
  float _423;
  float _424;
  float _478;
  float _479;
  float _480;
  float _499;
  float _500;
  float _501;
  float _531;
  float _532;
  float _533;
  float _547;
  float _548;
  float _549;
  bool _125;
  float _131;
  float _180;
  float _181;
  float _182;
  float _184;
  float _191;
  float _192;
  float _193;
  float _212;
  float _213;
  float _214;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _272;
  float _289;
  float _290;
  float _291;
  float _292;
  float _298;
  float _301;
  float _308;
  float _309;
  float _310;
  float _339;
  float _364;
  float _365;
  float _366;
  float _385;
  float _386;
  float _387;
  float _393;
  float _397;
  float _398;
  float _399;
  float _400;
  float _405;
  float _430;
  float _434;
  float _435;
  float _436;
  float _437;
  float _467;
  float _489;
  float _490;
  float _494;
  float _538;
  float _559;
  float _560;
  float _561;
  _23 = WaveReadLaneFirst(_materialIndex);
  _32 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)(select(((uint)_23 < (uint)170000), _23, 0)) + 0u))].BindlessParameters_PostProcessChromaticAberration._shiftPosition.x);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)(select(((uint)_23 < (uint)170000), _23, 0)) + 0u))].BindlessParameters_PostProcessChromaticAberration._shiftPosition.y);
  _34 = TEXCOORD.x - _32;
  _35 = TEXCOORD.y - _33;
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)(select(((uint)_45 < (uint)170000), _45, 0)) + 0u))].BindlessParameters_PostProcessChromaticAberration._shiftValue);
  _57 = (((sqrt((_35 * _35) + (_34 * _34)) * 0.009999999776482582f) * ((float)((uint)(uint)(_enableChromaticAberration)))) * _53) * rsqrt(dot(float2(_34, _35), float2(_34, _35)));
  _58 = _57 * _34;
  _60 = _57 * _35;
  _70 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _58), (TEXCOORD.y - _60))))).x) * 0.012683313339948654f);
  _78 = exp2(log2(max(0.0f, (_70 + -0.8359375f)) / (18.8515625f - (_70 * 18.6875f))) * 6.277394771575928f);
  _84 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) * 0.012683313339948654f);
  _92 = exp2(log2(max(0.0f, (_84 + -0.8359375f)) / (18.8515625f - (_84 * 18.6875f))) * 6.277394771575928f);
  _98 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_58 + TEXCOORD.x), (_60 + TEXCOORD.y))))).z) * 0.012683313339948654f);
  _106 = exp2(log2(max(0.0f, (_98 + -0.8359375f)) / (18.8515625f - (_98 * 18.6875f))) * 6.277394771575928f);
  _108 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _122 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _108, 0)))).x) & 127)))) + 0.5f);
  } else {
    _122 = _postProcessParams.x;
  }
  _125 = (_localToneMappingParams.w > 0.0f);
  if (_125) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_78, _92, _106));
    _385 = _rndx_tonemapped_color.x;
    _386 = _rndx_tonemapped_color.y;
    _387 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _393 = 1.0f - abs(_etcParams.w);
      _397 = saturate(_etcParams.w);  // [sem: expr_sat]
      _398 = (_393 * _385) + _397;
      _399 = (_393 * _386) + _397;
      _400 = (_393 * _387) + _397;
      if (_colorGradingParams.w > 0.0f) {
        _405 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _422 = (((max(0.0f, (1.0f - _398)) - _398) * _405) + _398);
        _423 = (((max(0.0f, (1.0f - _399)) - _399) * _405) + _399);
        _424 = (((max(0.0f, (1.0f - _400)) - _400) * _405) + _400);
      } else {
        _422 = _398;
        _423 = _399;
        _424 = _400;
      }
      _430 = _userImageAdjust.y + 1.0f;
      _434 = _userImageAdjust.x + 0.5f;
      _435 = ((_422 + -0.5f) * _430) + _434;
      _436 = ((_423 + -0.5f) * _430) + _434;
      _437 = ((_424 + -0.5f) * _430) + _434;
      _467 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _478 = exp2(log2(saturate(mad(_colorBlind0.z, _437, mad(_colorBlind0.y, _436, (_colorBlind0.x * _435))))) * _467);
      _479 = exp2(log2(saturate(mad(_colorBlind1.z, _437, mad(_colorBlind1.y, _436, (_colorBlind1.x * _435))))) * _467);
      _480 = exp2(log2(saturate(mad(_colorBlind2.z, _437, mad(_colorBlind2.y, _436, (_colorBlind2.x * _435))))) * _467);
    } else {
      _478 = _385;
      _479 = _386;
      _480 = _387;
    }
  } else {
    _478 = (_78 * 10000.0f);
    _479 = (_92 * 10000.0f);
    _480 = (_106 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _489 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _490 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _494 = saturate(1.0f - (dot(float2(_489, _490), float2(_489, _490)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _499 = (_494 * _478);
    _500 = (_494 * _479);
    _501 = (_494 * _480);
  } else {
    _499 = _478;
    _500 = _479;
    _501 = _480;
  }
  if (_125 && (_etcParams.z > 0.0f)) {
    _531 = select((_499 <= 0.0031308000907301903f), (_499 * 12.920000076293945f), (((pow(_499, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _532 = select((_500 <= 0.0031308000907301903f), (_500 * 12.920000076293945f), (((pow(_500, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _533 = select((_501 <= 0.0031308000907301903f), (_501 * 12.920000076293945f), (((pow(_501, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _531 = _499;
    _532 = _500;
    _533 = _501;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _538 = (float)((uint)_108);
    if (!(_538 < _viewDir.w)) {
      if (!(_538 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _547 = _531;
        _548 = _532;
        _549 = _533;
      } else {
        _547 = 0.0f;
        _548 = 0.0f;
        _549 = 0.0f;
      }
    } else {
      _547 = 0.0f;
      _548 = 0.0f;
      _549 = 0.0f;
    }
  } else {
    _547 = _531;
    _548 = _532;
    _549 = _533;
  }
  _559 = exp2(log2(_547 * 9.999999747378752e-05f) * 0.1593017578125f);
  _560 = exp2(log2(_548 * 9.999999747378752e-05f) * 0.1593017578125f);
  _561 = exp2(log2(_549 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_559 * 18.6875f) + 1.0f)) * ((_559 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_560 * 18.6875f) + 1.0f)) * ((_560 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_561 * 18.6875f) + 1.0f)) * ((_561 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _122;
  return SV_Target;
}
