struct PostProcessRematchLoading_CDStruct {
  float _loadingRatio;
  float _loadingRadius;
  uint _loadingEdgeColor;
  uint _loadingInnerColor;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

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
  _41 = max(1.0000000116860974e-07f, _39.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _77 = mad((_invViewProj[2].w), _41, mad((_invViewProj[1].w), _37, ((_invViewProj[0].w) * _35))) + (_invViewProj[3].w);
  _81 = WaveReadLaneFirst(_materialIndex);
  _89 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_81 < (uint)170000), _81, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingRatio);
  _90 = WaveReadLaneFirst(_materialIndex);
  _98 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_90 < (uint)170000), _90, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingRadius);
  _102 = 0.20000000298023224f / _destTargetSizAndInv.z;
  _103 = 0.20000000298023224f / _destTargetSizAndInv.w;
  _105 = _103 * TEXCOORD.y;
  _106 = floor(_105);
  _107 = _106 * 0.5f;
  _111 = frac(abs(_107));
  _114 = select((_107 >= (-0.0f - _107)), _111, (-0.0f - _111)) + (_102 * TEXCOORD.x);
  _122 = frac(_114) + -0.5f;
  _123 = frac(_105) + -0.5f;
  _130 = saturate((sqrt((_123 * _123) + (_122 * _122)) + -0.30000001192092896f) * 49.99997329711914f);  // [sem: expr_sat]
  _135 = 1.0f - ((_130 * _130) * (3.0f - (_130 * 2.0f)));
  _147 = uint((_bufferSizeAndInvSize.x * ((floor(_114) + 0.5f) / _102)) + -0.5f);
  _148 = uint((_bufferSizeAndInvSize.y * ((_106 + 0.5f) / _103)) + -0.5f);
  _150 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_147, _148, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _153 = __3__36__0__0__g_gbufferNormal.Load(int3(_147, _148, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _171 = (saturate(_153.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _172 = (saturate(_153.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _173 = (saturate(_153.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _175 = rsqrt(dot(float3(_171, _172, _173), float3(_171, _172, _173)));  // [sem: invLength]
  _176 = _175 * _171;
  _177 = _175 * _172;
  _178 = _173 * _175;
  _181 = (((float)((uint)((uint)(((uint)((uint)(_150.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _182 = (((float)((uint)((uint)(_150.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
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
  _237 = saturate(exp2(log2(select(((_39.x < 1.0000000116860974e-07f) || (_39.x == 1.0f)), 1.0f, (1.0f - abs(dot(float3((_222 * _212), (_222 * _216), (_222 * _220)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))))) * 4.0f) * 2.0f);
  _243 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _279 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _243, ((_invViewProjRelative[0].w) * _35));
  _280 = ((mad((_invViewProjRelative[1].x), _243, ((_invViewProjRelative[0].x) * _35)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _279;
  _281 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _243, ((_invViewProjRelative[0].y) * _35))) / _279;
  _282 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _243, ((_invViewProjRelative[0].z) * _35))) / _279;
  _284 = rsqrt(dot(float3(_280, _281, _282), float3(_280, _281, _282)));  // [sem: invLength]
  _285 = _284 * _280;
  _287 = _284 * _282;
  _289 = atan(_287 / _285);
  _292 = (_285 < 0.0f);
  _293 = (_285 == 0.0f);
  _294 = (_287 >= 0.0f);
  _295 = (_287 < 0.0f);
  _309 = WaveReadLaneFirst(_materialIndex);
  _317 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_309 < (uint)170000), _309, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._noiseTex);
  _324 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_317 < (uint)65000), _317, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_293 && _294), 7.5f, select((_293 && _295), 2.5f, ((select((_292 && _295), (_289 + -3.1415927410125732f), select((_292 && _294), (_289 + 3.1415927410125732f), _289)) * 1.5915493965148926f) + 5.0f))), ((acos(_284 * _281) * 0.9549295902252197f) - (_time.x * 0.05000000074505806f))));
  _330 = (_324.x * 2.0f) + -0.9960784316062927f;
  _331 = (_324.y * 2.0f) + -0.9960784316062927f;
  _343 = ((mad((_invViewProj[2].x), _41, mad((_invViewProj[1].x), _37, ((_invViewProj[0].x) * _35))) + (_invViewProj[3].x)) / _77) - _mainPosition.x;
  _344 = ((mad((_invViewProj[2].y), _41, mad((_invViewProj[1].y), _37, ((_invViewProj[0].y) * _35))) + (_invViewProj[3].y)) / _77) - _mainPosition.y;
  _345 = ((mad((_invViewProj[2].z), _41, mad((_invViewProj[1].z), _37, ((_invViewProj[0].z) * _35))) + (_invViewProj[3].z)) / _77) - _mainPosition.z;
  _354 = min(max(sqrt(((_343 * _343) + (_344 * _344)) + (_345 * _345)), 1.0f), 10.0f) * saturate(_89 * 5.0f);
  _358 = (_354 * _330) + _343;
  _359 = (_354 * _331) + _344;
  _360 = (_354 * (sqrt(saturate(1.0f - dot(float2(_330, _331), float2(_330, _331)))) + -0.5f)) + _345;
  _366 = sqrt(((_358 * _358) + (_359 * _359)) + (_360 * _360));
  _373 = saturate((1.0f - saturate(_366 / max(0.0010000000474974513f, (_98 * _89)))) * 2.0f);  // [sem: expr_sat]
  _379 = (saturate((_89 * 10.0f) + -9.0f) * (1.0f - _373)) + _373;
  _385 = frac((_366 * 0.029999999329447746f) - (_time.x * 0.800000011920929f));
  _388 = saturate((1.0f - _385) * 5.0f);  // [sem: expr_sat]
  _397 = WaveReadLaneFirst(_materialIndex);
  _405 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_397 < (uint)170000), _397, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingInnerColor);
  _408 = (float)((uint)((uint)(((uint)(_405) >> 16) & 255)));
  _411 = (float)((uint)((uint)(((uint)(_405) >> 8) & 255)));
  _413 = (float)((uint)((uint)(_405 & 255)));
  _438 = select(((_408 * 0.003921568859368563f) < 0.040449999272823334f), (_408 * 0.0003035269910469651f), exp2(log2((_408 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _439 = select(((_411 * 0.003921568859368563f) < 0.040449999272823334f), (_411 * 0.0003035269910469651f), exp2(log2((_411 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _440 = select(((_413 * 0.003921568859368563f) < 0.040449999272823334f), (_413 * 0.0003035269910469651f), exp2(log2((_413 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _443 = (pow(_388, 4.0f));
  _447 = (1.0f - _438) * _324.x;
  _448 = (1.0f - _439) * _324.y;
  _449 = (1.0f - _440) * _324.z;
  _461 = max(0.0010000000474974513f, _exposure0.x);
  if ((_379 > 0.0f) && (_379 < 1.0f)) {
    _476 = WaveReadLaneFirst(_materialIndex);
    _484 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_476 < (uint)170000), _476, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingEdgeColor);
    _487 = (float)((uint)((uint)(((uint)(_484) >> 16) & 255)));
    _490 = (float)((uint)((uint)(((uint)(_484) >> 8) & 255)));
    _492 = (float)((uint)((uint)(_484 & 255)));
    _517 = select(((_487 * 0.003921568859368563f) < 0.040449999272823334f), (_487 * 0.0003035269910469651f), exp2(log2((_487 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _518 = select(((_490 * 0.003921568859368563f) < 0.040449999272823334f), (_490 * 0.0003035269910469651f), exp2(log2((_490 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _519 = select(((_492 * 0.003921568859368563f) < 0.040449999272823334f), (_492 * 0.0003035269910469651f), exp2(log2((_492 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _526 = _517 * 10.0f;
    _527 = _518 * 10.0f;
    _528 = _519 * 10.0f;
    _539 = (_324.x * _324.y) * _324.z;
    _545 = max(0.0010000000474974513f, _exposure0.x);
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
  _566 = (((((((_89 * _89) * _89) * _135) * _237) * _379) * exp2(log2((_385 * 1.25f) * _388) * 9.0f)) * (1.0f - saturate(_366 * 0.0010000000474974513f))) + 0.0010000000474974513f;
  _585 = (((_560 - _30.x) + (((((lerp(_447, _438, _443)) / _461) * _566) - _560) * _565)) * _379) + _30.x;
  _586 = (((_561 - _30.y) + (((((lerp(_448, _439, _443)) / _461) * _566) - _561) * _565)) * _379) + _30.y;
  _587 = (((_562 - _30.z) + (((((lerp(_449, _440, _443)) / _461) * _566) - _562) * _565)) * _379) + _30.z;
  _588 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _601 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _588, 0)))).x) & 127)))) + 0.5f);
  } else {
    _601 = 1.0f;
  }
  _604 = (_localToneMappingParams.w > 0.0f);
  if (_604) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_585, _586, _587));
    _864 = _rndx_tonemapped_color.x;
    _865 = _rndx_tonemapped_color.y;
    _866 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
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
      _946 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
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
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _970 = saturate(1.0f - (dot(float2(_965, _966), float2(_965, _966)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _975 = (_970 * _957);
    _976 = (_970 * _958);
    _977 = (_970 * _959);
  } else {
    _975 = _957;
    _976 = _958;
    _977 = _959;
  }
  if (_604 && (_etcParams.z > 0.0f)) {
    _1007 = select((_975 <= 0.0031308000907301903f), (_975 * 12.920000076293945f), (((pow(_975, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1008 = select((_976 <= 0.0031308000907301903f), (_976 * 12.920000076293945f), (((pow(_976, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1009 = select((_977 <= 0.0031308000907301903f), (_977 * 12.920000076293945f), (((pow(_977, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1007 = _975;
    _1008 = _976;
    _1009 = _977;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1014 = (float)((uint)_588);
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
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1023, _1024, _1025), _sunDirection.y, _moonDirection.y);
    _1023 = _rndx_final_color.x;
    _1024 = _rndx_final_color.y;
    _1025 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1023;
  SV_Target.y = _1024;
  SV_Target.z = _1025;
  SV_Target.w = _601;
  return SV_Target;
}
