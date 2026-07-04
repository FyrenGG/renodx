struct PostProcessHousing_CDStruct {
  float _housingPreviewRatio;
  uint _housingValidColor;
  uint _housingInvalidColor;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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
  float4 _25;
  float _35;
  float _36;
  float _37;
  float _62;
  float _63;
  float _64;
  uint2 _66;
  uint _81;
  float _91;
  float _92;
  float _94;
  float _95;
  float _96;
  float _107;
  float _108;
  float _144;
  float _272;
  float _475;
  float _476;
  float _477;
  float _570;
  float _571;
  float _572;
  float _626;
  float _627;
  float _628;
  float _647;
  float _648;
  float _649;
  float _679;
  float _680;
  float _681;
  float _695;
  float _696;
  float _697;
  float _110;
  float _111;
  float _112;
  float _113;
  float _115;
  int _133;
  float _141;
  int _145;
  int _153;
  float _156;
  float _159;
  float _161;
  float _186;
  float _187;
  float _188;
  int _189;
  int _197;
  float _200;
  float _203;
  float _205;
  float _246;
  float _256;
  float _257;
  float _258;
  uint _259;
  bool _275;
  float _279;
  float _328;
  float _329;
  float _330;
  float _332;
  float _339;
  float _340;
  float _341;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _368;
  float _414;
  float _415;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _437;
  float _438;
  float _439;
  float _440;
  float _446;
  float _449;
  float _456;
  float _457;
  float _458;
  float _487;
  float _512;
  float _513;
  float _514;
  float _533;
  float _534;
  float _535;
  float _541;
  float _545;
  float _546;
  float _547;
  float _548;
  float _553;
  float _578;
  float _582;
  float _583;
  float _584;
  float _585;
  float _615;
  float _637;
  float _638;
  float _642;
  float _686;
  float _707;
  float _708;
  float _709;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (pow(_25.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_25.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.8515625f - (_35 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.8515625f - (_36 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.8515625f - (_37 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_66.x, _66.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _81 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_66.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_66.y)))))) + 0.5f) * TEXCOORD.y), 0));
  _91 = (((float)((uint)((uint)((uint)((uint)(_81.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _92 = (((float)((uint)((uint)(((uint)((uint)(_81.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _94 = 1.0f - abs(_91);
  _95 = abs(_92);
  _96 = _94 - _95;
  if (!(_96 >= 0.0f)) {
    _107 = (select((_91 >= 0.0f), 1.0f, -1.0f) * (1.0f - _95));
    _108 = (select((_92 >= 0.0f), 1.0f, -1.0f) * _94);
  } else {
    _107 = _91;
    _108 = _92;
  }
  _110 = rsqrt(dot(float3(_107, _108, _96), float3(_107, _108, _96)));  // [sem: invLength]
  _111 = _110 * _107;
  _112 = _110 * _108;
  _113 = _110 * _96;
  _115 = rsqrt(dot(float3(_111, _112, _113), float3(_111, _112, _113)));  // [sem: invLength]
  if ((_81.x & 255) == _renderPassHousing) {
    _133 = WaveReadLaneFirst(_materialIndex);
    _141 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)(select(((uint)_133 < (uint)170000), _133, 0)) + 0u))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _144 = (_141 * (1.0f - abs(dot(float3((_115 * _111), (_115 * _112), (_115 * _113)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))));
  } else {
    _144 = 0.0f;
  }
  _145 = WaveReadLaneFirst(_materialIndex);
  _153 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)(select(((uint)_145 < (uint)170000), _145, 0)) + 0u))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _156 = (float)((uint)((uint)(((uint)(_153) >> 16) & 255)));
  _159 = (float)((uint)((uint)(((uint)(_153) >> 8) & 255)));
  _161 = (float)((uint)((uint)(_153 & 255)));
  _186 = select(((_156 * 0.003921568859368563f) < 0.040449999272823334f), (_156 * 0.0003035269910469651f), exp2(log2((_156 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _187 = select(((_159 * 0.003921568859368563f) < 0.040449999272823334f), (_159 * 0.0003035269910469651f), exp2(log2((_159 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _188 = select(((_161 * 0.003921568859368563f) < 0.040449999272823334f), (_161 * 0.0003035269910469651f), exp2(log2((_161 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _189 = WaveReadLaneFirst(_materialIndex);
  _197 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)(select(((uint)_189 < (uint)170000), _189, 0)) + 0u))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _200 = (float)((uint)((uint)(((uint)(_197) >> 16) & 255)));
  _203 = (float)((uint)((uint)(((uint)(_197) >> 8) & 255)));
  _205 = (float)((uint)((uint)(_197 & 255)));
  _246 = max(0.0010000000474974513f, _exposure0.x);
  _256 = (((((_housingPreviewState * (select(((_200 * 0.003921568859368563f) < 0.040449999272823334f), (_200 * 0.0003035269910469651f), exp2(log2((_200 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _186)) + _186) / _246) - _62) * _144) + _62;
  _257 = (((((_housingPreviewState * (select(((_203 * 0.003921568859368563f) < 0.040449999272823334f), (_203 * 0.0003035269910469651f), exp2(log2((_203 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _187)) + _187) / _246) - _63) * _144) + _63;
  _258 = (((((_housingPreviewState * (select(((_205 * 0.003921568859368563f) < 0.040449999272823334f), (_205 * 0.0003035269910469651f), exp2(log2((_205 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _188)) + _188) / _246) - _64) * _144) + _64;
  _259 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _272 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _259, 0)))).x) & 127)))) + 0.5f);
  } else {
    _272 = 1.0f;
  }
  _275 = (_localToneMappingParams.w > 0.0f);
  if (_275) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_256, _257, _258));
    _533 = _rndx_tonemapped_color.x;
    _534 = _rndx_tonemapped_color.y;
    _535 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _541 = 1.0f - abs(_etcParams.w);
      _545 = saturate(_etcParams.w);  // [sem: expr_sat]
      _546 = (_541 * _533) + _545;
      _547 = (_541 * _534) + _545;
      _548 = (_541 * _535) + _545;
      if (_colorGradingParams.w > 0.0f) {
        _553 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _570 = (((max(0.0f, (1.0f - _546)) - _546) * _553) + _546);
        _571 = (((max(0.0f, (1.0f - _547)) - _547) * _553) + _547);
        _572 = (((max(0.0f, (1.0f - _548)) - _548) * _553) + _548);
      } else {
        _570 = _546;
        _571 = _547;
        _572 = _548;
      }
      _578 = _userImageAdjust.y + 1.0f;
      _582 = _userImageAdjust.x + 0.5f;
      _583 = ((_570 + -0.5f) * _578) + _582;
      _584 = ((_571 + -0.5f) * _578) + _582;
      _585 = ((_572 + -0.5f) * _578) + _582;
      _615 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _626 = exp2(log2(saturate(mad(_colorBlind0.z, _585, mad(_colorBlind0.y, _584, (_colorBlind0.x * _583))))) * _615);
      _627 = exp2(log2(saturate(mad(_colorBlind1.z, _585, mad(_colorBlind1.y, _584, (_colorBlind1.x * _583))))) * _615);
      _628 = exp2(log2(saturate(mad(_colorBlind2.z, _585, mad(_colorBlind2.y, _584, (_colorBlind2.x * _583))))) * _615);
    } else {
      _626 = _533;
      _627 = _534;
      _628 = _535;
    }
  } else {
    _626 = _256;
    _627 = _257;
    _628 = _258;
  }
  if (_etcParams.y > 1.0f) {
    _637 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _638 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _642 = saturate(1.0f - (dot(float2(_637, _638), float2(_637, _638)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _647 = (_642 * _626);
    _648 = (_642 * _627);
    _649 = (_642 * _628);
  } else {
    _647 = _626;
    _648 = _627;
    _649 = _628;
  }
  if (_275 && (_etcParams.z > 0.0f)) {
    _679 = select((_647 <= 0.0031308000907301903f), (_647 * 12.920000076293945f), (((pow(_647, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _680 = select((_648 <= 0.0031308000907301903f), (_648 * 12.920000076293945f), (((pow(_648, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _681 = select((_649 <= 0.0031308000907301903f), (_649 * 12.920000076293945f), (((pow(_649, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _679 = _647;
    _680 = _648;
    _681 = _649;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _686 = (float)((uint)_259);
    if (!(_686 < _viewDir.w)) {
      if (!(_686 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _695 = _679;
        _696 = _680;
        _697 = _681;
      } else {
        _695 = 0.0f;
        _696 = 0.0f;
        _697 = 0.0f;
      }
    } else {
      _695 = 0.0f;
      _696 = 0.0f;
      _697 = 0.0f;
    }
  } else {
    _695 = _679;
    _696 = _680;
    _697 = _681;
  }
  _707 = exp2(log2(_695 * 9.999999747378752e-05f) * 0.1593017578125f);
  _708 = exp2(log2(_696 * 9.999999747378752e-05f) * 0.1593017578125f);
  _709 = exp2(log2(_697 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_707 * 18.6875f) + 1.0f)) * ((_707 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_708 * 18.6875f) + 1.0f)) * ((_708 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_709 * 18.6875f) + 1.0f)) * ((_709 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _272;
  return SV_Target;
}
