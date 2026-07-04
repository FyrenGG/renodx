struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _26;
  float _29;
  float _30;
  float _31;
  float _32;
  float _68;
  int _72;
  float _80;
  float _87;
  float _88;
  float _89;
  float _91;
  float _92;
  float _93;
  float _94;
  int _95;
  int _103;
  float4 _110;
  int _117;
  int _125;
  float4 _132;
  int _141;
  int _149;
  float4 _156;
  float _159;
  float _160;
  int _165;
  int _173;
  float4 _180;
  int _189;
  int _197;
  float4 _204;
  float _210;
  float _212;
  float _217;
  float _218;
  float _223;
  float _224;
  float _226;
  int _233;
  int _241;
  float4 _248;
  float _257;
  float _258;
  int _266;
  float _274;
  float _277;
  float _279;
  float _280;
  float _281;
  float _285;
  float _287;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _328;
  float _329;
  float _330;
  uint _331;
  float _345;
  float _548;
  float _549;
  float _550;
  float _643;
  float _644;
  float _645;
  float _699;
  float _700;
  float _701;
  float _717;
  float _718;
  float _719;
  float _749;
  float _750;
  float _751;
  float _765;
  float _766;
  float _767;
  bool _348;
  float _352;
  float _401;
  float _402;
  float _403;
  float _405;
  float _412;
  float _413;
  float _414;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _492;
  float _493;
  float _510;
  float _511;
  float _512;
  float _513;
  float _519;
  float _522;
  float _529;
  float _530;
  float _531;
  float _560;
  float _585;
  float _586;
  float _587;
  float _606;
  float _607;
  float _608;
  float _614;
  float _618;
  float _619;
  float _620;
  float _621;
  float _626;
  float _651;
  float _655;
  float _656;
  float _657;
  float _658;
  float _688;
  float _707;
  float _708;
  float _712;
  float _756;
  _26 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _29 = (TEXCOORD.x * 2.0f) + -1.0f;
  _30 = TEXCOORD.y * 2.0f;
  _31 = 1.0f - _30;
  _32 = max(1.0000000116860974e-07f, _26.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _68 = mad((_invViewProjRelative[2].w), _32, mad((_invViewProjRelative[1].w), _31, ((_invViewProjRelative[0].w) * _29))) + (_invViewProjRelative[3].w);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_72 < (uint)170000), _72, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._fogDepth);
  _87 = -0.0f - ((mad((_invViewProjRelative[2].x), _32, mad((_invViewProjRelative[1].x), _31, ((_invViewProjRelative[0].x) * _29))) + (_invViewProjRelative[3].x)) / _68);
  _88 = -0.0f - ((mad((_invViewProjRelative[2].y), _32, mad((_invViewProjRelative[1].y), _31, ((_invViewProjRelative[0].y) * _29))) + (_invViewProjRelative[3].y)) / _68);
  _89 = -0.0f - ((mad((_invViewProjRelative[2].z), _32, mad((_invViewProjRelative[1].z), _31, ((_invViewProjRelative[0].z) * _29))) + (_invViewProjRelative[3].z)) / _68);
  _91 = rsqrt(dot(float3(_87, _88, _89), float3(_87, _88, _89)));  // [sem: invLength]
  _92 = _91 * _87;
  _93 = _91 * _88;
  _94 = _91 * _89;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_95 < (uint)170000), _95, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_103 < (uint)65000), _103, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, _92));
  _117 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_117 < (uint)170000), _117, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _132 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_125 < (uint)65000), _125, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, ((_time.x * 0.05000000074505806f) + _93)));
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_141 < (uint)170000), _141, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _156 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_149 < (uint)65000), _149, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_94 * 2.0f), ((_93 - (_time.x * 0.10000000149011612f)) * 2.0f)));
  _159 = _156.x + _132.x;
  _160 = _156.y + _132.y;
  _165 = WaveReadLaneFirst(_materialIndex);
  _173 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_165 < (uint)170000), _165, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _180 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_173 < (uint)65000), _173, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.12999999523162842f) + _93), _92));
  _189 = WaveReadLaneFirst(_materialIndex);
  _197 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_189 < (uint)170000), _189, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _204 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_197 < (uint)65000), _197, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.10000000149011612f) + _93) * 2.0f), (_92 * 2.0f)));
  _210 = abs(dot(float3(_92, _93, _94), float3(0.0f, 1.0f, 0.0f)));
  _212 = abs(dot(float3(_92, _93, _94), float3(0.0f, 0.0f, 1.0f)));
  _217 = (_210 * (_110.x - _159)) + _159;
  _218 = (_210 * (_110.y - _160)) + _160;
  _223 = (((_204.x + _180.x) - _217) * _212) + _217;
  _224 = (((_204.y + _180.y) - _218) * _212) + _218;
  _226 = saturate(_26.x * 35.0f);  // [sem: expr_sat]
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_233 < (uint)170000), _233, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _248 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_241 < (uint)65000), _241, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.009999999776482582f)), ((_time.x * 0.10000000149011612f) + TEXCOORD.y)));
  _257 = TEXCOORD.x + -0.5f;
  _258 = TEXCOORD.y + -0.5f;
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)(select(((uint)_266 < (uint)170000), _266, 0)) + 0u))].BindlessParameters_PostProcessAbyssCommon_CD._chromaticShiftValue);
  _277 = ((sqrt((_258 * _258) + (_257 * _257)) * 0.009999999776482582f) * ((float)((uint)(uint)(_enableChromaticAberration)))) * _274;
  _279 = rsqrt(dot(float2(_257, _258), float2(_257, _258)));  // [sem: invLength]
  _280 = _279 * _257;
  _281 = _279 * _258;
  _285 = ((lerp(_223, _248.x, _226)) * 4.0f) + -1.9921568632125854f;
  _287 = ((lerp(_224, _248.y, _226)) * 4.0f) + -1.9921568632125854f;
  _311 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
  _312 = _311 * (1.0f - saturate((pow(_26.x, _80)) * 4.0f));
  _313 = _312 * 0.08000000566244125f;
  _314 = _312 * 0.08999999612569809f;
  _315 = _312 * 0.11000000685453415f;
  _328 = ((saturate(_313) * 0.05999999865889549f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((TEXCOORD.x - (_277 * _285)) - (_280 * _277)), ((TEXCOORD.y - (_277 * _287)) - (_281 * _277)))))).x) - _313)) + _313;
  _329 = ((saturate(_314) * 0.05999999865889549f) * ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) - _314)) + _314;
  _330 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_280 + _285) * _277) + TEXCOORD.x), (((_281 + _287) * _277) + TEXCOORD.y))))).z) - _315) * 0.05999999865889549f) * saturate(_315)) + _315;
  _331 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _345 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _331, 0)))).x) & 127)))) + 0.5f);
  } else {
    _345 = _311;
  }
  _348 = (_localToneMappingParams.w > 0.0f);
  if (_348) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_328, _329, _330));
    _606 = _rndx_tonemapped_color.x;
    _607 = _rndx_tonemapped_color.y;
    _608 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _614 = 1.0f - abs(_etcParams.w);
      _618 = saturate(_etcParams.w);  // [sem: expr_sat]
      _619 = (_614 * _606) + _618;
      _620 = (_614 * _607) + _618;
      _621 = (_614 * _608) + _618;
      if (_colorGradingParams.w > 0.0f) {
        _626 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _643 = (((max(0.0f, (1.0f - _619)) - _619) * _626) + _619);
        _644 = (((max(0.0f, (1.0f - _620)) - _620) * _626) + _620);
        _645 = (((max(0.0f, (1.0f - _621)) - _621) * _626) + _621);
      } else {
        _643 = _619;
        _644 = _620;
        _645 = _621;
      }
      _651 = _userImageAdjust.y + 1.0f;
      _655 = _userImageAdjust.x + 0.5f;
      _656 = ((_643 + -0.5f) * _651) + _655;
      _657 = ((_644 + -0.5f) * _651) + _655;
      _658 = ((_645 + -0.5f) * _651) + _655;
      _688 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _699 = exp2(log2(saturate(mad(_colorBlind0.z, _658, mad(_colorBlind0.y, _657, (_colorBlind0.x * _656))))) * _688);
      _700 = exp2(log2(saturate(mad(_colorBlind1.z, _658, mad(_colorBlind1.y, _657, (_colorBlind1.x * _656))))) * _688);
      _701 = exp2(log2(saturate(mad(_colorBlind2.z, _658, mad(_colorBlind2.y, _657, (_colorBlind2.x * _656))))) * _688);
    } else {
      _699 = _606;
      _700 = _607;
      _701 = _608;
    }
  } else {
    _699 = _328;
    _700 = _329;
    _701 = _330;
  }
  if (_etcParams.y > 1.0f) {
    _707 = abs(_29);
    _708 = abs(_30 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _712 = saturate(1.0f - (dot(float2(_707, _708), float2(_707, _708)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _717 = (_712 * _699);
    _718 = (_712 * _700);
    _719 = (_712 * _701);
  } else {
    _717 = _699;
    _718 = _700;
    _719 = _701;
  }
  if (_348 && (_etcParams.z > 0.0f)) {
    _749 = select((_717 <= 0.0031308000907301903f), (_717 * 12.920000076293945f), (((pow(_717, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _750 = select((_718 <= 0.0031308000907301903f), (_718 * 12.920000076293945f), (((pow(_718, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _751 = select((_719 <= 0.0031308000907301903f), (_719 * 12.920000076293945f), (((pow(_719, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _749 = _717;
    _750 = _718;
    _751 = _719;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _756 = (float)((uint)_331);
    if (!(_756 < _viewDir.w)) {
      if (!(_756 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _765 = _749;
        _766 = _750;
        _767 = _751;
      } else {
        _765 = 0.0f;
        _766 = 0.0f;
        _767 = 0.0f;
      }
    } else {
      _765 = 0.0f;
      _766 = 0.0f;
      _767 = 0.0f;
    }
  } else {
    _765 = _749;
    _766 = _750;
    _767 = _751;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_765, _766, _767), _sunDirection.y, _moonDirection.y);
    _765 = _rndx_final_color.x;
    _766 = _rndx_final_color.y;
    _767 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _765;
  SV_Target.y = _766;
  SV_Target.z = _767;
  SV_Target.w = _345;
  return SV_Target;
}
