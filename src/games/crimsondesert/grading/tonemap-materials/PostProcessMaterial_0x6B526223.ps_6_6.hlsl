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
  float _42;
  float _43;
  float _44;
  float _45;
  float _57;
  int _58;
  float _66;
  int _67;
  float _75;
  float _78;
  float _124;
  float _125;
  float _126;
  float _127;
  int _128;
  float _133;
  float _134;
  float _135;
  float _136;
  int _137;
  float _142;
  float _143;
  float _144;
  float _145;
  int _146;
  float _223;
  float _308;
  float _309;
  float _504;
  float _709;
  float _710;
  float _711;
  float _804;
  float _805;
  float _806;
  float _860;
  float _861;
  float _862;
  float _878;
  float _879;
  float _880;
  float _910;
  float _911;
  float _912;
  float _925;
  float _926;
  float _927;
  int _108;
  float _116;
  float _117;
  float _118;
  float _119;
  float _120;
  float _121;
  float _122;
  int _130;
  int _139;
  float _147;
  float _148;
  float _149;
  float _153;
  float _154;
  float _155;
  float _170;
  float _177;
  float _178;
  float _179;
  float _190;
  bool _191;
  float _192;
  float _193;
  float _194;
  float _195;
  int _196;
  float _209;
  float _210;
  float _211;
  float _228;
  int _235;
  int _243;
  int _253;
  float _261;
  float _262;
  uint2 _268;
  uint _283;
  float _292;
  float _293;
  float _295;
  float _296;
  float _297;
  float _311;
  float _312;
  float _313;
  float _314;
  float _316;
  float _317;
  float _318;
  float _319;
  float _322;
  float _323;
  float _358;
  uint _367;
  uint _368;
  uint4 _370;
  float4 _373;
  float _391;
  float _392;
  float _393;
  float _395;
  float _396;
  float _397;
  float _398;
  float _401;
  float _402;
  float _405;
  float _406;
  float _410;
  float _412;
  float _413;
  float _414;
  float _415;
  float _417;
  float _420;
  float _421;
  float _422;
  float _423;
  float _432;
  float _436;
  float _440;
  float _442;
  int _455;
  float _463;
  float _477;
  float _481;
  float _488;
  float _489;
  float _490;
  uint _491;
  bool _507;
  float _513;
  float _562;
  float _563;
  float _564;
  float _566;
  float _573;
  float _574;
  float _575;
  float _594;
  float _595;
  float _596;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _602;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float _653;
  float _654;
  float _671;
  float _672;
  float _673;
  float _674;
  float _680;
  float _683;
  float _690;
  float _691;
  float _692;
  float _721;
  float _746;
  float _747;
  float _748;
  float _767;
  float _768;
  float _769;
  float _775;
  float _779;
  float _780;
  float _781;
  float _782;
  float _787;
  float _812;
  float _816;
  float _817;
  float _818;
  float _819;
  float _849;
  float _868;
  float _869;
  float _873;
  float _916;
  int __loop_jump_target = -1;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _42 = (TEXCOORD.x * 2.0f) + -1.0f;
  _43 = TEXCOORD.y * 2.0f;
  _44 = 1.0f - _43;
  _45 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _57 = mad((_invViewProj[3].z), _45, mad((_invViewProj[3].y), _44, ((_invViewProj[3].x) * _42))) + (_invViewProj[3].w);
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _78 = saturate(1.0f - _75) * _66;
  if (!(!(_78 >= 0.001f))) {
    _108 = WaveReadLaneFirst(_materialIndex);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _117 = _116 * ((mad((_invViewProj[0].z), _45, mad((_invViewProj[0].y), _44, ((_invViewProj[0].x) * _42))) + (_invViewProj[0].w)) / _57);
    _118 = _116 * ((mad((_invViewProj[1].z), _45, mad((_invViewProj[1].y), _44, ((_invViewProj[1].x) * _42))) + (_invViewProj[1].w)) / _57);
    _119 = _116 * ((mad((_invViewProj[2].z), _45, mad((_invViewProj[2].y), _44, ((_invViewProj[2].x) * _42))) + (_invViewProj[2].w)) / _57);
    _120 = floor(_117);
    _121 = floor(_118);
    _122 = floor(_119);
    _124 = 10.0f;
    _125 = 0.0f;
    _126 = 0.0f;
    _127 = 0.0f;
    _128 = -1;
    while(true) {
      _133 = _124;
      _134 = _125;
      _135 = _126;
      _136 = _127;
      _137 = -1;
      while(true) {
        _142 = _133;
        _143 = _134;
        _144 = _135;
        _145 = _136;
        _146 = -1;
        while(true) {
          _147 = (float)((int)(_146));
          _148 = (float)((int)(_137));
          _149 = (float)((int)(_128));
          _153 = sin(_147 + _120);
          _154 = sin(_148 + _121);
          _155 = sin(_149 + _122);
          _170 = _time.x * 0.2f;
          _177 = sin(_170 * frac(sin(dot(float3(_153, _154, _155), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _147;
          _178 = sin(_170 * frac(sin(dot(float3(_153, _154, _155), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _148;
          _179 = sin(_170 * frac(sin(dot(float3(_153, _154, _155), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _149;
          _190 = max(abs((_120 - _117) + _177), max(abs((_121 - _118) + _178), abs((_122 - _119) + _179)));
          _191 = (_190 < _142);
          _192 = select(_191, _190, _142);
          _193 = select(_191, _177, _143);
          _194 = select(_191, _178, _144);
          _195 = select(_191, _179, _145);
          _196 = (int)(_146) + (int)(1);
          if (!(_196 == 2)) {
            _142 = _192;
            _143 = _193;
            _144 = _194;
            _145 = _195;
            _146 = _196;
            continue;
          }
          while(true) {
            _139 = (int)(_137) + (int)(1);
            if (!(_139 == 2)) {
              _133 = _192;
              _134 = _193;
              _135 = _194;
              _136 = _195;
              _137 = _139;
              __loop_jump_target = 132;
              break;
            }
            while(true) {
              _130 = (int)(_128) + (int)(1);
              if (!(_130 == 2)) {
                _124 = _192;
                _125 = _193;
                _126 = _194;
                _127 = _195;
                _128 = _130;
                __loop_jump_target = 123;
                break;
              }
              _209 = ((_193 + _120) / _116) - _mainPosition.x;
              _210 = ((_194 + _121) / _116) - _mainPosition.y;
              _211 = ((_195 + _122) / _116) - _mainPosition.z;
              // [sem: expr_sat]
              _223 = saturate((_192 + 1.0f) - ((1.0f - ((1.0f / max(1e-05f, _78)) * sqrt(dot(float3(_209, _210, _211), float3(_209, _210, _211))))) * 1.4705882f));
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
        if (__loop_jump_target == 132) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 123) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _223 = 1.0f;  // [sem: expr_sat]
  }
  _228 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
  _235 = WaveReadLaneFirst(_materialIndex);
  _243 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_235 < (uint)170000), _235, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _253 = WaveReadLaneFirst(_materialIndex);
  _261 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_253 < (uint)170000), _253, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _262 = _261 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 * TEXCOORD.x), ((_time.x * 0.15f) + (_228 * TEXCOORD.y)))))).y) + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_268.x, _268.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _283 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_268.x))))))) + 0.5f) * ((_262 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_268.y))))))) + 0.5f) * ((_262 * 0.01f) + TEXCOORD.y))), 0));
  _292 = (((float)((uint)((uint)((uint)((uint)(_283.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _293 = (((float)((uint)((uint)(((uint)((uint)(_283.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _295 = 1.0f - abs(_292);
  _296 = abs(_293);
  _297 = _295 - _296;
  if (!(_297 >= 0.0f)) {
    _308 = (select((_292 >= 0.0f), 1.0f, -1.0f) * (1.0f - _296));
    _309 = (select((_293 >= 0.0f), 1.0f, -1.0f) * _295);
  } else {
    _308 = _292;
    _309 = _293;
  }
  _311 = rsqrt(dot(float3(_308, _309, _297), float3(_308, _309, _297)));  // [sem: invLength]
  _312 = _311 * _308;
  _313 = _311 * _309;
  _314 = _311 * _297;
  _316 = rsqrt(dot(float3(_312, _313, _314), float3(_312, _313, _314)));  // [sem: invLength]
  _317 = _316 * _312;
  _318 = _316 * _313;
  _319 = _316 * _314;
  _322 = (_262 * 0.0005f) + TEXCOORD.x;
  _323 = (_262 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _358 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _322) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _323) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _322)), ((int)(_customRenderPassSizeInvSize.y * _323)), 0)))).x)))));
  _367 = (uint)((_bufferSizeAndInvSize.x * ((_262 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _368 = (uint)((_bufferSizeAndInvSize.y * ((_262 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _370 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_367, _368, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _373 = __3__36__0__0__g_gbufferNormal.Load(int3(_367, _368, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _391 = (saturate(_373.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _392 = (saturate(_373.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _393 = (saturate(_373.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _395 = rsqrt(dot(float3(_391, _392, _393), float3(_391, _392, _393)));  // [sem: invLength]
  _396 = _395 * _391;
  _397 = _395 * _392;
  _398 = _393 * _395;
  _401 = (((float)((uint)((uint)(((uint)((uint)(_370.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _402 = (((float)((uint)((uint)(_370.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _405 = (_401 + _402) * 0.5f;
  _406 = (_401 - _402) * 0.5f;
  _410 = (1.0f - abs(_405)) - abs(_406);
  _412 = rsqrt(dot(float3(_405, _406, _410), float3(_405, _406, _410)));  // [sem: invLength]
  _413 = _412 * _405;
  _414 = _412 * _406;
  _415 = _412 * _410;
  _417 = select((_398 >= 0.0f), 1.0f, -1.0f);
  _420 = -0.0f - (1.0f / (_417 + _398));
  _421 = _397 * _420;
  _422 = _421 * _396;
  _423 = _417 * _396;
  _432 = mad(_415, _396, mad(_414, _422, ((((_423 * _396) * _420) + 1.0f) * _413)));
  _436 = mad(_415, _397, mad(_414, (_417 + (_421 * _397)), ((_413 * _417) * _422)));
  _440 = mad(_415, _398, mad(_414, (-0.0f - _397), (-0.0f - (_423 * _413))));
  _442 = rsqrt(dot(float3(_432, _436, _440), float3(_432, _436, _440)));  // [sem: invLength]
  _455 = WaveReadLaneFirst(_materialIndex);
  _463 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_455 < (uint)170000), _455, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _477 = exp2(log2(1.0f - abs(dot(float3(((((_442 * _432) - _317) * _358) + _317), ((((_442 * _436) - _318) * _358) + _318), ((((_442 * _440) - _319) * _358) + _319)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f) * saturate((_463 * 100.0f) + -99.0f);
  _481 = select((!(_358 == 0.0f)), _477, ((_477 * 0.25f) + 0.01f));
  _488 = ((_481 - _33.x) * _223) + _33.x;
  _489 = ((_481 - _33.y) * _223) + _33.y;
  _490 = ((_481 - _33.z) * _223) + _33.z;
  _491 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _504 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _491, 0)))).x) & 127)))) + 0.5f);
  } else {
    _504 = _223;
  }
  _507 = (_localToneMappingParams.w > 0.0f);
  if (_507) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_488, _489, _490));
    _767 = _rndx_tonemapped_color.x;
    _768 = _rndx_tonemapped_color.y;
    _769 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _775 = 1.0f - abs(_etcParams.w);
      _779 = saturate(_etcParams.w);  // [sem: expr_sat]
      _780 = (_775 * _767) + _779;
      _781 = (_775 * _768) + _779;
      _782 = (_775 * _769) + _779;
      if (_colorGradingParams.w > 0.0f) {
        _787 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _804 = (((max(0.0f, (1.0f - _780)) - _780) * _787) + _780);
        _805 = (((max(0.0f, (1.0f - _781)) - _781) * _787) + _781);
        _806 = (((max(0.0f, (1.0f - _782)) - _782) * _787) + _782);
      } else {
        _804 = _780;
        _805 = _781;
        _806 = _782;
      }
      _812 = _userImageAdjust.y + 1.0f;
      _816 = _userImageAdjust.x + 0.5f;
      _817 = ((_804 + -0.5f) * _812) + _816;
      _818 = ((_805 + -0.5f) * _812) + _816;
      _819 = ((_806 + -0.5f) * _812) + _816;
      _849 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _860 = exp2(log2(saturate(mad(_colorBlind0.z, _819, mad(_colorBlind0.y, _818, (_colorBlind0.x * _817))))) * _849);
      _861 = exp2(log2(saturate(mad(_colorBlind1.z, _819, mad(_colorBlind1.y, _818, (_colorBlind1.x * _817))))) * _849);
      _862 = exp2(log2(saturate(mad(_colorBlind2.z, _819, mad(_colorBlind2.y, _818, (_colorBlind2.x * _817))))) * _849);
    } else {
      _860 = _767;
      _861 = _768;
      _862 = _769;
    }
  } else {
    _860 = _488;
    _861 = _489;
    _862 = _490;
  }
  if (_etcParams.y > 1.0f) {
    _868 = abs(_42);
    _869 = abs(_43 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _873 = saturate(1.0f - (dot(float2(_868, _869), float2(_868, _869)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _878 = (_873 * _860);
    _879 = (_873 * _861);
    _880 = (_873 * _862);
  } else {
    _878 = _860;
    _879 = _861;
    _880 = _862;
  }
  if (_507 && (_etcParams.z > 0.0f)) {
    _910 = select((_878 <= 0.0031308f), (_878 * 12.92f), (((pow(_878, 0.41666666f)) * 1.055f) + -0.055f));
    _911 = select((_879 <= 0.0031308f), (_879 * 12.92f), (((pow(_879, 0.41666666f)) * 1.055f) + -0.055f));
    _912 = select((_880 <= 0.0031308f), (_880 * 12.92f), (((pow(_880, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _910 = _878;
    _911 = _879;
    _912 = _880;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _916 = (float)((uint)((uint)(_491)));
    if (!(_916 < _viewDir.w)) {
      if (!(_916 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _925 = _910;
        _926 = _911;
        _927 = _912;
      } else {
        _925 = 0.0f;
        _926 = 0.0f;
        _927 = 0.0f;
      }
    } else {
      _925 = 0.0f;
      _926 = 0.0f;
      _927 = 0.0f;
    }
  } else {
    _925 = _910;
    _926 = _911;
    _927 = _912;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_925, _926, _927), _sunDirection.y, _moonDirection.y);
    _925 = _rndx_final_color.x;
    _926 = _rndx_final_color.y;
    _927 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _925;
  SV_Target.y = _926;
  SV_Target.z = _927;
  SV_Target.w = _504;
  return SV_Target;
}
