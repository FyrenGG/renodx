struct PostProcessScreenDamage_CDStruct {
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor1;
  uint _borderColor2;
  uint _sceneColorTint;
  uint _borderEdgeNoiseTexture;
  uint _borderInsideDistortionTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

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

struct BindlessParameters_PostProcessScreenDamage_CD {
  PostProcessScreenDamage_CDStruct BindlessParameters_PostProcessScreenDamage_CD;
};

typedef BindlessParameters_PostProcessScreenDamage_CD BindlessParameters_PostProcessScreenDamage_CD_t;
ConstantBuffer<BindlessParameters_PostProcessScreenDamage_CD_t> BindlessParameters_PostProcessScreenDamage_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  float _36;
  float _37;
  float _38;
  float _63;
  float _64;
  float _65;
  float _404;
  float _405;
  float _406;
  float _420;
  float _625;
  float _626;
  float _627;
  float _720;
  float _721;
  float _722;
  float _776;
  float _777;
  float _778;
  float _797;
  float _798;
  float _799;
  float _829;
  float _830;
  float _831;
  float _845;
  float _846;
  float _847;
  float _71;
  float _77;
  float _79;
  int _80;
  float _89;
  float _90;
  int _93;
  float _102;
  float _103;
  float _110;
  int _113;
  int _121;
  float _130;
  int _133;
  int _141;
  int _150;
  float _158;
  float _164;
  float _167;
  float _168;
  int _181;
  float _190;
  float _191;
  int _195;
  float _203;
  int _208;
  float _216;
  float _222;
  int _223;
  int _231;
  float _234;
  float _237;
  float _239;
  float _270;
  int _274;
  int _282;
  float _285;
  float _288;
  float _290;
  float _315;
  float _316;
  float _317;
  int _318;
  int _326;
  float _329;
  float _332;
  float _334;
  float _368;
  float _381;
  float _391;
  float _392;
  float _393;
  uint _407;
  bool _423;
  float _429;
  float _478;
  float _479;
  float _480;
  float _482;
  float _489;
  float _490;
  float _491;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _518;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _570;
  float _587;
  float _588;
  float _589;
  float _590;
  float _596;
  float _599;
  float _606;
  float _607;
  float _608;
  float _637;
  float _662;
  float _663;
  float _664;
  float _683;
  float _684;
  float _685;
  float _691;
  float _695;
  float _696;
  float _697;
  float _698;
  float _703;
  float _728;
  float _732;
  float _733;
  float _734;
  float _735;
  float _765;
  float _787;
  float _788;
  float _792;
  float _836;
  float _857;
  float _858;
  float _859;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _36 = (pow(_25.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_25.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.8515625f - (_36 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.8515625f - (_37 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _65 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.8515625f - (_38 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  if (!(!(_hpPercentage <= 20.0f))) {
    _71 = 1.0f - (_hpPercentage * 0.009999999776482582f);
    if ((!(_hpPercentage <= 0.0f)) && (_71 > 0.0f)) {
      _77 = 0.12999999523162842f - (_hpPercentage * 0.006000000052154064f);
      _79 = 2.0f - (_hpPercentage * 0.05000000074505806f);
      _80 = WaveReadLaneFirst(_materialIndex);
      _89 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_80 < (uint)170000), _80, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.x);
      _90 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_80 < (uint)170000), _80, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.y);
      _93 = WaveReadLaneFirst(_materialIndex);
      _102 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_93 < (uint)170000), _93, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.x);
      _103 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_93 < (uint)170000), _93, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.y);
      _110 = _time.x * 0.30000001192092896f;
      _113 = WaveReadLaneFirst(_materialIndex);
      _121 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_113 < (uint)170000), _113, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderInsideDistortionTexture);
      _130 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_121 < (uint)65000), _121, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_110 + (TEXCOORD.x * 12.0f)), (_110 + (TEXCOORD.y * 6.0f)))))).x) * 0.10000000149011612f;
      _133 = WaveReadLaneFirst(_materialIndex);
      _141 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_133 < (uint)170000), _133, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTexture);
      _150 = WaveReadLaneFirst(_materialIndex);
      _158 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_150 < (uint)170000), _150, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderSmoothness);
      _164 = (_hpPercentage * 0.0020000000949949026f) + 0.36000001430511475f;
      _167 = max((abs(TEXCOORD.x + -0.5f) - _164), 0.0f);
      _168 = max((abs(TEXCOORD.y + -0.5f) - _164), 0.0f);
      _181 = WaveReadLaneFirst(_materialIndex);
      _190 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_181 < (uint)170000), _181, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.x);
      _191 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_181 < (uint)170000), _181, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.y);
      _195 = WaveReadLaneFirst(_materialIndex);
      _203 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_195 < (uint)170000), _195, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerIntensity);
      _208 = WaveReadLaneFirst(_materialIndex);
      _216 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_208 < (uint)170000), _208, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseRatio);
      _222 = min(max(_71, 0.0f), 1.0f) * saturate((saturate(((((_191 - _190) * sin(frac(_time.x * _79) * 3.1415927410125732f)) + _190) * saturate(sqrt((_168 * _168) + (_167 * _167)) / _158)) * _203) * 2.0f) - (_216 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_141 < (uint)65000), _141, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_102 + (_89 * TEXCOORD.x)) + _130), ((_103 + (_90 * TEXCOORD.y)) + _130))))).x)));
      _223 = WaveReadLaneFirst(_materialIndex);
      _231 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_223 < (uint)170000), _223, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._sceneColorTint);
      _234 = (float)((uint)((uint)(((uint)(_231) >> 16) & 255)));
      _237 = (float)((uint)((uint)(((uint)(_231) >> 8) & 255)));
      _239 = (float)((uint)((uint)(_231 & 255)));
      _270 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
      _274 = WaveReadLaneFirst(_materialIndex);
      _282 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_274 < (uint)170000), _274, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderColor1);
      _285 = (float)((uint)((uint)(((uint)(_282) >> 16) & 255)));
      _288 = (float)((uint)((uint)(((uint)(_282) >> 8) & 255)));
      _290 = (float)((uint)((uint)(_282 & 255)));
      _315 = select(((_285 * 0.003921568859368563f) < 0.040449999272823334f), (_285 * 0.0003035269910469651f), exp2(log2((_285 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
      _316 = select(((_288 * 0.003921568859368563f) < 0.040449999272823334f), (_288 * 0.0003035269910469651f), exp2(log2((_288 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
      _317 = select(((_290 * 0.003921568859368563f) < 0.040449999272823334f), (_290 * 0.0003035269910469651f), exp2(log2((_290 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
      _318 = WaveReadLaneFirst(_materialIndex);
      _326 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)(select(((uint)_318 < (uint)170000), _318, 0)) + 0u))].BindlessParameters_PostProcessScreenDamage_CD._borderColor2);
      _329 = (float)((uint)((uint)(((uint)(_326) >> 16) & 255)));
      _332 = (float)((uint)((uint)(((uint)(_326) >> 8) & 255)));
      _334 = (float)((uint)((uint)(_326 & 255)));
      _368 = saturate(sin(frac(_time.x * _79) * 3.1415927410125732f));  // [sem: expr_sat]
      _381 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
      _391 = (((_270 * select(((_234 * 0.003921568859368563f) < 0.040449999272823334f), (_234 * 0.0003035269910469651f), exp2(log2((_234 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _63) * _77) + _63;
      _392 = (((_270 * select(((_237 * 0.003921568859368563f) < 0.040449999272823334f), (_237 * 0.0003035269910469651f), exp2(log2((_237 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _64) * _77) + _64;
      _393 = (((_270 * select(((_239 * 0.003921568859368563f) < 0.040449999272823334f), (_239 * 0.0003035269910469651f), exp2(log2((_239 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _65) * _77) + _65;
      _404 = ((((_381 * ((_368 * (select(((_329 * 0.003921568859368563f) < 0.040449999272823334f), (_329 * 0.0003035269910469651f), exp2(log2((_329 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _315)) + _315)) - _391) * _222) + _391);
      _405 = ((((_381 * ((_368 * (select(((_332 * 0.003921568859368563f) < 0.040449999272823334f), (_332 * 0.0003035269910469651f), exp2(log2((_332 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _316)) + _316)) - _392) * _222) + _392);
      _406 = ((((_381 * ((_368 * (select(((_334 * 0.003921568859368563f) < 0.040449999272823334f), (_334 * 0.0003035269910469651f), exp2(log2((_334 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) - _317)) + _317)) - _393) * _222) + _393);
    } else {
      _404 = _63;
      _405 = _64;
      _406 = _65;
    }
  } else {
    _404 = _63;
    _405 = _64;
    _406 = _65;
  }
  _407 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _420 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _407, 0)))).x) & 127)))) + 0.5f);
  } else {
    _420 = _25.w;
  }
  _423 = (_localToneMappingParams.w > 0.0f);
  if (_423) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_404, _405, _406));
    _683 = _rndx_tonemapped_color.x;
    _684 = _rndx_tonemapped_color.y;
    _685 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _691 = 1.0f - abs(_etcParams.w);
      _695 = saturate(_etcParams.w);  // [sem: expr_sat]
      _696 = (_691 * _683) + _695;
      _697 = (_691 * _684) + _695;
      _698 = (_691 * _685) + _695;
      if (_colorGradingParams.w > 0.0f) {
        _703 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _720 = (((max(0.0f, (1.0f - _696)) - _696) * _703) + _696);
        _721 = (((max(0.0f, (1.0f - _697)) - _697) * _703) + _697);
        _722 = (((max(0.0f, (1.0f - _698)) - _698) * _703) + _698);
      } else {
        _720 = _696;
        _721 = _697;
        _722 = _698;
      }
      _728 = _userImageAdjust.y + 1.0f;
      _732 = _userImageAdjust.x + 0.5f;
      _733 = ((_720 + -0.5f) * _728) + _732;
      _734 = ((_721 + -0.5f) * _728) + _732;
      _735 = ((_722 + -0.5f) * _728) + _732;
      _765 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _776 = exp2(log2(saturate(mad(_colorBlind0.z, _735, mad(_colorBlind0.y, _734, (_colorBlind0.x * _733))))) * _765);
      _777 = exp2(log2(saturate(mad(_colorBlind1.z, _735, mad(_colorBlind1.y, _734, (_colorBlind1.x * _733))))) * _765);
      _778 = exp2(log2(saturate(mad(_colorBlind2.z, _735, mad(_colorBlind2.y, _734, (_colorBlind2.x * _733))))) * _765);
    } else {
      _776 = _683;
      _777 = _684;
      _778 = _685;
    }
  } else {
    _776 = _404;
    _777 = _405;
    _778 = _406;
  }
  if (_etcParams.y > 1.0f) {
    _787 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _788 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _792 = saturate(1.0f - (dot(float2(_787, _788), float2(_787, _788)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _797 = (_792 * _776);
    _798 = (_792 * _777);
    _799 = (_792 * _778);
  } else {
    _797 = _776;
    _798 = _777;
    _799 = _778;
  }
  if (_423 && (_etcParams.z > 0.0f)) {
    _829 = select((_797 <= 0.0031308000907301903f), (_797 * 12.920000076293945f), (((pow(_797, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _830 = select((_798 <= 0.0031308000907301903f), (_798 * 12.920000076293945f), (((pow(_798, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _831 = select((_799 <= 0.0031308000907301903f), (_799 * 12.920000076293945f), (((pow(_799, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _829 = _797;
    _830 = _798;
    _831 = _799;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _836 = (float)((uint)_407);
    if (!(_836 < _viewDir.w)) {
      if (!(_836 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _845 = _829;
        _846 = _830;
        _847 = _831;
      } else {
        _845 = 0.0f;
        _846 = 0.0f;
        _847 = 0.0f;
      }
    } else {
      _845 = 0.0f;
      _846 = 0.0f;
      _847 = 0.0f;
    }
  } else {
    _845 = _829;
    _846 = _830;
    _847 = _831;
  }
  _857 = exp2(log2(_845 * 9.999999747378752e-05f) * 0.1593017578125f);
  _858 = exp2(log2(_846 * 9.999999747378752e-05f) * 0.1593017578125f);
  _859 = exp2(log2(_847 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_857 * 18.6875f) + 1.0f)) * ((_857 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_858 * 18.6875f) + 1.0f)) * ((_858 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_859 * 18.6875f) + 1.0f)) * ((_859 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _420;
  return SV_Target;
}
