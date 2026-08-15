struct PostProcessRematchLoading_CDStruct {
  float _loadingRatio;
  float _loadingRadius;
  uint _loadingEdgeColor;
  uint _loadingInnerColor;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessRematchLoading_CD {
  PostProcessRematchLoading_CDStruct BindlessParameters_PostProcessRematchLoading_CD;
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
  float4 _30;
  float _35;
  float _36;
  float _37;
  float _39;
  float _41;
  float _77;
  int _81;
  float _89;
  int _90;
  float _98;
  float _102;
  float _103;
  float _105;
  float _106;
  float _107;
  float _111;
  float _114;
  float _122;
  float _123;
  float _130;
  float _135;
  uint _147;
  uint _148;
  uint4 _150;
  float4 _153;
  float _171;
  float _172;
  float _173;
  float _175;
  float _176;
  float _177;
  float _178;
  float _181;
  float _182;
  float _185;
  float _186;
  float _190;
  float _192;
  float _193;
  float _194;
  float _195;
  float _197;
  float _200;
  float _201;
  float _202;
  float _203;
  float _212;
  float _216;
  float _220;
  float _222;
  float _237;
  float _243;
  float _279;
  float _280;
  float _281;
  float _282;
  float _284;
  float _285;
  float _287;
  float _289;
  bool _292;
  bool _293;
  bool _294;
  bool _295;
  int _309;
  int _317;
  float4 _324;
  float _330;
  float _331;
  float _343;
  float _344;
  float _345;
  float _354;
  float _358;
  float _359;
  float _360;
  float _366;
  float _373;
  float _379;
  float _385;
  float _388;
  int _397;
  int _405;
  float _408;
  float _411;
  float _413;
  float _438;
  float _439;
  float _440;
  float _443;
  float _447;
  float _448;
  float _449;
  float _461;
  float _560;
  float _561;
  float _562;
  float _601;
  float _806;
  float _807;
  float _808;
  float _901;
  float _902;
  float _903;
  float _957;
  float _958;
  float _959;
  float _975;
  float _976;
  float _977;
  float _1007;
  float _1008;
  float _1009;
  float _1023;
  float _1024;
  float _1025;
  int _476;
  int _484;
  float _487;
  float _490;
  float _492;
  float _517;
  float _518;
  float _519;
  float _526;
  float _527;
  float _528;
  float _539;
  float _545;
  float _555;
  float _565;
  float _566;
  float _585;
  float _586;
  float _587;
  uint _588;
  bool _604;
  float _610;
  float _659;
  float _660;
  float _661;
  float _663;
  float _670;
  float _671;
  float _672;
  float _691;
  float _692;
  float _693;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  float _699;
  float _745;
  float _746;
  float _747;
  float _748;
  float _749;
  float _750;
  float _751;
  float _768;
  float _769;
  float _770;
  float _771;
  float _777;
  float _780;
  float _787;
  float _788;
  float _789;
  float _818;
  float _843;
  float _844;
  float _845;
  float _864;
  float _865;
  float _866;
  float _872;
  float _876;
  float _877;
  float _878;
  float _879;
  float _884;
  float _909;
  float _913;
  float _914;
  float _915;
  float _916;
  float _946;
  float _965;
  float _966;
  float _970;
  float _1014;
  _30 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (TEXCOORD.x * 2.0f) + -1.0f;
  _36 = TEXCOORD.y * 2.0f;
  _37 = 1.0f - _36;
  _39 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _41 = max(1e-07f, _39.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _77 = mad((_invViewProj[3].z), _41, mad((_invViewProj[3].y), _37, ((_invViewProj[3].x) * _35))) + (_invViewProj[3].w);
  _81 = WaveReadLaneFirst(_materialIndex);
  _89 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_81 < (uint)170000), _81, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingRatio);
  _90 = WaveReadLaneFirst(_materialIndex);
  _98 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_90 < (uint)170000), _90, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingRadius);
  _102 = 0.2f / _destTargetSizAndInv.z;
  _103 = 0.2f / _destTargetSizAndInv.w;
  _105 = _103 * TEXCOORD.y;
  _106 = floor(_105);
  _107 = _106 * 0.5f;
  _111 = frac(abs(_107));
  _114 = select((_107 >= (-0.0f - _107)), _111, (-0.0f - _111)) + (_102 * TEXCOORD.x);
  _122 = frac(_114) + -0.5f;
  _123 = frac(_105) + -0.5f;
  _130 = saturate((sqrt((_123 * _123) + (_122 * _122)) + -0.3f) * 49.999973f);  // [sem: expr_sat]
  _135 = 1.0f - ((_130 * _130) * (3.0f - (_130 * 2.0f)));
  _147 = (uint)((_bufferSizeAndInvSize.x * ((floor(_114) + 0.5f) / _102)) + -0.5f);
  _148 = (uint)((_bufferSizeAndInvSize.y * ((_106 + 0.5f) / _103)) + -0.5f);
  _150 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_147, _148, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _153 = __3__36__0__0__g_gbufferNormal.Load(int3(_147, _148, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _171 = (saturate(_153.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _172 = (saturate(_153.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _173 = (saturate(_153.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _175 = rsqrt(dot(float3(_171, _172, _173), float3(_171, _172, _173)));  // [sem: invLength]
  _176 = _175 * _171;
  _177 = _175 * _172;
  _178 = _173 * _175;
  _181 = (((float)((uint)((uint)(((uint)((uint)(_150.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _182 = (((float)((uint)((uint)(_150.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _185 = (_181 + _182) * 0.5f;
  _186 = (_181 - _182) * 0.5f;
  _190 = (1.0f - abs(_185)) - abs(_186);
  _192 = rsqrt(dot(float3(_185, _186, _190), float3(_185, _186, _190)));  // [sem: invLength]
  _193 = _192 * _185;
  _194 = _192 * _186;
  _195 = _192 * _190;
  _197 = select((_178 >= 0.0f), 1.0f, -1.0f);
  _200 = -0.0f - (1.0f / (_197 + _178));
  _201 = _177 * _200;
  _202 = _201 * _176;
  _203 = _197 * _176;
  _212 = mad(_195, _176, mad(_194, _202, ((((_203 * _176) * _200) + 1.0f) * _193)));
  _216 = mad(_195, _177, mad(_194, (_197 + (_201 * _177)), ((_193 * _197) * _202)));
  _220 = mad(_195, _178, mad(_194, (-0.0f - _177), (-0.0f - (_203 * _193))));
  _222 = rsqrt(dot(float3(_212, _216, _220), float3(_212, _216, _220)));  // [sem: invLength]
  // [sem: expr_sat]
  _237 = saturate(exp2(log2(select(((_39.x < 1e-07f) || (_39.x == 1.0f)), 1.0f, (1.0f - abs(dot(float3((_222 * _212), (_222 * _216), (_222 * _220)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))))) * 4.0f) * 2.0f);
  _243 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _279 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _243, ((_invViewProjRelative[3].x) * _35));
  _280 = ((mad((_invViewProjRelative[0].y), _243, ((_invViewProjRelative[0].x) * _35)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _279;
  _281 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _243, ((_invViewProjRelative[1].x) * _35))) / _279;
  _282 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _243, ((_invViewProjRelative[2].x) * _35))) / _279;
  _284 = rsqrt(dot(float3(_280, _281, _282), float3(_280, _281, _282)));  // [sem: invLength]
  _285 = _284 * _280;
  _287 = _284 * _282;
  _289 = atan(_287 / _285);
  _292 = (_285 < 0.0f);
  _293 = (_285 == 0.0f);
  _294 = (_287 >= 0.0f);
  _295 = (_287 < 0.0f);
  _309 = WaveReadLaneFirst(_materialIndex);
  _317 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_309 < (uint)170000), _309, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._noiseTex);
  _324 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_317 < (uint)65000), _317, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_293 && _294), 7.5f, select((_293 && _295), 2.5f, ((select((_292 && _295), (_289 + -3.1415927f), select((_292 && _294), (_289 + 3.1415927f), _289)) * 1.5915494f) + 5.0f))), ((acos(_284 * _281) * 0.9549296f) - (_time.x * 0.05f))));
  _330 = (_324.x * 2.0f) + -0.99607843f;
  _331 = (_324.y * 2.0f) + -0.99607843f;
  _343 = ((mad((_invViewProj[0].z), _41, mad((_invViewProj[0].y), _37, ((_invViewProj[0].x) * _35))) + (_invViewProj[0].w)) / _77) - _mainPosition.x;
  _344 = ((mad((_invViewProj[1].z), _41, mad((_invViewProj[1].y), _37, ((_invViewProj[1].x) * _35))) + (_invViewProj[1].w)) / _77) - _mainPosition.y;
  _345 = ((mad((_invViewProj[2].z), _41, mad((_invViewProj[2].y), _37, ((_invViewProj[2].x) * _35))) + (_invViewProj[2].w)) / _77) - _mainPosition.z;
  _354 = min(max(sqrt(((_343 * _343) + (_344 * _344)) + (_345 * _345)), 1.0f), 10.0f) * saturate(_89 * 5.0f);
  _358 = (_354 * _330) + _343;
  _359 = (_354 * _331) + _344;
  _360 = (_354 * (sqrt(saturate(1.0f - dot(float2(_330, _331), float2(_330, _331)))) + -0.5f)) + _345;
  _366 = sqrt(((_358 * _358) + (_359 * _359)) + (_360 * _360));
  _373 = saturate((1.0f - saturate(_366 / max(0.001f, (_98 * _89)))) * 2.0f);  // [sem: expr_sat]
  _379 = (saturate((_89 * 10.0f) + -9.0f) * (1.0f - _373)) + _373;
  _385 = frac((_366 * 0.03f) - (_time.x * 0.8f));
  _388 = saturate((1.0f - _385) * 5.0f);  // [sem: expr_sat]
  _397 = WaveReadLaneFirst(_materialIndex);
  _405 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_397 < (uint)170000), _397, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingInnerColor);
  _408 = (float)((uint)((uint)(((uint)((uint)(_405)) >> 16) & 255)));
  _411 = (float)((uint)((uint)(((uint)((uint)(_405)) >> 8) & 255)));
  _413 = (float)((uint)((uint)(_405 & 255)));
  _438 = select(((_408 * 0.003921569f) < 0.04045f), (_408 * 0.000303527f), exp2(log2((_408 * 0.003717127f) + 0.052132703f) * 2.4f));
  _439 = select(((_411 * 0.003921569f) < 0.04045f), (_411 * 0.000303527f), exp2(log2((_411 * 0.003717127f) + 0.052132703f) * 2.4f));
  _440 = select(((_413 * 0.003921569f) < 0.04045f), (_413 * 0.000303527f), exp2(log2((_413 * 0.003717127f) + 0.052132703f) * 2.4f));
  _443 = (pow(_388, 4.0f));
  _447 = (1.0f - _438) * _324.x;
  _448 = (1.0f - _439) * _324.y;
  _449 = (1.0f - _440) * _324.z;
  _461 = max(0.001f, _exposure0.x);
  if ((_379 > 0.0f) && (_379 < 1.0f)) {
    _476 = WaveReadLaneFirst(_materialIndex);
    _484 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_476 < (uint)170000), _476, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingEdgeColor);
    _487 = (float)((uint)((uint)(((uint)((uint)(_484)) >> 16) & 255)));
    _490 = (float)((uint)((uint)(((uint)((uint)(_484)) >> 8) & 255)));
    _492 = (float)((uint)((uint)(_484 & 255)));
    _517 = select(((_487 * 0.003921569f) < 0.04045f), (_487 * 0.000303527f), exp2(log2((_487 * 0.003717127f) + 0.052132703f) * 2.4f));
    _518 = select(((_490 * 0.003921569f) < 0.04045f), (_490 * 0.000303527f), exp2(log2((_490 * 0.003717127f) + 0.052132703f) * 2.4f));
    _519 = select(((_492 * 0.003921569f) < 0.04045f), (_492 * 0.000303527f), exp2(log2((_492 * 0.003717127f) + 0.052132703f) * 2.4f));
    _526 = _517 * 10.0f;
    _527 = _518 * 10.0f;
    _528 = _519 * 10.0f;
    _539 = (_324.x * _324.y) * _324.z;
    _545 = max(0.001f, _exposure0.x);
    _555 = saturate((1.0f - abs((_379 * 2.0f) + -1.0f)) * 4.0f) * _135;
    _560 = (_555 * (((((((1.0f - _517) * _324.x) - _526) * _237) + _526) * _539) / _545));
    _561 = (_555 * (((((((1.0f - _518) * _324.y) - _527) * _237) + _527) * _539) / _545));
    _562 = (_555 * (((((((1.0f - _519) * _324.z) - _528) * _237) + _528) * _539) / _545));
  } else {
    _560 = _30.x;
    _561 = _30.y;
    _562 = _30.z;
  }
  _565 = ((1.0f - _379) * _89) + _379;
  _566 = (((((((_89 * _89) * _89) * _135) * _237) * _379) * exp2(log2((_385 * 1.25f) * _388) * 9.0f)) * (1.0f - saturate(_366 * 0.001f))) + 0.001f;
  _585 = (((_560 - _30.x) + (((((lerp(_447, _438, _443)) / _461) * _566) - _560) * _565)) * _379) + _30.x;
  _586 = (((_561 - _30.y) + (((((lerp(_448, _439, _443)) / _461) * _566) - _561) * _565)) * _379) + _30.y;
  _587 = (((_562 - _30.z) + (((((lerp(_449, _440, _443)) / _461) * _566) - _562) * _565)) * _379) + _30.z;
  _588 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _601 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _588, 0)))).x) & 127)))) + 0.5f);
  } else {
    _601 = 1.0f;
  }
  _604 = (_localToneMappingParams.w > 0.0f);
  if (_604) {
    _610 = _userImageAdjust.z * _exposure0.x;
    _659 = exp2(log2(max(0.0f, (((_610 * max(0.0f, (((_585 * 1.70505f) - (_586 * 0.62179f)) - (_587 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _660 = exp2(log2(max(0.0f, (((max(0.0f, (((_586 * 1.1408f) - (_585 * 0.13026f)) - (_587 * 0.01055f))) * _610) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _661 = exp2(log2(max(0.0f, (((max(0.0f, (((_585 * -0.024f) - (_586 * 0.12897f)) + (_587 * 1.15297f))) * _610) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _663 = dot(float3(_659, _660, _661), float3(0.212671f, 0.71516f, 0.072169f));
    _670 = ((_659 - _663) * _powerParams.w) + _663;
    _671 = ((_660 - _663) * _powerParams.w) + _663;
    _672 = ((_661 - _663) * _powerParams.w) + _663;
    _691 = min(max(log2(mad(_672, 0.079223745f, mad(_671, 0.0784336f, (_670 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _692 = min(max(log2(mad(_672, 0.07916613f, mad(_671, 0.87846863f, (_670 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _693 = min(max(log2(mad(_672, 0.879143f, mad(_671, 0.0784336f, (_670 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _694 = _691 * 0.060606062f;
    _695 = _692 * 0.060606062f;
    _696 = _693 * 0.060606062f;
    _697 = _694 * _694;
    _698 = _695 * _695;
    _699 = _696 * _696;
    _745 = min(0.0f, (-0.0f - (((_691 * 0.0072181816f) + ((_697 * 0.4298f) + (((_697 * _697) * ((31.96f - (_691 * 2.4327273f)) + (_697 * 15.5f))) - ((_691 * 0.41624245f) * _697)))) + -0.00232f)));
    _746 = min(0.0f, (-0.0f - (((_692 * 0.0072181816f) + ((_698 * 0.4298f) + (((_698 * _698) * ((31.96f - (_692 * 2.4327273f)) + (_698 * 15.5f))) - ((_692 * 0.41624245f) * _698)))) + -0.00232f)));
    _747 = min(0.0f, (-0.0f - (((_693 * 0.0072181816f) + ((_699 * 0.4298f) + (((_699 * _699) * ((31.96f - (_693 * 2.4327273f)) + (_699 * 15.5f))) - ((_693 * 0.41624245f) * _699)))) + -0.00232f)));
    _748 = -0.0f - _745;
    _749 = -0.0f - _746;
    _750 = -0.0f - _747;
    _751 = dot(float3(_748, _749, _750), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _768 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _769 = -0.79999995f / _768;
      _770 = -1.2f / _768;
      _771 = 0.20000005f / _768;
      _777 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _780 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _787 = (_769 + 1.4f) + (_780 * (-0.39999998f - _769));
      _788 = (_770 + 1.6f) + (_780 * (-0.6f - _770));
      _789 = (_771 + 0.9f) + (_780 * (0.5f - _771));
      _806 = (lerp(_788, 1.2f, _777));  // [sem: blended]
      _807 = (lerp(_787, 1.0f, _777));  // [sem: blended]
      _808 = (lerp(_789, 1.4f, _777));  // [sem: blended]
    } else {
      _806 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _807 = 1.0f;  // [sem: blended]
      _808 = 1.4f;  // [sem: blended]
    }
    _818 = 1.0f - _806;
    _843 = ((exp2(log2(((saturate((_745 * _745) * _748) * _818) + _806) * _748) * _807) - _751) * _808) + _751;
    _844 = ((exp2(log2(((saturate((_746 * _746) * _749) * _818) + _806) * _749) * _807) - _751) * _808) + _751;
    _845 = ((exp2(log2(((saturate((_747 * _747) * _750) * _818) + _806) * _750) * _807) - _751) * _808) + _751;
    _864 = saturate(exp2(log2(mad(_845, -0.09902974f, mad(_844, -0.09802088f, (_843 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _865 = saturate(exp2(log2(mad(_845, -0.098961174f, mad(_844, 1.1519032f, (_843 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _866 = saturate(exp2(log2(mad(_845, 1.1510737f, mad(_844, -0.09804345f, (_843 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _872 = 1.0f - abs(_etcParams.w);
      _876 = saturate(_etcParams.w);  // [sem: expr_sat]
      _877 = (_872 * _864) + _876;
      _878 = (_872 * _865) + _876;
      _879 = (_872 * _866) + _876;
      if (_colorGradingParams.w > 0.0f) {
        _884 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _901 = (((max(0.0f, (1.0f - _877)) - _877) * _884) + _877);
        _902 = (((max(0.0f, (1.0f - _878)) - _878) * _884) + _878);
        _903 = (((max(0.0f, (1.0f - _879)) - _879) * _884) + _879);
      } else {
        _901 = _877;
        _902 = _878;
        _903 = _879;
      }
      _909 = _userImageAdjust.y + 1.0f;
      _913 = _userImageAdjust.x + 0.5f;
      _914 = ((_901 + -0.5f) * _909) + _913;
      _915 = ((_902 + -0.5f) * _909) + _913;
      _916 = ((_903 + -0.5f) * _909) + _913;
      _946 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _957 = exp2(log2(saturate(mad(_colorBlind0.z, _916, mad(_colorBlind0.y, _915, (_colorBlind0.x * _914))))) * _946);
      _958 = exp2(log2(saturate(mad(_colorBlind1.z, _916, mad(_colorBlind1.y, _915, (_colorBlind1.x * _914))))) * _946);
      _959 = exp2(log2(saturate(mad(_colorBlind2.z, _916, mad(_colorBlind2.y, _915, (_colorBlind2.x * _914))))) * _946);
    } else {
      _957 = _864;
      _958 = _865;
      _959 = _866;
    }
  } else {
    _957 = _585;
    _958 = _586;
    _959 = _587;
  }
  if (_etcParams.y > 1.0f) {
    _965 = abs(_35);
    _966 = abs(_36 + -1.0f);
    _970 = saturate(1.0f - (dot(float2(_965, _966), float2(_965, _966)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _975 = (_970 * _957);
    _976 = (_970 * _958);
    _977 = (_970 * _959);
  } else {
    _975 = _957;
    _976 = _958;
    _977 = _959;
  }
  if (_604 && (_etcParams.z > 0.0f)) {
    _1007 = select((_975 <= 0.0031308f), (_975 * 12.92f), (((pow(_975, 0.41666666f)) * 1.055f) + -0.055f));
    _1008 = select((_976 <= 0.0031308f), (_976 * 12.92f), (((pow(_976, 0.41666666f)) * 1.055f) + -0.055f));
    _1009 = select((_977 <= 0.0031308f), (_977 * 12.92f), (((pow(_977, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1007 = _975;
    _1008 = _976;
    _1009 = _977;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1014 = (float)((uint)((uint)(_588)));
    if (!(_1014 < _viewDir.w)) {
      if (!(_1014 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1023 = _1007;
        _1024 = _1008;
        _1025 = _1009;
      } else {
        _1023 = 0.0f;
        _1024 = 0.0f;
        _1025 = 0.0f;
      }
    } else {
      _1023 = 0.0f;
      _1024 = 0.0f;
      _1025 = 0.0f;
    }
  } else {
    _1023 = _1007;
    _1024 = _1008;
    _1025 = _1009;
  }
  SV_Target.x = _1023;
  SV_Target.y = _1024;
  SV_Target.z = _1025;
  SV_Target.w = _601;
  return SV_Target;
}
