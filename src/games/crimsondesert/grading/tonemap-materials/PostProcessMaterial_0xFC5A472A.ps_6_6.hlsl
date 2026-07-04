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


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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
  _35 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _71 = mad((_invViewProj[2].w), _35, mad((_invViewProj[1].w), _34, ((_invViewProj[0].w) * _32))) + (_invViewProj[3].w);
  _72 = (mad((_invViewProj[2].x), _35, mad((_invViewProj[1].x), _34, ((_invViewProj[0].x) * _32))) + (_invViewProj[3].x)) / _71;
  _73 = (mad((_invViewProj[2].y), _35, mad((_invViewProj[1].y), _34, ((_invViewProj[0].y) * _32))) + (_invViewProj[3].y)) / _71;
  _74 = (mad((_invViewProj[2].z), _35, mad((_invViewProj[1].z), _34, ((_invViewProj[0].z) * _32))) + (_invViewProj[3].z)) / _71;
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_75 < (uint)170000), _75, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._squareSize);
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
        _114 = float((int)(_113));
        _115 = float((int)(_104));
        _116 = float((int)(_95));
        _120 = sin(_114 + _87);
        _121 = sin(_115 + _88);
        _122 = sin(_116 + _89);
        _137 = _time.x * 0.20000000298023224f;
        _144 = sin(_137 * frac(sin(dot(float3(_120, _121, _122), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _114;
        _145 = sin(_137 * frac(sin(dot(float3(_120, _121, _122), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _115;
        _146 = sin(_137 * frac(sin(dot(float3(_120, _121, _122), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _116;
        _157 = max(abs((_87 - _84) + _144), max(abs((_88 - _85) + _145), abs((_89 - _86) + _146)));
        _158 = (_157 < _109);
        _159 = select(_158, _157, _109);
        _160 = select(_158, _144, _110);
        _161 = select(_158, _145, _111);
        _162 = select(_158, _146, _112);
        _163 = _113 + 1;
        if (!(_163 == 2)) {
          _109 = _159;
          _110 = _160;
          _111 = _161;
          _112 = _162;
          _113 = _163;
          continue;
        }
        while(true) {
          _106 = _104 + 1;
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
            _97 = _95 + 1;
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
            _187 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_179 < (uint)170000), _179, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
            _192 = ((_160 + _87) / _83) - _mainPosition.x;
            _193 = ((_161 + _88) / _83) - _mainPosition.y;
            _194 = ((_162 + _89) / _83) - _mainPosition.z;
            _205 = WaveReadLaneFirst(_materialIndex);
            _213 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_205 < (uint)170000), _205, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
            _219 = _72 - _mainPosition.x;
            _220 = _73 - _mainPosition.y;
            _221 = _74 - _mainPosition.z;
            _236 = WaveReadLaneFirst(_materialIndex);
            _244 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_236 < (uint)170000), _236, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ringRatio);
            _246 = ((1.0f - saturate(exp2(log2(abs(((1.0f - ((1.0f / max(9.999999747378752e-06f, (_213 * 0.8333333134651184f))) * sqrt(dot(float3(_219, _220, _221), float3(_219, _220, _221))))) * 2.500000238418579f) + -0.5f) * 0.6666666865348816f)))) * (1.0f / max(0.0010000000474974513f, _exposure0.x))) * _244;
            _250 = (_246 * 0.800000011920929f) + _25.x;
            _251 = (_246 * 0.4000000059604645f) + _25.y;
            _252 = (_246 * 0.20000000298023224f) + _25.z;
            _253 = uint(SV_Position.y);
            if (_etcParams.y == 1.0f) {
  // [sem: expr_sat]
              _266 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _253, 0)))).x) & 127)))) + 0.5f);
            } else {
  // [sem: expr_sat]
              _266 = saturate((_159 + 1.0f) - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _187)) * sqrt(dot(float3(_192, _193, _194), float3(_192, _193, _194))))) * 1.470588207244873f));
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
                _611 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
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
              _672 = select((_640 <= 0.0031308000907301903f), (_640 * 12.920000076293945f), (((pow(_640, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
              _673 = select((_641 <= 0.0031308000907301903f), (_641 * 12.920000076293945f), (((pow(_641, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
              _674 = select((_642 <= 0.0031308000907301903f), (_642 * 12.920000076293945f), (((pow(_642, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
            } else {
              _672 = _640;
              _673 = _641;
              _674 = _642;
            }
            if (!(!(_etcParams.y >= 1.0f))) {
              _679 = (float)((uint)_253);
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
