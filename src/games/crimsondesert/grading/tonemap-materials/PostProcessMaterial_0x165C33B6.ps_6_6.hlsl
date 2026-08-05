struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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
  uint _characterMeshEffectType : packoffset(c029.z);
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
  float4 _27;
  float _33;
  float _36;
  float _39;
  float _48;
  float _57;
  float _66;
  int _69;
  float _77;
  float _183;
  float _184;
  float _436;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _442;
  float _465;
  float _466;
  float _467;
  float _481;
  float _686;
  float _687;
  float _688;
  float _781;
  float _782;
  float _783;
  float _837;
  float _838;
  float _839;
  float _858;
  float _859;
  float _860;
  float _890;
  float _891;
  float _892;
  float _906;
  float _907;
  float _908;
  float _85;
  int _88;
  int _96;
  float4 _110;
  int _116;
  float _124;
  int _127;
  float _135;
  float _137;
  float _139;
  float _141;
  uint2 _143;
  uint _158;
  float _163;
  float _168;
  float _170;
  float _171;
  float _172;
  float _186;
  float _187;
  float _188;
  float _189;
  float _191;
  float _192;
  float _193;
  float _194;
  uint _204;
  uint _208;
  uint4 _210;
  float4 _213;
  float _220;
  float _224;
  float _228;
  float _230;
  float _231;
  float _232;
  float _233;
  float _238;
  float _242;
  float _244;
  float _246;
  float _250;
  float _252;
  float _253;
  float _254;
  float _255;
  float _257;
  float _260;
  float _261;
  float _262;
  float _263;
  float _269;
  float _275;
  float _280;
  float _282;
  float _304;
  float _305;
  float _308;
  int _311;
  float _319;
  float _320;
  int _323;
  float _331;
  float _335;
  float _339;
  float _343;
  float _344;
  float _350;
  int _353;
  int _361;
  float _365;
  float _369;
  float _372;
  float _375;
  int _378;
  int _386;
  float _389;
  float _394;
  float _399;
  float _403;
  float _406;
  float _409;
  float _412;
  int _445;
  float _453;
  float _454;
  uint _468;
  bool _484;
  float _490;
  float _509;
  float _525;
  float _541;
  float _542;
  float _546;
  float _549;
  float _552;
  float _559;
  float _566;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  float _595;
  float _611;
  float _627;
  float _628;
  float _629;
  float _630;
  float _631;
  float _648;
  float _649;
  float _650;
  float _651;
  float _654;
  float _657;
  float _661;
  float _665;
  float _669;
  float _689;
  float _701;
  float _713;
  float _725;
  float _732;
  float _739;
  float _746;
  float _752;
  float _753;
  float _755;
  float _757;
  float _759;
  float _764;
  float _785;
  float _787;
  float _790;
  float _793;
  float _796;
  float _802;
  float _844;
  float _847;
  float _853;
  float _895;
  float _912;
  float _916;
  float _920;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = (pow(_27.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_27.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _48 = exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f;
  _57 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_77 >= 0.001f))) {
    _85 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _88 = WaveReadLaneFirst(_materialIndex);
    _96 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_96 < (uint)65000), _96, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _85), ((_time.x * 0.3f) + (_85 * TEXCOORD.y))));
    _116 = WaveReadLaneFirst(_materialIndex);
    _124 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _127 = WaveReadLaneFirst(_materialIndex);
    _135 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_127 < (uint)170000), _127, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _137 = (_124 * _110.y) * _135;
    _139 = (_137 * 0.01f) + TEXCOORD.x;
    _141 = (_137 * 0.05f) + TEXCOORD.y;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_143.x, _143.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _158 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_143.x))))))) + 0.5f) * _139)), ((int)((((float)((int)((int)((float)((int)((int)(_143.y))))))) + 0.5f) * _141)), 0));
    _163 = (((float)((uint)((uint)((uint)((uint)(_158.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _168 = (((float)((uint)((uint)(((uint)((uint)(_158.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _170 = 1.0f - abs(_163);
    _171 = abs(_168);
    _172 = _170 - _171;
    if (!(_172 >= 0.0f)) {
      _183 = (select((_168 >= 0.0f), 1.0f, -1.0f) * _170);
      _184 = (select((_163 >= 0.0f), 1.0f, -1.0f) * (1.0f - _171));
    } else {
      _183 = _168;
      _184 = _163;
    }
    _186 = rsqrt(dot(float3(_184, _183, _172), float3(_184, _183, _172)));  // [sem: invLength]
    _187 = _186 * _184;
    _188 = _186 * _183;
    _189 = _186 * _172;
    _191 = rsqrt(dot(float3(_187, _188, _189), float3(_187, _188, _189)));  // [sem: invLength]
    _192 = _191 * _187;
    _193 = _191 * _188;
    _194 = _191 * _189;
    if ((_158.x & 255) == _renderPassNPCGhost) {
      _204 = (uint)((_bufferSizeAndInvSize.x * _139) + -0.5f);
      _208 = (uint)((_bufferSizeAndInvSize.y * _141) + -0.5f);
      _210 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_204, _208, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _213 = __3__36__0__0__g_gbufferNormal.Load(int3(_204, _208, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _220 = (saturate(_213.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _224 = (saturate(_213.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _228 = (saturate(_213.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _230 = rsqrt(dot(float3(_220, _224, _228), float3(_220, _224, _228)));  // [sem: invLength]
      _231 = _230 * _220;
      _232 = _230 * _224;
      _233 = _228 * _230;
      _238 = (((float)((uint)((uint)(((uint)((uint)(_210.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _242 = (((float)((uint)((uint)(_210.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _244 = (_238 + _242) * 0.5f;
      _246 = (_238 - _242) * 0.5f;
      _250 = (1.0f - abs(_244)) - abs(_246);
      _252 = rsqrt(dot(float3(_244, _246, _250), float3(_244, _246, _250)));  // [sem: invLength]
      _253 = _252 * _244;
      _254 = _252 * _246;
      _255 = _252 * _250;
      _257 = select((_233 >= 0.0f), 1.0f, -1.0f);
      _260 = -0.0f - (1.0f / (_257 + _233));
      _261 = _232 * _260;
      _262 = _261 * _231;
      _263 = _257 * _231;
      _269 = mad(_255, _231, mad(_254, _262, ((((_263 * _231) * _260) + 1.0f) * _253)));
      _275 = mad(_255, _232, mad(_254, ((_261 * _232) + _257), ((_253 * _257) * _262)));
      _280 = mad(_255, _233, mad(_254, (-0.0f - _232), (-0.0f - (_263 * _253))));
      _282 = rsqrt(dot(float3(_269, _275, _280), float3(_269, _275, _280)));  // [sem: invLength]
      // [sem: expr_sat]
      _304 = saturate(1.0f - dot(float3(((((_282 * _269) - _192) * 0.2f) + _192), ((((_282 * _275) - _193) * 0.2f) + _193), ((((_282 * _280) - _194) * 0.2f) + _194)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _305 = _304 * 2.0f;
      _308 = 1.0f - saturate(_305 * _304);
      _311 = WaveReadLaneFirst(_materialIndex);
      _319 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_311 < (uint)170000), _311, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
      _320 = _319 * _308;
      _323 = WaveReadLaneFirst(_materialIndex);
      _331 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColorInnerBrightness);
      _335 = (((_331 * _48) - _48) * _320) + _48;
      _339 = (((_331 * _57) - _57) * _320) + _57;
      _343 = (((_331 * _66) - _66) * _320) + _66;
      _344 = _308 * _304;
      _350 = saturate((_344 * _344) * 30.0f) * saturate(_110.x * 40.0f);  // [sem: expr_sat]
      _353 = WaveReadLaneFirst(_materialIndex);
      _361 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_353 < (uint)170000), _353, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor1);
      _365 = ((float)((uint)((uint)(((uint)((uint)(_361)) >> 16) & 255)))) * 0.003921569f;
      _369 = ((float)((uint)((uint)(((uint)((uint)(_361)) >> 8) & 255)))) * 0.003921569f;
      _372 = ((float)((uint)((uint)(_361 & 255)))) * 0.003921569f;
      _375 = max(0.001f, _exposure0.x);
      _378 = WaveReadLaneFirst(_materialIndex);
      _386 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_378 < (uint)170000), _378, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor2);
      _389 = max(0.001f, _exposure0.x);
      _394 = (((float)((uint)((uint)(((uint)((uint)(_386)) >> 16) & 255)))) * 0.003921569f) / _389;
      _399 = (((float)((uint)((uint)(((uint)((uint)(_386)) >> 8) & 255)))) * 0.003921569f) / _389;
      _403 = (((float)((uint)((uint)(_386 & 255)))) * 0.003921569f) / _389;
      _406 = ((_335 - _394) * 0.1f) + _394;
      _409 = ((_339 - _399) * 0.1f) + _399;
      _412 = ((_343 - _403) * 0.1f) + _403;
      _436 = (((((lerp(_372, _110.z, 0.1f)) / _375) - _412) * _350) + _412);
      _437 = (((((lerp(_369, _110.y, 0.1f)) / _375) - _409) * _350) + _409);
      _438 = (((((lerp(_365, _110.x, 0.1f)) / _375) - _406) * _350) + _406);
      _439 = saturate(_305);  // [sem: _305_sat]
      _440 = _343;
      _441 = _339;
      _442 = _335;
    } else {
      _436 = _66;
      _437 = _57;
      _438 = _48;
      _439 = 0.0f;  // [sem: _305_sat]
      _440 = _66;
      _441 = _57;
      _442 = _48;
    }
    _445 = WaveReadLaneFirst(_materialIndex);
    _453 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_445 < (uint)170000), _445, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _454 = _453 * _439;
    _465 = ((_454 * (_436 - _440)) + _440);
    _466 = ((_454 * (_437 - _441)) + _441);
    _467 = ((_454 * (_438 - _442)) + _442);
  } else {
    _465 = _66;
    _466 = _57;
    _467 = _48;
  }
  _468 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _481 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _468, 0)))).x) & 127)))) + 0.5f);
  } else {
    _481 = 0.0f;
  }
  _484 = (_localToneMappingParams.w > 0.0f);
  if (_484) {
    _490 = _exposure0.x * _userImageAdjust.z;
    _509 = exp2(_powerParams.x * log2(max(0.0f, (((_490 * max(0.0f, (((_466 * -0.62179f) - (_465 * 0.08326f)) + (_467 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _525 = exp2(log2(max(0.0f, (((_slopeParams.y * _490) * max(0.0f, (((_466 * 1.1408f) - (_465 * 0.01055f)) - (_467 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _541 = exp2(log2(max(0.0f, (((_slopeParams.z * _490) * max(0.0f, (((_465 * 1.15297f) - (_466 * 0.12897f)) - (_467 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _542 = dot(float3(_509, _525, _541), float3(0.212671f, 0.71516f, 0.072169f));
    _546 = ((_509 - _542) * _powerParams.w) + _542;
    _549 = ((_525 - _542) * _powerParams.w) + _542;
    _552 = ((_541 - _542) * _powerParams.w) + _542;
    _559 = min(max(log2(mad(_552, 0.079223745f, mad(_549, 0.0784336f, (_546 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _566 = min(max(log2(mad(_552, 0.07916613f, mad(_549, 0.87846863f, (_546 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _573 = min(max(log2(mad(_552, 0.879143f, mad(_549, 0.0784336f, (_546 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _574 = _559 * 0.060606062f;
    _575 = _566 * 0.060606062f;
    _576 = _573 * 0.060606062f;
    _577 = _574 * _574;
    _578 = _575 * _575;
    _579 = _576 * _576;
    _595 = min(0.0f, (-0.0f - (((_559 * 0.0072181816f) + ((_577 * 0.4298f) + (((_577 * _577) * ((31.96f - (_559 * 2.4327273f)) + (_577 * 15.5f))) - ((_559 * 0.41624245f) * _577)))) + -0.00232f)));
    _611 = min(0.0f, (-0.0f - (((_566 * 0.0072181816f) + ((_578 * 0.4298f) + (((_578 * _578) * ((31.96f - (_566 * 2.4327273f)) + (_578 * 15.5f))) - ((_566 * 0.41624245f) * _578)))) + -0.00232f)));
    _627 = min(0.0f, (-0.0f - (((_573 * 0.0072181816f) + ((_579 * 0.4298f) + (((_579 * _579) * ((31.96f - (_573 * 2.4327273f)) + (_579 * 15.5f))) - ((_573 * 0.41624245f) * _579)))) + -0.00232f)));
    _628 = -0.0f - _595;
    _629 = -0.0f - _611;
    _630 = -0.0f - _627;
    _631 = dot(float3(_628, _629, _630), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _648 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _649 = -0.79999995f / _648;
      _650 = -1.2f / _648;
      _651 = 0.20000005f / _648;
      _654 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _657 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _661 = (_649 + 1.4f) + (_657 * (-0.39999998f - _649));
      _665 = (_650 + 1.6f) + (_657 * (-0.6f - _650));
      _669 = (_651 + 0.9f) + (_657 * (0.5f - _651));
      _686 = (lerp(_669, 1.4f, _654));  // [sem: blended]
      _687 = (lerp(_661, 1.0f, _654));  // [sem: blended]
      _688 = (lerp(_665, 1.2f, _654));  // [sem: blended]
    } else {
      _686 = 1.4f;  // [sem: blended]
      _687 = 1.0f;  // [sem: blended]
      _688 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _689 = 1.0f - _688;
    _701 = ((exp2(log2(((saturate((_595 * _595) * _628) * _689) + _688) * _628) * _687) - _631) * _686) + _631;
    _713 = ((exp2(log2(((saturate((_611 * _611) * _629) * _689) + _688) * _629) * _687) - _631) * _686) + _631;
    _725 = ((exp2(log2(((saturate((_627 * _627) * _630) * _689) + _688) * _630) * _687) - _631) * _686) + _631;
    _732 = saturate(exp2(log2(mad(_725, -0.09902974f, mad(_713, -0.09802088f, (_701 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _739 = saturate(exp2(log2(mad(_725, -0.098961174f, mad(_713, 1.1519032f, (_701 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _746 = saturate(exp2(log2(mad(_725, 1.1510737f, mad(_713, -0.09804345f, (_701 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _752 = 1.0f - abs(_etcParams.w);
      _753 = saturate(_etcParams.w);  // [sem: expr_sat]
      _755 = (_752 * _732) + _753;
      _757 = (_752 * _739) + _753;
      _759 = (_752 * _746) + _753;
      if (_colorGradingParams.w > 0.0f) {
        _764 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _781 = (((max(0.0f, (1.0f - _759)) - _759) * _764) + _759);
        _782 = (((max(0.0f, (1.0f - _757)) - _757) * _764) + _757);
        _783 = (((max(0.0f, (1.0f - _755)) - _755) * _764) + _755);
      } else {
        _781 = _759;
        _782 = _757;
        _783 = _755;
      }
      _785 = _userImageAdjust.y + 1.0f;
      _787 = _userImageAdjust.x + 0.5f;
      _790 = ((_783 + -0.5f) * _785) + _787;
      _793 = ((_782 + -0.5f) * _785) + _787;
      _796 = ((_781 + -0.5f) * _785) + _787;
      _802 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _837 = exp2(log2(saturate(mad(_colorBlind1.z, _796, mad(_colorBlind1.y, _793, (_colorBlind1.x * _790))))) * _802);
      _838 = exp2(log2(saturate(mad(_colorBlind0.z, _796, mad(_colorBlind0.y, _793, (_colorBlind0.x * _790))))) * _802);
      _839 = exp2(log2(saturate(mad(_colorBlind2.z, _796, mad(_colorBlind2.y, _793, (_colorBlind2.x * _790))))) * _802);
    } else {
      _837 = _739;
      _838 = _732;
      _839 = _746;
    }
  } else {
    _837 = _466;
    _838 = _467;
    _839 = _465;
  }
  if (_etcParams.y > 1.0f) {
    _844 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _847 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _853 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_844, _847), float2(_844, _847))));  // [sem: expr_sat]
    _858 = (_853 * _838);
    _859 = (_853 * _837);
    _860 = (_853 * _839);
  } else {
    _858 = _838;
    _859 = _837;
    _860 = _839;
  }
  if (_484 && (_etcParams.z > 0.0f)) {
    _890 = select((_858 <= 0.0031308f), (_858 * 12.92f), (((pow(_858, 0.41666666f)) * 1.055f) + -0.055f));
    _891 = select((_859 <= 0.0031308f), (_859 * 12.92f), (((pow(_859, 0.41666666f)) * 1.055f) + -0.055f));
    _892 = select((_860 <= 0.0031308f), (_860 * 12.92f), (((pow(_860, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _890 = _858;
    _891 = _859;
    _892 = _860;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _895 = (float)((uint)((uint)(_468)));
    if (!(_895 < _viewDir.w)) {
      if (!(!(_895 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _906 = 0.0f;
        _907 = 0.0f;
        _908 = 0.0f;
      } else {
        _906 = _890;
        _907 = _891;
        _908 = _892;
      }
    } else {
      _906 = 0.0f;
      _907 = 0.0f;
      _908 = 0.0f;
    }
  } else {
    _906 = _890;
    _907 = _891;
    _908 = _892;
  }
  _912 = exp2(log2(_906 * 0.0001f) * 0.15930176f);
  _916 = exp2(log2(_907 * 0.0001f) * 0.15930176f);
  _920 = exp2(log2(_908 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_912 * 18.6875f) + 1.0f)) * ((_912 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_916 * 18.6875f) + 1.0f)) * ((_916 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_920 * 18.6875f) + 1.0f)) * ((_920 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _481;
  return SV_Target;
}
