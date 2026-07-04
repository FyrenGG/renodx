struct PostProcessScopeStruct {
  float _progress;
  float _lensRadius;
  float _lensDistance;
  float _lensYOffset;
  float _edgeSmoothness;
  float _distortionIntensity;
  float _chromaticRatio;
  float _opacity;
  uint _lensDirtTexture;
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

struct BindlessParameters_PostProcessScope {
  PostProcessScopeStruct BindlessParameters_PostProcessScope;
};

typedef BindlessParameters_PostProcessScope BindlessParameters_PostProcessScope_t;
ConstantBuffer<BindlessParameters_PostProcessScope_t> BindlessParameters_PostProcessScope[] : register(b0, space100);

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
  float _28;
  int _29;
  float _37;
  float _38;
  int _39;
  float _47;
  float _48;
  int _49;
  float _57;
  int _61;
  float _69;
  int _70;
  float _78;
  int _79;
  float _87;
  float _90;
  float _91;
  float _92;
  int _94;
  float _102;
  float _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _108;
  float _155;
  float _156;
  float _421;
  float _624;
  float _625;
  float _626;
  float _719;
  float _720;
  float _721;
  float _775;
  float _776;
  float _777;
  float _792;
  float _793;
  float _794;
  float _824;
  float _825;
  float _826;
  float _840;
  float _841;
  float _842;
  float _110;
  float _111;
  float _114;
  float _118;
  float _122;
  float _127;
  float _137;
  float _149;
  float _157;
  float _158;
  float _161;
  float _162;
  bool _163;
  float _167;
  float _173;
  float _177;
  float _178;
  float _181;
  float _185;
  float _186;
  float _188;
  float _191;
  float _192;
  float _193;
  float _197;
  bool _198;
  float _205;
  float _206;
  float _207;
  float _224;
  float _230;
  float _239;
  float _240;
  float _241;
  float _242;
  float _244;
  float _251;
  float _252;
  float _253;
  float _255;
  float _261;
  float _297;
  float _298;
  float _299;
  float _300;
  float _302;
  float _309;
  float _318;
  float _322;
  float _330;
  float _339;
  float _343;
  float _347;
  float _349;
  float _355;
  float _356;
  int _362;
  int _370;
  float4 _377;
  float _381;
  float _395;
  float _405;
  float _406;
  float _407;
  uint _408;
  bool _424;
  float _428;
  float _477;
  float _478;
  float _479;
  float _481;
  float _488;
  float _489;
  float _490;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _586;
  float _587;
  float _588;
  float _589;
  float _595;
  float _598;
  float _605;
  float _606;
  float _607;
  float _636;
  float _661;
  float _662;
  float _663;
  float _682;
  float _683;
  float _684;
  float _690;
  float _694;
  float _695;
  float _696;
  float _697;
  float _702;
  float _727;
  float _731;
  float _732;
  float _733;
  float _734;
  float _764;
  float _782;
  float _783;
  float _787;
  float _831;
  _28 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_29 < (uint)170000), _29, 0)) + 0u))].BindlessParameters_PostProcessScope._lensRadius);
  _38 = max(_37, 9.999999747378752e-05f);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_39 < (uint)170000), _39, 0)) + 0u))].BindlessParameters_PostProcessScope._edgeSmoothness);
  _48 = max(_47, 9.999999747378752e-05f);
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_49 < (uint)170000), _49, 0)) + 0u))].BindlessParameters_PostProcessScope._lensDistance);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_61 < (uint)170000), _61, 0)) + 0u))].BindlessParameters_PostProcessScope._chromaticRatio);
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_70 < (uint)170000), _70, 0)) + 0u))].BindlessParameters_PostProcessScope._distortionIntensity);
  _79 = WaveReadLaneFirst(_materialIndex);
  _87 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_79 < (uint)170000), _79, 0)) + 0u))].BindlessParameters_PostProcessScope._opacity);
  _90 = (TEXCOORD.x * 2.0f) + -1.0f;
  _91 = (TEXCOORD.y * 2.0f) + -1.0f;
  _92 = _28 * _90;
  _94 = WaveReadLaneFirst(_materialIndex);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_94 < (uint)170000), _94, 0)) + 0u))].BindlessParameters_PostProcessScope._lensYOffset);
  _103 = _57 * -0.5f;
  _104 = _57 * 0.5f;
  _105 = _48 * _38;
  _106 = _105 - _38;
  _107 = _102 + _91;
  _108 = _107 * _107;
  if (_57 > 0.10000000149011612f) {
    _110 = _92 - _103;
    _111 = _92 - _104;
    _114 = sqrt(_108 + (_110 * _110));
    _118 = sqrt(_108 + (_111 * _111));
    _122 = _38 * 0.6000000238418579f;
    _127 = saturate((((_118 - _114) * 0.5f) / _122) + 0.5f);  // [sem: expr_sat]
    _137 = saturate((((_118 + _106) + (_127 * (_114 - _118))) - ((_127 * _122) * (1.0f - _127))) / _105);  // [sem: expr_sat]
    _155 = ((_137 * _137) * (3.0f - (_137 * 2.0f)));
    _156 = select(((_114 / _38) < (_118 / _38)), _103, _104);
  } else {
    _149 = saturate((sqrt((_92 * _92) + (_91 * _91)) + _106) / _105);  // [sem: expr_sat]
    _155 = ((_149 * _149) * (3.0f - (_149 * 2.0f)));
    _156 = 0.0f;
  }
  _157 = 1.0f - _155;
  _158 = _92 - _156;
  _161 = sqrt((_158 * _158) + _108);
  _162 = _161 / _38;
  _163 = (_161 > 9.999999747378752e-06f);
  _167 = select(_163, (_107 / _161), 1.0f);
  _173 = saturate(abs(TEXCOORD.x + -0.5f) / (saturate(_57) * 0.07999999821186066f));  // [sem: expr_sat]
  _177 = (_173 * _173) * (3.0f - (_173 * 2.0f));
  _178 = 1.0f - _48;
  _181 = saturate((_162 - _178) / _48);  // [sem: expr_sat]
  _185 = (_181 * _181) * (3.0f - (_181 * 2.0f));
  _186 = select(_163, (_158 / _161), 0.0f) / _28;
  _188 = (_177 * _78) * _185;
  _191 = (_188 * _186) + TEXCOORD.x;
  _192 = (_188 * _167) + TEXCOORD.y;
  _193 = _186 * _177;
  _197 = sqrt((_193 * _193) + (_167 * _167));
  _198 = (_197 > 9.999999747378752e-06f);
  _205 = ((((float)((uint)(uint)(_enableChromaticAberration))) * 0.014999999664723873f) * _69) * _185;
  _206 = select(_198, (_193 / _197), 0.0f) * _205;
  _207 = select(_198, (_167 / _197), 1.0f) * _205;
  _224 = saturate((_sunDirection.y + 0.10000000149011612f) * 5.0f);  // [sem: expr_sat]
  // [sem: invLength]
  _230 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
  // [sem: invLength]
  _239 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
  _240 = _239 * _moonDirection.x;
  _241 = _239 * _moonDirection.y;
  _242 = _239 * _moonDirection.z;
  _244 = (3.0f - (_224 * 2.0f)) * (_224 * _224);
  _251 = (((_230 * _sunDirection.x) - _240) * _244) + _240;
  _252 = (((_230 * _sunDirection.y) - _241) * _244) + _241;
  _253 = (((_230 * _sunDirection.z) - _242) * _244) + _242;
  _255 = rsqrt(dot(float3(_251, _252, _253), float3(_251, _252, _253)));  // [sem: invLength]
  _261 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _297 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _261, ((_invViewProjRelative[0].w) * _90));
  _298 = ((mad((_invViewProjRelative[1].x), _261, ((_invViewProjRelative[0].x) * _90)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _297;
  _299 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _261, ((_invViewProjRelative[0].y) * _90))) / _297;
  _300 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _261, ((_invViewProjRelative[0].z) * _90))) / _297;
  _302 = rsqrt(dot(float3(_298, _299, _300), float3(_298, _299, _300)));  // [sem: invLength]
  // [sem: expr_sat]
  _309 = saturate((dot(float3((_302 * _298), (_302 * _299), (_302 * _300)), float3((_251 * _255), (_252 * _255), (_253 * _255))) + -0.5f) * 2.0f);
  _318 = max(0.5f, _178);
  _322 = saturate(((_162 + -0.4000000059604645f) - _318) * 4.999999523162842f);  // [sem: expr_sat]
  _330 = saturate((0.5f - _155) * -2.0f);  // [sem: expr_sat]
  _339 = (_318 + 0.4000000059604645f) * 2.0f;
  _343 = saturate((_162 - _339) / (((_318 + 0.6000000238418579f) * 0.009999999776482582f) - _339));  // [sem: expr_sat]
  _347 = (_343 * _343) * (3.0f - (_343 * 2.0f));
  _349 = (_347 * _347) * max((((_322 * _322) * _177) * (3.0f - (_322 * 2.0f))), ((_330 * _330) * (3.0f - (_330 * 2.0f))));
  _355 = (((_244 * 1.3999998569488525f) + 5.599999904632568f) * saturate(exp2(log2((_309 * _309) * (3.0f - (_309 * 2.0f))) * 3.0f))) * saturate(1.399999976158142f - _155);
  _356 = _349 * _355;
  _362 = WaveReadLaneFirst(_materialIndex);
  _370 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_362 < (uint)170000), _362, 0)) + 0u))].BindlessParameters_PostProcessScope._lensDirtTexture);
  _377 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_370 < (uint)65000), _370, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 1.2000000476837158f) * _28), (TEXCOORD.y * 1.2000000476837158f)));
  _381 = dot(float3(0.30000001192092896f, 0.5899999737739563f, 0.10999999940395355f), float3(_377.x, _377.y, _377.z));
  _395 = (1.0f / max(0.0010000000474974513f, _exposure0.x)) * (_349 * (_355 + 3.0f));
  _405 = ((_395 * (lerp(_381, _377.x, _356))) + ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_191 - _206), (_192 - _207))))).x) * _157)) * _87;
  _406 = ((_395 * (lerp(_381, _377.y, _356))) + ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_191, _192)))).y) * _157)) * _87;
  _407 = ((_395 * (lerp(_381, _377.z, _356))) + ((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_206 + _191), (_207 + _192))))).z) * _157)) * _87;
  _408 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _421 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _408, 0)))).x) & 127)))) + 0.5f);
  } else {
    _421 = 1.0f;
  }
  _424 = (_localToneMappingParams.w > 0.0f);
  if (_424) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_405, _406, _407));
    _682 = _rndx_tonemapped_color.x;
    _683 = _rndx_tonemapped_color.y;
    _684 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _690 = 1.0f - abs(_etcParams.w);
      _694 = saturate(_etcParams.w);  // [sem: expr_sat]
      _695 = (_690 * _682) + _694;
      _696 = (_690 * _683) + _694;
      _697 = (_690 * _684) + _694;
      if (_colorGradingParams.w > 0.0f) {
        _702 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _719 = (((max(0.0f, (1.0f - _695)) - _695) * _702) + _695);
        _720 = (((max(0.0f, (1.0f - _696)) - _696) * _702) + _696);
        _721 = (((max(0.0f, (1.0f - _697)) - _697) * _702) + _697);
      } else {
        _719 = _695;
        _720 = _696;
        _721 = _697;
      }
      _727 = _userImageAdjust.y + 1.0f;
      _731 = _userImageAdjust.x + 0.5f;
      _732 = ((_719 + -0.5f) * _727) + _731;
      _733 = ((_720 + -0.5f) * _727) + _731;
      _734 = ((_721 + -0.5f) * _727) + _731;
      _764 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _775 = exp2(log2(saturate(mad(_colorBlind0.z, _734, mad(_colorBlind0.y, _733, (_colorBlind0.x * _732))))) * _764);
      _776 = exp2(log2(saturate(mad(_colorBlind1.z, _734, mad(_colorBlind1.y, _733, (_colorBlind1.x * _732))))) * _764);
      _777 = exp2(log2(saturate(mad(_colorBlind2.z, _734, mad(_colorBlind2.y, _733, (_colorBlind2.x * _732))))) * _764);
    } else {
      _775 = _682;
      _776 = _683;
      _777 = _684;
    }
  } else {
    _775 = _405;
    _776 = _406;
    _777 = _407;
  }
  if (_etcParams.y > 1.0f) {
    _782 = abs(_90);
    _783 = abs(_91);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _787 = saturate(1.0f - (dot(float2(_782, _783), float2(_782, _783)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _792 = (_787 * _775);
    _793 = (_787 * _776);
    _794 = (_787 * _777);
  } else {
    _792 = _775;
    _793 = _776;
    _794 = _777;
  }
  if (_424 && (_etcParams.z > 0.0f)) {
    _824 = select((_792 <= 0.0031308000907301903f), (_792 * 12.920000076293945f), (((pow(_792, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _825 = select((_793 <= 0.0031308000907301903f), (_793 * 12.920000076293945f), (((pow(_793, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _826 = select((_794 <= 0.0031308000907301903f), (_794 * 12.920000076293945f), (((pow(_794, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _824 = _792;
    _825 = _793;
    _826 = _794;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _831 = (float)((uint)_408);
    if (!(_831 < _viewDir.w)) {
      if (!(_831 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _840 = _824;
        _841 = _825;
        _842 = _826;
      } else {
        _840 = 0.0f;
        _841 = 0.0f;
        _842 = 0.0f;
      }
    } else {
      _840 = 0.0f;
      _841 = 0.0f;
      _842 = 0.0f;
    }
  } else {
    _840 = _824;
    _841 = _825;
    _842 = _826;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_840, _841, _842), _sunDirection.y, _moonDirection.y);
    _840 = _rndx_final_color.x;
    _841 = _rndx_final_color.y;
    _842 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _840;
  SV_Target.y = _841;
  SV_Target.z = _842;
  SV_Target.w = _421;
  return SV_Target;
}
