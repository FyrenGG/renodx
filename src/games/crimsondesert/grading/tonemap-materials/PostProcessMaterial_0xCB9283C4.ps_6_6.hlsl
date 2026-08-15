struct PostProcessWorldLoadingStruct {
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float _ringRatio;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _depthOuterMaskRadius;
  uint _invertDepthMask;
  float _depthIntensity;
  float _depthContrast;
  float _voronoiDotDensity;
  float _voronoiMovementSpeed;
  float _voronoiOffset;
  float3 _voronoiScrollSpeed;
  float _voronoiDotThreshold;
  float _voronoiDotRatio;
  float _rippleIntensity;
  float _rippleWidth;
  float _rippleCount;
  float _rippleContrast;
  float _rippleSpeed;
  float3 _ripplePosOffset;
  uint _noiseTex;
  float _bigRippleIntensity;
  float _bigRippleWidth;
  float _bigRipplePhaseOffset;
  float _bigRippleSpeed;
  float _bigRippleDistortionIntensity;
  float _bigRippleContrast;
  float _starburstIntensity;
  float _vignetteIntensity;
  uint _excludePlayer;
  float _ppWorldLoadingRatio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

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
  float4 _25;
  float _32;
  float _33;
  float _34;
  float _35;
  float _71;
  float _72;
  float _73;
  float _74;
  int _75;
  float _83;
  float _84;
  float _85;
  float _86;
  float _87;
  float _88;
  float _89;
  float _91;
  float _92;
  float _93;
  float _94;
  int _95;
  float _100;
  float _101;
  float _102;
  float _103;
  int _104;
  float _109;
  float _110;
  float _111;
  float _112;
  int _113;
  float _266;
  float _471;
  float _472;
  float _473;
  float _566;
  float _567;
  float _568;
  float _622;
  float _623;
  float _624;
  float _640;
  float _641;
  float _642;
  float _672;
  float _673;
  float _674;
  float _688;
  float _689;
  float _690;
  int _97;
  int _106;
  float _114;
  float _115;
  float _116;
  float _120;
  float _121;
  float _122;
  float _137;
  float _144;
  float _145;
  float _146;
  float _157;
  bool _158;
  float _159;
  float _160;
  float _161;
  float _162;
  int _163;
  int _179;
  float _187;
  float _192;
  float _193;
  float _194;
  int _205;
  float _213;
  float _219;
  float _220;
  float _221;
  int _236;
  float _244;
  float _246;
  float _250;
  float _251;
  float _252;
  uint _253;
  bool _269;
  float _275;
  float _324;
  float _325;
  float _326;
  float _328;
  float _335;
  float _336;
  float _337;
  float _356;
  float _357;
  float _358;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _410;
  float _411;
  float _412;
  float _413;
  float _414;
  float _415;
  float _416;
  float _433;
  float _434;
  float _435;
  float _436;
  float _442;
  float _445;
  float _452;
  float _453;
  float _454;
  float _483;
  float _508;
  float _509;
  float _510;
  float _529;
  float _530;
  float _531;
  float _537;
  float _541;
  float _542;
  float _543;
  float _544;
  float _549;
  float _574;
  float _578;
  float _579;
  float _580;
  float _581;
  float _611;
  float _630;
  float _631;
  float _635;
  float _679;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = (TEXCOORD.x * 2.0f) + -1.0f;
  _33 = TEXCOORD.y * 2.0f;
  _34 = 1.0f - _33;
  _35 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _71 = mad((_invViewProj[3].z), _35, mad((_invViewProj[3].y), _34, ((_invViewProj[3].x) * _32))) + (_invViewProj[3].w);
  _72 = (mad((_invViewProj[0].z), _35, mad((_invViewProj[0].y), _34, ((_invViewProj[0].x) * _32))) + (_invViewProj[0].w)) / _71;
  _73 = (mad((_invViewProj[1].z), _35, mad((_invViewProj[1].y), _34, ((_invViewProj[1].x) * _32))) + (_invViewProj[1].w)) / _71;
  _74 = (mad((_invViewProj[2].z), _35, mad((_invViewProj[2].y), _34, ((_invViewProj[2].x) * _32))) + (_invViewProj[2].w)) / _71;
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
  _84 = _83 * _72;
  _85 = _83 * _73;
  _86 = _83 * _74;
  _87 = floor(_84);
  _88 = floor(_85);
  _89 = floor(_86);
  _91 = 10.0f;
  _92 = 0.0f;
  _93 = 0.0f;
  _94 = 0.0f;
  _95 = -1;
  while(true) {
    _100 = _91;
    _101 = _92;
    _102 = _93;
    _103 = _94;
    _104 = -1;
    while(true) {
      _109 = _100;
      _110 = _101;
      _111 = _102;
      _112 = _103;
      _113 = -1;
      while(true) {
        _114 = (float)((int)(_113));
        _115 = (float)((int)(_104));
        _116 = (float)((int)(_95));
        _120 = sin(_114 + _87);
        _121 = sin(_115 + _88);
        _122 = sin(_116 + _89);
        _137 = _time.x * 0.2f;
        _144 = sin(_137 * frac(sin(dot(float3(_120, _121, _122), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _114;
        _145 = sin(_137 * frac(sin(dot(float3(_120, _121, _122), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _115;
        _146 = sin(_137 * frac(sin(dot(float3(_120, _121, _122), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _116;
        _157 = max(abs((_87 - _84) + _144), max(abs((_88 - _85) + _145), abs((_89 - _86) + _146)));
        _158 = (_157 < _109);
        _159 = select(_158, _157, _109);
        _160 = select(_158, _144, _110);
        _161 = select(_158, _145, _111);
        _162 = select(_158, _146, _112);
        _163 = (int)(_113) + (int)(1);
        if (!(_163 == 2)) {
          _109 = _159;
          _110 = _160;
          _111 = _161;
          _112 = _162;
          _113 = _163;
          continue;
        }
        while(true) {
          _106 = (int)(_104) + (int)(1);
          if (!(_106 == 2)) {
            _100 = _159;
            _101 = _160;
            _102 = _161;
            _103 = _162;
            _104 = _106;
            __loop_jump_target = 99;
            break;
          }
          while(true) {
            _97 = (int)(_95) + (int)(1);
            if (!(_97 == 2)) {
              _91 = _159;
              _92 = _160;
              _93 = _161;
              _94 = _162;
              _95 = _97;
              __loop_jump_target = 90;
              break;
            }
            _179 = WaveReadLaneFirst(_materialIndex);
            _187 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
            _192 = ((_160 + _87) / _83) - _mainPosition.x;
            _193 = ((_161 + _88) / _83) - _mainPosition.y;
            _194 = ((_162 + _89) / _83) - _mainPosition.z;
            _205 = WaveReadLaneFirst(_materialIndex);
            _213 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_205 < (uint)170000), _205, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
            _219 = _72 - _mainPosition.x;
            _220 = _73 - _mainPosition.y;
            _221 = _74 - _mainPosition.z;
            _236 = WaveReadLaneFirst(_materialIndex);
            _244 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_236 < (uint)170000), _236, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ringRatio);
            _246 = ((1.0f - saturate(exp2(log2(abs(((1.0f - ((1.0f / max(1e-05f, (_213 * 0.8333333f))) * sqrt(dot(float3(_219, _220, _221), float3(_219, _220, _221))))) * 2.5000002f) + -0.5f) * 0.6666667f)))) * (1.0f / max(0.001f, _exposure0.x))) * _244;
            _250 = (_246 * 0.8f) + _25.x;
            _251 = (_246 * 0.4f) + _25.y;
            _252 = (_246 * 0.2f) + _25.z;
            _253 = (uint)(SV_Position.y);
            if (_etcParams.y == 1.0f) {
              // [sem: expr_sat]
              _266 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _253, 0)))).x) & 127)))) + 0.5f);
            } else {
              // [sem: expr_sat]
              _266 = saturate((_159 + 1.0f) - ((1.0f - ((1.0f / max(1e-05f, _187)) * sqrt(dot(float3(_192, _193, _194), float3(_192, _193, _194))))) * 1.4705882f));
            }
            _269 = (_localToneMappingParams.w > 0.0f);
            if (_269) {
              // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
              // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
              float3 _rndx_tonemapped_color = TonemapReplacer(float3(_250, _251, _252));
              _529 = _rndx_tonemapped_color.x;
              _530 = _rndx_tonemapped_color.y;
              _531 = _rndx_tonemapped_color.z;
              // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
              if (_etcParams.z == 0.0f) {
                _537 = 1.0f - abs(_etcParams.w);
                _541 = saturate(_etcParams.w);  // [sem: expr_sat]
                _542 = (_537 * _529) + _541;
                _543 = (_537 * _530) + _541;
                _544 = (_537 * _531) + _541;
                if (_colorGradingParams.w > 0.0f) {
                  _549 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
                  _566 = (((max(0.0f, (1.0f - _542)) - _542) * _549) + _542);
                  _567 = (((max(0.0f, (1.0f - _543)) - _543) * _549) + _543);
                  _568 = (((max(0.0f, (1.0f - _544)) - _544) * _549) + _544);
                } else {
                  _566 = _542;
                  _567 = _543;
                  _568 = _544;
                }
                _574 = _userImageAdjust.y + 1.0f;
                _578 = _userImageAdjust.x + 0.5f;
                _579 = ((_566 + -0.5f) * _574) + _578;
                _580 = ((_567 + -0.5f) * _574) + _578;
                _581 = ((_568 + -0.5f) * _574) + _578;
                _611 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
                _622 = exp2(log2(saturate(mad(_colorBlind0.z, _581, mad(_colorBlind0.y, _580, (_colorBlind0.x * _579))))) * _611);
                _623 = exp2(log2(saturate(mad(_colorBlind1.z, _581, mad(_colorBlind1.y, _580, (_colorBlind1.x * _579))))) * _611);
                _624 = exp2(log2(saturate(mad(_colorBlind2.z, _581, mad(_colorBlind2.y, _580, (_colorBlind2.x * _579))))) * _611);
              } else {
                _622 = _529;
                _623 = _530;
                _624 = _531;
              }
            } else {
              _622 = _250;
              _623 = _251;
              _624 = _252;
            }
            if (_etcParams.y > 1.0f) {
              _630 = abs(_32);
              _631 = abs(_33 + -1.0f);
              // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
              // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
              float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
              if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
                _rndx_vignette_strength *= CUSTOM_VIGNETTE;
              }
              _635 = saturate(1.0f - (dot(float2(_630, _631), float2(_630, _631)) * _rndx_vignette_strength));  // [sem: expr_sat]
              // RenoDX: <<< [Patch: PostProcessMaterialVignette]
              _640 = (_635 * _622);
              _641 = (_635 * _623);
              _642 = (_635 * _624);
            } else {
              _640 = _622;
              _641 = _623;
              _642 = _624;
            }
            if (_269 && (_etcParams.z > 0.0f)) {
              _672 = select((_640 <= 0.0031308f), (_640 * 12.92f), (((pow(_640, 0.41666666f)) * 1.055f) + -0.055f));
              _673 = select((_641 <= 0.0031308f), (_641 * 12.92f), (((pow(_641, 0.41666666f)) * 1.055f) + -0.055f));
              _674 = select((_642 <= 0.0031308f), (_642 * 12.92f), (((pow(_642, 0.41666666f)) * 1.055f) + -0.055f));
            } else {
              _672 = _640;
              _673 = _641;
              _674 = _642;
            }
            if (!(!(_etcParams.y >= 1.0f))) {
              _679 = (float)((uint)((uint)(_253)));
              if (!(_679 < _viewDir.w)) {
                if (!(_679 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
                  _688 = _672;
                  _689 = _673;
                  _690 = _674;
                } else {
                  _688 = 0.0f;
                  _689 = 0.0f;
                  _690 = 0.0f;
                }
              } else {
                _688 = 0.0f;
                _689 = 0.0f;
                _690 = 0.0f;
              }
            } else {
              _688 = _672;
              _689 = _673;
              _690 = _674;
            }
            // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
            // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
            if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
              float3 _rndx_final_color = FinalizeSDR(float3(_688, _689, _690), _sunDirection.y, _moonDirection.y);
              _688 = _rndx_final_color.x;
              _689 = _rndx_final_color.y;
              _690 = _rndx_final_color.z;
            }
            // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
            SV_Target.x = _688;
            SV_Target.y = _689;
            SV_Target.z = _690;
            SV_Target.w = _266;
            break;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 99) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
    if (__loop_jump_target == 90) {
      __loop_jump_target = -1;
      continue;
    }
    if (__loop_jump_target != -1) {
      break;
    }
    break;
  }
  return SV_Target;
}
