struct PostProcessHousing_CDStruct {
  float _housingPreviewRatio;
  uint _housingValidColor;
  uint _housingInvalidColor;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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

struct BindlessParameters_PostProcessHousing_CD {
  PostProcessHousing_CDStruct BindlessParameters_PostProcessHousing_CD;
};

typedef BindlessParameters_PostProcessHousing_CD BindlessParameters_PostProcessHousing_CD_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_CD_t> BindlessParameters_PostProcessHousing_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  uint2 _30;
  uint _45;
  float _55;
  float _56;
  float _58;
  float _59;
  float _60;
  float _71;
  float _72;
  float _108;
  float _236;
  float _439;
  float _440;
  float _441;
  float _534;
  float _535;
  float _536;
  float _590;
  float _591;
  float _592;
  float _611;
  float _612;
  float _613;
  float _643;
  float _644;
  float _645;
  float _659;
  float _660;
  float _661;
  float _74;
  float _75;
  float _76;
  float _77;
  float _79;
  int _97;
  float _105;
  int _109;
  int _117;
  float _120;
  float _123;
  float _125;
  float _150;
  float _151;
  float _152;
  int _153;
  int _161;
  float _164;
  float _167;
  float _169;
  float _210;
  float _220;
  float _221;
  float _222;
  uint _223;
  bool _239;
  float _243;
  float _292;
  float _293;
  float _294;
  float _296;
  float _303;
  float _304;
  float _305;
  float _324;
  float _325;
  float _326;
  float _327;
  float _328;
  float _329;
  float _330;
  float _331;
  float _332;
  float _378;
  float _379;
  float _380;
  float _381;
  float _382;
  float _383;
  float _384;
  float _401;
  float _402;
  float _403;
  float _404;
  float _410;
  float _413;
  float _420;
  float _421;
  float _422;
  float _451;
  float _476;
  float _477;
  float _478;
  float _497;
  float _498;
  float _499;
  float _505;
  float _509;
  float _510;
  float _511;
  float _512;
  float _517;
  float _542;
  float _546;
  float _547;
  float _548;
  float _549;
  float _579;
  float _601;
  float _602;
  float _606;
  float _650;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_30.x, _30.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _45 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_30.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_30.y)))))) + 0.5f) * TEXCOORD.y), 0));
  _55 = (((float)((uint)((uint)((uint)((uint)(_45.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _56 = (((float)((uint)((uint)(((uint)((uint)(_45.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _58 = 1.0f - abs(_55);
  _59 = abs(_56);
  _60 = _58 - _59;
  if (!(_60 >= 0.0f)) {
    _71 = (select((_55 >= 0.0f), 1.0f, -1.0f) * (1.0f - _59));
    _72 = (select((_56 >= 0.0f), 1.0f, -1.0f) * _58);
  } else {
    _71 = _55;
    _72 = _56;
  }
  _74 = rsqrt(dot(float3(_71, _72, _60), float3(_71, _72, _60)));  // [sem: invLength]
  _75 = _74 * _71;
  _76 = _74 * _72;
  _77 = _74 * _60;
  _79 = rsqrt(dot(float3(_75, _76, _77), float3(_75, _76, _77)));  // [sem: invLength]
  if ((_45.x & 255) == _renderPassHousing) {
    _97 = WaveReadLaneFirst(_materialIndex);
    _105 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)(select(((uint)_97 < (uint)170000), _97, 0)) + 0u))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _108 = (_105 * (1.0f - abs(dot(float3((_79 * _75), (_79 * _76), (_79 * _77)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))));
  } else {
    _108 = 0.0f;
  }
  _109 = WaveReadLaneFirst(_materialIndex);
  _117 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)(select(((uint)_109 < (uint)170000), _109, 0)) + 0u))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _120 = (float)((uint)((uint)(((uint)(_117) >> 16) & 255)));
  _123 = (float)((uint)((uint)(((uint)(_117) >> 8) & 255)));
  _125 = (float)((uint)((uint)(_117 & 255)));
  _150 = select(((_120 * 0.003921568859368563f) < 0.040449999272823334f), (_120 * 0.0003035269910469651f), exp2(log2((_120 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _151 = select(((_123 * 0.003921568859368563f) < 0.040449999272823334f), (_123 * 0.0003035269910469651f), exp2(log2((_123 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _152 = select(((_125 * 0.003921568859368563f) < 0.040449999272823334f), (_125 * 0.0003035269910469651f), exp2(log2((_125 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _153 = WaveReadLaneFirst(_materialIndex);
  _161 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)(select(((uint)_153 < (uint)170000), _153, 0)) + 0u))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _164 = (float)((uint)((uint)(((uint)(_161) >> 16) & 255)));
  _167 = (float)((uint)((uint)(((uint)(_161) >> 8) & 255)));
  _169 = (float)((uint)((uint)(_161 & 255)));
  _210 = max(0.0010000000474974513f, _exposure0.x);
  _220 = (((((_housingPreviewState * (select(((_164 * 0.003921568859368563f) < 0.040449999272823334f), (_164 * 0.0003035269910469651f), exp2(log2((_164 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _150)) + _150) / _210) - _25.x) * _108) + _25.x;
  _221 = (((((_housingPreviewState * (select(((_167 * 0.003921568859368563f) < 0.040449999272823334f), (_167 * 0.0003035269910469651f), exp2(log2((_167 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _151)) + _151) / _210) - _25.y) * _108) + _25.y;
  _222 = (((((_housingPreviewState * (select(((_169 * 0.003921568859368563f) < 0.040449999272823334f), (_169 * 0.0003035269910469651f), exp2(log2((_169 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _152)) + _152) / _210) - _25.z) * _108) + _25.z;
  _223 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _236 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _223, 0)))).x) & 127)))) + 0.5f);
  } else {
    _236 = 1.0f;
  }
  _239 = (_localToneMappingParams.w > 0.0f);
  if (_239) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_220, _221, _222));
    _497 = _rndx_tonemapped_color.x;
    _498 = _rndx_tonemapped_color.y;
    _499 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _505 = 1.0f - abs(_etcParams.w);
      _509 = saturate(_etcParams.w);  // [sem: expr_sat]
      _510 = (_505 * _497) + _509;
      _511 = (_505 * _498) + _509;
      _512 = (_505 * _499) + _509;
      if (_colorGradingParams.w > 0.0f) {
        _517 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _534 = (((max(0.0f, (1.0f - _510)) - _510) * _517) + _510);
        _535 = (((max(0.0f, (1.0f - _511)) - _511) * _517) + _511);
        _536 = (((max(0.0f, (1.0f - _512)) - _512) * _517) + _512);
      } else {
        _534 = _510;
        _535 = _511;
        _536 = _512;
      }
      _542 = _userImageAdjust.y + 1.0f;
      _546 = _userImageAdjust.x + 0.5f;
      _547 = ((_534 + -0.5f) * _542) + _546;
      _548 = ((_535 + -0.5f) * _542) + _546;
      _549 = ((_536 + -0.5f) * _542) + _546;
      _579 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _590 = exp2(log2(saturate(mad(_colorBlind0.z, _549, mad(_colorBlind0.y, _548, (_colorBlind0.x * _547))))) * _579);
      _591 = exp2(log2(saturate(mad(_colorBlind1.z, _549, mad(_colorBlind1.y, _548, (_colorBlind1.x * _547))))) * _579);
      _592 = exp2(log2(saturate(mad(_colorBlind2.z, _549, mad(_colorBlind2.y, _548, (_colorBlind2.x * _547))))) * _579);
    } else {
      _590 = _497;
      _591 = _498;
      _592 = _499;
    }
  } else {
    _590 = _220;
    _591 = _221;
    _592 = _222;
  }
  if (_etcParams.y > 1.0f) {
    _601 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _602 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _606 = saturate(1.0f - (dot(float2(_601, _602), float2(_601, _602)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _611 = (_606 * _590);
    _612 = (_606 * _591);
    _613 = (_606 * _592);
  } else {
    _611 = _590;
    _612 = _591;
    _613 = _592;
  }
  if (_239 && (_etcParams.z > 0.0f)) {
    _643 = select((_611 <= 0.0031308000907301903f), (_611 * 12.920000076293945f), (((pow(_611, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _644 = select((_612 <= 0.0031308000907301903f), (_612 * 12.920000076293945f), (((pow(_612, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _645 = select((_613 <= 0.0031308000907301903f), (_613 * 12.920000076293945f), (((pow(_613, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _643 = _611;
    _644 = _612;
    _645 = _613;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _650 = (float)((uint)_223);
    if (!(_650 < _viewDir.w)) {
      if (!(_650 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _659 = _643;
        _660 = _644;
        _661 = _645;
      } else {
        _659 = 0.0f;
        _660 = 0.0f;
        _661 = 0.0f;
      }
    } else {
      _659 = 0.0f;
      _660 = 0.0f;
      _661 = 0.0f;
    }
  } else {
    _659 = _643;
    _660 = _644;
    _661 = _645;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_659, _660, _661), _sunDirection.y, _moonDirection.y);
    _659 = _rndx_final_color.x;
    _660 = _rndx_final_color.y;
    _661 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _659;
  SV_Target.y = _660;
  SV_Target.z = _661;
  SV_Target.w = _236;
  return SV_Target;
}
