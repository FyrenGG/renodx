struct PostProcessChromaticRadialBlurStruct {
  float _ratio;
  float _start;
  float _offsetR;
  float _offsetG;
  float _offsetB;
  float _rangeR;
  float _rangeG;
  float _rangeB;
  float _centerX;
  float _centerY;
};

struct BindlessParameters_PostProcessChromaticRadialBlur {
  PostProcessChromaticRadialBlurStruct BindlessParameters_PostProcessChromaticRadialBlur;
};


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

typedef BindlessParameters_PostProcessChromaticRadialBlur BindlessParameters_PostProcessChromaticRadialBlur_t;
ConstantBuffer<BindlessParameters_PostProcessChromaticRadialBlur_t> BindlessParameters_PostProcessChromaticRadialBlur[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _17;
  float _25;
  int _28;
  float _36;
  int _39;
  float _47;
  int _50;
  float _58;
  int _61;
  float _69;
  int _72;
  float _80;
  int _83;
  float _91;
  int _94;
  float _102;
  int _105;
  float _113;
  int _116;
  float _124;
  float _125;
  float _126;
  float _143;
  float _145;
  float _146;
  float _147;
  int _148;
  float _225;
  float _430;
  float _431;
  float _432;
  float _525;
  float _526;
  float _527;
  float _585;
  float _586;
  float _587;
  float _606;
  float _607;
  float _608;
  float _638;
  float _639;
  float _640;
  float _654;
  float _655;
  float _656;
  float _150;
  float _153;
  float _156;
  float _159;
  float _160;
  float _161;
  float _174;
  float _187;
  float _200;
  int _201;
  uint _209;
  bool _228;
  float _234;
  float _253;
  float _269;
  float _285;
  float _286;
  float _290;
  float _293;
  float _296;
  float _303;
  float _310;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _339;
  float _355;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _392;
  float _393;
  float _394;
  float _395;
  float _398;
  float _401;
  float _405;
  float _409;
  float _413;
  float _433;
  float _445;
  float _457;
  float _469;
  float _476;
  float _483;
  float _490;
  float _496;
  float _497;
  float _499;
  float _501;
  float _503;
  float _508;
  float _529;
  float _531;
  float _534;
  float _537;
  float _540;
  float _546;
  float _592;
  float _595;
  float _601;
  float _643;
  int __loop_jump_target = -1;
  _17 = WaveReadLaneFirst(_materialIndex);
  _25 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_17 < (uint)170000), _17, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._ratio);
  _28 = WaveReadLaneFirst(_materialIndex);
  _36 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_28 < (uint)170000), _28, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._start);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeR);
  _50 = WaveReadLaneFirst(_materialIndex);
  _58 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_50 < (uint)170000), _50, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeG);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._rangeB);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetR);
  _83 = WaveReadLaneFirst(_materialIndex);
  _91 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetG);
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._offsetB);
  _105 = WaveReadLaneFirst(_materialIndex);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_105 < (uint)170000), _105, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerX);
  _116 = WaveReadLaneFirst(_materialIndex);
  _124 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticRadialBlur[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticRadialBlur._centerY);
  _125 = TEXCOORD.x - _113;
  _126 = TEXCOORD.y - _124;
  _143 = (((float)((uint)((uint)(_enableChromaticAberration)))) * _25) * saturate(((sqrt((_126 * _126) + (_125 * _125)) * 2.0f) - (_36 * 1.4142135f)) / max(0.001f, ((1.0f - _36) * 1.4142135f)));
  _145 = 0.0f;
  _146 = 0.0f;
  _147 = 0.0f;
  _148 = 0;
  while(true) {
    _150 = ((float)((int)(_148))) * 0.25f;
    _153 = (_150 * _47) + (1.0f - _80);
    _156 = (_150 * _58) + (1.0f - _91);
    _159 = (_150 * _69) + (1.0f - _102);
    _160 = _113 - TEXCOORD.x;
    _161 = _124 - TEXCOORD.y;
    _174 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_153 * _125) + _160) * _143) + TEXCOORD.x), ((((_153 * _126) + _161) * _143) + TEXCOORD.y))))).x) + _145;
    _187 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_156 * _125) + _160) * _143) + TEXCOORD.x), ((((_156 * _126) + _161) * _143) + TEXCOORD.y))))).y) + _146;
    _200 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((((_159 * _125) + _160) * _143) + TEXCOORD.x), ((((_159 * _126) + _161) * _143) + TEXCOORD.y))))).z) + _147;
    _201 = (int)(_148) + (int)(1);
    if (!(_201 == 5)) {
      _145 = _174;
      _146 = _187;
      _147 = _200;
      _148 = _201;
      continue;
    }
    _209 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _225 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _209, 0)))).x) & 127)))) + 0.5f);
    } else {
      _225 = _postProcessParams.x;
    }
    _228 = (_localToneMappingParams.w > 0.0f);
    if (_228) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_174, _187, _200));
      _476 = _rndx_tonemapped_color.x;
      _483 = _rndx_tonemapped_color.y;
      _490 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _496 = 1.0f - abs(_etcParams.w);
        _497 = saturate(_etcParams.w);  // [sem: expr_sat]
        _499 = (_496 * _476) + _497;
        _501 = (_496 * _483) + _497;
        _503 = (_496 * _490) + _497;
        if (_colorGradingParams.w > 0.0f) {
          _508 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _525 = (((max(0.0f, (1.0f - _499)) - _499) * _508) + _499);
          _526 = (((max(0.0f, (1.0f - _501)) - _501) * _508) + _501);
          _527 = (((max(0.0f, (1.0f - _503)) - _503) * _508) + _503);
        } else {
          _525 = _499;
          _526 = _501;
          _527 = _503;
        }
        _529 = _userImageAdjust.y + 1.0f;
        _531 = _userImageAdjust.x + 0.5f;
        _534 = ((_525 + -0.5f) * _529) + _531;
        _537 = ((_526 + -0.5f) * _529) + _531;
        _540 = ((_527 + -0.5f) * _529) + _531;
        _546 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _585 = exp2(log2(saturate(mad(_colorBlind0.z, _540, mad(_colorBlind0.y, _537, (_colorBlind0.x * _534))))) * _546);
        _586 = exp2(log2(saturate(mad(_colorBlind1.z, _540, mad(_colorBlind1.y, _537, (_colorBlind1.x * _534))))) * _546);
        _587 = exp2(log2(saturate(mad(_colorBlind2.z, _540, mad(_colorBlind2.y, _537, (_colorBlind2.x * _534))))) * _546);
      } else {
        _585 = _476;
        _586 = _483;
        _587 = _490;
      }
    } else {
      _585 = (_174 * 0.2f);
      _586 = (_187 * 0.2f);
      _587 = (_200 * 0.2f);
    }
    if (_etcParams.y > 1.0f) {
      _592 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _595 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
      // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
      float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        _rndx_vignette_strength *= CUSTOM_VIGNETTE;
      }
      _601 = saturate(1.0f - (dot(float2(_592, _595), float2(_592, _595)) * _rndx_vignette_strength));  // [sem: expr_sat]
      // RenoDX: <<< [Patch: PostProcessMaterialVignette]
      _606 = (_601 * _585);
      _607 = (_601 * _586);
      _608 = (_601 * _587);
    } else {
      _606 = _585;
      _607 = _586;
      _608 = _587;
    }
    if (_228 && (_etcParams.z > 0.0f)) {
      _638 = select((_606 <= 0.0031308f), (_606 * 12.92f), (((pow(_606, 0.41666666f)) * 1.055f) + -0.055f));
      _639 = select((_607 <= 0.0031308f), (_607 * 12.92f), (((pow(_607, 0.41666666f)) * 1.055f) + -0.055f));
      _640 = select((_608 <= 0.0031308f), (_608 * 12.92f), (((pow(_608, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _638 = _606;
      _639 = _607;
      _640 = _608;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _643 = (float)((uint)((uint)(_209)));
      if (!(_643 < _viewDir.w)) {
        if (!(!(_643 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _654 = 0.0f;
          _655 = 0.0f;
          _656 = 0.0f;
        } else {
          _654 = _638;
          _655 = _639;
          _656 = _640;
        }
      } else {
        _654 = 0.0f;
        _655 = 0.0f;
        _656 = 0.0f;
      }
    } else {
      _654 = _638;
      _655 = _639;
      _656 = _640;
    }
    // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
    // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      float3 _rndx_final_color = FinalizeSDR(float3(_654, _655, _656), _sunDirection.y, _moonDirection.y);
      _654 = _rndx_final_color.x;
      _655 = _rndx_final_color.y;
      _656 = _rndx_final_color.z;
    }
    // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
    SV_Target.x = _654;
    SV_Target.y = _655;
    SV_Target.z = _656;
    SV_Target.w = _225;
    break;
  }
  return SV_Target;
}
