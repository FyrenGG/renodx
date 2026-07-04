struct PostProcessKnowledgeGain_CDStruct {
  uint _noiseTex;
  uint _regionTex;
  float _knowledgeGainRegionRatio;
  float _knowledgeGainCharacterRatio;
  float _knowledgeGainGimmickRatio;
  uint _knowledgeGainColor;
  uint _knowledgeGainRegionNumberR;
  uint _knowledgeGainRegionNumberG;
  float3 _knowledgeGainBoundBoxMin;
  float3 _knowledgeGainBoundBoxMax;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

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

struct BindlessParameters_PostProcessKnowledgeGain_CD {
  PostProcessKnowledgeGain_CDStruct BindlessParameters_PostProcessKnowledgeGain_CD;
};

typedef BindlessParameters_PostProcessKnowledgeGain_CD BindlessParameters_PostProcessKnowledgeGain_CD_t;
ConstantBuffer<BindlessParameters_PostProcessKnowledgeGain_CD_t> BindlessParameters_PostProcessKnowledgeGain_CD[] : register(b0, space100);

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
  int _29;
  float _37;
  int _38;
  float _46;
  float _322;
  float _323;
  float _324;
  float _325;
  float _339;
  float _544;
  float _545;
  float _546;
  float _639;
  float _640;
  float _641;
  float _695;
  float _696;
  float _697;
  float _716;
  float _717;
  float _718;
  float _748;
  float _749;
  float _750;
  float _764;
  float _765;
  float _766;
  float _61;
  float _67;
  float _70;
  float _73;
  int _82;
  int _90;
  float4 _97;
  float _101;
  float _102;
  float _105;
  float _106;
  float _110;
  float _111;
  float _112;
  uint2 _116;
  float _125;
  float _126;
  float4 _193;
  float _206;
  float _207;
  float _208;
  float _210;
  float _222;
  float _225;
  float _227;
  float _228;
  float _229;
  float4 _231;
  float _235;
  float4 _238;
  float _242;
  float4 _245;
  float _249;
  int _250;
  int _258;
  float _261;
  float _264;
  float _266;
  float _291;
  float _292;
  float _293;
  float _305;
  uint _326;
  bool _342;
  float _348;
  float _397;
  float _398;
  float _399;
  float _401;
  float _408;
  float _409;
  float _410;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _506;
  float _507;
  float _508;
  float _509;
  float _515;
  float _518;
  float _525;
  float _526;
  float _527;
  float _556;
  float _581;
  float _582;
  float _583;
  float _602;
  float _603;
  float _604;
  float _610;
  float _614;
  float _615;
  float _616;
  float _617;
  float _622;
  float _647;
  float _651;
  float _652;
  float _653;
  float _654;
  float _684;
  float _706;
  float _707;
  float _711;
  float _755;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_29 < (uint)170000), _29, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_38 < (uint)170000), _38, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_37 >= 0.0010000000474974513f) || (_46 >= 0.0010000000474974513f)) {
    _61 = saturate(saturate(((1.0f - abs((1.25f - TEXCOORD.y) - (max(_37, _46) * 1.5f))) * 4.0f) + -3.0f) * 2.0f);  // [sem: expr_sat]
    if (_61 > 0.0010000000474974513f) {
      _67 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
      _70 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
      _73 = min(max(_70.x, 0.009999999776482582f), 0.10000000149011612f);  // [sem: _3__36__0__0__g_depth_sample_derived]
      _82 = WaveReadLaneFirst(_materialIndex);
      _90 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_82 < (uint)170000), _82, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _97 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_90 < (uint)65000), _90, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((8.0f / _67) * TEXCOORD.x), ((_time.x * 0.10000000149011612f) + ((3.0f / _67) * TEXCOORD.y))));
      _101 = _97.y + -0.4000000059604645f;
      _102 = _73 * 0.25f;
      _105 = ((_97.x + -0.4000000059604645f) * _102) + TEXCOORD.x;
      _106 = (_101 * _102) + TEXCOORD.y;
      _110 = _73 * 200.0f;
      _111 = _bufferSizeAndInvSize.z * _110;
      _112 = _bufferSizeAndInvSize.w * _110;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_116.x, _116.y);
      _125 = float((int)(int(float((int)((int)(_116.x)))))) + 0.5f;
      _126 = float((int)(int(float((int)((int)(_116.y)))))) + 0.5f;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _193 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0));
      _206 = (saturate(_193.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _207 = (saturate(_193.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _208 = (saturate(_193.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _210 = rsqrt(dot(float3(_206, _207, _208), float3(_206, _207, _208)));  // [sem: invLength]
      _222 = abs(dot(float3((_210 * _206), (_210 * _207), (_208 * _210)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _225 = saturate((_222 * _222) * 2.0f);  // [sem: expr_sat]
      _227 = (_73 * 0.10000000149011612f) * _101;
      _228 = _227 + TEXCOORD.x;
      _229 = _227 + TEXCOORD.y;
      _231 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_228, _229));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _235 = dot(float3(_231.x, _231.y, _231.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  // [sem: _3__36__0__0__g_sceneColor_sample]
      _238 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 + -0.0020000000949949026f), (_229 + -0.0020000000949949026f)));
      _242 = dot(float3(_238.x, _238.y, _238.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  // [sem: _3__36__0__0__g_sceneColor_sample]
      _245 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 + 0.0020000000949949026f), (_229 + 0.0020000000949949026f)));
      _249 = dot(float3(_245.x, _245.y, _245.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
      _250 = WaveReadLaneFirst(_materialIndex);
      _258 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_250 < (uint)170000), _250, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
      _261 = (float)((uint)((uint)(((uint)(_258) >> 16) & 255)));
      _264 = (float)((uint)((uint)(((uint)(_258) >> 8) & 255)));
      _266 = (float)((uint)((uint)(_258 & 255)));
      _291 = select(((_261 * 0.003921568859368563f) < 0.040449999272823334f), (_261 * 0.0003035269910469651f), exp2(log2((_261 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
      _292 = select(((_264 * 0.003921568859368563f) < 0.040449999272823334f), (_264 * 0.0003035269910469651f), exp2(log2((_264 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
      _293 = select(((_266 * 0.003921568859368563f) < 0.040449999272823334f), (_266 * 0.0003035269910469651f), exp2(log2((_266 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
      _305 = max(0.0010000000474974513f, _exposure0.x);
      _322 = ((((((lerp(_291, 0.0010000000474974513f, _225)) / _305) * _242) - _242) * 0.4000000059604645f) + _242);
      _323 = ((((((lerp(_292, 0.0010000000474974513f, _225)) / _305) * _235) - _235) * 0.4000000059604645f) + _235);
      _324 = ((((((lerp(_293, 0.0010000000474974513f, _225)) / _305) * _249) - _249) * 0.4000000059604645f) + _249);
      _325 = ((saturate(float((int)((((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int(_125 * (_105 - _111)), int(_126 * (_106 - _112)), 0)))).x) & 255) == _renderPassKnowledgeGain))) + ((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int(_125 * _105), int(_126 * _106), 0)))).x) & 255) == _renderPassKnowledgeGain)))) + ((int)(uint)((int)(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int(_125 * (_105 + _111)), int(_126 * (_106 + _112)), 0)))).x) & 255) == _renderPassKnowledgeGain)))))) * _61) * saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, _70.x)) + 0.10000000149011612f) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _105), int(_customRenderPassSizeInvSize.y * _106), 0)))).x))))));
    } else {
      _322 = 0.0f;
      _323 = 0.0f;
      _324 = 0.0f;
      _325 = 0.0f;
    }
  } else {
    _322 = 0.0f;
    _323 = 0.0f;
    _324 = 0.0f;
    _325 = 0.0f;
  }
  _326 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _339 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _326, 0)))).x) & 127)))) + 0.5f);
  } else {
    _339 = _325;
  }
  _342 = (_localToneMappingParams.w > 0.0f);
  if (_342) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_322, _323, _324));
    _602 = _rndx_tonemapped_color.x;
    _603 = _rndx_tonemapped_color.y;
    _604 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _610 = 1.0f - abs(_etcParams.w);
      _614 = saturate(_etcParams.w);  // [sem: expr_sat]
      _615 = (_610 * _602) + _614;
      _616 = (_610 * _603) + _614;
      _617 = (_610 * _604) + _614;
      if (_colorGradingParams.w > 0.0f) {
        _622 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _639 = (((max(0.0f, (1.0f - _615)) - _615) * _622) + _615);
        _640 = (((max(0.0f, (1.0f - _616)) - _616) * _622) + _616);
        _641 = (((max(0.0f, (1.0f - _617)) - _617) * _622) + _617);
      } else {
        _639 = _615;
        _640 = _616;
        _641 = _617;
      }
      _647 = _userImageAdjust.y + 1.0f;
      _651 = _userImageAdjust.x + 0.5f;
      _652 = ((_639 + -0.5f) * _647) + _651;
      _653 = ((_640 + -0.5f) * _647) + _651;
      _654 = ((_641 + -0.5f) * _647) + _651;
      _684 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _695 = exp2(log2(saturate(mad(_colorBlind0.z, _654, mad(_colorBlind0.y, _653, (_colorBlind0.x * _652))))) * _684);
      _696 = exp2(log2(saturate(mad(_colorBlind1.z, _654, mad(_colorBlind1.y, _653, (_colorBlind1.x * _652))))) * _684);
      _697 = exp2(log2(saturate(mad(_colorBlind2.z, _654, mad(_colorBlind2.y, _653, (_colorBlind2.x * _652))))) * _684);
    } else {
      _695 = _602;
      _696 = _603;
      _697 = _604;
    }
  } else {
    _695 = _322;
    _696 = _323;
    _697 = _324;
  }
  if (_etcParams.y > 1.0f) {
    _706 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _707 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _711 = saturate(1.0f - (dot(float2(_706, _707), float2(_706, _707)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _716 = (_711 * _695);
    _717 = (_711 * _696);
    _718 = (_711 * _697);
  } else {
    _716 = _695;
    _717 = _696;
    _718 = _697;
  }
  if (_342 && (_etcParams.z > 0.0f)) {
    _748 = select((_716 <= 0.0031308000907301903f), (_716 * 12.920000076293945f), (((pow(_716, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _749 = select((_717 <= 0.0031308000907301903f), (_717 * 12.920000076293945f), (((pow(_717, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _750 = select((_718 <= 0.0031308000907301903f), (_718 * 12.920000076293945f), (((pow(_718, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _748 = _716;
    _749 = _717;
    _750 = _718;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _755 = (float)((uint)_326);
    if (!(_755 < _viewDir.w)) {
      if (!(_755 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _764 = _748;
        _765 = _749;
        _766 = _750;
      } else {
        _764 = 0.0f;
        _765 = 0.0f;
        _766 = 0.0f;
      }
    } else {
      _764 = 0.0f;
      _765 = 0.0f;
      _766 = 0.0f;
    }
  } else {
    _764 = _748;
    _765 = _749;
    _766 = _750;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_764, _765, _766), _sunDirection.y, _moonDirection.y);
    _764 = _rndx_final_color.x;
    _765 = _rndx_final_color.y;
    _766 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _764;
  SV_Target.y = _765;
  SV_Target.z = _766;
  SV_Target.w = _339;
  return SV_Target;
}
