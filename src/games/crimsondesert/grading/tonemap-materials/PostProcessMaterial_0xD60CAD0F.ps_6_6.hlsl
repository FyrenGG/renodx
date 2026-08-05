struct PostProcessRematchLoading_CDStruct {
  float _loadingRatio;
  float _loadingRadius;
  uint _loadingEdgeColor;
  uint _loadingInnerColor;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessRematchLoading_CD {
  PostProcessRematchLoading_CDStruct BindlessParameters_PostProcessRematchLoading_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

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

typedef BindlessParameters_PostProcessRematchLoading_CD BindlessParameters_PostProcessRematchLoading_CD_t;
ConstantBuffer<BindlessParameters_PostProcessRematchLoading_CD_t> BindlessParameters_PostProcessRematchLoading_CD[] : register(b0, space100);

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
  float4 _28;
  float _34;
  float _37;
  float _40;
  float _49;
  float _58;
  float _67;
  float _69;
  float _70;
  float _71;
  float _74;
  float _76;
  float _88;
  int _91;
  float _99;
  int _102;
  float _110;
  float _113;
  float _115;
  float _116;
  float _117;
  float _118;
  float _120;
  float _126;
  float _128;
  float _130;
  float _137;
  float _142;
  uint _150;
  uint _156;
  uint4 _158;
  float4 _161;
  float _168;
  float _172;
  float _176;
  float _178;
  float _179;
  float _180;
  float _181;
  float _186;
  float _190;
  float _192;
  float _194;
  float _198;
  float _200;
  float _201;
  float _202;
  float _203;
  float _205;
  float _208;
  float _209;
  float _210;
  float _211;
  float _217;
  float _223;
  float _228;
  float _230;
  float _249;
  float _252;
  float _264;
  float _273;
  float _282;
  float _291;
  float _293;
  float _294;
  float _295;
  float _297;
  bool _298;
  bool _299;
  bool _300;
  bool _301;
  int _304;
  int _312;
  float4 _338;
  float _343;
  float _345;
  float _361;
  float _372;
  float _383;
  float _394;
  float _396;
  float _398;
  float _405;
  float _411;
  float _418;
  float _424;
  float _430;
  float _433;
  int _436;
  int _444;
  float _447;
  float _450;
  float _452;
  float _461;
  float _470;
  float _479;
  float _482;
  float _484;
  float _486;
  float _488;
  float _491;
  float _582;
  float _583;
  float _584;
  float _650;
  float _855;
  float _856;
  float _857;
  float _950;
  float _951;
  float _952;
  float _1006;
  float _1007;
  float _1008;
  float _1024;
  float _1025;
  float _1026;
  float _1056;
  float _1057;
  float _1058;
  float _1072;
  float _1073;
  float _1074;
  int _498;
  int _506;
  float _509;
  float _512;
  float _514;
  float _523;
  float _532;
  float _541;
  float _542;
  float _543;
  float _544;
  float _546;
  float _549;
  float _556;
  float _587;
  float _603;
  float _614;
  float _625;
  float _636;
  uint _637;
  bool _653;
  float _659;
  float _678;
  float _694;
  float _710;
  float _711;
  float _715;
  float _718;
  float _721;
  float _728;
  float _735;
  float _742;
  float _743;
  float _744;
  float _745;
  float _746;
  float _747;
  float _748;
  float _764;
  float _780;
  float _796;
  float _797;
  float _798;
  float _799;
  float _800;
  float _817;
  float _818;
  float _819;
  float _820;
  float _823;
  float _826;
  float _830;
  float _834;
  float _838;
  float _858;
  float _870;
  float _882;
  float _894;
  float _901;
  float _908;
  float _915;
  float _921;
  float _922;
  float _924;
  float _926;
  float _928;
  float _933;
  float _954;
  float _956;
  float _959;
  float _962;
  float _965;
  float _971;
  float _1011;
  float _1013;
  float _1019;
  float _1061;
  float _1078;
  float _1082;
  float _1086;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _34 = (pow(_28.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_28.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_28.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _49 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _58 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = (TEXCOORD.x * 2.0f) + -1.0f;
  _70 = TEXCOORD.y * 2.0f;
  _71 = 1.0f - _70;
  _74 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _76 = max(1e-07f, _74.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _88 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _76, mad((_invViewProj[3].y), _71, ((_invViewProj[3].x) * _69)));
  _91 = WaveReadLaneFirst(_materialIndex);
  _99 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingRatio);
  _102 = WaveReadLaneFirst(_materialIndex);
  _110 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_102 < (uint)170000), _102, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingRadius);
  _113 = 0.2f / _destTargetSizAndInv.z;
  _115 = 0.2f / _destTargetSizAndInv.w;
  _116 = _115 * TEXCOORD.y;
  _117 = floor(_116);
  _118 = _117 * 0.5f;
  _120 = frac(abs(_118));
  _126 = select((_118 >= (-0.0f - _118)), _120, (-0.0f - _120)) + (_113 * TEXCOORD.x);
  _128 = frac(_126) + -0.5f;
  _130 = frac(_116) + -0.5f;
  _137 = saturate((sqrt((_130 * _130) + (_128 * _128)) + -0.3f) * 49.999973f);  // [sem: expr_sat]
  _142 = 1.0f - ((_137 * _137) * (3.0f - (_137 * 2.0f)));
  _150 = (uint)((((floor(_126) + 0.5f) / _113) * _bufferSizeAndInvSize.x) + -0.5f);
  _156 = (uint)((((_117 + 0.5f) / _115) * _bufferSizeAndInvSize.y) + -0.5f);
  _158 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_150, _156, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _161 = __3__36__0__0__g_gbufferNormal.Load(int3(_150, _156, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _168 = (saturate(_161.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _172 = (saturate(_161.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _176 = (saturate(_161.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _178 = rsqrt(dot(float3(_168, _172, _176), float3(_168, _172, _176)));  // [sem: invLength]
  _179 = _178 * _168;
  _180 = _178 * _172;
  _181 = _176 * _178;
  _186 = (((float)((uint)((uint)(((uint)((uint)(_158.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _190 = (((float)((uint)((uint)(_158.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _192 = (_186 + _190) * 0.5f;
  _194 = (_186 - _190) * 0.5f;
  _198 = (1.0f - abs(_192)) - abs(_194);
  _200 = rsqrt(dot(float3(_192, _194, _198), float3(_192, _194, _198)));  // [sem: invLength]
  _201 = _200 * _192;
  _202 = _200 * _194;
  _203 = _200 * _198;
  _205 = select((_181 >= 0.0f), 1.0f, -1.0f);
  _208 = -0.0f - (1.0f / (_205 + _181));
  _209 = _180 * _208;
  _210 = _209 * _179;
  _211 = _205 * _179;
  _217 = mad(_203, _179, mad(_202, _210, ((((_211 * _179) * _208) + 1.0f) * _201)));
  _223 = mad(_203, _180, mad(_202, ((_209 * _180) + _205), ((_201 * _205) * _210)));
  _228 = mad(_203, _181, mad(_202, (-0.0f - _180), (-0.0f - (_211 * _201))));
  _230 = rsqrt(dot(float3(_217, _223, _228), float3(_217, _223, _228)));  // [sem: invLength]
  // [sem: expr_sat]
  _249 = saturate(exp2(log2(select(((_74.x < 1e-07f) || (_74.x == 1.0f)), 1.0f, (1.0f - abs(dot(float3((_230 * _217), (_230 * _223), (_230 * _228)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))))) * 4.0f) * 2.0f);
  _252 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _264 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _252, ((_invViewProjRelative[3].x) * _69));
  _273 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _252, ((_invViewProjRelative[0].x) * _69))) / _264;
  _282 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _252, ((_invViewProjRelative[1].x) * _69))) / _264;
  _291 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _252, ((_invViewProjRelative[2].x) * _69))) / _264;
  _293 = rsqrt(dot(float3(_273, _282, _291), float3(_273, _282, _291)));  // [sem: invLength]
  _294 = _293 * _273;
  _295 = _293 * _291;
  _297 = atan(_295 / _294);
  _298 = (_294 < 0.0f);
  _299 = (_294 == 0.0f);
  _300 = (_295 >= 0.0f);
  _301 = (_295 < 0.0f);
  _304 = WaveReadLaneFirst(_materialIndex);
  _312 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_304 < (uint)170000), _304, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._noiseTex);
  _338 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_312 < (uint)65000), _312, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_299 && _300), 7.5f, select((_299 && _301), 2.5f, ((select((_298 && _301), (_297 + -3.1415927f), select((_298 && _300), (_297 + 3.1415927f), _297)) * 1.5915494f) + 5.0f))), ((acos(_293 * _282) * 0.9549296f) - (_time.x * 0.05f))));
  _343 = (_338.x * 2.0f) + -0.99607843f;
  _345 = (_338.y * 2.0f) + -0.99607843f;
  _361 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _76, mad((_invViewProj[0].y), _71, ((_invViewProj[0].x) * _69)))) / _88) - _mainPosition.x;
  _372 = ((mad((_invViewProj[1].z), _76, mad((_invViewProj[1].y), _71, ((_invViewProj[1].x) * _69))) + (_invViewProj[1].w)) / _88) - _mainPosition.y;
  _383 = ((mad((_invViewProj[2].z), _76, mad((_invViewProj[2].y), _71, ((_invViewProj[2].x) * _69))) + (_invViewProj[2].w)) / _88) - _mainPosition.z;
  _394 = saturate(_99 * 5.0f) * min(max(sqrt(((_372 * _372) + (_361 * _361)) + (_383 * _383)), 1.0f), 10.0f);  // [sem: expr_sat]
  _396 = (_394 * _343) + _361;
  _398 = (_394 * _345) + _372;
  _405 = ((sqrt(saturate(1.0f - dot(float2(_343, _345), float2(_343, _345)))) + -0.5f) * _394) + _383;
  _411 = sqrt(((_396 * _396) + (_398 * _398)) + (_405 * _405));
  _418 = saturate((1.0f - saturate(_411 / max(0.001f, (_110 * _99)))) * 2.0f);  // [sem: expr_sat]
  _424 = (saturate((_99 * 10.0f) + -9.0f) * (1.0f - _418)) + _418;
  _430 = frac((_411 * 0.03f) - (_time.x * 0.8f));
  _433 = saturate((1.0f - _430) * 5.0f);  // [sem: expr_sat]
  _436 = WaveReadLaneFirst(_materialIndex);
  _444 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_436 < (uint)170000), _436, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingInnerColor);
  _447 = (float)((uint)((uint)(((uint)((uint)(_444)) >> 16) & 255)));
  _450 = (float)((uint)((uint)(((uint)((uint)(_444)) >> 8) & 255)));
  _452 = (float)((uint)((uint)(_444 & 255)));
  _461 = select(((_447 * 0.003921569f) < 0.04045f), (_447 * 0.000303527f), exp2(log2((_447 * 0.003717127f) + 0.052132703f) * 2.4f));
  _470 = select(((_450 * 0.003921569f) < 0.04045f), (_450 * 0.000303527f), exp2(log2((_450 * 0.003717127f) + 0.052132703f) * 2.4f));
  _479 = select(((_452 * 0.003921569f) < 0.04045f), (_452 * 0.000303527f), exp2(log2((_452 * 0.003717127f) + 0.052132703f) * 2.4f));
  _482 = (pow(_433, 4.0f));
  _484 = (1.0f - _461) * _338.x;
  _486 = (1.0f - _470) * _338.y;
  _488 = (1.0f - _479) * _338.z;
  _491 = max(0.001f, _exposure0.x);
  if ((_424 > 0.0f) && (_424 < 1.0f)) {
    _498 = WaveReadLaneFirst(_materialIndex);
    _506 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_498 < (uint)170000), _498, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingEdgeColor);
    _509 = (float)((uint)((uint)(((uint)((uint)(_506)) >> 16) & 255)));
    _512 = (float)((uint)((uint)(((uint)((uint)(_506)) >> 8) & 255)));
    _514 = (float)((uint)((uint)(_506 & 255)));
    _523 = select(((_509 * 0.003921569f) < 0.04045f), (_509 * 0.000303527f), exp2(log2((_509 * 0.003717127f) + 0.052132703f) * 2.4f));
    _532 = select(((_512 * 0.003921569f) < 0.04045f), (_512 * 0.000303527f), exp2(log2((_512 * 0.003717127f) + 0.052132703f) * 2.4f));
    _541 = select(((_514 * 0.003921569f) < 0.04045f), (_514 * 0.000303527f), exp2(log2((_514 * 0.003717127f) + 0.052132703f) * 2.4f));
    _542 = _523 * 10.0f;
    _543 = _532 * 10.0f;
    _544 = _541 * 10.0f;
    _546 = (_338.x * _338.y) * _338.z;
    _549 = max(0.001f, _exposure0.x);
    _556 = saturate((1.0f - abs((_424 * 2.0f) + -1.0f)) * 4.0f) * _142;
    _582 = (_556 * (((((((1.0f - _523) * _338.x) - _542) * _249) + _542) * _546) / _549));
    _583 = ((((((((1.0f - _532) * _338.y) - _543) * _249) + _543) * _546) / _549) * _556);
    _584 = ((((((((1.0f - _541) * _338.z) - _544) * _249) + _544) * _546) / _549) * _556);
  } else {
    _582 = _49;
    _583 = _58;
    _584 = _67;
  }
  _587 = ((1.0f - _424) * _99) + _424;
  _603 = (((((((_99 * _99) * _99) * _142) * _249) * _424) * exp2(log2((_430 * 1.25f) * _433) * 9.0f)) * (1.0f - saturate(_411 * 0.001f))) + 0.001f;
  _614 = (((_582 - _49) + (((_603 * ((lerp(_484, _461, _482)) / _491)) - _582) * _587)) * _424) + _49;
  _625 = (((_583 - _58) + (((_603 * ((lerp(_486, _470, _482)) / _491)) - _583) * _587)) * _424) + _58;
  _636 = (((_584 - _67) + (((((lerp(_488, _479, _482)) / _491) * _603) - _584) * _587)) * _424) + _67;
  _637 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _650 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _637, 0)))).x) & 127)))) + 0.5f);
  } else {
    _650 = 1.0f;
  }
  _653 = (_localToneMappingParams.w > 0.0f);
  if (_653) {
    _659 = _exposure0.x * _userImageAdjust.z;
    _678 = exp2(_powerParams.x * log2(max(0.0f, (((_659 * max(0.0f, (((_614 * 1.70505f) - (_625 * 0.62179f)) - (_636 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _694 = exp2(log2(max(0.0f, (((_slopeParams.y * _659) * max(0.0f, (((_625 * 1.1408f) - (_614 * 0.13026f)) - (_636 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _710 = exp2(log2(max(0.0f, (((_slopeParams.z * _659) * max(0.0f, (((_614 * -0.024f) - (_625 * 0.12897f)) + (_636 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _711 = dot(float3(_678, _694, _710), float3(0.212671f, 0.71516f, 0.072169f));
    _715 = ((_678 - _711) * _powerParams.w) + _711;
    _718 = ((_694 - _711) * _powerParams.w) + _711;
    _721 = ((_710 - _711) * _powerParams.w) + _711;
    _728 = min(max(log2(mad(_721, 0.079223745f, mad(_718, 0.0784336f, (_715 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _735 = min(max(log2(mad(_721, 0.07916613f, mad(_718, 0.87846863f, (_715 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _742 = min(max(log2(mad(_721, 0.879143f, mad(_718, 0.0784336f, (_715 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _743 = _728 * 0.060606062f;
    _744 = _735 * 0.060606062f;
    _745 = _742 * 0.060606062f;
    _746 = _743 * _743;
    _747 = _744 * _744;
    _748 = _745 * _745;
    _764 = min(0.0f, (-0.0f - (((_728 * 0.0072181816f) + ((_746 * 0.4298f) + (((_746 * _746) * ((31.96f - (_728 * 2.4327273f)) + (_746 * 15.5f))) - ((_728 * 0.41624245f) * _746)))) + -0.00232f)));
    _780 = min(0.0f, (-0.0f - (((_735 * 0.0072181816f) + ((_747 * 0.4298f) + (((_747 * _747) * ((31.96f - (_735 * 2.4327273f)) + (_747 * 15.5f))) - ((_735 * 0.41624245f) * _747)))) + -0.00232f)));
    _796 = min(0.0f, (-0.0f - (((_742 * 0.0072181816f) + ((_748 * 0.4298f) + (((_748 * _748) * ((31.96f - (_742 * 2.4327273f)) + (_748 * 15.5f))) - ((_742 * 0.41624245f) * _748)))) + -0.00232f)));
    _797 = -0.0f - _764;
    _798 = -0.0f - _780;
    _799 = -0.0f - _796;
    _800 = dot(float3(_797, _798, _799), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _817 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _818 = -0.79999995f / _817;
      _819 = -1.2f / _817;
      _820 = 0.20000005f / _817;
      _823 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _826 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _830 = (_818 + 1.4f) + (_826 * (-0.39999998f - _818));
      _834 = (_819 + 1.6f) + (_826 * (-0.6f - _819));
      _838 = (_820 + 0.9f) + (_826 * (0.5f - _820));
      _855 = (lerp(_834, 1.2f, _823));  // [sem: blended]
      _856 = (lerp(_830, 1.0f, _823));  // [sem: blended]
      _857 = (lerp(_838, 1.4f, _823));  // [sem: blended]
    } else {
      _855 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _856 = 1.0f;  // [sem: blended]
      _857 = 1.4f;  // [sem: blended]
    }
    _858 = 1.0f - _855;
    _870 = ((exp2(log2(((saturate((_764 * _764) * _797) * _858) + _855) * _797) * _856) - _800) * _857) + _800;
    _882 = ((exp2(log2(((saturate((_780 * _780) * _798) * _858) + _855) * _798) * _856) - _800) * _857) + _800;
    _894 = ((exp2(log2(((saturate((_796 * _796) * _799) * _858) + _855) * _799) * _856) - _800) * _857) + _800;
    _901 = saturate(exp2(log2(mad(_894, -0.09902974f, mad(_882, -0.09802088f, (_870 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _908 = saturate(exp2(log2(mad(_894, -0.098961174f, mad(_882, 1.1519032f, (_870 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _915 = saturate(exp2(log2(mad(_894, 1.1510737f, mad(_882, -0.09804345f, (_870 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _921 = 1.0f - abs(_etcParams.w);
      _922 = saturate(_etcParams.w);  // [sem: expr_sat]
      _924 = (_921 * _901) + _922;
      _926 = (_921 * _908) + _922;
      _928 = (_921 * _915) + _922;
      if (_colorGradingParams.w > 0.0f) {
        _933 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _950 = (((max(0.0f, (1.0f - _924)) - _924) * _933) + _924);
        _951 = (((max(0.0f, (1.0f - _926)) - _926) * _933) + _926);
        _952 = (((max(0.0f, (1.0f - _928)) - _928) * _933) + _928);
      } else {
        _950 = _924;
        _951 = _926;
        _952 = _928;
      }
      _954 = _userImageAdjust.y + 1.0f;
      _956 = _userImageAdjust.x + 0.5f;
      _959 = ((_950 + -0.5f) * _954) + _956;
      _962 = ((_951 + -0.5f) * _954) + _956;
      _965 = ((_952 + -0.5f) * _954) + _956;
      _971 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1006 = exp2(log2(saturate(mad(_colorBlind0.z, _965, mad(_colorBlind0.y, _962, (_colorBlind0.x * _959))))) * _971);
      _1007 = exp2(log2(saturate(mad(_colorBlind1.z, _965, mad(_colorBlind1.y, _962, (_colorBlind1.x * _959))))) * _971);
      _1008 = exp2(log2(saturate(mad(_colorBlind2.z, _965, mad(_colorBlind2.y, _962, (_colorBlind2.x * _959))))) * _971);
    } else {
      _1006 = _901;
      _1007 = _908;
      _1008 = _915;
    }
  } else {
    _1006 = _614;
    _1007 = _625;
    _1008 = _636;
  }
  if (_etcParams.y > 1.0f) {
    _1011 = abs(_69);
    _1013 = abs(_70 + -1.0f);
    _1019 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1011, _1013), float2(_1011, _1013))));  // [sem: expr_sat]
    _1024 = (_1019 * _1006);
    _1025 = (_1019 * _1007);
    _1026 = (_1019 * _1008);
  } else {
    _1024 = _1006;
    _1025 = _1007;
    _1026 = _1008;
  }
  if (_653 && (_etcParams.z > 0.0f)) {
    _1056 = select((_1024 <= 0.0031308f), (_1024 * 12.92f), (((pow(_1024, 0.41666666f)) * 1.055f) + -0.055f));
    _1057 = select((_1025 <= 0.0031308f), (_1025 * 12.92f), (((pow(_1025, 0.41666666f)) * 1.055f) + -0.055f));
    _1058 = select((_1026 <= 0.0031308f), (_1026 * 12.92f), (((pow(_1026, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1056 = _1024;
    _1057 = _1025;
    _1058 = _1026;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1061 = (float)((uint)((uint)(_637)));
    if (!(_1061 < _viewDir.w)) {
      if (!(!(_1061 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1072 = 0.0f;
        _1073 = 0.0f;
        _1074 = 0.0f;
      } else {
        _1072 = _1056;
        _1073 = _1057;
        _1074 = _1058;
      }
    } else {
      _1072 = 0.0f;
      _1073 = 0.0f;
      _1074 = 0.0f;
    }
  } else {
    _1072 = _1056;
    _1073 = _1057;
    _1074 = _1058;
  }
  _1078 = exp2(log2(_1072 * 0.0001f) * 0.15930176f);
  _1082 = exp2(log2(_1073 * 0.0001f) * 0.15930176f);
  _1086 = exp2(log2(_1074 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1078 * 18.6875f) + 1.0f)) * ((_1078 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1082 * 18.6875f) + 1.0f)) * ((_1082 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1086 * 18.6875f) + 1.0f)) * ((_1086 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _650;
  return SV_Target;
}
