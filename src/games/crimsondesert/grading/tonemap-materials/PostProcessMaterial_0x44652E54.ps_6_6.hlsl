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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t44, space36);

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

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _29;
  int _33;
  float _41;
  bool _271;
  float _272;
  float _395;
  float _396;
  float _397;
  float _460;
  float _461;
  float _462;
  float _504;
  float _505;
  float _506;
  float _520;
  float _725;
  float _726;
  float _727;
  float _820;
  float _821;
  float _822;
  float _876;
  float _877;
  float _878;
  float _897;
  float _898;
  float _899;
  float _929;
  float _930;
  float _931;
  float _945;
  float _946;
  float _947;
  int _44;
  int _52;
  int _53;
  int _61;
  int _62;
  float _72;
  float _73;
  float _74;
  int _75;
  float _85;
  float _86;
  float _87;
  float _108;
  float _110;
  float _111;
  float _147;
  float _148;
  float _149;
  float _150;
  int _153;
  int _161;
  float4 _168;
  float _173;
  float _174;
  float _175;
  float _188;
  float _189;
  float _190;
  float _197;
  float _198;
  float _199;
  float _206;
  int _221;
  int _229;
  float4 _236;
  float _256;
  float _257;
  float _258;
  float4 _276;
  int _278;
  int _286;
  float _289;
  float _292;
  float _294;
  float _324;
  float _325;
  float _326;
  float _327;
  float _329;
  float _343;
  float _344;
  float _345;
  float _347;
  float _353;
  float _366;
  float _374;
  float _377;
  float _380;
  float _384;
  float _413;
  float _426;
  float _433;
  float _434;
  float _435;
  float _438;
  float _439;
  float _446;
  float _447;
  float _448;
  float _449;
  int _463;
  float _471;
  int _472;
  float _480;
  float4 _487;
  uint _507;
  bool _523;
  float _529;
  float _578;
  float _579;
  float _580;
  float _582;
  float _589;
  float _590;
  float _591;
  float _610;
  float _611;
  float _612;
  float _613;
  float _614;
  float _615;
  float _616;
  float _617;
  float _618;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _687;
  float _688;
  float _689;
  float _690;
  float _696;
  float _699;
  float _706;
  float _707;
  float _708;
  float _737;
  float _762;
  float _763;
  float _764;
  float _783;
  float _784;
  float _785;
  float _791;
  float _795;
  float _796;
  float _797;
  float _798;
  float _803;
  float _828;
  float _832;
  float _833;
  float _834;
  float _835;
  float _865;
  float _887;
  float _888;
  float _892;
  float _936;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_33 < (uint)170000), _33, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionRatio);
  if (!(!(_41 >= 0.0010000000474974513f))) {
    _44 = WaveReadLaneFirst(_materialIndex);
    _52 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_44 < (uint)170000), _44, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberR);
    _53 = WaveReadLaneFirst(_materialIndex);
    _61 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_53 < (uint)170000), _53, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberG);
    _62 = WaveReadLaneFirst(_materialIndex);
    _72 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_62 < (uint)170000), _62, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.x);
    _73 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_62 < (uint)170000), _62, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.y);
    _74 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_62 < (uint)170000), _62, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.z);
    _75 = WaveReadLaneFirst(_materialIndex);
    _85 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_75 < (uint)170000), _75, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.x);
    _86 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_75 < (uint)170000), _75, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.y);
    _87 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_75 < (uint)170000), _75, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.z);
    if (!((_61 | _52) == 0) | (((!(_72 == 0.0f)) && (!(_73 == 0.0f))) && (!(_74 == 0.0f))) | (((!(_85 == 0.0f)) && (!(_86 == 0.0f))) && (!(_87 == 0.0f)))) {
      _108 = (TEXCOORD.x * 2.0f) + -1.0f;
      _110 = 1.0f - (TEXCOORD.y * 2.0f);
      _111 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _147 = mad((_invViewProj[2].w), _111, mad((_invViewProj[1].w), _110, ((_invViewProj[0].w) * _108))) + (_invViewProj[3].w);
      _148 = (mad((_invViewProj[2].x), _111, mad((_invViewProj[1].x), _110, ((_invViewProj[0].x) * _108))) + (_invViewProj[3].x)) / _147;
      _149 = (mad((_invViewProj[2].y), _111, mad((_invViewProj[1].y), _110, ((_invViewProj[0].y) * _108))) + (_invViewProj[3].y)) / _147;
      _150 = (mad((_invViewProj[2].z), _111, mad((_invViewProj[1].z), _110, ((_invViewProj[0].z) * _108))) + (_invViewProj[3].z)) / _147;
      _153 = WaveReadLaneFirst(_materialIndex);
      _161 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_153 < (uint)170000), _153, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _168 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_161 < (uint)65000), _161, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_148 * 0.019999999552965164f), (_150 * 0.019999999552965164f)));
      _173 = _72 - _85;
      _174 = _73 - _86;
      _175 = _74 - _87;
      bool __branch_chain_102;
      if (sqrt(((_174 * _174) + (_173 * _173)) + (_175 * _175)) < 0.009999999776482582f) {
        __branch_chain_102 = true;
      } else {
        _188 = _85 - _mainPosition.x;
        _189 = _86 - _mainPosition.y;
        _190 = _87 - _mainPosition.z;
        _197 = _72 - _mainPosition.x;
        _198 = _73 - _mainPosition.y;
        _199 = _74 - _mainPosition.z;
        _206 = max(sqrt(((_197 * _197) + (_198 * _198)) + (_199 * _199)), sqrt(((_188 * _188) + (_189 * _189)) + (_190 * _190)));
        if (_206 < 0.009999999776482582f) {
          __branch_chain_102 = true;
        } else {
          __branch_chain_102 = false;
        }
      }
      if (__branch_chain_102) {
        _221 = WaveReadLaneFirst(_materialIndex);
        _229 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_221 < (uint)170000), _221, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._regionTex);
        _236 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_229 < (uint)65000), _229, 0)) + 0u))].Sample(__0__4__0__0__g_staticPointClamp, float2((((_168.x + -0.5f) * 0.0005000000237487257f) + ((_148 + 16384.0f) * 4.882812572759576e-05f)), ((1.0f - ((_150 + 11264.0f) * 4.882812572759576e-05f)) + ((_168.y + -0.5f) * 0.0005000000237487257f))));
        _271 = (((int)(uint(_236.x * 255.0f)) == _52) && ((int)(uint(_236.y * 255.0f)) == _61));
        _272 = (_41 * 300.0f);
      } else {
        _256 = ((_168.x + -0.5f) * 10.0f) + _148;
        _257 = ((_168.y + -0.5f) * 10.0f) + _149;
        _258 = ((_168.z + -0.5f) * 10.0f) + _150;
        _271 = ((_258 > _87) && ((_258 < _74) && ((_257 > _86) && ((_257 < _73) && ((_256 < _72) && (_256 > _85))))));
        _272 = (min((_206 * 2.0f), 300.0f) * _41);
      }
      if (_271) {
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
        _276 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
        _278 = WaveReadLaneFirst(_materialIndex);
        _286 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_278 < (uint)170000), _278, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
        _289 = (float)((uint)((uint)(((uint)(_286) >> 16) & 255)));
        _292 = (float)((uint)((uint)(((uint)(_286) >> 8) & 255)));
        _294 = (float)((uint)((uint)(_286 & 255)));
        _324 = max(0.0010000000474974513f, _exposure0.x);
        _325 = select(((_289 * 0.003921568859368563f) < 0.040449999272823334f), (_289 * 0.0003035269910469651f), exp2(log2((_289 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _324;
        _326 = select(((_292 * 0.003921568859368563f) < 0.040449999272823334f), (_292 * 0.0003035269910469651f), exp2(log2((_292 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _324;
        _327 = select(((_294 * 0.003921568859368563f) < 0.040449999272823334f), (_294 * 0.0003035269910469651f), exp2(log2((_294 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _324;
        _329 = min(max(_272, 0.0f), 30.0f);
        _343 = (_148 - _mainPosition.x) + (_329 * (_168.z + -0.5f));
        _344 = (_149 - _mainPosition.y) + (_329 * (_168.w + -0.5f));
        _345 = (_150 - _mainPosition.z) + (_329 * (_168.x + -0.5f));
        _347 = saturate(_272) * 30.0f;
        _353 = sqrt(((_343 * _343) + (_344 * _344)) + (_345 * _345));
        _366 = ((1.0f - saturate(floor(_353 / _272))) * saturate(((_347 - _272) + _353) / _347)) * saturate((1.0f - _41) * 10.0f);
        _374 = log2(_366) * min(max((100.0f - (saturate(_353 * 0.009999999776482582f) * 100.0f)), 10.0f), 30.0f);
        _377 = exp2(_374 * 0.25f);
        _380 = ((8.0f - _377) * exp2(_374)) + _377;
        _384 = _366 * 0.5f;
        if (!(_276.w < 0.20000000298023224f)) {
          if (!(_276.w < 0.30000001192092896f)) {
            if (!(_276.w < 0.4000000059604645f)) {
              _395 = (_325 * _276.w);
              _396 = (_326 * _276.w);
              _397 = (_327 * _276.w);
            } else {
              _395 = _29.x;
              _396 = _29.y;
              _397 = _327;
            }
          } else {
            _395 = _29.x;
            _396 = _326;
            _397 = _29.z;
          }
        } else {
          _395 = _325;
          _396 = _29.y;
          _397 = _29.z;
        }
        _413 = (float)((bool)(uint)((uint)(((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127) + -53) > (uint)14));
        _426 = _413 * _377;
        _433 = (_426 * (((((_395 + -1.0f) * 0.02500000037252903f) + 1.0f) * _29.x) - _29.x)) + _29.x;
        _434 = (_426 * (((((_396 + -1.0f) * 0.02500000037252903f) + 1.0f) * _29.y) - _29.y)) + _29.y;
        _435 = (_426 * (((((_397 + -1.0f) * 0.02500000037252903f) + 1.0f) * _29.z) - _29.z)) + _29.z;
        _438 = ((_413 * 0.19999998807907104f) + 0.6000000238418579f) * _384;
        _439 = 0.0010000000474974513f / _324;
        _446 = ((_439 - _433) * _438) + _433;
        _447 = ((_439 - _434) * _438) + _434;
        _448 = ((_439 - _435) * _438) + _435;
        _449 = _413 * _384;
        _460 = ((((_380 * _325) - _446) * _449) + _446);
        _461 = ((((_380 * _326) - _447) * _449) + _447);
        _462 = ((((_380 * _327) - _448) * _449) + _448);
      } else {
        _460 = _29.x;
        _461 = _29.y;
        _462 = _29.z;
      }
    } else {
      _460 = _29.x;
      _461 = _29.y;
      _462 = _29.z;
    }
  } else {
    _460 = _29.x;
    _461 = _29.y;
    _462 = _29.z;
  }
  _463 = WaveReadLaneFirst(_materialIndex);
  _471 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_463 < (uint)170000), _463, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _472 = WaveReadLaneFirst(_materialIndex);
  _480 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_472 < (uint)170000), _472, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_471 >= 0.0010000000474974513f) || (_480 >= 0.0010000000474974513f)) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _487 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
    if (!(_487.w == 0.0f)) {
      _504 = (lerp(_460, _487.x, _487.w));  // [sem: blended]
      _505 = (lerp(_461, _487.y, _487.w));  // [sem: blended]
      _506 = (lerp(_462, _487.z, _487.w));  // [sem: blended]
    } else {
      _504 = _460;  // [sem: blended]
      _505 = _461;  // [sem: blended]
      _506 = _462;  // [sem: blended]
    }
  } else {
    _504 = _460;  // [sem: blended]
    _505 = _461;  // [sem: blended]
    _506 = _462;  // [sem: blended]
  }
  _507 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _520 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _507, 0)))).x) & 127)))) + 0.5f);
  } else {
    _520 = 1.0f;
  }
  _523 = (_localToneMappingParams.w > 0.0f);
  if (_523) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_504, _505, _506));
    _783 = _rndx_tonemapped_color.x;
    _784 = _rndx_tonemapped_color.y;
    _785 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _791 = 1.0f - abs(_etcParams.w);
      _795 = saturate(_etcParams.w);  // [sem: expr_sat]
      _796 = (_791 * _783) + _795;
      _797 = (_791 * _784) + _795;
      _798 = (_791 * _785) + _795;
      if (_colorGradingParams.w > 0.0f) {
        _803 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _820 = (((max(0.0f, (1.0f - _796)) - _796) * _803) + _796);
        _821 = (((max(0.0f, (1.0f - _797)) - _797) * _803) + _797);
        _822 = (((max(0.0f, (1.0f - _798)) - _798) * _803) + _798);
      } else {
        _820 = _796;
        _821 = _797;
        _822 = _798;
      }
      _828 = _userImageAdjust.y + 1.0f;
      _832 = _userImageAdjust.x + 0.5f;
      _833 = ((_820 + -0.5f) * _828) + _832;
      _834 = ((_821 + -0.5f) * _828) + _832;
      _835 = ((_822 + -0.5f) * _828) + _832;
      _865 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _876 = exp2(log2(saturate(mad(_colorBlind0.z, _835, mad(_colorBlind0.y, _834, (_colorBlind0.x * _833))))) * _865);
      _877 = exp2(log2(saturate(mad(_colorBlind1.z, _835, mad(_colorBlind1.y, _834, (_colorBlind1.x * _833))))) * _865);
      _878 = exp2(log2(saturate(mad(_colorBlind2.z, _835, mad(_colorBlind2.y, _834, (_colorBlind2.x * _833))))) * _865);
    } else {
      _876 = _783;
      _877 = _784;
      _878 = _785;
    }
  } else {
    _876 = _504;
    _877 = _505;
    _878 = _506;
  }
  if (_etcParams.y > 1.0f) {
    _887 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _888 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _892 = saturate(1.0f - (dot(float2(_887, _888), float2(_887, _888)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _897 = (_892 * _876);
    _898 = (_892 * _877);
    _899 = (_892 * _878);
  } else {
    _897 = _876;
    _898 = _877;
    _899 = _878;
  }
  if (_523 && (_etcParams.z > 0.0f)) {
    _929 = select((_897 <= 0.0031308000907301903f), (_897 * 12.920000076293945f), (((pow(_897, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _930 = select((_898 <= 0.0031308000907301903f), (_898 * 12.920000076293945f), (((pow(_898, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _931 = select((_899 <= 0.0031308000907301903f), (_899 * 12.920000076293945f), (((pow(_899, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _929 = _897;
    _930 = _898;
    _931 = _899;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _936 = (float)((uint)_507);
    if (!(_936 < _viewDir.w)) {
      if (!(_936 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _945 = _929;
        _946 = _930;
        _947 = _931;
      } else {
        _945 = 0.0f;
        _946 = 0.0f;
        _947 = 0.0f;
      }
    } else {
      _945 = 0.0f;
      _946 = 0.0f;
      _947 = 0.0f;
    }
  } else {
    _945 = _929;
    _946 = _930;
    _947 = _931;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_945, _946, _947), _sunDirection.y, _moonDirection.y);
    _945 = _rndx_final_color.x;
    _946 = _rndx_final_color.y;
    _947 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _945;
  SV_Target.y = _946;
  SV_Target.z = _947;
  SV_Target.w = _520;
  return SV_Target;
}
