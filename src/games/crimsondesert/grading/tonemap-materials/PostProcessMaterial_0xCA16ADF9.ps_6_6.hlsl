struct PostProcessLensFlareForGimmick_CDStruct {
  uint _lensDirtTexture;
  uint _lensColorTableTexture;
  uint _noiseTex;
  uint _noiseTex2;
  float _lensflareRatio;
  float _sunFlareScale;
  float _sunFlareIntensity;
  float _sunFlareAnimSpeed;
  float _sunFlareWeightThreshold;
  float _sunFlareWeightIntensity;
  float _lensDirtIntensity;
  float _lensDirtThreshold;
  float _chromaticShiftValue;
  float _useFishUV;
  float _fishEyeIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

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

struct BindlessParameters_PostProcessLensFlareForGimmick_CD {
  PostProcessLensFlareForGimmick_CDStruct BindlessParameters_PostProcessLensFlareForGimmick_CD;
};

typedef BindlessParameters_PostProcessLensFlareForGimmick_CD BindlessParameters_PostProcessLensFlareForGimmick_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLensFlareForGimmick_CD_t> BindlessParameters_PostProcessLensFlareForGimmick_CD[] : register(b0, space100);

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
  int _30;
  float _38;
  float _39;
  float _40;
  float _48;
  float _49;
  float _51;
  float4 _65;
  float _75;
  float _76;
  float _77;
  float _102;
  float _103;
  float _104;
  float _108;
  int _109;
  float _117;
  float _123;
  float _124;
  float _125;
  float _126;
  float _127;
  float _128;
  float _129;
  float _130;
  bool _131;
  float _139;
  float _176;
  float _177;
  float _706;
  float _707;
  float _708;
  float _722;
  float _927;
  float _928;
  float _929;
  float _1022;
  float _1023;
  float _1024;
  float _1078;
  float _1079;
  float _1080;
  float _1099;
  float _1100;
  float _1101;
  float _1131;
  float _1132;
  float _1133;
  float _1147;
  float _1148;
  float _1149;
  float _141;
  float _143;
  float _151;
  float _159;
  float _160;
  float _162;
  float _170;
  int _179;
  float _187;
  bool _188;
  float _191;
  float _192;
  float _193;
  float _233;
  float _236;
  float _237;
  float _239;
  float _273;
  float _274;
  float _276;
  bool _279;
  bool _280;
  bool _281;
  bool _282;
  bool _285;
  float _286;
  bool _287;
  bool _289;
  float _290;
  float _294;
  int _311;
  float _319;
  int _321;
  float _329;
  float _335;
  float _336;
  int _341;
  float _349;
  float _352;
  float _353;
  int _364;
  float _372;
  float _373;
  int _375;
  int _383;
  float4 _390;
  float _398;
  float _401;
  float _408;
  float _445;
  float _446;
  float _447;
  float _466;
  int _470;
  int _478;
  float _482;
  float _486;
  bool _489;
  bool _490;
  float4 _507;
  float _514;
  bool _517;
  bool _518;
  bool _519;
  bool _520;
  float4 _535;
  float _560;
  float _571;
  float _586;
  float _596;
  int _600;
  int _608;
  float4 _615;
  int _619;
  float _627;
  int _640;
  float _648;
  float _670;
  float _674;
  int _685;
  float _693;
  float _695;
  uint _709;
  bool _725;
  float _731;
  float _780;
  float _781;
  float _782;
  float _784;
  float _791;
  float _792;
  float _793;
  float _812;
  float _813;
  float _814;
  float _815;
  float _816;
  float _817;
  float _818;
  float _819;
  float _820;
  float _866;
  float _867;
  float _868;
  float _869;
  float _870;
  float _871;
  float _872;
  float _889;
  float _890;
  float _891;
  float _892;
  float _898;
  float _901;
  float _908;
  float _909;
  float _910;
  float _939;
  float _964;
  float _965;
  float _966;
  float _985;
  float _986;
  float _987;
  float _993;
  float _997;
  float _998;
  float _999;
  float _1000;
  float _1005;
  float _1030;
  float _1034;
  float _1035;
  float _1036;
  float _1037;
  float _1067;
  float _1089;
  float _1090;
  float _1094;
  float _1138;
  float _1159;
  float _1160;
  float _1161;
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_30 < (uint)170000), _30, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
  _39 = TEXCOORD.x + -0.5f;
  _40 = TEXCOORD.y + -0.5f;
  _48 = rsqrt(dot(float2(_39, _40), float2(_39, _40))) * (sqrt((_40 * _40) + (_39 * _39)) * _38);  // [sem: invLength]
  _49 = _48 * _39;
  _51 = _48 * _40;
  _65 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _75 = (pow(_65.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _76 = (pow(_65.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _77 = (pow(_65.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _102 = exp2(log2(max(0.0f, (_75 + -0.8359375f)) / (18.8515625f - (_75 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _103 = exp2(log2(max(0.0f, (_76 + -0.8359375f)) / (18.8515625f - (_76 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _104 = exp2(log2(max(0.0f, (_77 + -0.8359375f)) / (18.8515625f - (_77 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _108 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _109 = WaveReadLaneFirst(_materialIndex);
  _117 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_109 < (uint)170000), _109, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
  _123 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _124 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
  _125 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _126 = 0.5f / _125;
  _127 = _123 + -0.5f;
  _128 = _124 - _126;
  _129 = dot(float2(_127, _128), float2(_127, _128));
  _130 = sqrt(_129);
  _131 = (_117 > 0.0f);
  if (_131) {
    _139 = sqrt(dot(float2(0.5f, _126), float2(0.5f, _126)));
  } else {
    if (!(_125 < 1.0f)) {
      _139 = _126;
    } else {
      _139 = 0.5f;
    }
  }
  if (_131) {
    _141 = rsqrt(_129);  // [sem: rsqrt_val]
    _143 = tan(_130 * _117);
    _151 = tan(_139 * _117);
    _176 = (((((_139 * _127) * _141) * _143) / _151) + 0.5f);
    _177 = (((((_139 * _128) * _141) * _143) / _151) + _126);
  } else {
    if (_117 < 0.0f) {
      _159 = rsqrt(_129);  // [sem: rsqrt_val]
      _160 = _117 * -10.0f;
      _162 = atan(_130 * _160);
      _170 = atan(_139 * _160);
      _176 = (((((_139 * _127) * _159) * _162) / _170) + 0.5f);
      _177 = (((((_139 * _128) * _159) * _162) / _170) + _126);
    } else {
      _176 = _123;
      _177 = _124;
    }
  }
  _179 = WaveReadLaneFirst(_materialIndex);
  _187 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_179 < (uint)170000), _179, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _188 = (_187 == 1.0f);
  _191 = select(_188, _176, TEXCOORD.x) + -0.5f;
  _192 = select(_188, (_177 * _125), TEXCOORD.y) + -0.5f;
  _193 = _191 * _108;
  _233 = mad((_viewProj[2].w), _questGuideWorldPosition.z, mad((_viewProj[1].w), _questGuideWorldPosition.y, ((_viewProj[0].w) * _questGuideWorldPosition.x))) + (_viewProj[3].w);
  _236 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[1].z), _questGuideWorldPosition.y, ((_viewProj[0].z) * _questGuideWorldPosition.x))) + (_viewProj[3].z)) / _233;
  _237 = ((mad((_viewProj[2].y), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, ((_viewProj[0].y) * _questGuideWorldPosition.x))) + (_viewProj[3].y)) / _233) * -0.5f;
  _239 = (_108 * 0.5f) * ((mad((_viewProj[2].x), _questGuideWorldPosition.z, mad((_viewProj[1].x), _questGuideWorldPosition.y, ((_viewProj[0].x) * _questGuideWorldPosition.x))) + (_viewProj[3].x)) / _233);
  if ((!(abs(_questGuideWorldPosition.x) <= 9.999999747378752e-06f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 9.999999747378752e-06f))) && (!(abs(_questGuideWorldPosition.y) <= 9.999999747378752e-06f)))) {
    if (!((_237 >= 1.0499999523162842f) || ((_237 <= -1.5f) || ((_239 >= 1.600000023841858f) || ((_239 <= -1.600000023841858f) || ((_236 < 0.0f) || (_239 <= -1.5f))))))) {
      _273 = _193 - _239;
      _274 = _192 - _237;
      _276 = atan(_273 / _274);
      _279 = (_274 < 0.0f);
      _280 = (_274 == 0.0f);
      _281 = (_273 >= 0.0f);
      _282 = (_273 < 0.0f);
      _285 = _282 && _279;
      _286 = select(_285, (_276 + -3.1415927410125732f), select((_281 && _279), (_276 + 3.1415927410125732f), _276));
      _287 = _282 && _280;
      _289 = _281 && _280;
      _290 = select(_289, 1.5707963705062866f, select(_287, -1.5707963705062866f, _286));
      _294 = sqrt((_274 * _274) + (_273 * _273));
      _311 = WaveReadLaneFirst(_materialIndex);
      _319 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_311 < (uint)170000), _311, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _321 = WaveReadLaneFirst(_materialIndex);
      _329 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_321 < (uint)170000), _321, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _335 = _239 - _193;
      _336 = _237 - _192;
      _341 = WaveReadLaneFirst(_materialIndex);
      _349 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_341 < (uint)170000), _341, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _352 = max((0.019999999552965164f / (_349 * sqrt((_336 * _336) + (_335 * _335)))), 0.0f);
      _353 = _352 * _352;
      _364 = WaveReadLaneFirst(_materialIndex);
      _372 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_364 < (uint)170000), _364, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _373 = _372 * _time.x;
      _375 = WaveReadLaneFirst(_materialIndex);
      _383 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_375 < (uint)170000), _375, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _390 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_383 < (uint)65000), _383, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((sin((_290 * 2.0f) + _239) * 4.0f) - cos((_290 * 3.0f) + _237)) + _373), _373));
      _398 = 1.0f / exp2((_294 * 1.4426950216293335f) * ((frac(_390.x) * 0.6600000262260437f) + 0.33000001311302185f));
      _401 = frac((_398 * 20.0f) + 1.0031249523162842f);
      _408 = exp2(log2(1.0f - abs((_398 * 2.0f) + -1.0f)) * 0.30000001192092896f);
      _445 = sin(select(_289, 6.2831854820251465f, select(_287, -6.2831854820251465f, (_286 * 4.0f))));
      _446 = _445 * _273;
      _447 = _445 * _274;
      _466 = exp2(log2(((saturate(_398 + -0.8999999761581421f) * 3.0f) + exp2(log2(1.0f - saturate(sqrt((_446 * _446) + (_447 * _447)))) * 8.0f)) * _398) * 12.949999809265137f) * (_398 * 0.4999999701976776f);
      _470 = WaveReadLaneFirst(_materialIndex);
      _478 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_470 < (uint)170000), _470, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _482 = exp2(log2(_294 * 16.0f) * 0.5f);
      _486 = atan(_274 / _273);
      _489 = (_273 == 0.0f);
      _490 = (_274 >= 0.0f);
      _507 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_478 < (uint)65000), _478, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_489 && _490), 2.356194496154785f, select((_489 && _279), -2.356194496154785f, (select(_285, (_486 + -3.1415927410125732f), select((_282 && _490), (_486 + 3.1415927410125732f), _486)) * 1.5f))), ((_time.x * 0.20000000298023224f) - _482)));
      _514 = atan((-0.0f - _274) / (-0.0f - _273));
      _517 = (_273 > -0.0f);
      _518 = (_273 == -0.0f);
      _519 = (_274 <= -0.0f);
      _520 = (_274 > -0.0f);
      _535 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_478 < (uint)65000), _478, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_518 && _519), 2.356194496154785f, select((_518 && _520), -2.356194496154785f, (select((_517 && _520), (_514 + -3.1415927410125732f), select((_517 && _519), (_514 + 3.1415927410125732f), _514)) * 1.5f))), ((_time.x * 0.20000000298023224f) - (_482 * 0.5f))));
      _560 = exp2(log2(min(max((1.0f - (_294 * 2.0f)), 0.0f), 1.0f)) * 5.199999809265137f);
      _571 = exp2(log2(min(max((1.100000023841858f - (_294 * 4.0f)), 0.0f), 1.0f)) * 4.199999809265137f) * 0.10000000149011612f;
      _586 = (((pow(_294, 0.10000000149011612f)) * 0.10000000149011612f) + 0.800000011920929f) + (sin(_390.x * 8.0f) * 0.20000000298023224f);
      _596 = (exp2(log2(saturate(1.0f - (_319 * sqrt((_191 * _191) + (_192 * _192))))) * _329) * 150.0f) * _exposure2.x;
      _600 = WaveReadLaneFirst(_materialIndex);
      _608 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_600 < (uint)170000), _600, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _615 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_608 < (uint)65000), _608, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _619 = WaveReadLaneFirst(_materialIndex);
      _627 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_619 < (uint)170000), _619, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _640 = WaveReadLaneFirst(_materialIndex);
      _648 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_640 < (uint)170000), _640, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _670 = ((_viewDir.y + _viewDir.x) * 33.60000228881836f) + (TEXCOORD.x * 0.10000000149011612f);
      _674 = frac(sin(floor(_670)) * 43758.546875f);
      _685 = WaveReadLaneFirst(_materialIndex);
      _693 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_685 < (uint)170000), _685, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      _695 = _693 * (((((frac(_670) * (frac(sin(ceil(_670)) * 43758.546875f) - _674)) + _674) * 0.6499999761581421f) + 0.3499999940395355f) * (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).w));
      _706 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.x, _535.x))) * 4.0f))) * 5.599999904632568f) + (_466 * (((min(max((abs((frac(_401 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _49), (TEXCOORD.y - _51))))).x))) * saturate((_648 * (saturate(pow(_615.x, _627)) + -1.0f)) + 1.0f)) + _102);
      _707 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.y, _535.y))) * 4.0f))) * 5.599999904632568f) + (_466 * (((min(max((abs((frac(_401 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y))) * saturate((_648 * (saturate(pow(_615.y, _627)) + -1.0f)) + 1.0f)) + _103);
      _708 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.z, _535.z))) * 4.0f))) * 7.0f) + (_466 * (((min(max((abs((frac(_401 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_49 + TEXCOORD.x), (_51 + TEXCOORD.y))))).z))) * saturate((_648 * (saturate(pow(_615.z, _627)) + -1.0f)) + 1.0f)) + _104);
    } else {
      _706 = _102;
      _707 = _103;
      _708 = _104;
    }
  } else {
    if (!((_237 >= 1.0499999523162842f) || ((_237 <= -1.5f) || ((_239 >= 1.600000023841858f) || ((_239 <= -1.600000023841858f) || ((_239 <= -1.5f) || ((_236 < 0.0f) || (abs(_questGuideWorldPosition.z) <= 9.999999747378752e-06f)))))))) {
      _273 = _193 - _239;
      _274 = _192 - _237;
      _276 = atan(_273 / _274);
      _279 = (_274 < 0.0f);
      _280 = (_274 == 0.0f);
      _281 = (_273 >= 0.0f);
      _282 = (_273 < 0.0f);
      _285 = _282 && _279;
      _286 = select(_285, (_276 + -3.1415927410125732f), select((_281 && _279), (_276 + 3.1415927410125732f), _276));
      _287 = _282 && _280;
      _289 = _281 && _280;
      _290 = select(_289, 1.5707963705062866f, select(_287, -1.5707963705062866f, _286));
      _294 = sqrt((_274 * _274) + (_273 * _273));
      _311 = WaveReadLaneFirst(_materialIndex);
      _319 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_311 < (uint)170000), _311, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _321 = WaveReadLaneFirst(_materialIndex);
      _329 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_321 < (uint)170000), _321, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _335 = _239 - _193;
      _336 = _237 - _192;
      _341 = WaveReadLaneFirst(_materialIndex);
      _349 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_341 < (uint)170000), _341, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _352 = max((0.019999999552965164f / (_349 * sqrt((_336 * _336) + (_335 * _335)))), 0.0f);
      _353 = _352 * _352;
      _364 = WaveReadLaneFirst(_materialIndex);
      _372 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_364 < (uint)170000), _364, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _373 = _372 * _time.x;
      _375 = WaveReadLaneFirst(_materialIndex);
      _383 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_375 < (uint)170000), _375, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _390 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_383 < (uint)65000), _383, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((sin((_290 * 2.0f) + _239) * 4.0f) - cos((_290 * 3.0f) + _237)) + _373), _373));
      _398 = 1.0f / exp2((_294 * 1.4426950216293335f) * ((frac(_390.x) * 0.6600000262260437f) + 0.33000001311302185f));
      _401 = frac((_398 * 20.0f) + 1.0031249523162842f);
      _408 = exp2(log2(1.0f - abs((_398 * 2.0f) + -1.0f)) * 0.30000001192092896f);
      _445 = sin(select(_289, 6.2831854820251465f, select(_287, -6.2831854820251465f, (_286 * 4.0f))));
      _446 = _445 * _273;
      _447 = _445 * _274;
      _466 = exp2(log2(((saturate(_398 + -0.8999999761581421f) * 3.0f) + exp2(log2(1.0f - saturate(sqrt((_446 * _446) + (_447 * _447)))) * 8.0f)) * _398) * 12.949999809265137f) * (_398 * 0.4999999701976776f);
      _470 = WaveReadLaneFirst(_materialIndex);
      _478 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_470 < (uint)170000), _470, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _482 = exp2(log2(_294 * 16.0f) * 0.5f);
      _486 = atan(_274 / _273);
      _489 = (_273 == 0.0f);
      _490 = (_274 >= 0.0f);
      _507 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_478 < (uint)65000), _478, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_489 && _490), 2.356194496154785f, select((_489 && _279), -2.356194496154785f, (select(_285, (_486 + -3.1415927410125732f), select((_282 && _490), (_486 + 3.1415927410125732f), _486)) * 1.5f))), ((_time.x * 0.20000000298023224f) - _482)));
      _514 = atan((-0.0f - _274) / (-0.0f - _273));
      _517 = (_273 > -0.0f);
      _518 = (_273 == -0.0f);
      _519 = (_274 <= -0.0f);
      _520 = (_274 > -0.0f);
      _535 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_478 < (uint)65000), _478, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_518 && _519), 2.356194496154785f, select((_518 && _520), -2.356194496154785f, (select((_517 && _520), (_514 + -3.1415927410125732f), select((_517 && _519), (_514 + 3.1415927410125732f), _514)) * 1.5f))), ((_time.x * 0.20000000298023224f) - (_482 * 0.5f))));
      _560 = exp2(log2(min(max((1.0f - (_294 * 2.0f)), 0.0f), 1.0f)) * 5.199999809265137f);
      _571 = exp2(log2(min(max((1.100000023841858f - (_294 * 4.0f)), 0.0f), 1.0f)) * 4.199999809265137f) * 0.10000000149011612f;
      _586 = (((pow(_294, 0.10000000149011612f)) * 0.10000000149011612f) + 0.800000011920929f) + (sin(_390.x * 8.0f) * 0.20000000298023224f);
      _596 = (exp2(log2(saturate(1.0f - (_319 * sqrt((_191 * _191) + (_192 * _192))))) * _329) * 150.0f) * _exposure2.x;
      _600 = WaveReadLaneFirst(_materialIndex);
      _608 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_600 < (uint)170000), _600, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _615 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_608 < (uint)65000), _608, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _619 = WaveReadLaneFirst(_materialIndex);
      _627 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_619 < (uint)170000), _619, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _640 = WaveReadLaneFirst(_materialIndex);
      _648 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_640 < (uint)170000), _640, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _670 = ((_viewDir.y + _viewDir.x) * 33.60000228881836f) + (TEXCOORD.x * 0.10000000149011612f);
      _674 = frac(sin(floor(_670)) * 43758.546875f);
      _685 = WaveReadLaneFirst(_materialIndex);
      _693 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)(select(((uint)_685 < (uint)170000), _685, 0)) + 0u))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      _695 = _693 * (((((frac(_670) * (frac(sin(ceil(_670)) * 43758.546875f) - _674)) + _674) * 0.6499999761581421f) + 0.3499999940395355f) * (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).w));
      _706 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.x, _535.x))) * 4.0f))) * 5.599999904632568f) + (_466 * (((min(max((abs((frac(_401 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _49), (TEXCOORD.y - _51))))).x))) * saturate((_648 * (saturate(pow(_615.x, _627)) + -1.0f)) + 1.0f)) + _102);
      _707 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.y, _535.y))) * 4.0f))) * 5.599999904632568f) + (_466 * (((min(max((abs((frac(_401 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y))) * saturate((_648 * (saturate(pow(_615.y, _627)) + -1.0f)) + 1.0f)) + _103);
      _708 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.z, _535.z))) * 4.0f))) * 7.0f) + (_466 * (((min(max((abs((frac(_401 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_49 + TEXCOORD.x), (_51 + TEXCOORD.y))))).z))) * saturate((_648 * (saturate(pow(_615.z, _627)) + -1.0f)) + 1.0f)) + _104);
    } else {
      _706 = _102;
      _707 = _103;
      _708 = _104;
    }
  }
  _709 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _722 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _709, 0)))).x) & 127)))) + 0.5f);
  } else {
    _722 = 1.0f;
  }
  _725 = (_localToneMappingParams.w > 0.0f);
  if (_725) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_706, _707, _708));
    _985 = _rndx_tonemapped_color.x;
    _986 = _rndx_tonemapped_color.y;
    _987 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _993 = 1.0f - abs(_etcParams.w);
      _997 = saturate(_etcParams.w);  // [sem: expr_sat]
      _998 = (_993 * _985) + _997;
      _999 = (_993 * _986) + _997;
      _1000 = (_993 * _987) + _997;
      if (_colorGradingParams.w > 0.0f) {
        _1005 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1022 = (((max(0.0f, (1.0f - _998)) - _998) * _1005) + _998);
        _1023 = (((max(0.0f, (1.0f - _999)) - _999) * _1005) + _999);
        _1024 = (((max(0.0f, (1.0f - _1000)) - _1000) * _1005) + _1000);
      } else {
        _1022 = _998;
        _1023 = _999;
        _1024 = _1000;
      }
      _1030 = _userImageAdjust.y + 1.0f;
      _1034 = _userImageAdjust.x + 0.5f;
      _1035 = ((_1022 + -0.5f) * _1030) + _1034;
      _1036 = ((_1023 + -0.5f) * _1030) + _1034;
      _1037 = ((_1024 + -0.5f) * _1030) + _1034;
      _1067 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _1078 = exp2(log2(saturate(mad(_colorBlind0.z, _1037, mad(_colorBlind0.y, _1036, (_colorBlind0.x * _1035))))) * _1067);
      _1079 = exp2(log2(saturate(mad(_colorBlind1.z, _1037, mad(_colorBlind1.y, _1036, (_colorBlind1.x * _1035))))) * _1067);
      _1080 = exp2(log2(saturate(mad(_colorBlind2.z, _1037, mad(_colorBlind2.y, _1036, (_colorBlind2.x * _1035))))) * _1067);
    } else {
      _1078 = _985;
      _1079 = _986;
      _1080 = _987;
    }
  } else {
    _1078 = _706;
    _1079 = _707;
    _1080 = _708;
  }
  if (_etcParams.y > 1.0f) {
    _1089 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1090 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1094 = saturate(1.0f - (dot(float2(_1089, _1090), float2(_1089, _1090)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1099 = (_1094 * _1078);
    _1100 = (_1094 * _1079);
    _1101 = (_1094 * _1080);
  } else {
    _1099 = _1078;
    _1100 = _1079;
    _1101 = _1080;
  }
  if (_725 && (_etcParams.z > 0.0f)) {
    _1131 = select((_1099 <= 0.0031308000907301903f), (_1099 * 12.920000076293945f), (((pow(_1099, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1132 = select((_1100 <= 0.0031308000907301903f), (_1100 * 12.920000076293945f), (((pow(_1100, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1133 = select((_1101 <= 0.0031308000907301903f), (_1101 * 12.920000076293945f), (((pow(_1101, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1131 = _1099;
    _1132 = _1100;
    _1133 = _1101;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1138 = (float)((uint)_709);
    if (!(_1138 < _viewDir.w)) {
      if (!(_1138 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1147 = _1131;
        _1148 = _1132;
        _1149 = _1133;
      } else {
        _1147 = 0.0f;
        _1148 = 0.0f;
        _1149 = 0.0f;
      }
    } else {
      _1147 = 0.0f;
      _1148 = 0.0f;
      _1149 = 0.0f;
    }
  } else {
    _1147 = _1131;
    _1148 = _1132;
    _1149 = _1133;
  }
  _1159 = exp2(log2(_1147 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1160 = exp2(log2(_1148 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1161 = exp2(log2(_1149 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1159 * 18.6875f) + 1.0f)) * ((_1159 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1160 * 18.6875f) + 1.0f)) * ((_1160 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1161 * 18.6875f) + 1.0f)) * ((_1161 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _722;
  return SV_Target;
}
