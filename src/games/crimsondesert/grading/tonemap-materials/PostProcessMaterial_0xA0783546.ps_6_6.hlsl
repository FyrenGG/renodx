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
  float _39;
  float _40;
  float _41;
  float _66;
  float _67;
  float _68;
  uint2 _70;
  uint _85;
  int _87;
  float _95;
  float _96;
  float _98;
  float _99;
  float _100;
  float _111;
  float _112;
  bool _432;
  float _469;
  float _495;
  float _496;
  float _497;
  float _514;
  float _719;
  float _720;
  float _721;
  float _814;
  float _815;
  float _816;
  float _870;
  float _871;
  float _872;
  float _891;
  float _892;
  float _893;
  float _923;
  float _924;
  float _925;
  float _939;
  float _940;
  float _941;
  float _114;
  float _115;
  float _116;
  float _117;
  float _119;
  float _132;
  int _133;
  int _141;
  float _144;
  float _147;
  float _149;
  float _174;
  float _175;
  float _176;
  int _177;
  int _185;
  float _188;
  float _191;
  float _193;
  float _218;
  float _219;
  float _220;
  int _225;
  float _233;
  float _248;
  float _252;
  int _263;
  float _271;
  float _275;
  float _279;
  int _290;
  float _298;
  float _302;
  float _307;
  float _316;
  float _318;
  float _319;
  float _355;
  float _357;
  int _359;
  float _369;
  float _370;
  float _371;
  int _372;
  float _382;
  float _383;
  float _384;
  int _385;
  float _395;
  float _396;
  float _397;
  int _398;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float _417;
  float _419;
  float _454;
  int _455;
  float _463;
  float _483;
  float _487;
  float _498;
  float _499;
  float _500;
  uint _501;
  bool _517;
  float _523;
  float _572;
  float _573;
  float _574;
  float _576;
  float _583;
  float _584;
  float _585;
  float _604;
  float _605;
  float _606;
  float _607;
  float _608;
  float _609;
  float _610;
  float _611;
  float _612;
  float _658;
  float _659;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _681;
  float _682;
  float _683;
  float _684;
  float _690;
  float _693;
  float _700;
  float _701;
  float _702;
  float _731;
  float _756;
  float _757;
  float _758;
  float _777;
  float _778;
  float _779;
  float _785;
  float _789;
  float _790;
  float _791;
  float _792;
  float _797;
  float _822;
  float _826;
  float _827;
  float _828;
  float _829;
  float _859;
  float _881;
  float _882;
  float _886;
  float _930;
  float _951;
  float _952;
  float _953;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _39 = (pow(_29.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_29.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_29.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_70.x, _70.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _85 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_70.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_70.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _87 = _85.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _95 = (((float)((uint)((uint)((uint)((uint)(_85.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _96 = (((float)((uint)((uint)(((uint)((uint)(_85.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _98 = 1.0f - abs(_95);
  _99 = abs(_96);
  _100 = _98 - _99;
  if (!(_100 >= 0.0f)) {
    _111 = (select((_95 >= 0.0f), 1.0f, -1.0f) * (1.0f - _99));
    _112 = (select((_96 >= 0.0f), 1.0f, -1.0f) * _98);
  } else {
    _111 = _95;
    _112 = _96;
  }
  _114 = rsqrt(dot(float3(_111, _112, _100), float3(_111, _112, _100)));  // [sem: invLength]
  _115 = _114 * _111;
  _116 = _114 * _112;
  _117 = _114 * _100;
  _119 = rsqrt(dot(float3(_115, _116, _117), float3(_115, _116, _117)));  // [sem: invLength]
  _132 = 1.0f - abs(dot(float3((_119 * _115), (_119 * _116), (_119 * _117)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  _133 = WaveReadLaneFirst(_materialIndex);
  _141 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _144 = (float)((uint)((uint)(((uint)((uint)(_141)) >> 16) & 255)));
  _147 = (float)((uint)((uint)(((uint)((uint)(_141)) >> 8) & 255)));
  _149 = (float)((uint)((uint)(_141 & 255)));
  _174 = select(((_144 * 0.003921569f) < 0.04045f), (_144 * 0.000303527f), exp2(log2((_144 * 0.003717127f) + 0.052132703f) * 2.4f));
  _175 = select(((_147 * 0.003921569f) < 0.04045f), (_147 * 0.000303527f), exp2(log2((_147 * 0.003717127f) + 0.052132703f) * 2.4f));
  _176 = select(((_149 * 0.003921569f) < 0.04045f), (_149 * 0.000303527f), exp2(log2((_149 * 0.003717127f) + 0.052132703f) * 2.4f));
  _177 = WaveReadLaneFirst(_materialIndex);
  _185 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_177 < (uint)170000), _177, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _188 = (float)((uint)((uint)(((uint)((uint)(_185)) >> 16) & 255)));
  _191 = (float)((uint)((uint)(((uint)((uint)(_185)) >> 8) & 255)));
  _193 = (float)((uint)((uint)(_185 & 255)));
  _218 = select(((_188 * 0.003921569f) < 0.04045f), (_188 * 0.000303527f), exp2(log2((_188 * 0.003717127f) + 0.052132703f) * 2.4f));
  _219 = select(((_191 * 0.003921569f) < 0.04045f), (_191 * 0.000303527f), exp2(log2((_191 * 0.003717127f) + 0.052132703f) * 2.4f));
  _220 = select(((_193 * 0.003921569f) < 0.04045f), (_193 * 0.000303527f), exp2(log2((_193 * 0.003717127f) + 0.052132703f) * 2.4f));
  if (_87 == _renderPassHousing) {
    _225 = WaveReadLaneFirst(_materialIndex);
    _233 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_225 < (uint)170000), _225, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _248 = max(0.001f, _exposure0.x);
    _252 = saturate(_233 * _132);  // [sem: expr_sat]
    _495 = (_252 * ((((_housingPreviewState * (_218 - _174)) + _174) / _248) - _66));
    _496 = (_252 * ((((_housingPreviewState * (_219 - _175)) + _175) / _248) - _67));
    _497 = (_252 * ((((_housingPreviewState * (_220 - _176)) + _176) / _248) - _68));
  } else {
    if (_87 == _renderPassHousingSelected) {
      _263 = WaveReadLaneFirst(_materialIndex);
      _271 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_263 < (uint)170000), _263, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
      _275 = max(0.001f, _exposure0.x);
      _279 = saturate(_271 * _132);  // [sem: expr_sat]
      _495 = (_279 * ((_174 / _275) - _66));
      _496 = (_279 * ((_175 / _275) - _67));
      _497 = (_279 * ((_176 / _275) - _68));
    } else {
      if (_87 == _renderPassHousingHover) {
        _290 = WaveReadLaneFirst(_materialIndex);
        _298 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_290 < (uint)170000), _290, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
        _302 = max(0.001f, _exposure0.x);
        _307 = saturate(_298 * _132) * 0.35f;
        _495 = (_307 * ((_174 / _302) - _66));
        _496 = (_307 * ((_175 / _302) - _67));
        _497 = (_307 * ((_176 / _302) - _68));
      } else {
        _316 = (TEXCOORD.x * 2.0f) + -1.0f;
        _318 = 1.0f - (TEXCOORD.y * 2.0f);
        _319 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
        _355 = mad((_invViewProj[3].z), _319, mad((_invViewProj[3].y), _318, ((_invViewProj[3].x) * _316))) + (_invViewProj[3].w);
        _357 = (mad((_invViewProj[1].z), _319, mad((_invViewProj[1].y), _318, ((_invViewProj[1].x) * _316))) + (_invViewProj[1].w)) / _355;
        _359 = WaveReadLaneFirst(_materialIndex);
        _369 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.x);
        _370 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.y);
        _371 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_359 < (uint)170000), _359, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.z);
        _372 = WaveReadLaneFirst(_materialIndex);
        _382 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_372 < (uint)170000), _372, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.x);
        _383 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_372 < (uint)170000), _372, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.y);
        _384 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_372 < (uint)170000), _372, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.z);
        _385 = WaveReadLaneFirst(_materialIndex);
        _395 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.x);
        _396 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.y);
        _397 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.z);
        _398 = WaveReadLaneFirst(_materialIndex);
        _406 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_398 < (uint)170000), _398, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionYaw);
        _407 = _406 * 0.017453292f;
        _408 = sin(_407);
        _409 = cos(_407);
        _410 = ((mad((_invViewProj[0].z), _319, mad((_invViewProj[0].y), _318, ((_invViewProj[0].x) * _316))) + (_invViewProj[0].w)) / _355) - _395;
        _411 = ((mad((_invViewProj[2].z), _319, mad((_invViewProj[2].y), _318, ((_invViewProj[2].x) * _316))) + (_invViewProj[2].w)) / _355) - _397;
        _417 = ((_409 * _410) - (_408 * _411)) + _395;
        _419 = ((_408 * _410) + _397) + (_409 * _411);
        if ((_357 < _383) && ((_417 < _382) && (_417 > _369))) {
          _432 = ((_419 > _371) && ((_357 > _370) && (_419 < _384)));
        } else {
          _432 = false;
        }
        if (_432) {
          _454 = max(saturate(((abs(_417 - ((_382 + _369) * 0.5f)) * 2.0f) + 1.0f) - abs(_382 - _369)), saturate(((abs(_419 - ((_384 + _371) * 0.5f)) * 2.0f) + 1.0f) - abs(_384 - _371)));
          _455 = WaveReadLaneFirst(_materialIndex);
          _463 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_455 < (uint)170000), _455, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
          _469 = (((_454 * _454) * (_132 * 0.5f)) * _463);
        } else {
          _469 = 0.0f;
        }
        _483 = max(0.001f, _exposure0.x);
        _487 = saturate(_469);  // [sem: _469_sat]
        _495 = (_487 * ((((_housingPreviewState * (_218 - _174)) + _174) / _483) - _66));
        _496 = (_487 * ((((_housingPreviewState * (_219 - _175)) + _175) / _483) - _67));
        _497 = (_487 * ((((_housingPreviewState * (_220 - _176)) + _176) / _483) - _68));
      }
    }
  }
  _498 = _68 + _497;
  _499 = _67 + _496;
  _500 = _66 + _495;
  _501 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _514 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _501, 0)))).x) & 127)))) + 0.5f);
  } else {
    _514 = 1.0f;
  }
  _517 = (_localToneMappingParams.w > 0.0f);
  if (_517) {
    _523 = _userImageAdjust.z * _exposure0.x;
    _572 = exp2(log2(max(0.0f, (((_523 * max(0.0f, (((_500 * 1.70505f) - (_499 * 0.62179f)) - (_498 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _573 = exp2(log2(max(0.0f, (((max(0.0f, (((_499 * 1.1408f) - (_500 * 0.13026f)) - (_498 * 0.01055f))) * _523) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _574 = exp2(log2(max(0.0f, (((max(0.0f, (((_500 * -0.024f) - (_499 * 0.12897f)) + (_498 * 1.15297f))) * _523) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _576 = dot(float3(_572, _573, _574), float3(0.212671f, 0.71516f, 0.072169f));
    _583 = ((_572 - _576) * _powerParams.w) + _576;
    _584 = ((_573 - _576) * _powerParams.w) + _576;
    _585 = ((_574 - _576) * _powerParams.w) + _576;
    _604 = min(max(log2(mad(_585, 0.079223745f, mad(_584, 0.0784336f, (_583 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _605 = min(max(log2(mad(_585, 0.07916613f, mad(_584, 0.87846863f, (_583 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _606 = min(max(log2(mad(_585, 0.879143f, mad(_584, 0.0784336f, (_583 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _607 = _604 * 0.060606062f;
    _608 = _605 * 0.060606062f;
    _609 = _606 * 0.060606062f;
    _610 = _607 * _607;
    _611 = _608 * _608;
    _612 = _609 * _609;
    _658 = min(0.0f, (-0.0f - (((_604 * 0.0072181816f) + ((_610 * 0.4298f) + (((_610 * _610) * ((31.96f - (_604 * 2.4327273f)) + (_610 * 15.5f))) - ((_604 * 0.41624245f) * _610)))) + -0.00232f)));
    _659 = min(0.0f, (-0.0f - (((_605 * 0.0072181816f) + ((_611 * 0.4298f) + (((_611 * _611) * ((31.96f - (_605 * 2.4327273f)) + (_611 * 15.5f))) - ((_605 * 0.41624245f) * _611)))) + -0.00232f)));
    _660 = min(0.0f, (-0.0f - (((_606 * 0.0072181816f) + ((_612 * 0.4298f) + (((_612 * _612) * ((31.96f - (_606 * 2.4327273f)) + (_612 * 15.5f))) - ((_606 * 0.41624245f) * _612)))) + -0.00232f)));
    _661 = -0.0f - _658;
    _662 = -0.0f - _659;
    _663 = -0.0f - _660;
    _664 = dot(float3(_661, _662, _663), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _681 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _682 = -0.79999995f / _681;
      _683 = -1.2f / _681;
      _684 = 0.20000005f / _681;
      _690 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _693 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _700 = (_682 + 1.4f) + (_693 * (-0.39999998f - _682));
      _701 = (_683 + 1.6f) + (_693 * (-0.6f - _683));
      _702 = (_684 + 0.9f) + (_693 * (0.5f - _684));
      _719 = (lerp(_701, 1.2f, _690));  // [sem: blended]
      _720 = (lerp(_700, 1.0f, _690));  // [sem: blended]
      _721 = (lerp(_702, 1.4f, _690));  // [sem: blended]
    } else {
      _719 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _720 = 1.0f;  // [sem: blended]
      _721 = 1.4f;  // [sem: blended]
    }
    _731 = 1.0f - _719;
    _756 = ((exp2(log2(((saturate((_658 * _658) * _661) * _731) + _719) * _661) * _720) - _664) * _721) + _664;
    _757 = ((exp2(log2(((saturate((_659 * _659) * _662) * _731) + _719) * _662) * _720) - _664) * _721) + _664;
    _758 = ((exp2(log2(((saturate((_660 * _660) * _663) * _731) + _719) * _663) * _720) - _664) * _721) + _664;
    _777 = saturate(exp2(log2(mad(_758, -0.09902974f, mad(_757, -0.09802088f, (_756 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _778 = saturate(exp2(log2(mad(_758, -0.098961174f, mad(_757, 1.1519032f, (_756 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _779 = saturate(exp2(log2(mad(_758, 1.1510737f, mad(_757, -0.09804345f, (_756 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _785 = 1.0f - abs(_etcParams.w);
      _789 = saturate(_etcParams.w);  // [sem: expr_sat]
      _790 = (_785 * _777) + _789;
      _791 = (_785 * _778) + _789;
      _792 = (_785 * _779) + _789;
      if (_colorGradingParams.w > 0.0f) {
        _797 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _814 = (((max(0.0f, (1.0f - _790)) - _790) * _797) + _790);
        _815 = (((max(0.0f, (1.0f - _791)) - _791) * _797) + _791);
        _816 = (((max(0.0f, (1.0f - _792)) - _792) * _797) + _792);
      } else {
        _814 = _790;
        _815 = _791;
        _816 = _792;
      }
      _822 = _userImageAdjust.y + 1.0f;
      _826 = _userImageAdjust.x + 0.5f;
      _827 = ((_814 + -0.5f) * _822) + _826;
      _828 = ((_815 + -0.5f) * _822) + _826;
      _829 = ((_816 + -0.5f) * _822) + _826;
      _859 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _870 = exp2(log2(saturate(mad(_colorBlind0.z, _829, mad(_colorBlind0.y, _828, (_colorBlind0.x * _827))))) * _859);
      _871 = exp2(log2(saturate(mad(_colorBlind1.z, _829, mad(_colorBlind1.y, _828, (_colorBlind1.x * _827))))) * _859);
      _872 = exp2(log2(saturate(mad(_colorBlind2.z, _829, mad(_colorBlind2.y, _828, (_colorBlind2.x * _827))))) * _859);
    } else {
      _870 = _777;
      _871 = _778;
      _872 = _779;
    }
  } else {
    _870 = _500;
    _871 = _499;
    _872 = _498;
  }
  if (_etcParams.y > 1.0f) {
    _881 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _882 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _886 = saturate(1.0f - (dot(float2(_881, _882), float2(_881, _882)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _891 = (_886 * _870);
    _892 = (_886 * _871);
    _893 = (_886 * _872);
  } else {
    _891 = _870;
    _892 = _871;
    _893 = _872;
  }
  if (_517 && (_etcParams.z > 0.0f)) {
    _923 = select((_891 <= 0.0031308f), (_891 * 12.92f), (((pow(_891, 0.41666666f)) * 1.055f) + -0.055f));
    _924 = select((_892 <= 0.0031308f), (_892 * 12.92f), (((pow(_892, 0.41666666f)) * 1.055f) + -0.055f));
    _925 = select((_893 <= 0.0031308f), (_893 * 12.92f), (((pow(_893, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _923 = _891;
    _924 = _892;
    _925 = _893;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _930 = (float)((uint)((uint)(_501)));
    if (!(_930 < _viewDir.w)) {
      if (!(_930 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _939 = _923;
        _940 = _924;
        _941 = _925;
      } else {
        _939 = 0.0f;
        _940 = 0.0f;
        _941 = 0.0f;
      }
    } else {
      _939 = 0.0f;
      _940 = 0.0f;
      _941 = 0.0f;
    }
  } else {
    _939 = _923;
    _940 = _924;
    _941 = _925;
  }
  _951 = exp2(log2(_939 * 0.0001f) * 0.15930176f);
  _952 = exp2(log2(_940 * 0.0001f) * 0.15930176f);
  _953 = exp2(log2(_941 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_951 * 18.6875f) + 1.0f)) * ((_951 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_952 * 18.6875f) + 1.0f)) * ((_952 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_953 * 18.6875f) + 1.0f)) * ((_953 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _514;
  return SV_Target;
}
