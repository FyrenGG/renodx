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
  float4 _29;
  uint2 _34;
  uint _49;
  int _51;
  float _59;
  float _60;
  float _62;
  float _63;
  float _64;
  float _75;
  float _76;
  bool _396;
  float _433;
  float _459;
  float _460;
  float _461;
  float _478;
  float _683;
  float _684;
  float _685;
  float _778;
  float _779;
  float _780;
  float _834;
  float _835;
  float _836;
  float _855;
  float _856;
  float _857;
  float _887;
  float _888;
  float _889;
  float _903;
  float _904;
  float _905;
  float _78;
  float _79;
  float _80;
  float _81;
  float _83;
  float _96;
  int _97;
  int _105;
  float _108;
  float _111;
  float _113;
  float _138;
  float _139;
  float _140;
  int _141;
  int _149;
  float _152;
  float _155;
  float _157;
  float _182;
  float _183;
  float _184;
  int _189;
  float _197;
  float _212;
  float _216;
  int _227;
  float _235;
  float _239;
  float _243;
  int _254;
  float _262;
  float _266;
  float _271;
  float _280;
  float _282;
  float _283;
  float _319;
  float _321;
  int _323;
  float _333;
  float _334;
  float _335;
  int _336;
  float _346;
  float _347;
  float _348;
  int _349;
  float _359;
  float _360;
  float _361;
  int _362;
  float _370;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _381;
  float _383;
  float _418;
  int _419;
  float _427;
  float _447;
  float _451;
  float _462;
  float _463;
  float _464;
  uint _465;
  bool _481;
  float _487;
  float _536;
  float _537;
  float _538;
  float _540;
  float _547;
  float _548;
  float _549;
  float _568;
  float _569;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _576;
  float _622;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _645;
  float _646;
  float _647;
  float _648;
  float _654;
  float _657;
  float _664;
  float _665;
  float _666;
  float _695;
  float _720;
  float _721;
  float _722;
  float _741;
  float _742;
  float _743;
  float _749;
  float _753;
  float _754;
  float _755;
  float _756;
  float _761;
  float _786;
  float _790;
  float _791;
  float _792;
  float _793;
  float _823;
  float _845;
  float _846;
  float _850;
  float _894;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_34.x, _34.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _49 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_34.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_34.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _51 = _49.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _59 = (((float)((uint)((uint)((uint)((uint)(_49.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _60 = (((float)((uint)((uint)(((uint)((uint)(_49.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _62 = 1.0f - abs(_59);
  _63 = abs(_60);
  _64 = _62 - _63;
  if (!(_64 >= 0.0f)) {
    _75 = (select((_59 >= 0.0f), 1.0f, -1.0f) * (1.0f - _63));
    _76 = (select((_60 >= 0.0f), 1.0f, -1.0f) * _62);
  } else {
    _75 = _59;
    _76 = _60;
  }
  _78 = rsqrt(dot(float3(_75, _76, _64), float3(_75, _76, _64)));  // [sem: invLength]
  _79 = _78 * _75;
  _80 = _78 * _76;
  _81 = _78 * _64;
  _83 = rsqrt(dot(float3(_79, _80, _81), float3(_79, _80, _81)));  // [sem: invLength]
  _96 = 1.0f - abs(dot(float3((_83 * _79), (_83 * _80), (_83 * _81)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  _97 = WaveReadLaneFirst(_materialIndex);
  _105 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _108 = (float)((uint)((uint)(((uint)((uint)(_105)) >> 16) & 255)));
  _111 = (float)((uint)((uint)(((uint)((uint)(_105)) >> 8) & 255)));
  _113 = (float)((uint)((uint)(_105 & 255)));
  _138 = select(((_108 * 0.003921569f) < 0.04045f), (_108 * 0.000303527f), exp2(log2((_108 * 0.003717127f) + 0.052132703f) * 2.4f));
  _139 = select(((_111 * 0.003921569f) < 0.04045f), (_111 * 0.000303527f), exp2(log2((_111 * 0.003717127f) + 0.052132703f) * 2.4f));
  _140 = select(((_113 * 0.003921569f) < 0.04045f), (_113 * 0.000303527f), exp2(log2((_113 * 0.003717127f) + 0.052132703f) * 2.4f));
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_141 < (uint)170000), _141, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _152 = (float)((uint)((uint)(((uint)((uint)(_149)) >> 16) & 255)));
  _155 = (float)((uint)((uint)(((uint)((uint)(_149)) >> 8) & 255)));
  _157 = (float)((uint)((uint)(_149 & 255)));
  _182 = select(((_152 * 0.003921569f) < 0.04045f), (_152 * 0.000303527f), exp2(log2((_152 * 0.003717127f) + 0.052132703f) * 2.4f));
  _183 = select(((_155 * 0.003921569f) < 0.04045f), (_155 * 0.000303527f), exp2(log2((_155 * 0.003717127f) + 0.052132703f) * 2.4f));
  _184 = select(((_157 * 0.003921569f) < 0.04045f), (_157 * 0.000303527f), exp2(log2((_157 * 0.003717127f) + 0.052132703f) * 2.4f));
  if (_51 == _renderPassHousing) {
    _189 = WaveReadLaneFirst(_materialIndex);
    _197 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_189 < (uint)170000), _189, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _212 = max(0.001f, _exposure0.x);
    _216 = saturate(_197 * _96);  // [sem: expr_sat]
    _459 = (_216 * ((((_housingPreviewState * (_182 - _138)) + _138) / _212) - _29.x));
    _460 = (_216 * ((((_housingPreviewState * (_183 - _139)) + _139) / _212) - _29.y));
    _461 = (_216 * ((((_housingPreviewState * (_184 - _140)) + _140) / _212) - _29.z));
  } else {
    if (_51 == _renderPassHousingSelected) {
      _227 = WaveReadLaneFirst(_materialIndex);
      _235 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_227 < (uint)170000), _227, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
      _239 = max(0.001f, _exposure0.x);
      _243 = saturate(_235 * _96);  // [sem: expr_sat]
      _459 = (_243 * ((_138 / _239) - _29.x));
      _460 = (_243 * ((_139 / _239) - _29.y));
      _461 = (_243 * ((_140 / _239) - _29.z));
    } else {
      if (_51 == _renderPassHousingHover) {
        _254 = WaveReadLaneFirst(_materialIndex);
        _262 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_254 < (uint)170000), _254, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
        _266 = max(0.001f, _exposure0.x);
        _271 = saturate(_262 * _96) * 0.35f;
        _459 = (_271 * ((_138 / _266) - _29.x));
        _460 = (_271 * ((_139 / _266) - _29.y));
        _461 = (_271 * ((_140 / _266) - _29.z));
      } else {
        _280 = (TEXCOORD.x * 2.0f) + -1.0f;
        _282 = 1.0f - (TEXCOORD.y * 2.0f);
        _283 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
        _319 = mad((_invViewProj[3].z), _283, mad((_invViewProj[3].y), _282, ((_invViewProj[3].x) * _280))) + (_invViewProj[3].w);
        _321 = (mad((_invViewProj[1].z), _283, mad((_invViewProj[1].y), _282, ((_invViewProj[1].x) * _280))) + (_invViewProj[1].w)) / _319;
        _323 = WaveReadLaneFirst(_materialIndex);
        _333 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.x);
        _334 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.y);
        _335 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.z);
        _336 = WaveReadLaneFirst(_materialIndex);
        _346 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_336 < (uint)170000), _336, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.x);
        _347 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_336 < (uint)170000), _336, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.y);
        _348 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_336 < (uint)170000), _336, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.z);
        _349 = WaveReadLaneFirst(_materialIndex);
        _359 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_349 < (uint)170000), _349, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.x);
        _360 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_349 < (uint)170000), _349, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.y);
        _361 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_349 < (uint)170000), _349, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.z);
        _362 = WaveReadLaneFirst(_materialIndex);
        _370 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_362 < (uint)170000), _362, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionYaw);
        _371 = _370 * 0.017453292f;
        _372 = sin(_371);
        _373 = cos(_371);
        _374 = ((mad((_invViewProj[0].z), _283, mad((_invViewProj[0].y), _282, ((_invViewProj[0].x) * _280))) + (_invViewProj[0].w)) / _319) - _359;
        _375 = ((mad((_invViewProj[2].z), _283, mad((_invViewProj[2].y), _282, ((_invViewProj[2].x) * _280))) + (_invViewProj[2].w)) / _319) - _361;
        _381 = ((_373 * _374) - (_372 * _375)) + _359;
        _383 = ((_372 * _374) + _361) + (_373 * _375);
        if ((_321 < _347) && ((_381 < _346) && (_381 > _333))) {
          _396 = ((_383 > _335) && ((_321 > _334) && (_383 < _348)));
        } else {
          _396 = false;
        }
        if (_396) {
          _418 = max(saturate(((abs(_381 - ((_346 + _333) * 0.5f)) * 2.0f) + 1.0f) - abs(_346 - _333)), saturate(((abs(_383 - ((_348 + _335) * 0.5f)) * 2.0f) + 1.0f) - abs(_348 - _335)));
          _419 = WaveReadLaneFirst(_materialIndex);
          _427 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_419 < (uint)170000), _419, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
          _433 = (((_418 * _418) * (_96 * 0.5f)) * _427);
        } else {
          _433 = 0.0f;
        }
        _447 = max(0.001f, _exposure0.x);
        _451 = saturate(_433);  // [sem: _433_sat]
        _459 = (_451 * ((((_housingPreviewState * (_182 - _138)) + _138) / _447) - _29.x));
        _460 = (_451 * ((((_housingPreviewState * (_183 - _139)) + _139) / _447) - _29.y));
        _461 = (_451 * ((((_housingPreviewState * (_184 - _140)) + _140) / _447) - _29.z));
      }
    }
  }
  _462 = _29.z + _461;
  _463 = _29.y + _460;
  _464 = _29.x + _459;
  _465 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _478 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _465, 0)))).x) & 127)))) + 0.5f);
  } else {
    _478 = 1.0f;
  }
  _481 = (_localToneMappingParams.w > 0.0f);
  if (_481) {
    _487 = _userImageAdjust.z * _exposure0.x;
    _536 = exp2(log2(max(0.0f, (((_487 * max(0.0f, (((_464 * 1.70505f) - (_463 * 0.62179f)) - (_462 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _537 = exp2(log2(max(0.0f, (((max(0.0f, (((_463 * 1.1408f) - (_464 * 0.13026f)) - (_462 * 0.01055f))) * _487) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _538 = exp2(log2(max(0.0f, (((max(0.0f, (((_464 * -0.024f) - (_463 * 0.12897f)) + (_462 * 1.15297f))) * _487) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _540 = dot(float3(_536, _537, _538), float3(0.212671f, 0.71516f, 0.072169f));
    _547 = ((_536 - _540) * _powerParams.w) + _540;
    _548 = ((_537 - _540) * _powerParams.w) + _540;
    _549 = ((_538 - _540) * _powerParams.w) + _540;
    _568 = min(max(log2(mad(_549, 0.079223745f, mad(_548, 0.0784336f, (_547 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _569 = min(max(log2(mad(_549, 0.07916613f, mad(_548, 0.87846863f, (_547 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _570 = min(max(log2(mad(_549, 0.879143f, mad(_548, 0.0784336f, (_547 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _571 = _568 * 0.060606062f;
    _572 = _569 * 0.060606062f;
    _573 = _570 * 0.060606062f;
    _574 = _571 * _571;
    _575 = _572 * _572;
    _576 = _573 * _573;
    _622 = min(0.0f, (-0.0f - (((_568 * 0.0072181816f) + ((_574 * 0.4298f) + (((_574 * _574) * ((31.96f - (_568 * 2.4327273f)) + (_574 * 15.5f))) - ((_568 * 0.41624245f) * _574)))) + -0.00232f)));
    _623 = min(0.0f, (-0.0f - (((_569 * 0.0072181816f) + ((_575 * 0.4298f) + (((_575 * _575) * ((31.96f - (_569 * 2.4327273f)) + (_575 * 15.5f))) - ((_569 * 0.41624245f) * _575)))) + -0.00232f)));
    _624 = min(0.0f, (-0.0f - (((_570 * 0.0072181816f) + ((_576 * 0.4298f) + (((_576 * _576) * ((31.96f - (_570 * 2.4327273f)) + (_576 * 15.5f))) - ((_570 * 0.41624245f) * _576)))) + -0.00232f)));
    _625 = -0.0f - _622;
    _626 = -0.0f - _623;
    _627 = -0.0f - _624;
    _628 = dot(float3(_625, _626, _627), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _645 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _646 = -0.79999995f / _645;
      _647 = -1.2f / _645;
      _648 = 0.20000005f / _645;
      _654 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _657 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _664 = (_646 + 1.4f) + (_657 * (-0.39999998f - _646));
      _665 = (_647 + 1.6f) + (_657 * (-0.6f - _647));
      _666 = (_648 + 0.9f) + (_657 * (0.5f - _648));
      _683 = (lerp(_665, 1.2f, _654));  // [sem: blended]
      _684 = (lerp(_664, 1.0f, _654));  // [sem: blended]
      _685 = (lerp(_666, 1.4f, _654));  // [sem: blended]
    } else {
      _683 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _684 = 1.0f;  // [sem: blended]
      _685 = 1.4f;  // [sem: blended]
    }
    _695 = 1.0f - _683;
    _720 = ((exp2(log2(((saturate((_622 * _622) * _625) * _695) + _683) * _625) * _684) - _628) * _685) + _628;
    _721 = ((exp2(log2(((saturate((_623 * _623) * _626) * _695) + _683) * _626) * _684) - _628) * _685) + _628;
    _722 = ((exp2(log2(((saturate((_624 * _624) * _627) * _695) + _683) * _627) * _684) - _628) * _685) + _628;
    _741 = saturate(exp2(log2(mad(_722, -0.09902974f, mad(_721, -0.09802088f, (_720 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _742 = saturate(exp2(log2(mad(_722, -0.098961174f, mad(_721, 1.1519032f, (_720 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _743 = saturate(exp2(log2(mad(_722, 1.1510737f, mad(_721, -0.09804345f, (_720 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _749 = 1.0f - abs(_etcParams.w);
      _753 = saturate(_etcParams.w);  // [sem: expr_sat]
      _754 = (_749 * _741) + _753;
      _755 = (_749 * _742) + _753;
      _756 = (_749 * _743) + _753;
      if (_colorGradingParams.w > 0.0f) {
        _761 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _778 = (((max(0.0f, (1.0f - _754)) - _754) * _761) + _754);
        _779 = (((max(0.0f, (1.0f - _755)) - _755) * _761) + _755);
        _780 = (((max(0.0f, (1.0f - _756)) - _756) * _761) + _756);
      } else {
        _778 = _754;
        _779 = _755;
        _780 = _756;
      }
      _786 = _userImageAdjust.y + 1.0f;
      _790 = _userImageAdjust.x + 0.5f;
      _791 = ((_778 + -0.5f) * _786) + _790;
      _792 = ((_779 + -0.5f) * _786) + _790;
      _793 = ((_780 + -0.5f) * _786) + _790;
      _823 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _834 = exp2(log2(saturate(mad(_colorBlind0.z, _793, mad(_colorBlind0.y, _792, (_colorBlind0.x * _791))))) * _823);
      _835 = exp2(log2(saturate(mad(_colorBlind1.z, _793, mad(_colorBlind1.y, _792, (_colorBlind1.x * _791))))) * _823);
      _836 = exp2(log2(saturate(mad(_colorBlind2.z, _793, mad(_colorBlind2.y, _792, (_colorBlind2.x * _791))))) * _823);
    } else {
      _834 = _741;
      _835 = _742;
      _836 = _743;
    }
  } else {
    _834 = _464;
    _835 = _463;
    _836 = _462;
  }
  if (_etcParams.y > 1.0f) {
    _845 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _846 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _850 = saturate(1.0f - (dot(float2(_845, _846), float2(_845, _846)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _855 = (_850 * _834);
    _856 = (_850 * _835);
    _857 = (_850 * _836);
  } else {
    _855 = _834;
    _856 = _835;
    _857 = _836;
  }
  if (_481 && (_etcParams.z > 0.0f)) {
    _887 = select((_855 <= 0.0031308f), (_855 * 12.92f), (((pow(_855, 0.41666666f)) * 1.055f) + -0.055f));
    _888 = select((_856 <= 0.0031308f), (_856 * 12.92f), (((pow(_856, 0.41666666f)) * 1.055f) + -0.055f));
    _889 = select((_857 <= 0.0031308f), (_857 * 12.92f), (((pow(_857, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _887 = _855;
    _888 = _856;
    _889 = _857;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _894 = (float)((uint)((uint)(_465)));
    if (!(_894 < _viewDir.w)) {
      if (!(_894 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _903 = _887;
        _904 = _888;
        _905 = _889;
      } else {
        _903 = 0.0f;
        _904 = 0.0f;
        _905 = 0.0f;
      }
    } else {
      _903 = 0.0f;
      _904 = 0.0f;
      _905 = 0.0f;
    }
  } else {
    _903 = _887;
    _904 = _888;
    _905 = _889;
  }
  SV_Target.x = _903;
  SV_Target.y = _904;
  SV_Target.z = _905;
  SV_Target.w = _478;
  return SV_Target;
}
