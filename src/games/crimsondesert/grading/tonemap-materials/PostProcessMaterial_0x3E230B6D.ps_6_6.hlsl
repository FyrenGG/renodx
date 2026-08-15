struct PostProcessMemoryRead_CDStruct {
  float _memoryReadProgress;
  float _memoryReadBackgroundOpacity;
  float _memoryOpacity;
  float _enemyBossOpacity;
  uint _noiseTex;
  uint _auraTex;
  uint _glitchTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float3 _cubeSpaceSkyColor;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _cubeSpaceSpeedRatio;
  float _tempCubeSpaceRatio;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
};

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

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
  float _345;
  float _346;
  float _519;
  float _570;
  float _775;
  float _776;
  float _777;
  float _870;
  float _871;
  float _872;
  float _926;
  float _927;
  float _928;
  float _944;
  float _945;
  float _946;
  float _976;
  float _977;
  float _978;
  float _991;
  float _992;
  float _993;
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
  int _321;
  float _329;
  float _330;
  float _332;
  float _333;
  float _334;
  float _348;
  float _349;
  float _350;
  float _351;
  float _353;
  float _354;
  float _355;
  float _356;
  float _359;
  float _360;
  float _395;
  uint _404;
  uint _405;
  uint4 _407;
  float4 _410;
  float _428;
  float _429;
  float _430;
  float _432;
  float _433;
  float _434;
  float _435;
  float _438;
  float _439;
  float _442;
  float _443;
  float _447;
  float _449;
  float _450;
  float _451;
  float _452;
  float _454;
  float _457;
  float _458;
  float _459;
  float _460;
  float _469;
  float _473;
  float _477;
  float _479;
  int _496;
  float _504;
  int _509;
  float _517;
  int _520;
  float _528;
  float _543;
  float _547;
  float _554;
  float _555;
  float _556;
  uint _557;
  bool _573;
  float _579;
  float _628;
  float _629;
  float _630;
  float _632;
  float _639;
  float _640;
  float _641;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _714;
  float _715;
  float _716;
  float _717;
  float _718;
  float _719;
  float _720;
  float _737;
  float _738;
  float _739;
  float _740;
  float _746;
  float _749;
  float _756;
  float _757;
  float _758;
  float _787;
  float _812;
  float _813;
  float _814;
  float _833;
  float _834;
  float _835;
  float _841;
  float _845;
  float _846;
  float _847;
  float _848;
  float _853;
  float _878;
  float _882;
  float _883;
  float _884;
  float _885;
  float _915;
  float _934;
  float _935;
  float _939;
  float _982;
  float _1003;
  float _1004;
  float _1005;
  int __loop_jump_target = -1;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _43 = (pow(_33.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = (pow(_33.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_33.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f) * 10000.0f;
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f) * 10000.0f;
  _78 = (TEXCOORD.x * 2.0f) + -1.0f;
  _79 = TEXCOORD.y * 2.0f;
  _80 = 1.0f - _79;
  _81 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _93 = mad((_invViewProj[3].z), _81, mad((_invViewProj[3].y), _80, ((_invViewProj[3].x) * _78))) + (_invViewProj[3].w);
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _103 = WaveReadLaneFirst(_materialIndex);
  _111 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_103 < (uint)170000), _103, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _114 = saturate(1.0f - _111) * _102;
  if (!(!(_114 >= 0.001f))) {
    _144 = WaveReadLaneFirst(_materialIndex);
    _152 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _153 = _152 * ((mad((_invViewProj[0].z), _81, mad((_invViewProj[0].y), _80, ((_invViewProj[0].x) * _78))) + (_invViewProj[0].w)) / _93);
    _154 = _152 * ((mad((_invViewProj[1].z), _81, mad((_invViewProj[1].y), _80, ((_invViewProj[1].x) * _78))) + (_invViewProj[1].w)) / _93);
    _155 = _152 * ((mad((_invViewProj[2].z), _81, mad((_invViewProj[2].y), _80, ((_invViewProj[2].x) * _78))) + (_invViewProj[2].w)) / _93);
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
          _183 = (float)((int)(_182));
          _184 = (float)((int)(_173));
          _185 = (float)((int)(_164));
          _189 = sin(_183 + _156);
          _190 = sin(_184 + _157);
          _191 = sin(_185 + _158);
          _206 = _time.x * 0.2f;
          _213 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _183;
          _214 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _184;
          _215 = sin(_206 * frac(sin(dot(float3(_189, _190, _191), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _185;
          _226 = max(abs((_156 - _153) + _213), max(abs((_157 - _154) + _214), abs((_158 - _155) + _215)));
          _227 = (_226 < _178);
          _228 = select(_227, _226, _178);
          _229 = select(_227, _213, _179);
          _230 = select(_227, _214, _180);
          _231 = select(_227, _215, _181);
          _232 = (int)(_182) + (int)(1);
          if (!(_232 == 2)) {
            _178 = _228;
            _179 = _229;
            _180 = _230;
            _181 = _231;
            _182 = _232;
            continue;
          }
          while(true) {
            _175 = (int)(_173) + (int)(1);
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
              _166 = (int)(_164) + (int)(1);
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
              _259 = saturate((_228 + 1.0f) - ((1.0f - ((1.0f / max(1e-05f, _114)) * sqrt(dot(float3(_245, _246, _247), float3(_245, _246, _247))))) * 1.4705882f));
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
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_271 < (uint)170000), _271, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _289 = WaveReadLaneFirst(_materialIndex);
  _297 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_289 < (uint)170000), _289, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _298 = _297 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_279 < (uint)65000), _279, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_264 * TEXCOORD.x), ((_time.x * 0.15f) + (_264 * TEXCOORD.y)))))).y) + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_304.x, _304.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _319 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_304.x))))))) + 0.5f) * ((_298 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_304.y))))))) + 0.5f) * ((_298 * 0.01f) + TEXCOORD.y))), 0));
  _321 = _319.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _329 = (((float)((uint)((uint)((uint)((uint)(_319.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _330 = (((float)((uint)((uint)(((uint)((uint)(_319.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _332 = 1.0f - abs(_329);
  _333 = abs(_330);
  _334 = _332 - _333;
  if (!(_334 >= 0.0f)) {
    _345 = (select((_329 >= 0.0f), 1.0f, -1.0f) * (1.0f - _333));
    _346 = (select((_330 >= 0.0f), 1.0f, -1.0f) * _332);
  } else {
    _345 = _329;
    _346 = _330;
  }
  _348 = rsqrt(dot(float3(_345, _346, _334), float3(_345, _346, _334)));  // [sem: invLength]
  _349 = _348 * _345;
  _350 = _348 * _346;
  _351 = _348 * _334;
  _353 = rsqrt(dot(float3(_349, _350, _351), float3(_349, _350, _351)));  // [sem: invLength]
  _354 = _353 * _349;
  _355 = _353 * _350;
  _356 = _353 * _351;
  _359 = (_298 * 0.0005f) + TEXCOORD.x;
  _360 = (_298 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _395 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _359) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _360) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _359)), ((int)(_customRenderPassSizeInvSize.y * _360)), 0)))).x)))));
  _404 = (uint)((_bufferSizeAndInvSize.x * ((_298 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _405 = (uint)((_bufferSizeAndInvSize.y * ((_298 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _407 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_404, _405, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _410 = __3__36__0__0__g_gbufferNormal.Load(int3(_404, _405, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _428 = (saturate(_410.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _429 = (saturate(_410.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _430 = (saturate(_410.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _432 = rsqrt(dot(float3(_428, _429, _430), float3(_428, _429, _430)));  // [sem: invLength]
  _433 = _432 * _428;
  _434 = _432 * _429;
  _435 = _430 * _432;
  _438 = (((float)((uint)((uint)(((uint)((uint)(_407.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _439 = (((float)((uint)((uint)(_407.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _442 = (_438 + _439) * 0.5f;
  _443 = (_438 - _439) * 0.5f;
  _447 = (1.0f - abs(_442)) - abs(_443);
  _449 = rsqrt(dot(float3(_442, _443, _447), float3(_442, _443, _447)));  // [sem: invLength]
  _450 = _449 * _442;
  _451 = _449 * _443;
  _452 = _449 * _447;
  _454 = select((_435 >= 0.0f), 1.0f, -1.0f);
  _457 = -0.0f - (1.0f / (_454 + _435));
  _458 = _434 * _457;
  _459 = _458 * _433;
  _460 = _454 * _433;
  _469 = mad(_452, _433, mad(_451, _459, ((((_460 * _433) * _457) + 1.0f) * _450)));
  _473 = mad(_452, _434, mad(_451, (_454 + (_458 * _434)), ((_450 * _454) * _459)));
  _477 = mad(_452, _435, mad(_451, (-0.0f - _434), (-0.0f - (_460 * _450))));
  _479 = rsqrt(dot(float3(_469, _473, _477), float3(_469, _473, _477)));  // [sem: invLength]
  [branch]
  if (_321 == _renderPassMemory) {
    _496 = WaveReadLaneFirst(_materialIndex);
    _504 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_496 < (uint)170000), _496, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _519 = _504;
  } else {
    if (_321 == _renderPassEnemyBoss) {
      _509 = WaveReadLaneFirst(_materialIndex);
      _517 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_509 < (uint)170000), _509, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _519 = _517;
    } else {
      _519 = 1.0f;
    }
  }
  _520 = WaveReadLaneFirst(_materialIndex);
  _528 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_520 < (uint)170000), _520, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _543 = (saturate((_528 * 100.0f) + -99.0f) * _519) * exp2(log2(1.0f - abs(dot(float3(((((_479 * _469) - _354) * _395) + _354), ((((_479 * _473) - _355) * _395) + _355), ((((_479 * _477) - _356) * _395) + _356)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
  _547 = select((!(_395 == 0.0f)), _543, ((_543 * 0.06f) + 0.007f));
  _554 = ((_547 - _70) * _259) + _70;
  _555 = ((_547 - _71) * _259) + _71;
  _556 = ((_547 - _72) * _259) + _72;
  _557 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _570 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _557, 0)))).x) & 127)))) + 0.5f);
  } else {
    _570 = _259;
  }
  _573 = (_localToneMappingParams.w > 0.0f);
  if (_573) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_554, _555, _556));
    _833 = _rndx_tonemapped_color.x;
    _834 = _rndx_tonemapped_color.y;
    _835 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _841 = 1.0f - abs(_etcParams.w);
      _845 = saturate(_etcParams.w);  // [sem: expr_sat]
      _846 = (_841 * _833) + _845;
      _847 = (_841 * _834) + _845;
      _848 = (_841 * _835) + _845;
      if (_colorGradingParams.w > 0.0f) {
        _853 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _870 = (((max(0.0f, (1.0f - _846)) - _846) * _853) + _846);
        _871 = (((max(0.0f, (1.0f - _847)) - _847) * _853) + _847);
        _872 = (((max(0.0f, (1.0f - _848)) - _848) * _853) + _848);
      } else {
        _870 = _846;
        _871 = _847;
        _872 = _848;
      }
      _878 = _userImageAdjust.y + 1.0f;
      _882 = _userImageAdjust.x + 0.5f;
      _883 = ((_870 + -0.5f) * _878) + _882;
      _884 = ((_871 + -0.5f) * _878) + _882;
      _885 = ((_872 + -0.5f) * _878) + _882;
      _915 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _926 = exp2(log2(saturate(mad(_colorBlind0.z, _885, mad(_colorBlind0.y, _884, (_colorBlind0.x * _883))))) * _915);
      _927 = exp2(log2(saturate(mad(_colorBlind1.z, _885, mad(_colorBlind1.y, _884, (_colorBlind1.x * _883))))) * _915);
      _928 = exp2(log2(saturate(mad(_colorBlind2.z, _885, mad(_colorBlind2.y, _884, (_colorBlind2.x * _883))))) * _915);
    } else {
      _926 = _833;
      _927 = _834;
      _928 = _835;
    }
  } else {
    _926 = _554;
    _927 = _555;
    _928 = _556;
  }
  if (_etcParams.y > 1.0f) {
    _934 = abs(_78);
    _935 = abs(_79 + -1.0f);
    _939 = saturate(1.0f - (dot(float2(_934, _935), float2(_934, _935)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _944 = (_939 * _926);
    _945 = (_939 * _927);
    _946 = (_939 * _928);
  } else {
    _944 = _926;
    _945 = _927;
    _946 = _928;
  }
  if (_573 && (_etcParams.z > 0.0f)) {
    _976 = select((_944 <= 0.0031308f), (_944 * 12.92f), (((pow(_944, 0.41666666f)) * 1.055f) + -0.055f));
    _977 = select((_945 <= 0.0031308f), (_945 * 12.92f), (((pow(_945, 0.41666666f)) * 1.055f) + -0.055f));
    _978 = select((_946 <= 0.0031308f), (_946 * 12.92f), (((pow(_946, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _976 = _944;
    _977 = _945;
    _978 = _946;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _982 = (float)((uint)((uint)(_557)));
    if (!(_982 < _viewDir.w)) {
      if (!(_982 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _991 = _976;
        _992 = _977;
        _993 = _978;
      } else {
        _991 = 0.0f;
        _992 = 0.0f;
        _993 = 0.0f;
      }
    } else {
      _991 = 0.0f;
      _992 = 0.0f;
      _993 = 0.0f;
    }
  } else {
    _991 = _976;
    _992 = _977;
    _993 = _978;
  }
  _1003 = exp2(log2(_991 * 0.0001f) * 0.15930176f);
  _1004 = exp2(log2(_992 * 0.0001f) * 0.15930176f);
  _1005 = exp2(log2(_993 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1003 * 18.6875f) + 1.0f)) * ((_1003 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1004 * 18.6875f) + 1.0f)) * ((_1004 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1005 * 18.6875f) + 1.0f)) * ((_1005 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _570;
  return SV_Target;
}
