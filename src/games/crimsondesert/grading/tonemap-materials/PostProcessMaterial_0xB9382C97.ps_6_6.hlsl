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
  float _455;
  float _658;
  float _659;
  float _660;
  float _753;
  float _754;
  float _755;
  float _809;
  float _810;
  float _811;
  float _826;
  float _827;
  float _828;
  float _858;
  float _859;
  float _860;
  float _874;
  float _875;
  float _876;
  float _110;
  float _111;
  float _114;
  float _118;
  float _122;
  float _127;
  float _137;
  float _149;
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
  float _218;
  float _231;
  float _244;
  float _257;
  float _263;
  float _272;
  float _273;
  float _274;
  float _275;
  float _277;
  float _284;
  float _285;
  float _286;
  float _288;
  float _294;
  float _330;
  float _331;
  float _332;
  float _333;
  float _335;
  float _342;
  float _351;
  float _355;
  float _363;
  float _372;
  float _376;
  float _380;
  float _382;
  float _388;
  float _389;
  int _395;
  int _403;
  float4 _410;
  float _414;
  float _428;
  float _432;
  float _439;
  float _440;
  float _441;
  uint _442;
  bool _458;
  float _462;
  float _511;
  float _512;
  float _513;
  float _515;
  float _522;
  float _523;
  float _524;
  float _543;
  float _544;
  float _545;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _602;
  float _603;
  float _620;
  float _621;
  float _622;
  float _623;
  float _629;
  float _632;
  float _639;
  float _640;
  float _641;
  float _670;
  float _695;
  float _696;
  float _697;
  float _716;
  float _717;
  float _718;
  float _724;
  float _728;
  float _729;
  float _730;
  float _731;
  float _736;
  float _761;
  float _765;
  float _766;
  float _767;
  float _768;
  float _798;
  float _816;
  float _817;
  float _821;
  float _865;
  float _886;
  float _887;
  float _888;
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
  _218 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_191 - _206), (_192 - _207))))).x) * 0.012683313339948654f);
  _231 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_191, _192)))).y) * 0.012683313339948654f);
  _244 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_206 + _191), (_207 + _192))))).z) * 0.012683313339948654f);
  _257 = saturate((_sunDirection.y + 0.10000000149011612f) * 5.0f);  // [sem: expr_sat]
  // [sem: invLength]
  _263 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
  // [sem: invLength]
  _272 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
  _273 = _272 * _moonDirection.x;
  _274 = _272 * _moonDirection.y;
  _275 = _272 * _moonDirection.z;
  _277 = (3.0f - (_257 * 2.0f)) * (_257 * _257);
  _284 = (((_263 * _sunDirection.x) - _273) * _277) + _273;
  _285 = (((_263 * _sunDirection.y) - _274) * _277) + _274;
  _286 = (((_263 * _sunDirection.z) - _275) * _277) + _275;
  _288 = rsqrt(dot(float3(_284, _285, _286), float3(_284, _285, _286)));  // [sem: invLength]
  _294 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _330 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _294, ((_invViewProjRelative[0].w) * _90));
  _331 = ((mad((_invViewProjRelative[1].x), _294, ((_invViewProjRelative[0].x) * _90)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _330;
  _332 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _294, ((_invViewProjRelative[0].y) * _90))) / _330;
  _333 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _294, ((_invViewProjRelative[0].z) * _90))) / _330;
  _335 = rsqrt(dot(float3(_331, _332, _333), float3(_331, _332, _333)));  // [sem: invLength]
  // [sem: expr_sat]
  _342 = saturate((dot(float3((_335 * _331), (_335 * _332), (_335 * _333)), float3((_284 * _288), (_285 * _288), (_286 * _288))) + -0.5f) * 2.0f);
  _351 = max(0.5f, _178);
  _355 = saturate(((_162 + -0.4000000059604645f) - _351) * 4.999999523162842f);  // [sem: expr_sat]
  _363 = saturate((0.5f - _155) * -2.0f);  // [sem: expr_sat]
  _372 = (_351 + 0.4000000059604645f) * 2.0f;
  _376 = saturate((_162 - _372) / (((_351 + 0.6000000238418579f) * 0.009999999776482582f) - _372));  // [sem: expr_sat]
  _380 = (_376 * _376) * (3.0f - (_376 * 2.0f));
  _382 = (_380 * _380) * max((((_355 * _355) * _177) * (3.0f - (_355 * 2.0f))), ((_363 * _363) * (3.0f - (_363 * 2.0f))));
  _388 = (((_277 * 1.3999998569488525f) + 5.599999904632568f) * saturate(exp2(log2((_342 * _342) * (3.0f - (_342 * 2.0f))) * 3.0f))) * saturate(1.399999976158142f - _155);
  _389 = _382 * _388;
  _395 = WaveReadLaneFirst(_materialIndex);
  _403 = WaveReadLaneFirst(BindlessParameters_PostProcessScope[((int)((uint)(select(((uint)_395 < (uint)170000), _395, 0)) + 0u))].BindlessParameters_PostProcessScope._lensDirtTexture);
  _410 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_403 < (uint)65000), _403, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 1.2000000476837158f) * _28), (TEXCOORD.y * 1.2000000476837158f)));
  _414 = dot(float3(0.30000001192092896f, 0.5899999737739563f, 0.10999999940395355f), float3(_410.x, _410.y, _410.z));
  _428 = (1.0f / max(0.0010000000474974513f, _exposure0.x)) * (_382 * (_388 + 3.0f));
  _432 = (1.0f - _155) * 10000.0f;
  _439 = ((_428 * (lerp(_414, _410.x, _389))) + (exp2(log2(max(0.0f, (_218 + -0.8359375f)) / (18.8515625f - (_218 * 18.6875f))) * 6.277394771575928f) * _432)) * _87;
  _440 = ((_428 * (lerp(_414, _410.y, _389))) + (exp2(log2(max(0.0f, (_231 + -0.8359375f)) / (18.8515625f - (_231 * 18.6875f))) * 6.277394771575928f) * _432)) * _87;
  _441 = ((_428 * (lerp(_414, _410.z, _389))) + (exp2(log2(max(0.0f, (_244 + -0.8359375f)) / (18.8515625f - (_244 * 18.6875f))) * 6.277394771575928f) * _432)) * _87;
  _442 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _455 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _442, 0)))).x) & 127)))) + 0.5f);
  } else {
    _455 = 1.0f;
  }
  _458 = (_localToneMappingParams.w > 0.0f);
  if (_458) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_439, _440, _441));
    _716 = _rndx_tonemapped_color.x;
    _717 = _rndx_tonemapped_color.y;
    _718 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _724 = 1.0f - abs(_etcParams.w);
      _728 = saturate(_etcParams.w);  // [sem: expr_sat]
      _729 = (_724 * _716) + _728;
      _730 = (_724 * _717) + _728;
      _731 = (_724 * _718) + _728;
      if (_colorGradingParams.w > 0.0f) {
        _736 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _753 = (((max(0.0f, (1.0f - _729)) - _729) * _736) + _729);
        _754 = (((max(0.0f, (1.0f - _730)) - _730) * _736) + _730);
        _755 = (((max(0.0f, (1.0f - _731)) - _731) * _736) + _731);
      } else {
        _753 = _729;
        _754 = _730;
        _755 = _731;
      }
      _761 = _userImageAdjust.y + 1.0f;
      _765 = _userImageAdjust.x + 0.5f;
      _766 = ((_753 + -0.5f) * _761) + _765;
      _767 = ((_754 + -0.5f) * _761) + _765;
      _768 = ((_755 + -0.5f) * _761) + _765;
      _798 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _809 = exp2(log2(saturate(mad(_colorBlind0.z, _768, mad(_colorBlind0.y, _767, (_colorBlind0.x * _766))))) * _798);
      _810 = exp2(log2(saturate(mad(_colorBlind1.z, _768, mad(_colorBlind1.y, _767, (_colorBlind1.x * _766))))) * _798);
      _811 = exp2(log2(saturate(mad(_colorBlind2.z, _768, mad(_colorBlind2.y, _767, (_colorBlind2.x * _766))))) * _798);
    } else {
      _809 = _716;
      _810 = _717;
      _811 = _718;
    }
  } else {
    _809 = _439;
    _810 = _440;
    _811 = _441;
  }
  if (_etcParams.y > 1.0f) {
    _816 = abs(_90);
    _817 = abs(_91);
    _821 = saturate(1.0f - (dot(float2(_816, _817), float2(_816, _817)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _826 = (_821 * _809);
    _827 = (_821 * _810);
    _828 = (_821 * _811);
  } else {
    _826 = _809;
    _827 = _810;
    _828 = _811;
  }
  if (_458 && (_etcParams.z > 0.0f)) {
    _858 = select((_826 <= 0.0031308000907301903f), (_826 * 12.920000076293945f), (((pow(_826, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _859 = select((_827 <= 0.0031308000907301903f), (_827 * 12.920000076293945f), (((pow(_827, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _860 = select((_828 <= 0.0031308000907301903f), (_828 * 12.920000076293945f), (((pow(_828, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _858 = _826;
    _859 = _827;
    _860 = _828;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _865 = (float)((uint)_442);
    if (!(_865 < _viewDir.w)) {
      if (!(_865 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _874 = _858;
        _875 = _859;
        _876 = _860;
      } else {
        _874 = 0.0f;
        _875 = 0.0f;
        _876 = 0.0f;
      }
    } else {
      _874 = 0.0f;
      _875 = 0.0f;
      _876 = 0.0f;
    }
  } else {
    _874 = _858;
    _875 = _859;
    _876 = _860;
  }
  _886 = exp2(log2(_874 * 9.999999747378752e-05f) * 0.1593017578125f);
  _887 = exp2(log2(_875 * 9.999999747378752e-05f) * 0.1593017578125f);
  _888 = exp2(log2(_876 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_886 * 18.6875f) + 1.0f)) * ((_886 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_887 * 18.6875f) + 1.0f)) * ((_887 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_888 * 18.6875f) + 1.0f)) * ((_888 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _455;
  return SV_Target;
}
