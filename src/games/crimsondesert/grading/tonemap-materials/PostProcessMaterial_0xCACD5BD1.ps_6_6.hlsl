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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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
  float _40;
  float _41;
  float _42;
  float _67;
  float _68;
  float _69;
  float _71;
  float _72;
  float _73;
  float _75;
  float _77;
  float _113;
  int _117;
  float _125;
  int _126;
  float _134;
  float _138;
  float _139;
  float _141;
  float _142;
  float _143;
  float _147;
  float _150;
  float _158;
  float _159;
  float _166;
  float _171;
  uint _183;
  uint _184;
  uint4 _186;
  float4 _189;
  float _207;
  float _208;
  float _209;
  float _211;
  float _212;
  float _213;
  float _214;
  float _217;
  float _218;
  float _221;
  float _222;
  float _226;
  float _228;
  float _229;
  float _230;
  float _231;
  float _233;
  float _236;
  float _237;
  float _238;
  float _239;
  float _248;
  float _252;
  float _256;
  float _258;
  float _273;
  float _279;
  float _315;
  float _316;
  float _317;
  float _318;
  float _320;
  float _321;
  float _323;
  float _325;
  bool _328;
  bool _329;
  bool _330;
  bool _331;
  int _345;
  int _353;
  float4 _360;
  float _366;
  float _367;
  float _379;
  float _380;
  float _381;
  float _390;
  float _394;
  float _395;
  float _396;
  float _402;
  float _409;
  float _415;
  float _421;
  float _424;
  int _433;
  int _441;
  float _444;
  float _447;
  float _449;
  float _474;
  float _475;
  float _476;
  float _479;
  float _483;
  float _484;
  float _485;
  float _497;
  float _596;
  float _597;
  float _598;
  float _637;
  float _842;
  float _843;
  float _844;
  float _937;
  float _938;
  float _939;
  float _993;
  float _994;
  float _995;
  float _1011;
  float _1012;
  float _1013;
  float _1043;
  float _1044;
  float _1045;
  float _1059;
  float _1060;
  float _1061;
  int _512;
  int _520;
  float _523;
  float _526;
  float _528;
  float _553;
  float _554;
  float _555;
  float _562;
  float _563;
  float _564;
  float _575;
  float _581;
  float _591;
  float _601;
  float _602;
  float _621;
  float _622;
  float _623;
  uint _624;
  bool _640;
  float _646;
  float _695;
  float _696;
  float _697;
  float _699;
  float _706;
  float _707;
  float _708;
  float _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _734;
  float _735;
  float _781;
  float _782;
  float _783;
  float _784;
  float _785;
  float _786;
  float _787;
  float _804;
  float _805;
  float _806;
  float _807;
  float _813;
  float _816;
  float _823;
  float _824;
  float _825;
  float _854;
  float _879;
  float _880;
  float _881;
  float _900;
  float _901;
  float _902;
  float _908;
  float _912;
  float _913;
  float _914;
  float _915;
  float _920;
  float _945;
  float _949;
  float _950;
  float _951;
  float _952;
  float _982;
  float _1001;
  float _1002;
  float _1006;
  float _1050;
  float _1071;
  float _1072;
  float _1073;
  _30 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _40 = (pow(_30.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_30.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _42 = (pow(_30.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.8515625f - (_40 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.8515625f - (_41 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _69 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.8515625f - (_42 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _71 = (TEXCOORD.x * 2.0f) + -1.0f;
  _72 = TEXCOORD.y * 2.0f;
  _73 = 1.0f - _72;
  _75 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _77 = max(1.0000000116860974e-07f, _75.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _113 = mad((_invViewProj[2].w), _77, mad((_invViewProj[1].w), _73, ((_invViewProj[0].w) * _71))) + (_invViewProj[3].w);
  _117 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_117 < (uint)170000), _117, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingRatio);
  _126 = WaveReadLaneFirst(_materialIndex);
  _134 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_126 < (uint)170000), _126, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingRadius);
  _138 = 0.20000000298023224f / _destTargetSizAndInv.z;
  _139 = 0.20000000298023224f / _destTargetSizAndInv.w;
  _141 = _139 * TEXCOORD.y;
  _142 = floor(_141);
  _143 = _142 * 0.5f;
  _147 = frac(abs(_143));
  _150 = select((_143 >= (-0.0f - _143)), _147, (-0.0f - _147)) + (_138 * TEXCOORD.x);
  _158 = frac(_150) + -0.5f;
  _159 = frac(_141) + -0.5f;
  _166 = saturate((sqrt((_159 * _159) + (_158 * _158)) + -0.30000001192092896f) * 49.99997329711914f);  // [sem: expr_sat]
  _171 = 1.0f - ((_166 * _166) * (3.0f - (_166 * 2.0f)));
  _183 = uint((_bufferSizeAndInvSize.x * ((floor(_150) + 0.5f) / _138)) + -0.5f);
  _184 = uint((_bufferSizeAndInvSize.y * ((_142 + 0.5f) / _139)) + -0.5f);
  _186 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_183, _184, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _189 = __3__36__0__0__g_gbufferNormal.Load(int3(_183, _184, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _207 = (saturate(_189.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _208 = (saturate(_189.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _209 = (saturate(_189.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _211 = rsqrt(dot(float3(_207, _208, _209), float3(_207, _208, _209)));  // [sem: invLength]
  _212 = _211 * _207;
  _213 = _211 * _208;
  _214 = _209 * _211;
  _217 = (((float)((uint)((uint)(((uint)((uint)(_186.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _218 = (((float)((uint)((uint)(_186.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _221 = (_217 + _218) * 0.5f;
  _222 = (_217 - _218) * 0.5f;
  _226 = (1.0f - abs(_221)) - abs(_222);
  _228 = rsqrt(dot(float3(_221, _222, _226), float3(_221, _222, _226)));  // [sem: invLength]
  _229 = _228 * _221;
  _230 = _228 * _222;
  _231 = _228 * _226;
  _233 = select((_214 >= 0.0f), 1.0f, -1.0f);
  _236 = -0.0f - (1.0f / (_233 + _214));
  _237 = _213 * _236;
  _238 = _237 * _212;
  _239 = _233 * _212;
  _248 = mad(_231, _212, mad(_230, _238, ((((_239 * _212) * _236) + 1.0f) * _229)));
  _252 = mad(_231, _213, mad(_230, (_233 + (_237 * _213)), ((_229 * _233) * _238)));
  _256 = mad(_231, _214, mad(_230, (-0.0f - _213), (-0.0f - (_239 * _229))));
  _258 = rsqrt(dot(float3(_248, _252, _256), float3(_248, _252, _256)));  // [sem: invLength]
  // [sem: expr_sat]
  _273 = saturate(exp2(log2(select(((_75.x < 1.0000000116860974e-07f) || (_75.x == 1.0f)), 1.0f, (1.0f - abs(dot(float3((_258 * _248), (_258 * _252), (_258 * _256)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))))) * 4.0f) * 2.0f);
  _279 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _315 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _279, ((_invViewProjRelative[0].w) * _71));
  _316 = ((mad((_invViewProjRelative[1].x), _279, ((_invViewProjRelative[0].x) * _71)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _315;
  _317 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _279, ((_invViewProjRelative[0].y) * _71))) / _315;
  _318 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _279, ((_invViewProjRelative[0].z) * _71))) / _315;
  _320 = rsqrt(dot(float3(_316, _317, _318), float3(_316, _317, _318)));  // [sem: invLength]
  _321 = _320 * _316;
  _323 = _320 * _318;
  _325 = atan(_323 / _321);
  _328 = (_321 < 0.0f);
  _329 = (_321 == 0.0f);
  _330 = (_323 >= 0.0f);
  _331 = (_323 < 0.0f);
  _345 = WaveReadLaneFirst(_materialIndex);
  _353 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_345 < (uint)170000), _345, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._noiseTex);
  _360 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_353 < (uint)65000), _353, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_329 && _330), 7.5f, select((_329 && _331), 2.5f, ((select((_328 && _331), (_325 + -3.1415927410125732f), select((_328 && _330), (_325 + 3.1415927410125732f), _325)) * 1.5915493965148926f) + 5.0f))), ((acos(_320 * _317) * 0.9549295902252197f) - (_time.x * 0.05000000074505806f))));
  _366 = (_360.x * 2.0f) + -0.9960784316062927f;
  _367 = (_360.y * 2.0f) + -0.9960784316062927f;
  _379 = ((mad((_invViewProj[2].x), _77, mad((_invViewProj[1].x), _73, ((_invViewProj[0].x) * _71))) + (_invViewProj[3].x)) / _113) - _mainPosition.x;
  _380 = ((mad((_invViewProj[2].y), _77, mad((_invViewProj[1].y), _73, ((_invViewProj[0].y) * _71))) + (_invViewProj[3].y)) / _113) - _mainPosition.y;
  _381 = ((mad((_invViewProj[2].z), _77, mad((_invViewProj[1].z), _73, ((_invViewProj[0].z) * _71))) + (_invViewProj[3].z)) / _113) - _mainPosition.z;
  _390 = min(max(sqrt(((_379 * _379) + (_380 * _380)) + (_381 * _381)), 1.0f), 10.0f) * saturate(_125 * 5.0f);
  _394 = (_390 * _366) + _379;
  _395 = (_390 * _367) + _380;
  _396 = (_390 * (sqrt(saturate(1.0f - dot(float2(_366, _367), float2(_366, _367)))) + -0.5f)) + _381;
  _402 = sqrt(((_394 * _394) + (_395 * _395)) + (_396 * _396));
  _409 = saturate((1.0f - saturate(_402 / max(0.0010000000474974513f, (_134 * _125)))) * 2.0f);  // [sem: expr_sat]
  _415 = (saturate((_125 * 10.0f) + -9.0f) * (1.0f - _409)) + _409;
  _421 = frac((_402 * 0.029999999329447746f) - (_time.x * 0.800000011920929f));
  _424 = saturate((1.0f - _421) * 5.0f);  // [sem: expr_sat]
  _433 = WaveReadLaneFirst(_materialIndex);
  _441 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_433 < (uint)170000), _433, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingInnerColor);
  _444 = (float)((uint)((uint)(((uint)(_441) >> 16) & 255)));
  _447 = (float)((uint)((uint)(((uint)(_441) >> 8) & 255)));
  _449 = (float)((uint)((uint)(_441 & 255)));
  _474 = select(((_444 * 0.003921568859368563f) < 0.040449999272823334f), (_444 * 0.0003035269910469651f), exp2(log2((_444 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _475 = select(((_447 * 0.003921568859368563f) < 0.040449999272823334f), (_447 * 0.0003035269910469651f), exp2(log2((_447 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _476 = select(((_449 * 0.003921568859368563f) < 0.040449999272823334f), (_449 * 0.0003035269910469651f), exp2(log2((_449 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _479 = (pow(_424, 4.0f));
  _483 = (1.0f - _474) * _360.x;
  _484 = (1.0f - _475) * _360.y;
  _485 = (1.0f - _476) * _360.z;
  _497 = max(0.0010000000474974513f, _exposure0.x);
  if ((_415 > 0.0f) && (_415 < 1.0f)) {
    _512 = WaveReadLaneFirst(_materialIndex);
    _520 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)(select(((uint)_512 < (uint)170000), _512, 0)) + 0u))].BindlessParameters_PostProcessRematchLoading_CD._loadingEdgeColor);
    _523 = (float)((uint)((uint)(((uint)(_520) >> 16) & 255)));
    _526 = (float)((uint)((uint)(((uint)(_520) >> 8) & 255)));
    _528 = (float)((uint)((uint)(_520 & 255)));
    _553 = select(((_523 * 0.003921568859368563f) < 0.040449999272823334f), (_523 * 0.0003035269910469651f), exp2(log2((_523 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _554 = select(((_526 * 0.003921568859368563f) < 0.040449999272823334f), (_526 * 0.0003035269910469651f), exp2(log2((_526 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _555 = select(((_528 * 0.003921568859368563f) < 0.040449999272823334f), (_528 * 0.0003035269910469651f), exp2(log2((_528 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _562 = _553 * 10.0f;
    _563 = _554 * 10.0f;
    _564 = _555 * 10.0f;
    _575 = (_360.x * _360.y) * _360.z;
    _581 = max(0.0010000000474974513f, _exposure0.x);
    _591 = saturate((1.0f - abs((_415 * 2.0f) + -1.0f)) * 4.0f) * _171;
    _596 = (_591 * (((((((1.0f - _553) * _360.x) - _562) * _273) + _562) * _575) / _581));
    _597 = (_591 * (((((((1.0f - _554) * _360.y) - _563) * _273) + _563) * _575) / _581));
    _598 = (_591 * (((((((1.0f - _555) * _360.z) - _564) * _273) + _564) * _575) / _581));
  } else {
    _596 = _67;
    _597 = _68;
    _598 = _69;
  }
  _601 = ((1.0f - _415) * _125) + _415;
  _602 = (((((((_125 * _125) * _125) * _171) * _273) * _415) * exp2(log2((_421 * 1.25f) * _424) * 9.0f)) * (1.0f - saturate(_402 * 0.0010000000474974513f))) + 0.0010000000474974513f;
  _621 = (((_596 - _67) + (((((lerp(_483, _474, _479)) / _497) * _602) - _596) * _601)) * _415) + _67;
  _622 = (((_597 - _68) + (((((lerp(_484, _475, _479)) / _497) * _602) - _597) * _601)) * _415) + _68;
  _623 = (((_598 - _69) + (((((lerp(_485, _476, _479)) / _497) * _602) - _598) * _601)) * _415) + _69;
  _624 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _637 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _624, 0)))).x) & 127)))) + 0.5f);
  } else {
    _637 = 1.0f;
  }
  _640 = (_localToneMappingParams.w > 0.0f);
  if (_640) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_621, _622, _623));
    _900 = _rndx_tonemapped_color.x;
    _901 = _rndx_tonemapped_color.y;
    _902 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _908 = 1.0f - abs(_etcParams.w);
      _912 = saturate(_etcParams.w);  // [sem: expr_sat]
      _913 = (_908 * _900) + _912;
      _914 = (_908 * _901) + _912;
      _915 = (_908 * _902) + _912;
      if (_colorGradingParams.w > 0.0f) {
        _920 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _937 = (((max(0.0f, (1.0f - _913)) - _913) * _920) + _913);
        _938 = (((max(0.0f, (1.0f - _914)) - _914) * _920) + _914);
        _939 = (((max(0.0f, (1.0f - _915)) - _915) * _920) + _915);
      } else {
        _937 = _913;
        _938 = _914;
        _939 = _915;
      }
      _945 = _userImageAdjust.y + 1.0f;
      _949 = _userImageAdjust.x + 0.5f;
      _950 = ((_937 + -0.5f) * _945) + _949;
      _951 = ((_938 + -0.5f) * _945) + _949;
      _952 = ((_939 + -0.5f) * _945) + _949;
      _982 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _993 = exp2(log2(saturate(mad(_colorBlind0.z, _952, mad(_colorBlind0.y, _951, (_colorBlind0.x * _950))))) * _982);
      _994 = exp2(log2(saturate(mad(_colorBlind1.z, _952, mad(_colorBlind1.y, _951, (_colorBlind1.x * _950))))) * _982);
      _995 = exp2(log2(saturate(mad(_colorBlind2.z, _952, mad(_colorBlind2.y, _951, (_colorBlind2.x * _950))))) * _982);
    } else {
      _993 = _900;
      _994 = _901;
      _995 = _902;
    }
  } else {
    _993 = _621;
    _994 = _622;
    _995 = _623;
  }
  if (_etcParams.y > 1.0f) {
    _1001 = abs(_71);
    _1002 = abs(_72 + -1.0f);
    _1006 = saturate(1.0f - (dot(float2(_1001, _1002), float2(_1001, _1002)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1011 = (_1006 * _993);
    _1012 = (_1006 * _994);
    _1013 = (_1006 * _995);
  } else {
    _1011 = _993;
    _1012 = _994;
    _1013 = _995;
  }
  if (_640 && (_etcParams.z > 0.0f)) {
    _1043 = select((_1011 <= 0.0031308000907301903f), (_1011 * 12.920000076293945f), (((pow(_1011, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1044 = select((_1012 <= 0.0031308000907301903f), (_1012 * 12.920000076293945f), (((pow(_1012, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1045 = select((_1013 <= 0.0031308000907301903f), (_1013 * 12.920000076293945f), (((pow(_1013, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1043 = _1011;
    _1044 = _1012;
    _1045 = _1013;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1050 = (float)((uint)_624);
    if (!(_1050 < _viewDir.w)) {
      if (!(_1050 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1059 = _1043;
        _1060 = _1044;
        _1061 = _1045;
      } else {
        _1059 = 0.0f;
        _1060 = 0.0f;
        _1061 = 0.0f;
      }
    } else {
      _1059 = 0.0f;
      _1060 = 0.0f;
      _1061 = 0.0f;
    }
  } else {
    _1059 = _1043;
    _1060 = _1044;
    _1061 = _1045;
  }
  _1071 = exp2(log2(_1059 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1072 = exp2(log2(_1060 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1073 = exp2(log2(_1061 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1071 * 18.6875f) + 1.0f)) * ((_1071 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1072 * 18.6875f) + 1.0f)) * ((_1072 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1073 * 18.6875f) + 1.0f)) * ((_1073 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _637;
  return SV_Target;
}
