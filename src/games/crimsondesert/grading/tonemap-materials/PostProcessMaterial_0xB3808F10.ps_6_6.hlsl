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

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _26;
  float _31;
  float _32;
  float _33;
  float _38;
  float _50;
  float _59;
  float _68;
  float _77;
  int _80;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _94;
  int _97;
  float _98;
  float _99;
  float _100;
  float _101;
  int _102;
  int _103;
  int _156;
  int _157;
  int _158;
  int _165;
  float _272;
  float _475;
  float _476;
  float _477;
  float _570;
  float _571;
  float _572;
  float _626;
  float _627;
  float _628;
  float _644;
  float _645;
  float _646;
  float _676;
  float _677;
  float _678;
  float _692;
  float _693;
  float _694;
  float _104;
  float _105;
  float _106;
  float _108;
  float _110;
  float _112;
  float _115;
  float _122;
  float _129;
  float _136;
  float _147;
  bool _148;
  float _149;
  float _150;
  float _151;
  float _152;
  int _153;
  int _160;
  int _170;
  float _178;
  float _183;
  float _187;
  float _191;
  int _194;
  float _202;
  float _205;
  float _207;
  float _209;
  int _212;
  float _220;
  float _241;
  float _243;
  float _245;
  float _247;
  uint _248;
  bool _275;
  float _279;
  float _298;
  float _314;
  float _330;
  float _331;
  float _335;
  float _338;
  float _341;
  float _348;
  float _355;
  float _362;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _368;
  float _384;
  float _400;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _437;
  float _438;
  float _439;
  float _440;
  float _443;
  float _446;
  float _450;
  float _454;
  float _458;
  float _478;
  float _490;
  float _502;
  float _514;
  float _521;
  float _528;
  float _535;
  float _541;
  float _542;
  float _544;
  float _546;
  float _548;
  float _553;
  float _574;
  float _576;
  float _579;
  float _582;
  float _585;
  float _591;
  float _631;
  float _633;
  float _639;
  float _681;
  int __loop_jump_target = -1;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (TEXCOORD.x * 2.0f) + -1.0f;
  _32 = TEXCOORD.y * 2.0f;
  _33 = 1.0f - _32;
  _38 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _50 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _38, mad((_invViewProj[3].y), _33, ((_invViewProj[3].x) * _31)));
  _59 = (mad((_invViewProj[0].z), _38, mad((_invViewProj[0].y), _33, ((_invViewProj[0].x) * _31))) + (_invViewProj[0].w)) / _50;
  _68 = (mad((_invViewProj[1].z), _38, mad((_invViewProj[1].y), _33, ((_invViewProj[1].x) * _31))) + (_invViewProj[1].w)) / _50;
  _77 = (mad((_invViewProj[2].z), _38, mad((_invViewProj[2].y), _33, ((_invViewProj[2].x) * _31))) + (_invViewProj[2].w)) / _50;
  _80 = WaveReadLaneFirst(_materialIndex);
  _88 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
  _89 = _88 * _59;
  _90 = _88 * _68;
  _91 = _88 * _77;
  _92 = floor(_89);
  _93 = floor(_90);
  _94 = floor(_91);
  _97 = -1;
  _98 = 0.0f;
  _99 = 0.0f;
  _100 = 0.0f;
  _101 = 10.0f;
  _102 = -1;
  _103 = -1;
  while(true) {
    _104 = (float)((int)(_97));
    _105 = (float)((int)(_102));
    _106 = (float)((int)(_103));
    _108 = sin(_104 + _92);
    _110 = sin(_105 + _93);
    _112 = sin(_106 + _94);
    _115 = _time.x * 0.2f;
    _122 = sin(frac(sin(dot(float3(_108, _110, _112), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _115) + _104;
    _129 = sin(frac(sin(dot(float3(_108, _110, _112), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _115) + _105;
    _136 = sin(frac(sin(dot(float3(_108, _110, _112), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _115) + _106;
    _147 = max(abs((_92 - _89) + _122), max(abs((_93 - _90) + _129), abs((_94 - _91) + _136)));
    _148 = (_147 < _101);
    _149 = select(_148, _147, _101);
    _150 = select(_148, _122, _100);
    _151 = select(_148, _129, _99);
    _152 = select(_148, _136, _98);
    _153 = (int)(_97) + (int)(1);
    if (!(_153 == 2)) {
      _156 = _153;
      _157 = _102;
      _158 = _103;
      while(true) {
        _97 = _156;
        _98 = _152;
        _99 = _151;
        _100 = _150;
        _101 = _149;
        _102 = _157;
        _103 = _158;
        __loop_jump_target = 96;
        break;
        break;
      }
      if (__loop_jump_target == 96) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _160 = (int)(_102) + (int)(1);
    if (!(_160 == 2)) {
      _156 = -1;
      _157 = _160;
      _158 = _103;
      while(true) {
        _97 = _156;
        _98 = _152;
        _99 = _151;
        _100 = _150;
        _101 = _149;
        _102 = _157;
        _103 = _158;
        __loop_jump_target = 96;
        break;
        break;
      }
      if (__loop_jump_target == 96) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _165 = ((int)(_103) + (int)(1));
    while(true) {
      if (!(_165 == 2)) {
        while(true) {
          _156 = -1;
          _157 = -1;
          _158 = _165;
          while(true) {
            _97 = _156;
            _98 = _152;
            _99 = _151;
            _100 = _150;
            _101 = _149;
            _102 = _157;
            _103 = _158;
            __loop_jump_target = 96;
            break;
            break;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
      }
      _170 = WaveReadLaneFirst(_materialIndex);
      _178 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_170 < (uint)170000), _170, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
      _183 = ((_150 + _92) / _88) - _mainPosition.x;
      _187 = ((_151 + _93) / _88) - _mainPosition.y;
      _191 = ((_152 + _94) / _88) - _mainPosition.z;
      _194 = WaveReadLaneFirst(_materialIndex);
      _202 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
      _205 = _59 - _mainPosition.x;
      _207 = _68 - _mainPosition.y;
      _209 = _77 - _mainPosition.z;
      _212 = WaveReadLaneFirst(_materialIndex);
      _220 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_212 < (uint)170000), _212, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ringRatio);
      _241 = ((1.0f - saturate(exp2(log2(abs(((1.0f - (sqrt(dot(float3(_205, _207, _209), float3(_205, _207, _209))) * (1.0f / max(1e-05f, (_202 * 0.8333333f))))) * 2.5000002f) + -0.5f) * 0.6666667f)))) * _220) * (1.0f / max(0.001f, _exposure0.x));
      _243 = (_241 * 0.8f) + _26.x;
      _245 = (_241 * 0.4f) + _26.y;
      _247 = (_241 * 0.2f) + _26.z;
      _248 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        // [sem: expr_sat]
        _272 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _248, 0)))).x) & 127)))) + 0.5f);
      } else {
        // [sem: expr_sat]
        _272 = saturate((_149 + 1.0f) - ((1.0f - (sqrt(dot(float3(_183, _187, _191), float3(_183, _187, _191))) * (1.0f / max(1e-05f, _178)))) * 1.4705882f));
      }
      _275 = (_localToneMappingParams.w > 0.0f);
      if (_275) {
              // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
              // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
              float3 _rndx_tonemapped_color = TonemapReplacer(float3(_243, _245, _247));
              _521 = _rndx_tonemapped_color.x;
              _528 = _rndx_tonemapped_color.y;
              _535 = _rndx_tonemapped_color.z;
              // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _541 = 1.0f - abs(_etcParams.w);
          _542 = saturate(_etcParams.w);  // [sem: expr_sat]
          _544 = (_541 * _521) + _542;
          _546 = (_541 * _528) + _542;
          _548 = (_541 * _535) + _542;
          if (_colorGradingParams.w > 0.0f) {
            _553 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _570 = (((max(0.0f, (1.0f - _544)) - _544) * _553) + _544);
            _571 = (((max(0.0f, (1.0f - _546)) - _546) * _553) + _546);
            _572 = (((max(0.0f, (1.0f - _548)) - _548) * _553) + _548);
          } else {
            _570 = _544;
            _571 = _546;
            _572 = _548;
          }
          _574 = _userImageAdjust.y + 1.0f;
          _576 = _userImageAdjust.x + 0.5f;
          _579 = ((_570 + -0.5f) * _574) + _576;
          _582 = ((_571 + -0.5f) * _574) + _576;
          _585 = ((_572 + -0.5f) * _574) + _576;
          _591 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _626 = exp2(log2(saturate(mad(_colorBlind0.z, _585, mad(_colorBlind0.y, _582, (_colorBlind0.x * _579))))) * _591);
          _627 = exp2(log2(saturate(mad(_colorBlind1.z, _585, mad(_colorBlind1.y, _582, (_colorBlind1.x * _579))))) * _591);
          _628 = exp2(log2(saturate(mad(_colorBlind2.z, _585, mad(_colorBlind2.y, _582, (_colorBlind2.x * _579))))) * _591);
        } else {
          _626 = _521;
          _627 = _528;
          _628 = _535;
        }
      } else {
        _626 = _243;
        _627 = _245;
        _628 = _247;
      }
      if (_etcParams.y > 1.0f) {
        _631 = abs(_31);
        _633 = abs(_32 + -1.0f);
              // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
              // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
              float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
              if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
                _rndx_vignette_strength *= CUSTOM_VIGNETTE;
              }
              _639 = saturate(1.0f - (dot(float2(_631, _633), float2(_631, _633)) * _rndx_vignette_strength));  // [sem: expr_sat]
              // RenoDX: <<< [Patch: PostProcessMaterialVignette]
        _644 = (_639 * _626);
        _645 = (_639 * _627);
        _646 = (_639 * _628);
      } else {
        _644 = _626;
        _645 = _627;
        _646 = _628;
      }
      if (_275 && (_etcParams.z > 0.0f)) {
        _676 = select((_644 <= 0.0031308f), (_644 * 12.92f), (((pow(_644, 0.41666666f)) * 1.055f) + -0.055f));
        _677 = select((_645 <= 0.0031308f), (_645 * 12.92f), (((pow(_645, 0.41666666f)) * 1.055f) + -0.055f));
        _678 = select((_646 <= 0.0031308f), (_646 * 12.92f), (((pow(_646, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _676 = _644;
        _677 = _645;
        _678 = _646;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _681 = (float)((uint)((uint)(_248)));
        if (!(_681 < _viewDir.w)) {
          if (!(!(_681 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _692 = 0.0f;
            _693 = 0.0f;
            _694 = 0.0f;
          } else {
            _692 = _676;
            _693 = _677;
            _694 = _678;
          }
        } else {
          _692 = 0.0f;
          _693 = 0.0f;
          _694 = 0.0f;
        }
      } else {
        _692 = _676;
        _693 = _677;
        _694 = _678;
      }
      if (!((_global_0[0]) == 0)) {
        _165 = 2;
        continue;
      }
            // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
            // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
            if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
              float3 _rndx_final_color = FinalizeSDR(float3(_692, _693, _694), _sunDirection.y, _moonDirection.y);
              _692 = _rndx_final_color.x;
              _693 = _rndx_final_color.y;
              _694 = _rndx_final_color.z;
            }
            // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
      SV_Target.x = _692;
      SV_Target.y = _693;
      SV_Target.z = _694;
      SV_Target.w = _272;
      break;
    }
    break;
  }
  return SV_Target;
}
