struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

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

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};

typedef BindlessParameters_PostProcessGhost_CD BindlessParameters_PostProcessGhost_CD_t;
ConstantBuffer<BindlessParameters_PostProcessGhost_CD_t> BindlessParameters_PostProcessGhost_CD[] : register(b0, space100);

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
  float4 _34;
  float _44;
  float _45;
  float _46;
  float _71;
  float _72;
  float _73;
  int _74;
  float _82;
  float _178;
  float _179;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _428;
  float _449;
  float _450;
  float _451;
  float _465;
  float _670;
  float _671;
  float _672;
  float _765;
  float _766;
  float _767;
  float _821;
  float _822;
  float _823;
  float _842;
  float _843;
  float _844;
  float _874;
  float _875;
  float _876;
  float _890;
  float _891;
  float _892;
  float _86;
  int _93;
  int _101;
  float4 _108;
  int _112;
  float _120;
  int _121;
  float _129;
  float _131;
  float _134;
  float _135;
  uint2 _137;
  uint _152;
  float _162;
  float _163;
  float _165;
  float _166;
  float _167;
  float _181;
  float _182;
  float _183;
  float _184;
  float _186;
  float _187;
  float _188;
  float _189;
  uint _201;
  uint _202;
  uint4 _204;
  float4 _207;
  float _225;
  float _226;
  float _227;
  float _229;
  float _230;
  float _231;
  float _232;
  float _235;
  float _236;
  float _239;
  float _240;
  float _244;
  float _246;
  float _247;
  float _248;
  float _249;
  float _251;
  float _254;
  float _255;
  float _256;
  float _257;
  float _266;
  float _270;
  float _274;
  float _276;
  float _298;
  float _299;
  float _302;
  int _303;
  float _311;
  float _312;
  int _313;
  float _321;
  float _331;
  float _332;
  float _333;
  float _335;
  float _341;
  int _342;
  int _350;
  float _359;
  float _360;
  float _361;
  float _373;
  int _377;
  int _385;
  float _399;
  float _400;
  float _401;
  float _402;
  float _409;
  float _410;
  float _411;
  int _429;
  float _437;
  float _438;
  uint _452;
  bool _468;
  float _474;
  float _523;
  float _524;
  float _525;
  float _527;
  float _534;
  float _535;
  float _536;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _561;
  float _562;
  float _563;
  float _609;
  float _610;
  float _611;
  float _612;
  float _613;
  float _614;
  float _615;
  float _632;
  float _633;
  float _634;
  float _635;
  float _641;
  float _644;
  float _651;
  float _652;
  float _653;
  float _682;
  float _707;
  float _708;
  float _709;
  float _728;
  float _729;
  float _730;
  float _736;
  float _740;
  float _741;
  float _742;
  float _743;
  float _748;
  float _773;
  float _777;
  float _778;
  float _779;
  float _780;
  float _810;
  float _832;
  float _833;
  float _837;
  float _881;
  float _902;
  float _903;
  float _904;
  _34 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _44 = (pow(_34.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_34.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = (pow(_34.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _71 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.8515625f - (_44 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.8515625f - (_45 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _73 = exp2(log2(max(0.0f, (_46 + -0.8359375f)) / (18.8515625f - (_46 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _74 = WaveReadLaneFirst(_materialIndex);
  _82 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_74 < (uint)170000), _74, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_82 >= 0.0010000000474974513f))) {
    _86 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _93 = WaveReadLaneFirst(_materialIndex);
    _101 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_93 < (uint)170000), _93, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _108 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_101 < (uint)65000), _101, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _86), ((_time.x * 0.30000001192092896f) + (_86 * TEXCOORD.y))));
    _112 = WaveReadLaneFirst(_materialIndex);
    _120 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_112 < (uint)170000), _112, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _121 = WaveReadLaneFirst(_materialIndex);
    _129 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_121 < (uint)170000), _121, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _131 = _129 * (_120 * _108.y);
    _134 = (_131 * 0.009999999776482582f) + TEXCOORD.x;
    _135 = (_131 * 0.05000000074505806f) + TEXCOORD.y;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_137.x, _137.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _152 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_137.x)))))) + 0.5f) * _134), int((float((int)(int(float((int)((int)(_137.y)))))) + 0.5f) * _135), 0));
    _162 = (((float)((uint)((uint)((uint)((uint)(_152.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _163 = (((float)((uint)((uint)(((uint)((uint)(_152.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _165 = 1.0f - abs(_162);
    _166 = abs(_163);
    _167 = _165 - _166;
    if (!(_167 >= 0.0f)) {
      _178 = (select((_162 >= 0.0f), 1.0f, -1.0f) * (1.0f - _166));
      _179 = (select((_163 >= 0.0f), 1.0f, -1.0f) * _165);
    } else {
      _178 = _162;
      _179 = _163;
    }
    _181 = rsqrt(dot(float3(_178, _179, _167), float3(_178, _179, _167)));  // [sem: invLength]
    _182 = _181 * _178;
    _183 = _181 * _179;
    _184 = _181 * _167;
    _186 = rsqrt(dot(float3(_182, _183, _184), float3(_182, _183, _184)));  // [sem: invLength]
    _187 = _186 * _182;
    _188 = _186 * _183;
    _189 = _186 * _184;
    if ((_152.x & 255) == _renderPassNPCGhost) {
      _201 = uint((_bufferSizeAndInvSize.x * _134) + -0.5f);
      _202 = uint((_bufferSizeAndInvSize.y * _135) + -0.5f);
      _204 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_201, _202, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _207 = __3__36__0__0__g_gbufferNormal.Load(int3(_201, _202, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _225 = (saturate(_207.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _226 = (saturate(_207.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _227 = (saturate(_207.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _229 = rsqrt(dot(float3(_225, _226, _227), float3(_225, _226, _227)));  // [sem: invLength]
      _230 = _229 * _225;
      _231 = _229 * _226;
      _232 = _227 * _229;
      _235 = (((float)((uint)((uint)(((uint)((uint)(_204.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _236 = (((float)((uint)((uint)(_204.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _239 = (_235 + _236) * 0.5f;
      _240 = (_235 - _236) * 0.5f;
      _244 = (1.0f - abs(_239)) - abs(_240);
      _246 = rsqrt(dot(float3(_239, _240, _244), float3(_239, _240, _244)));  // [sem: invLength]
      _247 = _246 * _239;
      _248 = _246 * _240;
      _249 = _246 * _244;
      _251 = select((_232 >= 0.0f), 1.0f, -1.0f);
      _254 = -0.0f - (1.0f / (_251 + _232));
      _255 = _231 * _254;
      _256 = _255 * _230;
      _257 = _251 * _230;
      _266 = mad(_249, _230, mad(_248, _256, ((((_257 * _230) * _254) + 1.0f) * _247)));
      _270 = mad(_249, _231, mad(_248, (_251 + (_255 * _231)), ((_247 * _251) * _256)));
      _274 = mad(_249, _232, mad(_248, (-0.0f - _231), (-0.0f - (_257 * _247))));
      _276 = rsqrt(dot(float3(_266, _270, _274), float3(_266, _270, _274)));  // [sem: invLength]
  // [sem: expr_sat]
      _298 = saturate(1.0f - dot(float3(((((_276 * _266) - _187) * 0.20000000298023224f) + _187), ((((_276 * _270) - _188) * 0.20000000298023224f) + _188), ((((_276 * _274) - _189) * 0.20000000298023224f) + _189)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _299 = _298 * 2.0f;
      _302 = 1.0f - saturate(_299 * _298);
      _303 = WaveReadLaneFirst(_materialIndex);
      _311 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_303 < (uint)170000), _303, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
      _312 = _311 * _302;
      _313 = WaveReadLaneFirst(_materialIndex);
      _321 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_313 < (uint)170000), _313, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXColorInnerBrightness);
      _331 = (((_321 * _71) - _71) * _312) + _71;
      _332 = (((_321 * _72) - _72) * _312) + _72;
      _333 = (((_321 * _73) - _73) * _312) + _73;
      _335 = _298 * _302;
      _341 = saturate(_108.x * 40.0f) * saturate((_335 * _335) * 30.0f);  // [sem: expr_sat]
      _342 = WaveReadLaneFirst(_materialIndex);
      _350 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_342 < (uint)170000), _342, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXColor1);
      _359 = ((float)((uint)((uint)(((uint)(_350) >> 16) & 255)))) * 0.003921568859368563f;
      _360 = ((float)((uint)((uint)(((uint)(_350) >> 8) & 255)))) * 0.003921568859368563f;
      _361 = ((float)((uint)((uint)(_350 & 255)))) * 0.003921568859368563f;
      _373 = max(0.0010000000474974513f, _exposure0.x);
      _377 = WaveReadLaneFirst(_materialIndex);
      _385 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_377 < (uint)170000), _377, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXColor2);
      _399 = max(0.0010000000474974513f, _exposure0.x);
      _400 = (((float)((uint)((uint)(((uint)(_385) >> 16) & 255)))) * 0.003921568859368563f) / _399;
      _401 = (((float)((uint)((uint)(((uint)(_385) >> 8) & 255)))) * 0.003921568859368563f) / _399;
      _402 = (((float)((uint)((uint)(_385 & 255)))) * 0.003921568859368563f) / _399;
      _409 = ((_331 - _400) * 0.10000000149011612f) + _400;
      _410 = ((_332 - _401) * 0.10000000149011612f) + _401;
      _411 = ((_333 - _402) * 0.10000000149011612f) + _402;
      _422 = _331;
      _423 = _332;
      _424 = _333;
      _425 = saturate(_299);  // [sem: _299_sat]
      _426 = (((((lerp(_359, _108.x, 0.10000000149011612f)) / _373) - _409) * _341) + _409);
      _427 = (((((lerp(_360, _108.y, 0.10000000149011612f)) / _373) - _410) * _341) + _410);
      _428 = (((((lerp(_361, _108.z, 0.10000000149011612f)) / _373) - _411) * _341) + _411);
    } else {
      _422 = _71;
      _423 = _72;
      _424 = _73;
      _425 = 0.0f;  // [sem: _299_sat]
      _426 = _71;
      _427 = _72;
      _428 = _73;
    }
    _429 = WaveReadLaneFirst(_materialIndex);
    _437 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_429 < (uint)170000), _429, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _438 = _437 * _425;
    _449 = ((_438 * (_426 - _422)) + _422);
    _450 = ((_438 * (_427 - _423)) + _423);
    _451 = ((_438 * (_428 - _424)) + _424);
  } else {
    _449 = _71;
    _450 = _72;
    _451 = _73;
  }
  _452 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _465 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _452, 0)))).x) & 127)))) + 0.5f);
  } else {
    _465 = 0.0f;
  }
  _468 = (_localToneMappingParams.w > 0.0f);
  if (_468) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_449, _450, _451));
    _728 = _rndx_tonemapped_color.x;
    _729 = _rndx_tonemapped_color.y;
    _730 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _736 = 1.0f - abs(_etcParams.w);
      _740 = saturate(_etcParams.w);  // [sem: expr_sat]
      _741 = (_736 * _728) + _740;
      _742 = (_736 * _729) + _740;
      _743 = (_736 * _730) + _740;
      if (_colorGradingParams.w > 0.0f) {
        _748 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _765 = (((max(0.0f, (1.0f - _741)) - _741) * _748) + _741);
        _766 = (((max(0.0f, (1.0f - _742)) - _742) * _748) + _742);
        _767 = (((max(0.0f, (1.0f - _743)) - _743) * _748) + _743);
      } else {
        _765 = _741;
        _766 = _742;
        _767 = _743;
      }
      _773 = _userImageAdjust.y + 1.0f;
      _777 = _userImageAdjust.x + 0.5f;
      _778 = ((_765 + -0.5f) * _773) + _777;
      _779 = ((_766 + -0.5f) * _773) + _777;
      _780 = ((_767 + -0.5f) * _773) + _777;
      _810 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _821 = exp2(log2(saturate(mad(_colorBlind0.z, _780, mad(_colorBlind0.y, _779, (_colorBlind0.x * _778))))) * _810);
      _822 = exp2(log2(saturate(mad(_colorBlind1.z, _780, mad(_colorBlind1.y, _779, (_colorBlind1.x * _778))))) * _810);
      _823 = exp2(log2(saturate(mad(_colorBlind2.z, _780, mad(_colorBlind2.y, _779, (_colorBlind2.x * _778))))) * _810);
    } else {
      _821 = _728;
      _822 = _729;
      _823 = _730;
    }
  } else {
    _821 = _449;
    _822 = _450;
    _823 = _451;
  }
  if (_etcParams.y > 1.0f) {
    _832 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _833 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _837 = saturate(1.0f - (dot(float2(_832, _833), float2(_832, _833)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _842 = (_837 * _821);
    _843 = (_837 * _822);
    _844 = (_837 * _823);
  } else {
    _842 = _821;
    _843 = _822;
    _844 = _823;
  }
  if (_468 && (_etcParams.z > 0.0f)) {
    _874 = select((_842 <= 0.0031308000907301903f), (_842 * 12.920000076293945f), (((pow(_842, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _875 = select((_843 <= 0.0031308000907301903f), (_843 * 12.920000076293945f), (((pow(_843, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _876 = select((_844 <= 0.0031308000907301903f), (_844 * 12.920000076293945f), (((pow(_844, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _874 = _842;
    _875 = _843;
    _876 = _844;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _881 = (float)((uint)_452);
    if (!(_881 < _viewDir.w)) {
      if (!(_881 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _890 = _874;
        _891 = _875;
        _892 = _876;
      } else {
        _890 = 0.0f;
        _891 = 0.0f;
        _892 = 0.0f;
      }
    } else {
      _890 = 0.0f;
      _891 = 0.0f;
      _892 = 0.0f;
    }
  } else {
    _890 = _874;
    _891 = _875;
    _892 = _876;
  }
  _902 = exp2(log2(_890 * 9.999999747378752e-05f) * 0.1593017578125f);
  _903 = exp2(log2(_891 * 9.999999747378752e-05f) * 0.1593017578125f);
  _904 = exp2(log2(_892 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_902 * 18.6875f) + 1.0f)) * ((_902 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_903 * 18.6875f) + 1.0f)) * ((_903 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_904 * 18.6875f) + 1.0f)) * ((_904 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _465;
  return SV_Target;
}
