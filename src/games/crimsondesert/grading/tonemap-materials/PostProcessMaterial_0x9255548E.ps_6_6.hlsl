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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

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
  int _298;
  int _306;
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
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
  _39 = TEXCOORD.x + -0.5f;
  _40 = TEXCOORD.y + -0.5f;
  _48 = rsqrt(dot(float2(_39, _40), float2(_39, _40))) * (sqrt((_40 * _40) + (_39 * _39)) * _38);  // [sem: invLength]
  _49 = _48 * _39;
  _51 = _48 * _40;
  _65 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _75 = (pow(_65.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _76 = (pow(_65.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _77 = (pow(_65.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _102 = exp2(log2(max(0.0f, (_75 + -0.8359375f)) / (18.851562f - (_75 * 18.6875f))) * 6.277395f) * 10000.0f;
  _103 = exp2(log2(max(0.0f, (_76 + -0.8359375f)) / (18.851562f - (_76 * 18.6875f))) * 6.277395f) * 10000.0f;
  _104 = exp2(log2(max(0.0f, (_77 + -0.8359375f)) / (18.851562f - (_77 * 18.6875f))) * 6.277395f) * 10000.0f;
  _108 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _109 = WaveReadLaneFirst(_materialIndex);
  _117 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_109 < (uint)170000), _109, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
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
  _187 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _188 = (_187 == 1.0f);
  _191 = select(_188, _176, TEXCOORD.x) + -0.5f;
  _192 = select(_188, (_177 * _125), TEXCOORD.y) + -0.5f;
  _193 = _191 * _108;
  _233 = mad((_viewProj[3].z), _questGuideWorldPosition.z, mad((_viewProj[3].y), _questGuideWorldPosition.y, ((_viewProj[3].x) * _questGuideWorldPosition.x))) + (_viewProj[3].w);
  _236 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[2].y), _questGuideWorldPosition.y, ((_viewProj[2].x) * _questGuideWorldPosition.x))) + (_viewProj[2].w)) / _233;
  _237 = ((mad((_viewProj[1].z), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, ((_viewProj[1].x) * _questGuideWorldPosition.x))) + (_viewProj[1].w)) / _233) * -0.5f;
  _239 = (_108 * 0.5f) * ((mad((_viewProj[0].z), _questGuideWorldPosition.z, mad((_viewProj[0].y), _questGuideWorldPosition.y, ((_viewProj[0].x) * _questGuideWorldPosition.x))) + (_viewProj[0].w)) / _233);
  if ((!(abs(_questGuideWorldPosition.x) <= 1e-05f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 1e-05f))) && (!(abs(_questGuideWorldPosition.y) <= 1e-05f)))) {
    if (!((_237 >= 1.05f) || ((_237 <= -1.5f) || ((_239 >= 1.6f) || ((_239 <= -1.6f) || ((_236 < 0.0f) || (_239 <= -1.5f))))))) {
      _273 = _193 - _239;
      _274 = _192 - _237;
      _276 = atan(_273 / _274);
      _279 = (_274 < 0.0f);
      _280 = (_274 == 0.0f);
      _281 = (_273 >= 0.0f);
      _282 = (_273 < 0.0f);
      _285 = _282 && _279;
      _286 = select(_285, (_276 + -3.1415927f), select((_281 && _279), (_276 + 3.1415927f), _276));
      _287 = _282 && _280;
      _289 = _281 && _280;
      _290 = select(_289, 1.5707964f, select(_287, -1.5707964f, _286));
      _294 = sqrt((_274 * _274) + (_273 * _273));
      _298 = WaveReadLaneFirst(_materialIndex);
      _306 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_298 < (uint)170000), _298, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _311 = WaveReadLaneFirst(_materialIndex);
      _319 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_311 < (uint)170000), _311, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _321 = WaveReadLaneFirst(_materialIndex);
      _329 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_321 < (uint)170000), _321, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _335 = _239 - _193;
      _336 = _237 - _192;
      _341 = WaveReadLaneFirst(_materialIndex);
      _349 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_341 < (uint)170000), _341, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _352 = max((0.02f / (_349 * sqrt((_336 * _336) + (_335 * _335)))), 0.0f);
      _353 = _352 * _352;
      _364 = WaveReadLaneFirst(_materialIndex);
      _372 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_364 < (uint)170000), _364, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _373 = _372 * _time.x;
      _375 = WaveReadLaneFirst(_materialIndex);
      _383 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_375 < (uint)170000), _375, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _390 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_383 < (uint)65000), _383, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((sin((_290 * 2.0f) + _239) * 4.0f) - cos((_290 * 3.0f) + _237)) + _373), _373));
      _398 = 1.0f / exp2((_294 * 1.442695f) * ((frac(_390.x) * 0.66f) + 0.33f));
      _401 = frac((_398 * 20.0f) + 1.003125f);
      _408 = exp2(log2(1.0f - abs((_398 * 2.0f) + -1.0f)) * 0.3f);
      _445 = sin(select(_289, 6.2831855f, select(_287, -6.2831855f, (_286 * 4.0f))));
      _446 = _445 * _273;
      _447 = _445 * _274;
      _466 = exp2(log2(((saturate(_398 + -0.9f) * 3.0f) + exp2(log2(1.0f - saturate(sqrt((_446 * _446) + (_447 * _447)))) * 8.0f)) * _398) * 12.95f) * (_398 * 0.49999997f);
      _470 = WaveReadLaneFirst(_materialIndex);
      _478 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_470 < (uint)170000), _470, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _482 = exp2(log2(_294 * 16.0f) * 0.5f);
      _486 = atan(_274 / _273);
      _489 = (_273 == 0.0f);
      _490 = (_274 >= 0.0f);
      _507 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_478 < (uint)65000), _478, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_489 && _490), 2.3561945f, select((_489 && _279), -2.3561945f, (select(_285, (_486 + -3.1415927f), select((_282 && _490), (_486 + 3.1415927f), _486)) * 1.5f))), ((_time.x * 0.2f) - _482)));
      _514 = atan((-0.0f - _274) / (-0.0f - _273));
      _517 = (_273 > -0.0f);
      _518 = (_273 == -0.0f);
      _519 = (_274 <= -0.0f);
      _520 = (_274 > -0.0f);
      _535 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_478 < (uint)65000), _478, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_518 && _519), 2.3561945f, select((_518 && _520), -2.3561945f, (select((_517 && _520), (_514 + -3.1415927f), select((_517 && _519), (_514 + 3.1415927f), _514)) * 1.5f))), ((_time.x * 0.2f) - (_482 * 0.5f))));
      _560 = exp2(log2(min(max((1.0f - (_294 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
      _571 = exp2(log2(min(max((1.1f - (_294 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
      _586 = (((pow(_294, 0.1f)) * 0.1f) + 0.8f) + (sin(_390.x * 8.0f) * 0.2f);
      _596 = (exp2(log2(saturate(1.0f - (_319 * sqrt((_191 * _191) + (_192 * _192))))) * _329) * 150.0f) * _exposure2.x;
      _600 = WaveReadLaneFirst(_materialIndex);
      _608 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_600 < (uint)170000), _600, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _615 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_608 < (uint)65000), _608, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _619 = WaveReadLaneFirst(_materialIndex);
      _627 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_619 < (uint)170000), _619, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _640 = WaveReadLaneFirst(_materialIndex);
      _648 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_640 < (uint)170000), _640, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _670 = ((_viewDir.y + _viewDir.x) * 33.600002f) + (TEXCOORD.x * 0.1f);
      _674 = frac(sin(floor(_670)) * 43758.547f);
      _685 = WaveReadLaneFirst(_materialIndex);
      _693 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_685 < (uint)170000), _685, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      _695 = _693 * (((((frac(_670) * (frac(sin(ceil(_670)) * 43758.547f) - _674)) + _674) * 0.65f) + 0.35f) * (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).w));
      _706 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.x, _535.x))) * 4.0f))) * 5.6f) + (_466 * (((min(max((abs((frac(_401 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _49), (TEXCOORD.y - _51))))).x))) * saturate((_648 * (saturate(pow(_615.x, _627)) + -1.0f)) + 1.0f)) + _102);
      _707 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.y, _535.y))) * 4.0f))) * 5.6f) + (_466 * (((min(max((abs((frac(_401 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y))) * saturate((_648 * (saturate(pow(_615.y, _627)) + -1.0f)) + 1.0f)) + _103);
      _708 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.z, _535.z))) * 4.0f))) * 7.0f) + (_466 * (((min(max((abs((frac(_401 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_49 + TEXCOORD.x), (_51 + TEXCOORD.y))))).z))) * saturate((_648 * (saturate(pow(_615.z, _627)) + -1.0f)) + 1.0f)) + _104);
    } else {
      _706 = _102;
      _707 = _103;
      _708 = _104;
    }
  } else {
    if (!((_237 >= 1.05f) || ((_237 <= -1.5f) || ((_239 >= 1.6f) || ((_239 <= -1.6f) || ((_239 <= -1.5f) || ((_236 < 0.0f) || (abs(_questGuideWorldPosition.z) <= 1e-05f)))))))) {
      _273 = _193 - _239;
      _274 = _192 - _237;
      _276 = atan(_273 / _274);
      _279 = (_274 < 0.0f);
      _280 = (_274 == 0.0f);
      _281 = (_273 >= 0.0f);
      _282 = (_273 < 0.0f);
      _285 = _282 && _279;
      _286 = select(_285, (_276 + -3.1415927f), select((_281 && _279), (_276 + 3.1415927f), _276));
      _287 = _282 && _280;
      _289 = _281 && _280;
      _290 = select(_289, 1.5707964f, select(_287, -1.5707964f, _286));
      _294 = sqrt((_274 * _274) + (_273 * _273));
      _298 = WaveReadLaneFirst(_materialIndex);
      _306 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_298 < (uint)170000), _298, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _311 = WaveReadLaneFirst(_materialIndex);
      _319 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_311 < (uint)170000), _311, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _321 = WaveReadLaneFirst(_materialIndex);
      _329 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_321 < (uint)170000), _321, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _335 = _239 - _193;
      _336 = _237 - _192;
      _341 = WaveReadLaneFirst(_materialIndex);
      _349 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_341 < (uint)170000), _341, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _352 = max((0.02f / (_349 * sqrt((_336 * _336) + (_335 * _335)))), 0.0f);
      _353 = _352 * _352;
      _364 = WaveReadLaneFirst(_materialIndex);
      _372 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_364 < (uint)170000), _364, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _373 = _372 * _time.x;
      _375 = WaveReadLaneFirst(_materialIndex);
      _383 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_375 < (uint)170000), _375, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _390 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_383 < (uint)65000), _383, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((sin((_290 * 2.0f) + _239) * 4.0f) - cos((_290 * 3.0f) + _237)) + _373), _373));
      _398 = 1.0f / exp2((_294 * 1.442695f) * ((frac(_390.x) * 0.66f) + 0.33f));
      _401 = frac((_398 * 20.0f) + 1.003125f);
      _408 = exp2(log2(1.0f - abs((_398 * 2.0f) + -1.0f)) * 0.3f);
      _445 = sin(select(_289, 6.2831855f, select(_287, -6.2831855f, (_286 * 4.0f))));
      _446 = _445 * _273;
      _447 = _445 * _274;
      _466 = exp2(log2(((saturate(_398 + -0.9f) * 3.0f) + exp2(log2(1.0f - saturate(sqrt((_446 * _446) + (_447 * _447)))) * 8.0f)) * _398) * 12.95f) * (_398 * 0.49999997f);
      _470 = WaveReadLaneFirst(_materialIndex);
      _478 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_470 < (uint)170000), _470, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _482 = exp2(log2(_294 * 16.0f) * 0.5f);
      _486 = atan(_274 / _273);
      _489 = (_273 == 0.0f);
      _490 = (_274 >= 0.0f);
      _507 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_478 < (uint)65000), _478, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_489 && _490), 2.3561945f, select((_489 && _279), -2.3561945f, (select(_285, (_486 + -3.1415927f), select((_282 && _490), (_486 + 3.1415927f), _486)) * 1.5f))), ((_time.x * 0.2f) - _482)));
      _514 = atan((-0.0f - _274) / (-0.0f - _273));
      _517 = (_273 > -0.0f);
      _518 = (_273 == -0.0f);
      _519 = (_274 <= -0.0f);
      _520 = (_274 > -0.0f);
      _535 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_478 < (uint)65000), _478, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_518 && _519), 2.3561945f, select((_518 && _520), -2.3561945f, (select((_517 && _520), (_514 + -3.1415927f), select((_517 && _519), (_514 + 3.1415927f), _514)) * 1.5f))), ((_time.x * 0.2f) - (_482 * 0.5f))));
      _560 = exp2(log2(min(max((1.0f - (_294 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
      _571 = exp2(log2(min(max((1.1f - (_294 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
      _586 = (((pow(_294, 0.1f)) * 0.1f) + 0.8f) + (sin(_390.x * 8.0f) * 0.2f);
      _596 = (exp2(log2(saturate(1.0f - (_319 * sqrt((_191 * _191) + (_192 * _192))))) * _329) * 150.0f) * _exposure2.x;
      _600 = WaveReadLaneFirst(_materialIndex);
      _608 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_600 < (uint)170000), _600, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _615 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_608 < (uint)65000), _608, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _619 = WaveReadLaneFirst(_materialIndex);
      _627 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_619 < (uint)170000), _619, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _640 = WaveReadLaneFirst(_materialIndex);
      _648 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_640 < (uint)170000), _640, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _670 = ((_viewDir.y + _viewDir.x) * 33.600002f) + (TEXCOORD.x * 0.1f);
      _674 = frac(sin(floor(_670)) * 43758.547f);
      _685 = WaveReadLaneFirst(_materialIndex);
      _693 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_685 < (uint)170000), _685, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      _695 = _693 * (((((frac(_670) * (frac(sin(ceil(_670)) * 43758.547f) - _674)) + _674) * 0.65f) + 0.35f) * (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).w));
      _706 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.x, _535.x))) * 4.0f))) * 5.6f) + (_466 * (((min(max((abs((frac(_401 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _49), (TEXCOORD.y - _51))))).x))) * saturate((_648 * (saturate(pow(_615.x, _627)) + -1.0f)) + 1.0f)) + _102);
      _707 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.y, _535.y))) * 4.0f))) * 5.6f) + (_466 * (((min(max((abs((frac(_401 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y))) * saturate((_648 * (saturate(pow(_615.y, _627)) + -1.0f)) + 1.0f)) + _103);
      _708 = (((_695 * (((((((_571 + (_560 * exp2(log2(saturate(max(_507.z, _535.z))) * 4.0f))) * 7.0f) + (_466 * (((min(max((abs((frac(_401 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _408) + 1.0f))) * _586) + _353) * _596) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_49 + TEXCOORD.x), (_51 + TEXCOORD.y))))).z))) * saturate((_648 * (saturate(pow(_615.z, _627)) + -1.0f)) + 1.0f)) + _104);
    } else {
      _706 = _102;
      _707 = _103;
      _708 = _104;
    }
  }
  _709 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _722 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _709, 0)))).x) & 127)))) + 0.5f);
  } else {
    _722 = 1.0f;
  }
  _725 = (_localToneMappingParams.w > 0.0f);
  if (_725) {
    _731 = _userImageAdjust.z * _exposure0.x;
    _780 = exp2(log2(max(0.0f, (((_731 * max(0.0f, (((_706 * 1.70505f) - (_707 * 0.62179f)) - (_708 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _781 = exp2(log2(max(0.0f, (((max(0.0f, (((_707 * 1.1408f) - (_706 * 0.13026f)) - (_708 * 0.01055f))) * _731) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _782 = exp2(log2(max(0.0f, (((max(0.0f, (((_706 * -0.024f) - (_707 * 0.12897f)) + (_708 * 1.15297f))) * _731) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _784 = dot(float3(_780, _781, _782), float3(0.212671f, 0.71516f, 0.072169f));
    _791 = ((_780 - _784) * _powerParams.w) + _784;
    _792 = ((_781 - _784) * _powerParams.w) + _784;
    _793 = ((_782 - _784) * _powerParams.w) + _784;
    _812 = min(max(log2(mad(_793, 0.079223745f, mad(_792, 0.0784336f, (_791 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _813 = min(max(log2(mad(_793, 0.07916613f, mad(_792, 0.87846863f, (_791 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _814 = min(max(log2(mad(_793, 0.879143f, mad(_792, 0.0784336f, (_791 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _815 = _812 * 0.060606062f;
    _816 = _813 * 0.060606062f;
    _817 = _814 * 0.060606062f;
    _818 = _815 * _815;
    _819 = _816 * _816;
    _820 = _817 * _817;
    _866 = min(0.0f, (-0.0f - (((_812 * 0.0072181816f) + ((_818 * 0.4298f) + (((_818 * _818) * ((31.96f - (_812 * 2.4327273f)) + (_818 * 15.5f))) - ((_812 * 0.41624245f) * _818)))) + -0.00232f)));
    _867 = min(0.0f, (-0.0f - (((_813 * 0.0072181816f) + ((_819 * 0.4298f) + (((_819 * _819) * ((31.96f - (_813 * 2.4327273f)) + (_819 * 15.5f))) - ((_813 * 0.41624245f) * _819)))) + -0.00232f)));
    _868 = min(0.0f, (-0.0f - (((_814 * 0.0072181816f) + ((_820 * 0.4298f) + (((_820 * _820) * ((31.96f - (_814 * 2.4327273f)) + (_820 * 15.5f))) - ((_814 * 0.41624245f) * _820)))) + -0.00232f)));
    _869 = -0.0f - _866;
    _870 = -0.0f - _867;
    _871 = -0.0f - _868;
    _872 = dot(float3(_869, _870, _871), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _889 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _890 = -0.79999995f / _889;
      _891 = -1.2f / _889;
      _892 = 0.20000005f / _889;
      _898 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _901 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _908 = (_890 + 1.4f) + (_901 * (-0.39999998f - _890));
      _909 = (_891 + 1.6f) + (_901 * (-0.6f - _891));
      _910 = (_892 + 0.9f) + (_901 * (0.5f - _892));
      _927 = (lerp(_909, 1.2f, _898));  // [sem: blended]
      _928 = (lerp(_908, 1.0f, _898));  // [sem: blended]
      _929 = (lerp(_910, 1.4f, _898));  // [sem: blended]
    } else {
      _927 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _928 = 1.0f;  // [sem: blended]
      _929 = 1.4f;  // [sem: blended]
    }
    _939 = 1.0f - _927;
    _964 = ((exp2(log2(((saturate((_866 * _866) * _869) * _939) + _927) * _869) * _928) - _872) * _929) + _872;
    _965 = ((exp2(log2(((saturate((_867 * _867) * _870) * _939) + _927) * _870) * _928) - _872) * _929) + _872;
    _966 = ((exp2(log2(((saturate((_868 * _868) * _871) * _939) + _927) * _871) * _928) - _872) * _929) + _872;
    _985 = saturate(exp2(log2(mad(_966, -0.09902974f, mad(_965, -0.09802088f, (_964 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _986 = saturate(exp2(log2(mad(_966, -0.098961174f, mad(_965, 1.1519032f, (_964 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _987 = saturate(exp2(log2(mad(_966, 1.1510737f, mad(_965, -0.09804345f, (_964 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
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
      _1067 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
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
    _1131 = select((_1099 <= 0.0031308f), (_1099 * 12.92f), (((pow(_1099, 0.41666666f)) * 1.055f) + -0.055f));
    _1132 = select((_1100 <= 0.0031308f), (_1100 * 12.92f), (((pow(_1100, 0.41666666f)) * 1.055f) + -0.055f));
    _1133 = select((_1101 <= 0.0031308f), (_1101 * 12.92f), (((pow(_1101, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1131 = _1099;
    _1132 = _1100;
    _1133 = _1101;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1138 = (float)((uint)((uint)(_709)));
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
  _1159 = exp2(log2(_1147 * 0.0001f) * 0.15930176f);
  _1160 = exp2(log2(_1148 * 0.0001f) * 0.15930176f);
  _1161 = exp2(log2(_1149 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1159 * 18.6875f) + 1.0f)) * ((_1159 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1160 * 18.6875f) + 1.0f)) * ((_1160 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1161 * 18.6875f) + 1.0f)) * ((_1161 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _722;
  return SV_Target;
}
