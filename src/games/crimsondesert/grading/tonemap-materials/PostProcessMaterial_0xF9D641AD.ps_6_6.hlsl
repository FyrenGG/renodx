struct PostProcessHousing_CDStruct {
  float _housingPreviewRatio;
  uint _housingValidColor;
  uint _housingInvalidColor;
  float3 _housingCollisionBBoxMin;
  float3 _housingCollisionBBoxMax;
  float3 _housingCollisionPivot;
  float _housingCollisionYaw;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessHousing_CD {
  PostProcessHousing_CDStruct BindlessParameters_PostProcessHousing_CD;
};

typedef BindlessParameters_PostProcessHousing_CD BindlessParameters_PostProcessHousing_CD_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_CD_t> BindlessParameters_PostProcessHousing_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _31;
  uint2 _36;
  uint _51;
  int _53;
  float _61;
  float _62;
  float _64;
  float _65;
  float _66;
  float _77;
  float _78;
  bool _493;
  float _530;
  float _556;
  float _557;
  float _558;
  float _575;
  float _780;
  float _781;
  float _782;
  float _875;
  float _876;
  float _877;
  float _931;
  float _932;
  float _933;
  float _952;
  float _953;
  float _954;
  float _984;
  float _985;
  float _986;
  float _1000;
  float _1001;
  float _1002;
  float _80;
  float _81;
  float _82;
  float _83;
  float _85;
  uint _96;
  uint _97;
  uint4 _99;
  float4 _102;
  float _120;
  float _121;
  float _122;
  float _124;
  float _125;
  float _126;
  float _127;
  float _130;
  float _131;
  float _134;
  float _135;
  float _139;
  float _141;
  float _142;
  float _143;
  float _144;
  float _146;
  float _149;
  float _150;
  float _151;
  float _152;
  float _161;
  float _165;
  float _169;
  float _171;
  float _172;
  float _173;
  float _174;
  float _193;
  int _194;
  int _202;
  float _205;
  float _208;
  float _210;
  float _235;
  float _236;
  float _237;
  int _238;
  int _246;
  float _249;
  float _252;
  float _254;
  float _279;
  float _280;
  float _281;
  int _286;
  float _294;
  float _309;
  float _313;
  int _324;
  float _332;
  float _336;
  float _340;
  int _351;
  float _359;
  float _363;
  float _368;
  float _377;
  float _379;
  float _380;
  float _416;
  float _418;
  int _420;
  float _430;
  float _431;
  float _432;
  int _433;
  float _443;
  float _444;
  float _445;
  int _446;
  float _456;
  float _457;
  float _458;
  int _459;
  float _467;
  float _468;
  float _469;
  float _470;
  float _471;
  float _472;
  float _478;
  float _480;
  float _515;
  int _516;
  float _524;
  float _544;
  float _548;
  float _559;
  float _560;
  float _561;
  uint _562;
  bool _578;
  float _584;
  float _633;
  float _634;
  float _635;
  float _637;
  float _644;
  float _645;
  float _646;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _719;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _742;
  float _743;
  float _744;
  float _745;
  float _751;
  float _754;
  float _761;
  float _762;
  float _763;
  float _792;
  float _817;
  float _818;
  float _819;
  float _838;
  float _839;
  float _840;
  float _846;
  float _850;
  float _851;
  float _852;
  float _853;
  float _858;
  float _883;
  float _887;
  float _888;
  float _889;
  float _890;
  float _920;
  float _942;
  float _943;
  float _947;
  float _991;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_36.x, _36.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _51 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_36.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_36.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _53 = _51.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _61 = (((float)((uint)((uint)((uint)((uint)(_51.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _62 = (((float)((uint)((uint)(((uint)((uint)(_51.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _64 = 1.0f - abs(_61);
  _65 = abs(_62);
  _66 = _64 - _65;
  if (!(_66 >= 0.0f)) {
    _77 = (select((_61 >= 0.0f), 1.0f, -1.0f) * (1.0f - _65));
    _78 = (select((_62 >= 0.0f), 1.0f, -1.0f) * _64);
  } else {
    _77 = _61;
    _78 = _62;
  }
  _80 = rsqrt(dot(float3(_77, _78, _66), float3(_77, _78, _66)));  // [sem: invLength]
  _81 = _80 * _77;
  _82 = _80 * _78;
  _83 = _80 * _66;
  _85 = rsqrt(dot(float3(_81, _82, _83), float3(_81, _82, _83)));  // [sem: invLength]
  _96 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
  _97 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
  _99 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_96, _97, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _102 = __3__36__0__0__g_gbufferNormal.Load(int3(_96, _97, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _120 = (saturate(_102.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _121 = (saturate(_102.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _122 = (saturate(_102.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _124 = rsqrt(dot(float3(_120, _121, _122), float3(_120, _121, _122)));  // [sem: invLength]
  _125 = _124 * _120;
  _126 = _124 * _121;
  _127 = _122 * _124;
  _130 = (((float)((uint)((uint)(((uint)((uint)(_99.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _131 = (((float)((uint)((uint)(_99.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _134 = (_130 + _131) * 0.5f;
  _135 = (_130 - _131) * 0.5f;
  _139 = (1.0f - abs(_134)) - abs(_135);
  _141 = rsqrt(dot(float3(_134, _135, _139), float3(_134, _135, _139)));  // [sem: invLength]
  _142 = _141 * _134;
  _143 = _141 * _135;
  _144 = _141 * _139;
  _146 = select((_127 >= 0.0f), 1.0f, -1.0f);
  _149 = -0.0f - (1.0f / (_146 + _127));
  _150 = _126 * _149;
  _151 = _150 * _125;
  _152 = _146 * _125;
  _161 = mad(_144, _125, mad(_143, _151, ((((_152 * _125) * _149) + 1.0f) * _142)));
  _165 = mad(_144, _126, mad(_143, (_146 + (_150 * _126)), ((_142 * _146) * _151)));
  _169 = mad(_144, _127, mad(_143, (-0.0f - _126), (-0.0f - (_152 * _142))));
  _171 = rsqrt(dot(float3(_161, _165, _169), float3(_161, _165, _169)));  // [sem: invLength]
  _172 = _171 * _161;
  _173 = _171 * _165;
  _174 = _171 * _169;
  _193 = 1.0f - abs(dot(float3(((((_85 * _81) - _172) * 0.5f) + _172), ((((_85 * _82) - _173) * 0.5f) + _173), ((((_85 * _83) - _174) * 0.5f) + _174)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  _194 = WaveReadLaneFirst(_materialIndex);
  _202 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _205 = (float)((uint)((uint)(((uint)((uint)(_202)) >> 16) & 255)));
  _208 = (float)((uint)((uint)(((uint)((uint)(_202)) >> 8) & 255)));
  _210 = (float)((uint)((uint)(_202 & 255)));
  _235 = select(((_205 * 0.003921569f) < 0.04045f), (_205 * 0.000303527f), exp2(log2((_205 * 0.003717127f) + 0.052132703f) * 2.4f));
  _236 = select(((_208 * 0.003921569f) < 0.04045f), (_208 * 0.000303527f), exp2(log2((_208 * 0.003717127f) + 0.052132703f) * 2.4f));
  _237 = select(((_210 * 0.003921569f) < 0.04045f), (_210 * 0.000303527f), exp2(log2((_210 * 0.003717127f) + 0.052132703f) * 2.4f));
  _238 = WaveReadLaneFirst(_materialIndex);
  _246 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_238 < (uint)170000), _238, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _249 = (float)((uint)((uint)(((uint)((uint)(_246)) >> 16) & 255)));
  _252 = (float)((uint)((uint)(((uint)((uint)(_246)) >> 8) & 255)));
  _254 = (float)((uint)((uint)(_246 & 255)));
  _279 = select(((_249 * 0.003921569f) < 0.04045f), (_249 * 0.000303527f), exp2(log2((_249 * 0.003717127f) + 0.052132703f) * 2.4f));
  _280 = select(((_252 * 0.003921569f) < 0.04045f), (_252 * 0.000303527f), exp2(log2((_252 * 0.003717127f) + 0.052132703f) * 2.4f));
  _281 = select(((_254 * 0.003921569f) < 0.04045f), (_254 * 0.000303527f), exp2(log2((_254 * 0.003717127f) + 0.052132703f) * 2.4f));
  if (_53 == _renderPassHousing) {
    _286 = WaveReadLaneFirst(_materialIndex);
    _294 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_286 < (uint)170000), _286, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _309 = max(0.001f, _exposure0.x);
    _313 = saturate(_294 * _193);  // [sem: expr_sat]
    _556 = (_313 * ((((_housingPreviewState * (_279 - _235)) + _235) / _309) - _31.x));
    _557 = (_313 * ((((_housingPreviewState * (_280 - _236)) + _236) / _309) - _31.y));
    _558 = (_313 * ((((_housingPreviewState * (_281 - _237)) + _237) / _309) - _31.z));
  } else {
    if (_53 == _renderPassHousingSelected) {
      _324 = WaveReadLaneFirst(_materialIndex);
      _332 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_324 < (uint)170000), _324, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
      _336 = max(0.001f, _exposure0.x);
      _340 = saturate(_332 * _193);  // [sem: expr_sat]
      _556 = (_340 * ((_235 / _336) - _31.x));
      _557 = (_340 * ((_236 / _336) - _31.y));
      _558 = (_340 * ((_237 / _336) - _31.z));
    } else {
      if (_53 == _renderPassHousingHover) {
        _351 = WaveReadLaneFirst(_materialIndex);
        _359 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_351 < (uint)170000), _351, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
        _363 = max(0.001f, _exposure0.x);
        _368 = saturate(_359 * _193) * 0.35f;
        _556 = (_368 * ((_235 / _363) - _31.x));
        _557 = (_368 * ((_236 / _363) - _31.y));
        _558 = (_368 * ((_237 / _363) - _31.z));
      } else {
        _377 = (TEXCOORD.x * 2.0f) + -1.0f;
        _379 = 1.0f - (TEXCOORD.y * 2.0f);
        _380 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
        _416 = mad((_invViewProj[3].z), _380, mad((_invViewProj[3].y), _379, ((_invViewProj[3].x) * _377))) + (_invViewProj[3].w);
        _418 = (mad((_invViewProj[1].z), _380, mad((_invViewProj[1].y), _379, ((_invViewProj[1].x) * _377))) + (_invViewProj[1].w)) / _416;
        _420 = WaveReadLaneFirst(_materialIndex);
        _430 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_420 < (uint)170000), _420, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.x);
        _431 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_420 < (uint)170000), _420, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.y);
        _432 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_420 < (uint)170000), _420, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.z);
        _433 = WaveReadLaneFirst(_materialIndex);
        _443 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_433 < (uint)170000), _433, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.x);
        _444 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_433 < (uint)170000), _433, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.y);
        _445 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_433 < (uint)170000), _433, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.z);
        _446 = WaveReadLaneFirst(_materialIndex);
        _456 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_446 < (uint)170000), _446, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.x);
        _457 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_446 < (uint)170000), _446, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.y);
        _458 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_446 < (uint)170000), _446, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.z);
        _459 = WaveReadLaneFirst(_materialIndex);
        _467 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_459 < (uint)170000), _459, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionYaw);
        _468 = _467 * 0.017453292f;
        _469 = sin(_468);
        _470 = cos(_468);
        _471 = ((mad((_invViewProj[0].z), _380, mad((_invViewProj[0].y), _379, ((_invViewProj[0].x) * _377))) + (_invViewProj[0].w)) / _416) - _456;
        _472 = ((mad((_invViewProj[2].z), _380, mad((_invViewProj[2].y), _379, ((_invViewProj[2].x) * _377))) + (_invViewProj[2].w)) / _416) - _458;
        _478 = ((_470 * _471) - (_469 * _472)) + _456;
        _480 = ((_469 * _471) + _458) + (_470 * _472);
        if ((_418 < _444) && ((_478 < _443) && (_478 > _430))) {
          _493 = ((_480 > _432) && ((_418 > _431) && (_480 < _445)));
        } else {
          _493 = false;
        }
        if (_493) {
          _515 = max(saturate(((abs(_478 - ((_443 + _430) * 0.5f)) * 2.0f) + 1.0f) - abs(_443 - _430)), saturate(((abs(_480 - ((_445 + _432) * 0.5f)) * 2.0f) + 1.0f) - abs(_445 - _432)));
          _516 = WaveReadLaneFirst(_materialIndex);
          _524 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_516 < (uint)170000), _516, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
          _530 = (((_515 * _515) * (_193 * 0.5f)) * _524);
        } else {
          _530 = 0.0f;
        }
        _544 = max(0.001f, _exposure0.x);
        _548 = saturate(_530);  // [sem: _530_sat]
        _556 = (_548 * ((((_housingPreviewState * (_279 - _235)) + _235) / _544) - _31.x));
        _557 = (_548 * ((((_housingPreviewState * (_280 - _236)) + _236) / _544) - _31.y));
        _558 = (_548 * ((((_housingPreviewState * (_281 - _237)) + _237) / _544) - _31.z));
      }
    }
  }
  _559 = _31.z + _558;
  _560 = _31.y + _557;
  _561 = _31.x + _556;
  _562 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _575 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _562, 0)))).x) & 127)))) + 0.5f);
  } else {
    _575 = 1.0f;
  }
  _578 = (_localToneMappingParams.w > 0.0f);
  if (_578) {
    _584 = _userImageAdjust.z * _exposure0.x;
    _633 = exp2(log2(max(0.0f, (((_584 * max(0.0f, (((_561 * 1.70505f) - (_560 * 0.62179f)) - (_559 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _634 = exp2(log2(max(0.0f, (((max(0.0f, (((_560 * 1.1408f) - (_561 * 0.13026f)) - (_559 * 0.01055f))) * _584) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _635 = exp2(log2(max(0.0f, (((max(0.0f, (((_561 * -0.024f) - (_560 * 0.12897f)) + (_559 * 1.15297f))) * _584) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _637 = dot(float3(_633, _634, _635), float3(0.212671f, 0.71516f, 0.072169f));
    _644 = ((_633 - _637) * _powerParams.w) + _637;
    _645 = ((_634 - _637) * _powerParams.w) + _637;
    _646 = ((_635 - _637) * _powerParams.w) + _637;
    _665 = min(max(log2(mad(_646, 0.079223745f, mad(_645, 0.0784336f, (_644 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _666 = min(max(log2(mad(_646, 0.07916613f, mad(_645, 0.87846863f, (_644 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _667 = min(max(log2(mad(_646, 0.879143f, mad(_645, 0.0784336f, (_644 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _668 = _665 * 0.060606062f;
    _669 = _666 * 0.060606062f;
    _670 = _667 * 0.060606062f;
    _671 = _668 * _668;
    _672 = _669 * _669;
    _673 = _670 * _670;
    _719 = min(0.0f, (-0.0f - (((_665 * 0.0072181816f) + ((_671 * 0.4298f) + (((_671 * _671) * ((31.96f - (_665 * 2.4327273f)) + (_671 * 15.5f))) - ((_665 * 0.41624245f) * _671)))) + -0.00232f)));
    _720 = min(0.0f, (-0.0f - (((_666 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_666 * 2.4327273f)) + (_672 * 15.5f))) - ((_666 * 0.41624245f) * _672)))) + -0.00232f)));
    _721 = min(0.0f, (-0.0f - (((_667 * 0.0072181816f) + ((_673 * 0.4298f) + (((_673 * _673) * ((31.96f - (_667 * 2.4327273f)) + (_673 * 15.5f))) - ((_667 * 0.41624245f) * _673)))) + -0.00232f)));
    _722 = -0.0f - _719;
    _723 = -0.0f - _720;
    _724 = -0.0f - _721;
    _725 = dot(float3(_722, _723, _724), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _742 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _743 = -0.79999995f / _742;
      _744 = -1.2f / _742;
      _745 = 0.20000005f / _742;
      _751 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _754 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _761 = (_743 + 1.4f) + (_754 * (-0.39999998f - _743));
      _762 = (_744 + 1.6f) + (_754 * (-0.6f - _744));
      _763 = (_745 + 0.9f) + (_754 * (0.5f - _745));
      _780 = (lerp(_762, 1.2f, _751));  // [sem: blended]
      _781 = (lerp(_761, 1.0f, _751));  // [sem: blended]
      _782 = (lerp(_763, 1.4f, _751));  // [sem: blended]
    } else {
      _780 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _781 = 1.0f;  // [sem: blended]
      _782 = 1.4f;  // [sem: blended]
    }
    _792 = 1.0f - _780;
    _817 = ((exp2(log2(((saturate((_719 * _719) * _722) * _792) + _780) * _722) * _781) - _725) * _782) + _725;
    _818 = ((exp2(log2(((saturate((_720 * _720) * _723) * _792) + _780) * _723) * _781) - _725) * _782) + _725;
    _819 = ((exp2(log2(((saturate((_721 * _721) * _724) * _792) + _780) * _724) * _781) - _725) * _782) + _725;
    _838 = saturate(exp2(log2(mad(_819, -0.09902974f, mad(_818, -0.09802088f, (_817 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _839 = saturate(exp2(log2(mad(_819, -0.098961174f, mad(_818, 1.1519032f, (_817 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _840 = saturate(exp2(log2(mad(_819, 1.1510737f, mad(_818, -0.09804345f, (_817 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _846 = 1.0f - abs(_etcParams.w);
      _850 = saturate(_etcParams.w);  // [sem: expr_sat]
      _851 = (_846 * _838) + _850;
      _852 = (_846 * _839) + _850;
      _853 = (_846 * _840) + _850;
      if (_colorGradingParams.w > 0.0f) {
        _858 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _875 = (((max(0.0f, (1.0f - _851)) - _851) * _858) + _851);
        _876 = (((max(0.0f, (1.0f - _852)) - _852) * _858) + _852);
        _877 = (((max(0.0f, (1.0f - _853)) - _853) * _858) + _853);
      } else {
        _875 = _851;
        _876 = _852;
        _877 = _853;
      }
      _883 = _userImageAdjust.y + 1.0f;
      _887 = _userImageAdjust.x + 0.5f;
      _888 = ((_875 + -0.5f) * _883) + _887;
      _889 = ((_876 + -0.5f) * _883) + _887;
      _890 = ((_877 + -0.5f) * _883) + _887;
      _920 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _931 = exp2(log2(saturate(mad(_colorBlind0.z, _890, mad(_colorBlind0.y, _889, (_colorBlind0.x * _888))))) * _920);
      _932 = exp2(log2(saturate(mad(_colorBlind1.z, _890, mad(_colorBlind1.y, _889, (_colorBlind1.x * _888))))) * _920);
      _933 = exp2(log2(saturate(mad(_colorBlind2.z, _890, mad(_colorBlind2.y, _889, (_colorBlind2.x * _888))))) * _920);
    } else {
      _931 = _838;
      _932 = _839;
      _933 = _840;
    }
  } else {
    _931 = _561;
    _932 = _560;
    _933 = _559;
  }
  if (_etcParams.y > 1.0f) {
    _942 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _943 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _947 = saturate(1.0f - (dot(float2(_942, _943), float2(_942, _943)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _952 = (_947 * _931);
    _953 = (_947 * _932);
    _954 = (_947 * _933);
  } else {
    _952 = _931;
    _953 = _932;
    _954 = _933;
  }
  if (_578 && (_etcParams.z > 0.0f)) {
    _984 = select((_952 <= 0.0031308f), (_952 * 12.92f), (((pow(_952, 0.41666666f)) * 1.055f) + -0.055f));
    _985 = select((_953 <= 0.0031308f), (_953 * 12.92f), (((pow(_953, 0.41666666f)) * 1.055f) + -0.055f));
    _986 = select((_954 <= 0.0031308f), (_954 * 12.92f), (((pow(_954, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _984 = _952;
    _985 = _953;
    _986 = _954;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _991 = (float)((uint)((uint)(_562)));
    if (!(_991 < _viewDir.w)) {
      if (!(_991 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1000 = _984;
        _1001 = _985;
        _1002 = _986;
      } else {
        _1000 = 0.0f;
        _1001 = 0.0f;
        _1002 = 0.0f;
      }
    } else {
      _1000 = 0.0f;
      _1001 = 0.0f;
      _1002 = 0.0f;
    }
  } else {
    _1000 = _984;
    _1001 = _985;
    _1002 = _986;
  }
  SV_Target.x = _1000;
  SV_Target.y = _1001;
  SV_Target.z = _1002;
  SV_Target.w = _575;
  return SV_Target;
}
