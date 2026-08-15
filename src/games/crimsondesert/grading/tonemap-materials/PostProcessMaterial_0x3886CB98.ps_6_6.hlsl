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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

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
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _headPosition : packoffset(c002.x);
  float3 _targetFocusPosition : packoffset(c003.x);
  float _hpPercentage : packoffset(c003.w);
  uint _skinnedMeshNoiseTexture : packoffset(c004.x);
  float _highLightForVision : packoffset(c004.y);
  float _highLightForVisionRemoteCatch : packoffset(c004.z);
  float _characterHighlight : packoffset(c004.w);
  uint _specialModeType : packoffset(c005.x);
  float _visionRadius : packoffset(c005.y);
  float _interactionTime : packoffset(c005.z);
  float3 _questGuideWorldPosition : packoffset(c006.x);
  float3 _detectModeUp : packoffset(c007.x);
  float3 _detectModeLook : packoffset(c008.x);
  float3 _detectModePosition : packoffset(c009.x);
  float2 _detectModeLightProfileOffset : packoffset(c010.x);
  uint _detectModeLightProfileIndex : packoffset(c010.z);
  float _detectModeAngle : packoffset(c010.w);
  float _detectModeRadius : packoffset(c011.x);
  uint _useHatMode : packoffset(c011.y);
  uint4 _oreVeinBitMask : packoffset(c012.x);
  uint _oreVeinDissolveIndex : packoffset(c013.x);
  float _oreVeinDissolveRatio : packoffset(c013.y);
  float _hideStateRatio : packoffset(c013.z);
  float3 _hazardAlertPosition : packoffset(c014.x);
  float _wantedRegionRatio : packoffset(c014.w);
  float _wantedRegionOpacity : packoffset(c015.x);
  float _wantedRegionRadius : packoffset(c015.y);
  float3 _wantedRegionPosition : packoffset(c016.x);
  float _elementActivateDuration : packoffset(c016.w);
  float _temperatureWarning : packoffset(c017.x);
  float _electrocutionWarning : packoffset(c017.y);
  float _fleeCount : packoffset(c017.z);
  float _followLearning : packoffset(c017.w);
  float4 _enemyAlert1 : packoffset(c018.x);
  float4 _enemyAlert2 : packoffset(c019.x);
  float _pullingEffectAttractionOffRadius : packoffset(c020.x);
  float _pullingEffectPushFromCharacter : packoffset(c020.y);
  float _pullingEffectPushScale : packoffset(c020.z);
  float _pullingEffectAttractionScale : packoffset(c020.w);
  float _pullingEffectExternalScale : packoffset(c021.x);
  float _pullingEffectVectorFieldScale : packoffset(c021.y);
  float _pullingEffectHeightOffset : packoffset(c021.z);
  float _housingPreviewState : packoffset(c021.w);
  float _customEffectOpacity : packoffset(c022.x);
  uint _renderPassInteraction : packoffset(c022.y);
  uint _renderPassSelfPlayer : packoffset(c022.z);
  uint _renderPassEnemy : packoffset(c022.w);
  uint _renderPassTargetFocus : packoffset(c023.x);
  uint _renderPassLearning : packoffset(c023.y);
  uint _renderPassTest : packoffset(c023.z);
  uint _enableChromaticAberration : packoffset(c023.w);
  uint _renderPassDetectObjective : packoffset(c024.x);
  uint _renderPassDetectItem : packoffset(c024.y);
  uint _renderPassDetectGimmick : packoffset(c024.z);
  uint _renderPassDetectRemoteCatch : packoffset(c024.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c025.x);
  uint _renderPassDetectLift : packoffset(c025.y);
  uint _renderPassKnowledgeNPC : packoffset(c025.z);
  uint _renderPassKnowledgeGain : packoffset(c025.w);
  uint _renderPassAnamorphicMural : packoffset(c026.x);
  uint _renderPassMemoryBackground : packoffset(c026.y);
  uint _renderPassMemory : packoffset(c026.z);
  uint _renderPassEnemyBoss : packoffset(c026.w);
  uint _renderPassAimHighlight : packoffset(c027.x);
  float4 _aimHighlightPosition : packoffset(c028.x);
  uint _renderPassNPCGhost : packoffset(c029.x);
  uint _renderPassHousing : packoffset(c029.y);
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
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
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionRatio);
  if (!(!(_41 >= 0.001f))) {
    _44 = WaveReadLaneFirst(_materialIndex);
    _52 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberR);
    _53 = WaveReadLaneFirst(_materialIndex);
    _61 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberG);
    _62 = WaveReadLaneFirst(_materialIndex);
    _72 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.x);
    _73 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.y);
    _74 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.z);
    _75 = WaveReadLaneFirst(_materialIndex);
    _85 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.x);
    _86 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.y);
    _87 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.z);
    if (!(((int)(_61) | (int)(_52)) == 0) || (((!(_72 == 0.0f)) && (!(_73 == 0.0f))) && (!(_74 == 0.0f))) || (((!(_85 == 0.0f)) && (!(_86 == 0.0f))) && (!(_87 == 0.0f)))) {
      _108 = (TEXCOORD.x * 2.0f) + -1.0f;
      _110 = 1.0f - (TEXCOORD.y * 2.0f);
      _111 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _147 = mad((_invViewProj[3].z), _111, mad((_invViewProj[3].y), _110, ((_invViewProj[3].x) * _108))) + (_invViewProj[3].w);
      _148 = (mad((_invViewProj[0].z), _111, mad((_invViewProj[0].y), _110, ((_invViewProj[0].x) * _108))) + (_invViewProj[0].w)) / _147;
      _149 = (mad((_invViewProj[1].z), _111, mad((_invViewProj[1].y), _110, ((_invViewProj[1].x) * _108))) + (_invViewProj[1].w)) / _147;
      _150 = (mad((_invViewProj[2].z), _111, mad((_invViewProj[2].y), _110, ((_invViewProj[2].x) * _108))) + (_invViewProj[2].w)) / _147;
      _153 = WaveReadLaneFirst(_materialIndex);
      _161 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _168 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_161 < (uint)65000), _161, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_148 * 0.02f), (_150 * 0.02f)));
      _173 = _72 - _85;
      _174 = _73 - _86;
      _175 = _74 - _87;
      bool __branch_chain_102;
      if (sqrt(((_174 * _174) + (_173 * _173)) + (_175 * _175)) < 0.01f) {
        __branch_chain_102 = true;
      } else {
        _188 = _85 - _mainPosition.x;
        _189 = _86 - _mainPosition.y;
        _190 = _87 - _mainPosition.z;
        _197 = _72 - _mainPosition.x;
        _198 = _73 - _mainPosition.y;
        _199 = _74 - _mainPosition.z;
        _206 = max(sqrt(((_197 * _197) + (_198 * _198)) + (_199 * _199)), sqrt(((_188 * _188) + (_189 * _189)) + (_190 * _190)));
        if (_206 < 0.01f) {
          __branch_chain_102 = true;
        } else {
          __branch_chain_102 = false;
        }
      }
      if (__branch_chain_102) {
        _221 = WaveReadLaneFirst(_materialIndex);
        _229 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_221 < (uint)170000), _221, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._regionTex);
        _236 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_229 < (uint)65000), _229, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticPointClamp, float2((((_168.x + -0.5f) * 0.0005f) + ((_148 + 16384.0f) * 4.8828126e-05f)), ((1.0f - ((_150 + 11264.0f) * 4.8828126e-05f)) + ((_168.y + -0.5f) * 0.0005f))));
        _271 = ((((int)((uint)(_236.x * 255.0f))) == _52) && (((int)((uint)(_236.y * 255.0f))) == _61));
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
        _286 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_278 < (uint)170000), _278, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
        _289 = (float)((uint)((uint)(((uint)((uint)(_286)) >> 16) & 255)));
        _292 = (float)((uint)((uint)(((uint)((uint)(_286)) >> 8) & 255)));
        _294 = (float)((uint)((uint)(_286 & 255)));
        _324 = max(0.001f, _exposure0.x);
        _325 = select(((_289 * 0.003921569f) < 0.04045f), (_289 * 0.000303527f), exp2(log2((_289 * 0.003717127f) + 0.052132703f) * 2.4f)) / _324;
        _326 = select(((_292 * 0.003921569f) < 0.04045f), (_292 * 0.000303527f), exp2(log2((_292 * 0.003717127f) + 0.052132703f) * 2.4f)) / _324;
        _327 = select(((_294 * 0.003921569f) < 0.04045f), (_294 * 0.000303527f), exp2(log2((_294 * 0.003717127f) + 0.052132703f) * 2.4f)) / _324;
        _329 = min(max(_272, 0.0f), 30.0f);
        _343 = (_148 - _mainPosition.x) + (_329 * (_168.z + -0.5f));
        _344 = (_149 - _mainPosition.y) + (_329 * (_168.w + -0.5f));
        _345 = (_150 - _mainPosition.z) + (_329 * (_168.x + -0.5f));
        _347 = saturate(_272) * 30.0f;
        _353 = sqrt(((_343 * _343) + (_344 * _344)) + (_345 * _345));
        _366 = ((1.0f - saturate(floor(_353 / _272))) * saturate(((_347 - _272) + _353) / _347)) * saturate((1.0f - _41) * 10.0f);
        _374 = log2(_366) * min(max((100.0f - (saturate(_353 * 0.01f) * 100.0f)), 10.0f), 30.0f);
        _377 = exp2(_374 * 0.25f);
        _380 = ((8.0f - _377) * exp2(_374)) + _377;
        _384 = _366 * 0.5f;
        if (!(_276.w < 0.2f)) {
          if (!(_276.w < 0.3f)) {
            if (!(_276.w < 0.4f)) {
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
        _413 = (float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15));
        _426 = _413 * _377;
        _433 = (_426 * (((((_395 + -1.0f) * 0.025f) + 1.0f) * _29.x) - _29.x)) + _29.x;
        _434 = (_426 * (((((_396 + -1.0f) * 0.025f) + 1.0f) * _29.y) - _29.y)) + _29.y;
        _435 = (_426 * (((((_397 + -1.0f) * 0.025f) + 1.0f) * _29.z) - _29.z)) + _29.z;
        _438 = ((_413 * 0.19999999f) + 0.6f) * _384;
        _439 = 0.001f / _324;
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
  _471 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_463 < (uint)170000), _463, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _472 = WaveReadLaneFirst(_materialIndex);
  _480 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_472 < (uint)170000), _472, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_471 >= 0.001f) || (_480 >= 0.001f)) {
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
  _507 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _520 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _507, 0)))).x) & 127)))) + 0.5f);
  } else {
    _520 = 1.0f;
  }
  _523 = (_localToneMappingParams.w > 0.0f);
  if (_523) {
    _529 = _userImageAdjust.z * _exposure0.x;
    _578 = exp2(log2(max(0.0f, (((_529 * max(0.0f, (((_504 * 1.70505f) - (_505 * 0.62179f)) - (_506 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _579 = exp2(log2(max(0.0f, (((max(0.0f, (((_505 * 1.1408f) - (_504 * 0.13026f)) - (_506 * 0.01055f))) * _529) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _580 = exp2(log2(max(0.0f, (((max(0.0f, (((_504 * -0.024f) - (_505 * 0.12897f)) + (_506 * 1.15297f))) * _529) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _582 = dot(float3(_578, _579, _580), float3(0.212671f, 0.71516f, 0.072169f));
    _589 = ((_578 - _582) * _powerParams.w) + _582;
    _590 = ((_579 - _582) * _powerParams.w) + _582;
    _591 = ((_580 - _582) * _powerParams.w) + _582;
    _610 = min(max(log2(mad(_591, 0.079223745f, mad(_590, 0.0784336f, (_589 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _611 = min(max(log2(mad(_591, 0.07916613f, mad(_590, 0.87846863f, (_589 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _612 = min(max(log2(mad(_591, 0.879143f, mad(_590, 0.0784336f, (_589 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _613 = _610 * 0.060606062f;
    _614 = _611 * 0.060606062f;
    _615 = _612 * 0.060606062f;
    _616 = _613 * _613;
    _617 = _614 * _614;
    _618 = _615 * _615;
    _664 = min(0.0f, (-0.0f - (((_610 * 0.0072181816f) + ((_616 * 0.4298f) + (((_616 * _616) * ((31.96f - (_610 * 2.4327273f)) + (_616 * 15.5f))) - ((_610 * 0.41624245f) * _616)))) + -0.00232f)));
    _665 = min(0.0f, (-0.0f - (((_611 * 0.0072181816f) + ((_617 * 0.4298f) + (((_617 * _617) * ((31.96f - (_611 * 2.4327273f)) + (_617 * 15.5f))) - ((_611 * 0.41624245f) * _617)))) + -0.00232f)));
    _666 = min(0.0f, (-0.0f - (((_612 * 0.0072181816f) + ((_618 * 0.4298f) + (((_618 * _618) * ((31.96f - (_612 * 2.4327273f)) + (_618 * 15.5f))) - ((_612 * 0.41624245f) * _618)))) + -0.00232f)));
    _667 = -0.0f - _664;
    _668 = -0.0f - _665;
    _669 = -0.0f - _666;
    _670 = dot(float3(_667, _668, _669), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _687 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _688 = -0.79999995f / _687;
      _689 = -1.2f / _687;
      _690 = 0.20000005f / _687;
      _696 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _699 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _706 = (_688 + 1.4f) + (_699 * (-0.39999998f - _688));
      _707 = (_689 + 1.6f) + (_699 * (-0.6f - _689));
      _708 = (_690 + 0.9f) + (_699 * (0.5f - _690));
      _725 = (lerp(_707, 1.2f, _696));  // [sem: blended]
      _726 = (lerp(_706, 1.0f, _696));  // [sem: blended]
      _727 = (lerp(_708, 1.4f, _696));  // [sem: blended]
    } else {
      _725 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _726 = 1.0f;  // [sem: blended]
      _727 = 1.4f;  // [sem: blended]
    }
    _737 = 1.0f - _725;
    _762 = ((exp2(log2(((saturate((_664 * _664) * _667) * _737) + _725) * _667) * _726) - _670) * _727) + _670;
    _763 = ((exp2(log2(((saturate((_665 * _665) * _668) * _737) + _725) * _668) * _726) - _670) * _727) + _670;
    _764 = ((exp2(log2(((saturate((_666 * _666) * _669) * _737) + _725) * _669) * _726) - _670) * _727) + _670;
    _783 = saturate(exp2(log2(mad(_764, -0.09902974f, mad(_763, -0.09802088f, (_762 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _784 = saturate(exp2(log2(mad(_764, -0.098961174f, mad(_763, 1.1519032f, (_762 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _785 = saturate(exp2(log2(mad(_764, 1.1510737f, mad(_763, -0.09804345f, (_762 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
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
      _865 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
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
    _892 = saturate(1.0f - (dot(float2(_887, _888), float2(_887, _888)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _897 = (_892 * _876);
    _898 = (_892 * _877);
    _899 = (_892 * _878);
  } else {
    _897 = _876;
    _898 = _877;
    _899 = _878;
  }
  if (_523 && (_etcParams.z > 0.0f)) {
    _929 = select((_897 <= 0.0031308f), (_897 * 12.92f), (((pow(_897, 0.41666666f)) * 1.055f) + -0.055f));
    _930 = select((_898 <= 0.0031308f), (_898 * 12.92f), (((pow(_898, 0.41666666f)) * 1.055f) + -0.055f));
    _931 = select((_899 <= 0.0031308f), (_899 * 12.92f), (((pow(_899, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _929 = _897;
    _930 = _898;
    _931 = _899;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _936 = (float)((uint)((uint)(_507)));
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
  SV_Target.x = _945;
  SV_Target.y = _946;
  SV_Target.z = _947;
  SV_Target.w = _520;
  return SV_Target;
}
