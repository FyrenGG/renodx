struct PostProcessAimHighlight_CDStruct {
  float _aimHighlightProgress;
  float _aimHighlightBackground;
  uint _noiseTex;
  uint _auraTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  uint _aimGimmickColor;
  uint _aimHighlightColor;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t30, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessAimHighlight_CD {
  PostProcessAimHighlight_CDStruct BindlessParameters_PostProcessAimHighlight_CD;
};

typedef BindlessParameters_PostProcessAimHighlight_CD BindlessParameters_PostProcessAimHighlight_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAimHighlight_CD_t> BindlessParameters_PostProcessAimHighlight_CD[] : register(b0, space100);

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
  float4 _33;
  float _43;
  float _44;
  float _45;
  float _70;
  float _71;
  float _72;
  float _78;
  float _79;
  float _80;
  float _81;
  float _93;
  int _94;
  float _102;
  int _103;
  float _111;
  float _114;
  float _160;
  float _161;
  float _162;
  float _163;
  int _164;
  float _169;
  float _170;
  float _171;
  float _172;
  int _173;
  float _178;
  float _179;
  float _180;
  float _181;
  int _182;
  float _259;
  float _344;
  float _345;
  float _540;
  float _745;
  float _746;
  float _747;
  float _840;
  float _841;
  float _842;
  float _896;
  float _897;
  float _898;
  float _914;
  float _915;
  float _916;
  float _946;
  float _947;
  float _948;
  float _961;
  float _962;
  float _963;
  int _144;
  float _152;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  int _166;
  int _175;
  float _183;
  float _184;
  float _185;
  float _189;
  float _190;
  float _191;
  float _206;
  float _213;
  float _214;
  float _215;
  float _226;
  bool _227;
  float _228;
  float _229;
  float _230;
  float _231;
  int _232;
  float _245;
  float _246;
  float _247;
  float _264;
  int _271;
  int _279;
  int _289;
  float _297;
  float _298;
  uint2 _304;
  uint _319;
  float _328;
  float _329;
  float _331;
  float _332;
  float _333;
  float _347;
  float _348;
  float _349;
  float _350;
  float _352;
  float _353;
  float _354;
  float _355;
  float _358;
  float _359;
  float _394;
  uint _403;
  uint _404;
  uint4 _406;
  float4 _409;
  float _427;
  float _428;
  float _429;
  float _431;
  float _432;
  float _433;
  float _434;
  float _437;
  float _438;
  float _441;
  float _442;
  float _446;
  float _448;
  float _449;
  float _450;
  float _451;
  float _453;
  float _456;
  float _457;
  float _458;
  float _459;
  float _468;
  float _472;
  float _476;
  float _478;
  int _491;
  float _499;
  float _513;
  float _517;
  float _524;
  float _525;
  float _526;
  uint _527;
  bool _543;
  float _549;
  float _598;
  float _599;
  float _600;
  float _602;
  float _609;
  float _610;
  float _611;
  float _630;
  float _631;
  float _632;
  float _633;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _690;
  float _707;
  float _708;
  float _709;
  float _710;
  float _716;
  float _719;
  float _726;
  float _727;
  float _728;
  float _757;
  float _782;
  float _783;
  float _784;
  float _803;
  float _804;
  float _805;
  float _811;
  float _815;
  float _816;
  float _817;
  float _818;
  float _823;
  float _848;
  float _852;
  float _853;
  float _854;
  float _855;
  float _885;
  float _904;
  float _905;
  float _909;
  float _952;
  float _973;
  float _974;
  float _975;
  int __loop_jump_target = -1;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _43 = (pow(_33.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = (pow(_33.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_33.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.8515625f - (_43 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _71 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.8515625f - (_44 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.8515625f - (_45 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _78 = (TEXCOORD.x * 2.0f) + -1.0f;
  _79 = TEXCOORD.y * 2.0f;
  _80 = 1.0f - _79;
  _81 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _93 = mad((_invViewProj[2].w), _81, mad((_invViewProj[1].w), _80, ((_invViewProj[0].w) * _78))) + (_invViewProj[3].w);
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_94 < (uint)170000), _94, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _103 = WaveReadLaneFirst(_materialIndex);
  _111 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_103 < (uint)170000), _103, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _114 = saturate(1.0f - _111) * _102;
  if (!(!(_114 >= 0.0010000000474974513f))) {
    _144 = WaveReadLaneFirst(_materialIndex);
    _152 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_144 < (uint)170000), _144, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _153 = _152 * ((mad((_invViewProj[2].x), _81, mad((_invViewProj[1].x), _80, ((_invViewProj[0].x) * _78))) + (_invViewProj[3].x)) / _93);
    _154 = _152 * ((mad((_invViewProj[2].y), _81, mad((_invViewProj[1].y), _80, ((_invViewProj[0].y) * _78))) + (_invViewProj[3].y)) / _93);
    _155 = _152 * ((mad((_invViewProj[2].z), _81, mad((_invViewProj[1].z), _80, ((_invViewProj[0].z) * _78))) + (_invViewProj[3].z)) / _93);
    _156 = floor(_153);
    _157 = floor(_154);
    _158 = floor(_155);
    _160 = 10.0f;
    _161 = 0.0f;
    _162 = 0.0f;
    _163 = 0.0f;
    _164 = -1;
    while(true) {
      _169 = _160;
      _170 = _161;
      _171 = _162;
      _172 = _163;
      _173 = -1;
      while(true) {
        _178 = _169;
        _179 = _170;
        _180 = _171;
        _181 = _172;
        _182 = -1;
        while(true) {
          _183 = float((int)(_182));
          _184 = float((int)(_173));
          _185 = float((int)(_164));
          _189 = sin(_183 + _156);
          _190 = sin(_184 + _157);
          _191 = sin(_185 + _158);
          _206 = _time.x * 0.20000000298023224f;
          _213 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _183;
          _214 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _184;
          _215 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _185;
          _226 = max(abs((_156 - _153) + _213), max(abs((_157 - _154) + _214), abs((_158 - _155) + _215)));
          _227 = (_226 < _178);
          _228 = select(_227, _226, _178);
          _229 = select(_227, _213, _179);
          _230 = select(_227, _214, _180);
          _231 = select(_227, _215, _181);
          _232 = _182 + 1;
          if (!(_232 == 2)) {
            _178 = _228;
            _179 = _229;
            _180 = _230;
            _181 = _231;
            _182 = _232;
            continue;
          }
          while(true) {
            _175 = _173 + 1;
            if (!(_175 == 2)) {
              _169 = _228;
              _170 = _229;
              _171 = _230;
              _172 = _231;
              _173 = _175;
              __loop_jump_target = 168;
              break;
            }
            while(true) {
              _166 = _164 + 1;
              if (!(_166 == 2)) {
                _160 = _228;
                _161 = _229;
                _162 = _230;
                _163 = _231;
                _164 = _166;
                __loop_jump_target = 159;
                break;
              }
              _245 = ((_229 + _156) / _152) - _mainPosition.x;
              _246 = ((_230 + _157) / _152) - _mainPosition.y;
              _247 = ((_231 + _158) / _152) - _mainPosition.z;
  // [sem: expr_sat]
              _259 = saturate((_228 + 1.0f) - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _114)) * sqrt(dot(float3(_245, _246, _247), float3(_245, _246, _247))))) * 1.470588207244873f));
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
        if (__loop_jump_target == 168) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 159) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _259 = 1.0f;  // [sem: expr_sat]
  }
  _264 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
  _271 = WaveReadLaneFirst(_materialIndex);
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_271 < (uint)170000), _271, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _289 = WaveReadLaneFirst(_materialIndex);
  _297 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_289 < (uint)170000), _289, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _298 = _297 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_279 < (uint)65000), _279, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_264 * TEXCOORD.x), ((_time.x * 0.15000000596046448f) + (_264 * TEXCOORD.y)))))).y) + -0.30000001192092896f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_304.x, _304.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _319 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_304.x)))))) + 0.5f) * ((_298 * 0.0010000000474974513f) + TEXCOORD.x)), int((float((int)(int(float((int)((int)(_304.y)))))) + 0.5f) * ((_298 * 0.009999999776482582f) + TEXCOORD.y)), 0));
  _328 = (((float)((uint)((uint)((uint)((uint)(_319.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _329 = (((float)((uint)((uint)(((uint)((uint)(_319.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _331 = 1.0f - abs(_328);
  _332 = abs(_329);
  _333 = _331 - _332;
  if (!(_333 >= 0.0f)) {
    _344 = (select((_328 >= 0.0f), 1.0f, -1.0f) * (1.0f - _332));
    _345 = (select((_329 >= 0.0f), 1.0f, -1.0f) * _331);
  } else {
    _344 = _328;
    _345 = _329;
  }
  _347 = rsqrt(dot(float3(_344, _345, _333), float3(_344, _345, _333)));  // [sem: invLength]
  _348 = _347 * _344;
  _349 = _347 * _345;
  _350 = _347 * _333;
  _352 = rsqrt(dot(float3(_348, _349, _350), float3(_348, _349, _350)));  // [sem: invLength]
  _353 = _352 * _348;
  _354 = _352 * _349;
  _355 = _352 * _350;
  _358 = (_298 * 0.0005000000237487257f) + TEXCOORD.x;
  _359 = (_298 * 0.004999999888241291f) + TEXCOORD.y;
  // [sem: expr_sat]
  _394 = saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _358) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _359) + -0.5f)), 0)))).x) & 16777215)))) * 5.960465188081798e-08f))) + 0.10000000149011612f) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _358), int(_customRenderPassSizeInvSize.y * _359), 0)))).x)))));
  _403 = uint((_bufferSizeAndInvSize.x * ((_298 * 0.0002500000118743628f) + TEXCOORD.x)) + -0.5f);
  _404 = uint((_bufferSizeAndInvSize.y * ((_298 * 0.0024999999441206455f) + TEXCOORD.y)) + -0.5f);
  _406 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_403, _404, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _409 = __3__36__0__0__g_gbufferNormal.Load(int3(_403, _404, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _427 = (saturate(_409.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _428 = (saturate(_409.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _429 = (saturate(_409.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _431 = rsqrt(dot(float3(_427, _428, _429), float3(_427, _428, _429)));  // [sem: invLength]
  _432 = _431 * _427;
  _433 = _431 * _428;
  _434 = _429 * _431;
  _437 = (((float)((uint)((uint)(((uint)((uint)(_406.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _438 = (((float)((uint)((uint)(_406.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _441 = (_437 + _438) * 0.5f;
  _442 = (_437 - _438) * 0.5f;
  _446 = (1.0f - abs(_441)) - abs(_442);
  _448 = rsqrt(dot(float3(_441, _442, _446), float3(_441, _442, _446)));  // [sem: invLength]
  _449 = _448 * _441;
  _450 = _448 * _442;
  _451 = _448 * _446;
  _453 = select((_434 >= 0.0f), 1.0f, -1.0f);
  _456 = -0.0f - (1.0f / (_453 + _434));
  _457 = _433 * _456;
  _458 = _457 * _432;
  _459 = _453 * _432;
  _468 = mad(_451, _432, mad(_450, _458, ((((_459 * _432) * _456) + 1.0f) * _449)));
  _472 = mad(_451, _433, mad(_450, (_453 + (_457 * _433)), ((_449 * _453) * _458)));
  _476 = mad(_451, _434, mad(_450, (-0.0f - _433), (-0.0f - (_459 * _449))));
  _478 = rsqrt(dot(float3(_468, _472, _476), float3(_468, _472, _476)));  // [sem: invLength]
  _491 = WaveReadLaneFirst(_materialIndex);
  _499 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_491 < (uint)170000), _491, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _513 = exp2(log2(1.0f - abs(dot(float3(((((_478 * _468) - _353) * _394) + _353), ((((_478 * _472) - _354) * _394) + _354), ((((_478 * _476) - _355) * _394) + _355)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f) * saturate((_499 * 100.0f) + -99.0f);
  _517 = select((!(_394 == 0.0f)), _513, ((_513 * 0.25f) + 0.009999999776482582f));
  _524 = ((_517 - _70) * _259) + _70;
  _525 = ((_517 - _71) * _259) + _71;
  _526 = ((_517 - _72) * _259) + _72;
  _527 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _540 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _527, 0)))).x) & 127)))) + 0.5f);
  } else {
    _540 = _259;
  }
  _543 = (_localToneMappingParams.w > 0.0f);
  if (_543) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_524, _525, _526));
    _803 = _rndx_tonemapped_color.x;
    _804 = _rndx_tonemapped_color.y;
    _805 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _811 = 1.0f - abs(_etcParams.w);
      _815 = saturate(_etcParams.w);  // [sem: expr_sat]
      _816 = (_811 * _803) + _815;
      _817 = (_811 * _804) + _815;
      _818 = (_811 * _805) + _815;
      if (_colorGradingParams.w > 0.0f) {
        _823 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _840 = (((max(0.0f, (1.0f - _816)) - _816) * _823) + _816);
        _841 = (((max(0.0f, (1.0f - _817)) - _817) * _823) + _817);
        _842 = (((max(0.0f, (1.0f - _818)) - _818) * _823) + _818);
      } else {
        _840 = _816;
        _841 = _817;
        _842 = _818;
      }
      _848 = _userImageAdjust.y + 1.0f;
      _852 = _userImageAdjust.x + 0.5f;
      _853 = ((_840 + -0.5f) * _848) + _852;
      _854 = ((_841 + -0.5f) * _848) + _852;
      _855 = ((_842 + -0.5f) * _848) + _852;
      _885 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _896 = exp2(log2(saturate(mad(_colorBlind0.z, _855, mad(_colorBlind0.y, _854, (_colorBlind0.x * _853))))) * _885);
      _897 = exp2(log2(saturate(mad(_colorBlind1.z, _855, mad(_colorBlind1.y, _854, (_colorBlind1.x * _853))))) * _885);
      _898 = exp2(log2(saturate(mad(_colorBlind2.z, _855, mad(_colorBlind2.y, _854, (_colorBlind2.x * _853))))) * _885);
    } else {
      _896 = _803;
      _897 = _804;
      _898 = _805;
    }
  } else {
    _896 = _524;
    _897 = _525;
    _898 = _526;
  }
  if (_etcParams.y > 1.0f) {
    _904 = abs(_78);
    _905 = abs(_79 + -1.0f);
    _909 = saturate(1.0f - (dot(float2(_904, _905), float2(_904, _905)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _914 = (_909 * _896);
    _915 = (_909 * _897);
    _916 = (_909 * _898);
  } else {
    _914 = _896;
    _915 = _897;
    _916 = _898;
  }
  if (_543 && (_etcParams.z > 0.0f)) {
    _946 = select((_914 <= 0.0031308000907301903f), (_914 * 12.920000076293945f), (((pow(_914, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _947 = select((_915 <= 0.0031308000907301903f), (_915 * 12.920000076293945f), (((pow(_915, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _948 = select((_916 <= 0.0031308000907301903f), (_916 * 12.920000076293945f), (((pow(_916, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _946 = _914;
    _947 = _915;
    _948 = _916;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _952 = (float)((uint)_527);
    if (!(_952 < _viewDir.w)) {
      if (!(_952 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _961 = _946;
        _962 = _947;
        _963 = _948;
      } else {
        _961 = 0.0f;
        _962 = 0.0f;
        _963 = 0.0f;
      }
    } else {
      _961 = 0.0f;
      _962 = 0.0f;
      _963 = 0.0f;
    }
  } else {
    _961 = _946;
    _962 = _947;
    _963 = _948;
  }
  _973 = exp2(log2(_961 * 9.999999747378752e-05f) * 0.1593017578125f);
  _974 = exp2(log2(_962 * 9.999999747378752e-05f) * 0.1593017578125f);
  _975 = exp2(log2(_963 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_973 * 18.6875f) + 1.0f)) * ((_973 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_974 * 18.6875f) + 1.0f)) * ((_974 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_975 * 18.6875f) + 1.0f)) * ((_975 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _540;
  return SV_Target;
}
