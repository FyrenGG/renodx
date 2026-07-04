struct PostProcessAxiom_CDStruct {
  float _axiomEyeProgress;
  float _axiomEyeRadius;
  uint _axiomEyeTargetColor;
  uint _axiomPlayerColor;
  uint _axiomBackgroundColor;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t44, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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

struct BindlessParameters_PostProcessAxiom_CD {
  PostProcessAxiom_CDStruct BindlessParameters_PostProcessAxiom_CD;
};

typedef BindlessParameters_PostProcessAxiom_CD BindlessParameters_PostProcessAxiom_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAxiom_CD_t> BindlessParameters_PostProcessAxiom_CD[] : register(b0, space100);

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
  float _32;
  float4 _35;
  float _45;
  float _46;
  float _47;
  float _72;
  float _73;
  float _74;
  float _76;
  float _77;
  float _78;
  float _82;
  float _118;
  float _122;
  int _129;
  int _137;
  float4 _144;
  float _147;
  float _148;
  float _149;
  float _150;
  float _151;
  float _152;
  uint2 _154;
  uint _169;
  int _171;
  float _179;
  float _180;
  float _182;
  float _183;
  float _184;
  float _195;
  float _196;
  float _584;
  float _585;
  float _586;
  float _612;
  float _613;
  float _614;
  float _640;
  float _845;
  float _846;
  float _847;
  float _940;
  float _941;
  float _942;
  float _996;
  float _997;
  float _998;
  float _1014;
  float _1015;
  float _1016;
  float _1046;
  float _1047;
  float _1048;
  float _1062;
  float _1063;
  float _1064;
  float _198;
  float _199;
  float _200;
  float _201;
  float _203;
  float _204;
  float _205;
  float _206;
  int _216;
  float _224;
  float _229;
  float _230;
  float _231;
  float _244;
  float _250;
  int _254;
  int _262;
  float _265;
  float _268;
  float _270;
  float4 _302;
  float _304;
  float _305;
  float _306;
  float _307;
  float _343;
  float _351;
  float _352;
  float _353;
  int _360;
  float _368;
  float _373;
  float _390;
  int _401;
  int _409;
  float4 _416;
  float _429;
  float _432;
  float _434;
  int _443;
  int _451;
  float _454;
  float _457;
  float _459;
  int _495;
  int _503;
  float _506;
  float _509;
  float _511;
  float _536;
  float _537;
  float _538;
  float _556;
  float _558;
  float _561;
  float4 _568;
  float _590;
  float _591;
  float _592;
  float _624;
  float _625;
  float _626;
  uint _627;
  bool _643;
  float _649;
  float _698;
  float _699;
  float _700;
  float _702;
  float _709;
  float _710;
  float _711;
  float _730;
  float _731;
  float _732;
  float _733;
  float _734;
  float _735;
  float _736;
  float _737;
  float _738;
  float _784;
  float _785;
  float _786;
  float _787;
  float _788;
  float _789;
  float _790;
  float _807;
  float _808;
  float _809;
  float _810;
  float _816;
  float _819;
  float _826;
  float _827;
  float _828;
  float _857;
  float _882;
  float _883;
  float _884;
  float _903;
  float _904;
  float _905;
  float _911;
  float _915;
  float _916;
  float _917;
  float _918;
  float _923;
  float _948;
  float _952;
  float _953;
  float _954;
  float _955;
  float _985;
  float _1004;
  float _1005;
  float _1009;
  float _1053;
  float _1074;
  float _1075;
  float _1076;
  _32 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _35 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _45 = (pow(_35.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = (pow(_35.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _47 = (pow(_35.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.8515625f - (_45 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _73 = exp2(log2(max(0.0f, (_46 + -0.8359375f)) / (18.8515625f - (_46 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _74 = exp2(log2(max(0.0f, (_47 + -0.8359375f)) / (18.8515625f - (_47 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _76 = (TEXCOORD.x * 2.0f) + -1.0f;
  _77 = TEXCOORD.y * 2.0f;
  _78 = 1.0f - _77;
  _82 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _118 = mad((_invViewProj[2].w), _82, mad((_invViewProj[1].w), _78, ((_invViewProj[0].w) * _76))) + (_invViewProj[3].w);
  _122 = 6.0f / _32;
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_129 < (uint)170000), _129, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
  _144 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_137 < (uint)65000), _137, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_122 * TEXCOORD.x), ((_time.x * 0.009999999776482582f) + (_122 * TEXCOORD.y))));
  _147 = _144.x + -0.5f;
  _148 = _144.y + -0.5f;
  _149 = _147 * 0.004999999888241291f;
  _150 = _148 * 0.004999999888241291f;
  _151 = _149 + TEXCOORD.x;
  _152 = _150 + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_154.x, _154.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _169 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_154.x)))))) + 0.5f) * _151), int((float((int)(int(float((int)((int)(_154.y)))))) + 0.5f) * _152), 0));
  _171 = _169.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _179 = (((float)((uint)((uint)((uint)((uint)(_169.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _180 = (((float)((uint)((uint)(((uint)((uint)(_169.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _182 = 1.0f - abs(_179);
  _183 = abs(_180);
  _184 = _182 - _183;
  if (!(_184 >= 0.0f)) {
    _195 = (select((_179 >= 0.0f), 1.0f, -1.0f) * (1.0f - _183));
    _196 = (select((_180 >= 0.0f), 1.0f, -1.0f) * _182);
  } else {
    _195 = _179;
    _196 = _180;
  }
  _198 = rsqrt(dot(float3(_195, _196, _184), float3(_195, _196, _184)));  // [sem: invLength]
  _199 = _198 * _195;
  _200 = _198 * _196;
  _201 = _198 * _184;
  _203 = rsqrt(dot(float3(_199, _200, _201), float3(_199, _200, _201)));  // [sem: invLength]
  _204 = _203 * _199;
  _205 = _203 * _200;
  _206 = _203 * _201;
  _216 = WaveReadLaneFirst(_materialIndex);
  _224 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_216 < (uint)170000), _216, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomEyeProgress);
  _229 = ((mad((_invViewProj[2].x), _82, mad((_invViewProj[1].x), _78, ((_invViewProj[0].x) * _76))) + (_invViewProj[3].x)) / _118) - _mainPosition.x;
  _230 = ((mad((_invViewProj[2].y), _82, mad((_invViewProj[1].y), _78, ((_invViewProj[0].y) * _76))) + (_invViewProj[3].y)) / _118) - _mainPosition.y;
  _231 = ((mad((_invViewProj[2].z), _82, mad((_invViewProj[1].z), _78, ((_invViewProj[0].z) * _76))) + (_invViewProj[3].z)) / _118) - _mainPosition.z;
  // [sem: expr_sat]
  _244 = saturate((1.0f - saturate(sqrt(((_229 * _229) + (_230 * _230)) + (_231 * _231)) / max(0.0010000000474974513f, (_224 * 50.0f)))) * 1.25f);
  _250 = (saturate((_224 * 4.0f) + -3.0f) * (1.0f - _244)) + _244;
  if (_244 > 0.0f) {
    _254 = WaveReadLaneFirst(_materialIndex);
    _262 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_254 < (uint)170000), _254, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomBackgroundColor);
    _265 = (float)((uint)((uint)(((uint)(_262) >> 16) & 255)));
    _268 = (float)((uint)((uint)(((uint)(_262) >> 8) & 255)));
    _270 = (float)((uint)((uint)(_262 & 255)));
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
    _302 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _149), (TEXCOORD.y - _150)), 0.0f);
    _304 = _302.w * select(((_265 * 0.003921568859368563f) < 0.040449999272823334f), (_265 * 0.0003035269910469651f), exp2(log2((_265 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _305 = _302.w * select(((_268 * 0.003921568859368563f) < 0.040449999272823334f), (_268 * 0.0003035269910469651f), exp2(log2((_268 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _306 = _302.w * select(((_270 * 0.003921568859368563f) < 0.040449999272823334f), (_270 * 0.0003035269910469651f), exp2(log2((_270 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _307 = max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _151), int(_customRenderPassSizeInvSize.y * _152), 0)))).x));
    _343 = mad((_invViewProj[2].w), _307, mad((_invViewProj[1].w), _78, ((_invViewProj[0].w) * _76))) + (_invViewProj[3].w);
    _351 = ((mad((_invViewProj[2].x), _307, mad((_invViewProj[1].x), _78, ((_invViewProj[0].x) * _76))) + (_invViewProj[3].x)) / _343) - _mainPosition.x;
    _352 = ((mad((_invViewProj[2].y), _307, mad((_invViewProj[1].y), _78, ((_invViewProj[0].y) * _76))) + (_invViewProj[3].y)) / _343) - _mainPosition.y;
    _353 = ((mad((_invViewProj[2].z), _307, mad((_invViewProj[1].z), _78, ((_invViewProj[0].z) * _76))) + (_invViewProj[3].z)) / _343) - _mainPosition.z;
    _360 = WaveReadLaneFirst(_materialIndex);
    _368 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_360 < (uint)170000), _360, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomEyeRadius);
    _373 = 1.0f - saturate(sqrt(((_351 * _351) + (_352 * _352)) + (_353 * _353)) / max(0.0010000000474974513f, (_368 * _250)));
    if ((_171 == _renderPassSelfPlayer) || ((!(_171 == _renderPassSelfPlayer)) && (_171 == _renderPassTest))) {
      if (_373 > 0.0f) {
        _390 = 2.0f / _32;
        _401 = WaveReadLaneFirst(_materialIndex);
        _409 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_401 < (uint)170000), _401, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
        _416 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_409 < (uint)65000), _409, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_390 * TEXCOORD.x) - (_144.x * 0.25f)) + (_time.x * 0.10000000149011612f)), ((_390 * TEXCOORD.y) - (_144.y * 0.25f))));
  // [sem: expr_sat]
        _429 = saturate(1.0f - dot(float3(_204, _205, _206), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _432 = _416.z + -0.5f;
        _434 = saturate(((_429 * _429) * _429) + _432);  // [sem: expr_sat]
        if ((_171 == _renderPassSelfPlayer) || ((!(_171 == _renderPassSelfPlayer)) && (_171 == _renderPassTest))) {
          _443 = WaveReadLaneFirst(_materialIndex);
          _451 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_443 < (uint)170000), _443, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
          _454 = (float)((uint)((uint)(((uint)(_451) >> 16) & 255)));
          _457 = (float)((uint)((uint)(((uint)(_451) >> 8) & 255)));
          _459 = (float)((uint)((uint)(_451 & 255)));
          _612 = (select(((_454 * 0.003921568859368563f) < 0.040449999272823334f), (_454 * 0.0003035269910469651f), exp2(log2((_454 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _434);
          _613 = (select(((_457 * 0.003921568859368563f) < 0.040449999272823334f), (_457 * 0.0003035269910469651f), exp2(log2((_457 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _434);
          _614 = (select(((_459 * 0.003921568859368563f) < 0.040449999272823334f), (_459 * 0.0003035269910469651f), exp2(log2((_459 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _434);
        } else {
          if (_171 == _renderPassDetectItem) {
            _495 = WaveReadLaneFirst(_materialIndex);
            _503 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_495 < (uint)170000), _495, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
            _506 = (float)((uint)((uint)(((uint)(_503) >> 16) & 255)));
            _509 = (float)((uint)((uint)(((uint)(_503) >> 8) & 255)));
            _511 = (float)((uint)((uint)(_503 & 255)));
            _536 = select(((_506 * 0.003921568859368563f) < 0.040449999272823334f), (_506 * 0.0003035269910469651f), exp2(log2((_506 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
            _537 = select(((_509 * 0.003921568859368563f) < 0.040449999272823334f), (_509 * 0.0003035269910469651f), exp2(log2((_509 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
            _538 = select(((_511 * 0.003921568859368563f) < 0.040449999272823334f), (_511 * 0.0003035269910469651f), exp2(log2((_511 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  // [sem: expr_sat]
            _556 = saturate(1.0f - dot(float3((((_416.x + -0.5f) * 4.0f) + _204), (((_416.y + -0.5f) * 4.0f) + _205), ((_432 * 4.0f) + _206)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
            _558 = saturate(_556 * _556);  // [sem: expr_sat]
            _561 = saturate((_373 * 2.0f) + -1.0f);  // [sem: expr_sat]
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
            _568 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_147 * 0.04999999701976776f)), (TEXCOORD.y - (_148 * 0.04999999701976776f))), 0.0f);
            if (!(_568.w < 0.10000000149011612f)) {
              if (_568.w < 0.14000000059604645f) {
                _584 = (_536 + 1.0f);
                _585 = _537;
                _586 = _538;
              } else {
                if (_568.w < 0.17000000178813934f) {
                  _584 = _536;
                  _585 = (_537 + 1.0f);
                  _586 = _538;
                } else {
                  if (_568.w < 0.30000001192092896f) {
                    _584 = _536;
                    _585 = _537;
                    _586 = (_538 + 1.0f);
                  } else {
                    _584 = _536;
                    _585 = _537;
                    _586 = _538;
                  }
                }
              }
            } else {
              _584 = _536;
              _585 = _537;
              _586 = _538;
            }
            _590 = _536 * _434;
            _591 = _537 * _434;
            _592 = _538 * _434;
            _612 = ((((_590 - _304) + (((_584 * _558) - _590) * _561)) * _373) + _304);
            _613 = ((((_591 - _305) + (((_585 * _558) - _591) * _561)) * _373) + _305);
            _614 = ((((_592 - _306) + (((_586 * _558) - _592) * _561)) * _373) + _306);
          } else {
            _612 = _304;
            _613 = _305;
            _614 = _306;
          }
        }
      } else {
        _612 = _304;
        _613 = _305;
        _614 = _306;
      }
    } else {
      if ((_373 > 0.0f) && (_171 == _renderPassDetectItem)) {
        _390 = 2.0f / _32;
        _401 = WaveReadLaneFirst(_materialIndex);
        _409 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_401 < (uint)170000), _401, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
        _416 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_409 < (uint)65000), _409, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_390 * TEXCOORD.x) - (_144.x * 0.25f)) + (_time.x * 0.10000000149011612f)), ((_390 * TEXCOORD.y) - (_144.y * 0.25f))));
  // [sem: expr_sat]
        _429 = saturate(1.0f - dot(float3(_204, _205, _206), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _432 = _416.z + -0.5f;
        _434 = saturate(((_429 * _429) * _429) + _432);  // [sem: expr_sat]
        if ((_171 == _renderPassSelfPlayer) || ((!(_171 == _renderPassSelfPlayer)) && (_171 == _renderPassTest))) {
          _443 = WaveReadLaneFirst(_materialIndex);
          _451 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_443 < (uint)170000), _443, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
          _454 = (float)((uint)((uint)(((uint)(_451) >> 16) & 255)));
          _457 = (float)((uint)((uint)(((uint)(_451) >> 8) & 255)));
          _459 = (float)((uint)((uint)(_451 & 255)));
          _612 = (select(((_454 * 0.003921568859368563f) < 0.040449999272823334f), (_454 * 0.0003035269910469651f), exp2(log2((_454 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _434);
          _613 = (select(((_457 * 0.003921568859368563f) < 0.040449999272823334f), (_457 * 0.0003035269910469651f), exp2(log2((_457 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _434);
          _614 = (select(((_459 * 0.003921568859368563f) < 0.040449999272823334f), (_459 * 0.0003035269910469651f), exp2(log2((_459 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _434);
        } else {
          if (_171 == _renderPassDetectItem) {
            _495 = WaveReadLaneFirst(_materialIndex);
            _503 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)(select(((uint)_495 < (uint)170000), _495, 0)) + 0u))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
            _506 = (float)((uint)((uint)(((uint)(_503) >> 16) & 255)));
            _509 = (float)((uint)((uint)(((uint)(_503) >> 8) & 255)));
            _511 = (float)((uint)((uint)(_503 & 255)));
            _536 = select(((_506 * 0.003921568859368563f) < 0.040449999272823334f), (_506 * 0.0003035269910469651f), exp2(log2((_506 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
            _537 = select(((_509 * 0.003921568859368563f) < 0.040449999272823334f), (_509 * 0.0003035269910469651f), exp2(log2((_509 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
            _538 = select(((_511 * 0.003921568859368563f) < 0.040449999272823334f), (_511 * 0.0003035269910469651f), exp2(log2((_511 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  // [sem: expr_sat]
            _556 = saturate(1.0f - dot(float3((((_416.x + -0.5f) * 4.0f) + _204), (((_416.y + -0.5f) * 4.0f) + _205), ((_432 * 4.0f) + _206)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
            _558 = saturate(_556 * _556);  // [sem: expr_sat]
            _561 = saturate((_373 * 2.0f) + -1.0f);  // [sem: expr_sat]
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
            _568 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_147 * 0.04999999701976776f)), (TEXCOORD.y - (_148 * 0.04999999701976776f))), 0.0f);
            if (!(_568.w < 0.10000000149011612f)) {
              if (_568.w < 0.14000000059604645f) {
                _584 = (_536 + 1.0f);
                _585 = _537;
                _586 = _538;
              } else {
                if (_568.w < 0.17000000178813934f) {
                  _584 = _536;
                  _585 = (_537 + 1.0f);
                  _586 = _538;
                } else {
                  if (_568.w < 0.30000001192092896f) {
                    _584 = _536;
                    _585 = _537;
                    _586 = (_538 + 1.0f);
                  } else {
                    _584 = _536;
                    _585 = _537;
                    _586 = _538;
                  }
                }
              }
            } else {
              _584 = _536;
              _585 = _537;
              _586 = _538;
            }
            _590 = _536 * _434;
            _591 = _537 * _434;
            _592 = _538 * _434;
            _612 = ((((_590 - _304) + (((_584 * _558) - _590) * _561)) * _373) + _304);
            _613 = ((((_591 - _305) + (((_585 * _558) - _591) * _561)) * _373) + _305);
            _614 = ((((_592 - _306) + (((_586 * _558) - _592) * _561)) * _373) + _306);
          } else {
            _612 = _304;
            _613 = _305;
            _614 = _306;
          }
        }
      } else {
        _612 = _304;
        _613 = _305;
        _614 = _306;
      }
    }
  } else {
    _612 = _72;
    _613 = _73;
    _614 = _74;
  }
  _624 = (((_612 * _244) - _72) * _250) + _72;
  _625 = (((_613 * _244) - _73) * _250) + _73;
  _626 = (((_614 * _244) - _74) * _250) + _74;
  _627 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _640 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _627, 0)))).x) & 127)))) + 0.5f);
  } else {
    _640 = 1.0f;
  }
  _643 = (_localToneMappingParams.w > 0.0f);
  if (_643) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_624, _625, _626));
    _903 = _rndx_tonemapped_color.x;
    _904 = _rndx_tonemapped_color.y;
    _905 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _911 = 1.0f - abs(_etcParams.w);
      _915 = saturate(_etcParams.w);  // [sem: expr_sat]
      _916 = (_911 * _903) + _915;
      _917 = (_911 * _904) + _915;
      _918 = (_911 * _905) + _915;
      if (_colorGradingParams.w > 0.0f) {
        _923 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _940 = (((max(0.0f, (1.0f - _916)) - _916) * _923) + _916);
        _941 = (((max(0.0f, (1.0f - _917)) - _917) * _923) + _917);
        _942 = (((max(0.0f, (1.0f - _918)) - _918) * _923) + _918);
      } else {
        _940 = _916;
        _941 = _917;
        _942 = _918;
      }
      _948 = _userImageAdjust.y + 1.0f;
      _952 = _userImageAdjust.x + 0.5f;
      _953 = ((_940 + -0.5f) * _948) + _952;
      _954 = ((_941 + -0.5f) * _948) + _952;
      _955 = ((_942 + -0.5f) * _948) + _952;
      _985 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _996 = exp2(log2(saturate(mad(_colorBlind0.z, _955, mad(_colorBlind0.y, _954, (_colorBlind0.x * _953))))) * _985);
      _997 = exp2(log2(saturate(mad(_colorBlind1.z, _955, mad(_colorBlind1.y, _954, (_colorBlind1.x * _953))))) * _985);
      _998 = exp2(log2(saturate(mad(_colorBlind2.z, _955, mad(_colorBlind2.y, _954, (_colorBlind2.x * _953))))) * _985);
    } else {
      _996 = _903;
      _997 = _904;
      _998 = _905;
    }
  } else {
    _996 = _624;
    _997 = _625;
    _998 = _626;
  }
  if (_etcParams.y > 1.0f) {
    _1004 = abs(_76);
    _1005 = abs(_77 + -1.0f);
    _1009 = saturate(1.0f - (dot(float2(_1004, _1005), float2(_1004, _1005)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1014 = (_1009 * _996);
    _1015 = (_1009 * _997);
    _1016 = (_1009 * _998);
  } else {
    _1014 = _996;
    _1015 = _997;
    _1016 = _998;
  }
  if (_643 && (_etcParams.z > 0.0f)) {
    _1046 = select((_1014 <= 0.0031308000907301903f), (_1014 * 12.920000076293945f), (((pow(_1014, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1047 = select((_1015 <= 0.0031308000907301903f), (_1015 * 12.920000076293945f), (((pow(_1015, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1048 = select((_1016 <= 0.0031308000907301903f), (_1016 * 12.920000076293945f), (((pow(_1016, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1046 = _1014;
    _1047 = _1015;
    _1048 = _1016;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1053 = (float)((uint)_627);
    if (!(_1053 < _viewDir.w)) {
      if (!(_1053 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1062 = _1046;
        _1063 = _1047;
        _1064 = _1048;
      } else {
        _1062 = 0.0f;
        _1063 = 0.0f;
        _1064 = 0.0f;
      }
    } else {
      _1062 = 0.0f;
      _1063 = 0.0f;
      _1064 = 0.0f;
    }
  } else {
    _1062 = _1046;
    _1063 = _1047;
    _1064 = _1048;
  }
  _1074 = exp2(log2(_1062 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1075 = exp2(log2(_1063 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1076 = exp2(log2(_1064 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1074 * 18.6875f) + 1.0f)) * ((_1074 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1075 * 18.6875f) + 1.0f)) * ((_1075 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1076 * 18.6875f) + 1.0f)) * ((_1076 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _640;
  return SV_Target;
}
