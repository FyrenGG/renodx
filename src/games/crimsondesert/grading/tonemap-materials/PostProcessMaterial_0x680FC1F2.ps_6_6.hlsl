struct PostProcessInteraction_CDStruct {
  uint _lineTex;
};

struct BindlessParameters_PostProcessInteraction_CD {
  PostProcessInteraction_CDStruct BindlessParameters_PostProcessInteraction_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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
  uint _characterMeshEffectType : packoffset(c029.z);
};

typedef BindlessParameters_PostProcessInteraction_CD BindlessParameters_PostProcessInteraction_CD_t;
ConstantBuffer<BindlessParameters_PostProcessInteraction_CD_t> BindlessParameters_PostProcessInteraction_CD[] : register(b0, space100);

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
  uint2 _28;
  int _45;
  float4 _48;
  float _54;
  float _57;
  float _60;
  float _68;
  float _76;
  float _84;
  float _85;
  float _86;
  float _87;
  float _139;
  float _140;
  float _560;
  float _561;
  float _562;
  float _576;
  float _781;
  float _782;
  float _783;
  float _876;
  float _877;
  float _878;
  float _932;
  float _933;
  float _934;
  float _953;
  float _954;
  float _955;
  float _985;
  float _986;
  float _987;
  float _1001;
  float _1002;
  float _1003;
  int _95;
  int _103;
  int _148;
  float4 _157;
  float _159;
  float _160;
  float _162;
  float _164;
  float _169;
  float _181;
  float _182;
  float _184;
  float _189;
  float _193;
  float _195;
  float _196;
  int _198;
  float _200;
  float _202;
  float _207;
  float _209;
  float _211;
  float _213;
  float _214;
  float _217;
  float _218;
  float _220;
  float _225;
  float _228;
  float _240;
  float _252;
  float _264;
  float _275;
  float _286;
  float _297;
  float _300;
  float _303;
  float _306;
  float _308;
  float _309;
  float _310;
  float _311;
  float _320;
  float _324;
  float _328;
  float _331;
  float _344;
  float _345;
  float _346;
  float _348;
  float _352;
  float _353;
  float _360;
  float _363;
  float _364;
  float _373;
  float _374;
  uint _411;
  uint _415;
  uint4 _417;
  float4 _420;
  float _427;
  float _431;
  float _435;
  float _437;
  float _438;
  float _439;
  float _440;
  float _445;
  float _449;
  float _451;
  float _453;
  float _457;
  float _459;
  float _460;
  float _461;
  float _462;
  float _464;
  float _467;
  float _468;
  float _469;
  float _470;
  float _476;
  float _482;
  float _487;
  float _489;
  float _490;
  float _491;
  float _492;
  float _501;
  float _506;
  float _513;
  float _516;
  float _528;
  float _531;
  float _546;
  uint _563;
  bool _579;
  float _585;
  float _604;
  float _620;
  float _636;
  float _637;
  float _641;
  float _644;
  float _647;
  float _654;
  float _661;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _690;
  float _706;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _743;
  float _744;
  float _745;
  float _746;
  float _749;
  float _752;
  float _756;
  float _760;
  float _764;
  float _784;
  float _796;
  float _808;
  float _820;
  float _827;
  float _834;
  float _841;
  float _847;
  float _848;
  float _850;
  float _852;
  float _854;
  float _859;
  float _880;
  float _882;
  float _885;
  float _888;
  float _891;
  float _897;
  float _939;
  float _942;
  float _948;
  float _990;
  float _1007;
  float _1011;
  float _1015;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  _45 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
  _48 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _54 = (pow(_48.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _57 = (pow(_48.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _60 = (pow(_48.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _68 = exp2(log2(max(0.0f, (_54 + -0.8359375f)) / (18.851562f - (_54 * 18.6875f))) * 6.277395f);
  _76 = exp2(log2(max(0.0f, (_57 + -0.8359375f)) / (18.851562f - (_57 * 18.6875f))) * 6.277395f);
  _84 = exp2(log2(max(0.0f, (_60 + -0.8359375f)) / (18.851562f - (_60 * 18.6875f))) * 6.277395f);
  _85 = _68 * 10000.0f;
  _86 = _76 * 10000.0f;
  _87 = _84 * 10000.0f;
  if (_45 == _renderPassInteraction) {
    _95 = WaveReadLaneFirst(_materialIndex);
    _103 = WaveReadLaneFirst(BindlessParameters_PostProcessInteraction_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessInteraction_CD._lineTex);
    // [sem: expr_sat]
    _139 = saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))));
    _140 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 50.0f), (TEXCOORD.y * 50.0f))))).x);
  } else {
    _139 = 0.0f;  // [sem: expr_sat]
    _140 = 0.0f;
  }
  if (_45 == _renderPassInteraction) {
    _148 = (int)(_customRenderPassSizeInvSize.y * TEXCOORD.y);
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _157 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)((TEXCOORD.x - (0.1f / _srcTargetSizeAndInv.x)) * _customRenderPassSizeInvSize.x)), _148, 0));
    _159 = 2.2f / _srcTargetSizeAndInv.x;
    _160 = TEXCOORD.x - _159;
    _162 = (_160 * 2.0f) + -1.0f;
    _164 = 1.0f - (TEXCOORD.y * 2.0f);
    _169 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_160 * _customRenderPassSizeInvSize.x)), _148, 0)))).x));
    _181 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _169, mad((_invViewProj[3].y), _164, ((_invViewProj[3].x) * _162)));
    _182 = _159 + TEXCOORD.x;
    _184 = (_182 * 2.0f) + -1.0f;
    _189 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_182 * _customRenderPassSizeInvSize.x)), _148, 0)))).x));
    _193 = mad((_invViewProj[3].z), _189, mad((_invViewProj[3].y), _164, ((_invViewProj[3].x) * _184))) + (_invViewProj[3].w);
    _195 = 2.2f / _srcTargetSizeAndInv.y;
    _196 = TEXCOORD.y - _195;
    _198 = (int)(_customRenderPassSizeInvSize.x * TEXCOORD.x);
    _200 = (TEXCOORD.x * 2.0f) + -1.0f;
    _202 = 1.0f - (_196 * 2.0f);
    _207 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_198, ((int)(_196 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _209 = (_invViewProj[0].x) * _200;
    _211 = (_invViewProj[1].x) * _200;
    _213 = (_invViewProj[2].x) * _200;
    _214 = (_invViewProj[3].x) * _200;
    _217 = mad((_invViewProj[3].z), _207, mad((_invViewProj[3].y), _202, _214)) + (_invViewProj[3].w);
    _218 = _195 + TEXCOORD.y;
    _220 = 1.0f - (_218 * 2.0f);
    _225 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_198, ((int)(_218 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _228 = mad((_invViewProj[3].z), _225, mad((_invViewProj[3].y), _220, _214)) + (_invViewProj[3].w);
    _240 = ((mad((_invViewProj[0].z), _225, mad((_invViewProj[0].y), _220, _209)) + (_invViewProj[0].w)) / _228) - ((mad((_invViewProj[0].z), _207, mad((_invViewProj[0].y), _202, _209)) + (_invViewProj[0].w)) / _217);
    _252 = ((mad((_invViewProj[1].z), _225, mad((_invViewProj[1].y), _220, _211)) + (_invViewProj[1].w)) / _228) - ((mad((_invViewProj[1].z), _207, mad((_invViewProj[1].y), _202, _211)) + (_invViewProj[1].w)) / _217);
    _264 = ((mad((_invViewProj[2].z), _225, mad((_invViewProj[2].y), _220, _213)) + (_invViewProj[2].w)) / _228) - ((mad((_invViewProj[2].z), _207, mad((_invViewProj[2].y), _202, _213)) + (_invViewProj[2].w)) / _217);
    _275 = ((mad((_invViewProj[0].z), _189, mad((_invViewProj[0].y), _164, ((_invViewProj[0].x) * _184))) + (_invViewProj[0].w)) / _193) - ((mad((_invViewProj[0].z), _169, mad((_invViewProj[0].y), _164, ((_invViewProj[0].x) * _162))) + (_invViewProj[0].w)) / _181);
    _286 = ((mad((_invViewProj[1].z), _189, mad((_invViewProj[1].y), _164, ((_invViewProj[1].x) * _184))) + (_invViewProj[1].w)) / _193) - ((mad((_invViewProj[1].z), _169, mad((_invViewProj[1].y), _164, ((_invViewProj[1].x) * _162))) + (_invViewProj[1].w)) / _181);
    _297 = ((mad((_invViewProj[2].z), _189, mad((_invViewProj[2].y), _164, ((_invViewProj[2].x) * _184))) + (_invViewProj[2].w)) / _193) - ((mad((_invViewProj[2].z), _169, mad((_invViewProj[2].y), _164, ((_invViewProj[2].x) * _162))) + (_invViewProj[2].w)) / _181);
    _300 = (_286 * _264) - (_297 * _252);
    _303 = (_297 * _240) - (_275 * _264);
    _306 = (_275 * _252) - (_286 * _240);
    _308 = rsqrt(dot(float3(_300, _303, _306), float3(_300, _303, _306)));  // [sem: invLength]
    _309 = _300 * _308;
    _310 = _303 * _308;
    _311 = _308 * _306;
    // [sem: expr_sat]
    _320 = saturate(dot(float3(_309, _310, _311), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _324 = frac(_time.x * 0.4f);
    _328 = abs((1.999f - _320) - (_324 * 2.5f));
    _331 = saturate(1.0f - (_328 * 5.0f));  // [sem: expr_sat]
    // [sem: expr_sat]
    _344 = saturate(((_331 - (_331 * _324)) * _157.x) * saturate(exp2(log2(1.0f - _320) * 4.0f) + ((2.0f - _320) * _140)));
    _345 = _344 * _139;
    _346 = _157.x * 50.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    _348 = saturate(_346 * _346);  // [sem: expr_sat]
    _352 = saturate(1.0f - (_328 * 1.25f)) * _348;
    _353 = _352 * 20.0f;
    _360 = (_exposure2.x * 5000.0f) * (lerp(_345, _344, 2.0f));
    _363 = _exposure2.x * (_348 - (_348 * _139));
    _364 = _363 * 2.0f;
    _373 = (_363 * 8.0f) * saturate(exp2(log2(1.0f - abs(dot(float3(_309, _310, _311), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f));
    _374 = _353 + 10000.0f;
    _560 = ((((_360 - (_352 * _87)) + (_374 * _84)) + (_364 * (1.0f - (_353 * _84)))) + _373);
    _561 = ((((_360 - (_352 * _86)) + (_374 * _76)) + (_364 * (1.0f - (_353 * _76)))) + _373);
    _562 = ((((_360 - (_352 * _85)) + (_374 * _68)) + (_364 * (1.0f - (_353 * _68)))) + _373);
  } else {
    if (_45 == _renderPassDetectObjective) {
      _411 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _415 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _417 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_411, _415, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _420 = __3__36__0__0__g_gbufferNormal.Load(int3(_411, _415, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _427 = (saturate(_420.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _431 = (saturate(_420.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _435 = (saturate(_420.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _437 = rsqrt(dot(float3(_427, _431, _435), float3(_427, _431, _435)));  // [sem: invLength]
      _438 = _437 * _427;
      _439 = _437 * _431;
      _440 = _435 * _437;
      _445 = (((float)((uint)((uint)(((uint)((uint)(_417.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _449 = (((float)((uint)((uint)(_417.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _451 = (_445 + _449) * 0.5f;
      _453 = (_445 - _449) * 0.5f;
      _457 = (1.0f - abs(_451)) - abs(_453);
      _459 = rsqrt(dot(float3(_451, _453, _457), float3(_451, _453, _457)));  // [sem: invLength]
      _460 = _459 * _451;
      _461 = _459 * _453;
      _462 = _459 * _457;
      _464 = select((_440 >= 0.0f), 1.0f, -1.0f);
      _467 = -0.0f - (1.0f / (_464 + _440));
      _468 = _439 * _467;
      _469 = _468 * _438;
      _470 = _464 * _438;
      _476 = mad(_462, _438, mad(_461, _469, ((((_470 * _438) * _467) + 1.0f) * _460)));
      _482 = mad(_462, _439, mad(_461, ((_468 * _439) + _464), ((_460 * _464) * _469)));
      _487 = mad(_462, _440, mad(_461, (-0.0f - _439), (-0.0f - (_470 * _460))));
      _489 = rsqrt(dot(float3(_476, _482, _487), float3(_476, _482, _487)));  // [sem: invLength]
      _490 = _489 * _476;
      _491 = _489 * _482;
      _492 = _489 * _487;
      // [sem: expr_sat]
      _501 = saturate(dot(float3(_490, _491, _492), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _506 = _time.x - _interactionTime;
      _513 = abs((1.999f - _501) - ((pow(_506, 0.5f)) * 2.25f));
      _516 = saturate(1.0f - (_513 * 40.0f));  // [sem: expr_sat]
      _528 = (saturate(exp2(log2(1.0f - abs(dot(float3(_490, _491, _492), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 0.8f)) * _139) * saturate(1.0f - (_513 * 3.3333333f));
      _531 = _exposure2.x * 25.0f;
      _546 = saturate(((_516 - ((_506 * 0.9f) * _516)) * _139) * saturate(exp2(log2(1.0f - _501) * 4.0f) + ((2.0f - _501) * _140))) * _531;
      _560 = ((lerp(_87, _531, _528)) + _546);
      _561 = ((lerp(_86, _531, _528)) + _546);
      _562 = ((lerp(_85, _531, _528)) + _546);
    } else {
      _560 = _87;
      _561 = _86;
      _562 = _85;
    }
  }
  _563 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _576 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _563, 0)))).x) & 127)))) + 0.5f);
  } else {
    _576 = 1.0f;
  }
  _579 = (_localToneMappingParams.w > 0.0f);
  if (_579) {
    _585 = _exposure0.x * _userImageAdjust.z;
    _604 = exp2(_powerParams.x * log2(max(0.0f, (((_585 * max(0.0f, (((_561 * -0.62179f) - (_560 * 0.08326f)) + (_562 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _620 = exp2(log2(max(0.0f, (((_slopeParams.y * _585) * max(0.0f, (((_561 * 1.1408f) - (_560 * 0.01055f)) - (_562 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _636 = exp2(log2(max(0.0f, (((_slopeParams.z * _585) * max(0.0f, (((_560 * 1.15297f) - (_561 * 0.12897f)) - (_562 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _637 = dot(float3(_604, _620, _636), float3(0.212671f, 0.71516f, 0.072169f));
    _641 = ((_604 - _637) * _powerParams.w) + _637;
    _644 = ((_620 - _637) * _powerParams.w) + _637;
    _647 = ((_636 - _637) * _powerParams.w) + _637;
    _654 = min(max(log2(mad(_647, 0.079223745f, mad(_644, 0.0784336f, (_641 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _661 = min(max(log2(mad(_647, 0.07916613f, mad(_644, 0.87846863f, (_641 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _668 = min(max(log2(mad(_647, 0.879143f, mad(_644, 0.0784336f, (_641 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _669 = _654 * 0.060606062f;
    _670 = _661 * 0.060606062f;
    _671 = _668 * 0.060606062f;
    _672 = _669 * _669;
    _673 = _670 * _670;
    _674 = _671 * _671;
    _690 = min(0.0f, (-0.0f - (((_654 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_654 * 2.4327273f)) + (_672 * 15.5f))) - ((_654 * 0.41624245f) * _672)))) + -0.00232f)));
    _706 = min(0.0f, (-0.0f - (((_661 * 0.0072181816f) + ((_673 * 0.4298f) + (((_673 * _673) * ((31.96f - (_661 * 2.4327273f)) + (_673 * 15.5f))) - ((_661 * 0.41624245f) * _673)))) + -0.00232f)));
    _722 = min(0.0f, (-0.0f - (((_668 * 0.0072181816f) + ((_674 * 0.4298f) + (((_674 * _674) * ((31.96f - (_668 * 2.4327273f)) + (_674 * 15.5f))) - ((_668 * 0.41624245f) * _674)))) + -0.00232f)));
    _723 = -0.0f - _690;
    _724 = -0.0f - _706;
    _725 = -0.0f - _722;
    _726 = dot(float3(_723, _724, _725), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _743 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _744 = -0.79999995f / _743;
      _745 = -1.2f / _743;
      _746 = 0.20000005f / _743;
      _749 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _752 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _756 = (_744 + 1.4f) + (_752 * (-0.39999998f - _744));
      _760 = (_745 + 1.6f) + (_752 * (-0.6f - _745));
      _764 = (_746 + 0.9f) + (_752 * (0.5f - _746));
      _781 = (lerp(_764, 1.4f, _749));  // [sem: blended]
      _782 = (lerp(_756, 1.0f, _749));  // [sem: blended]
      _783 = (lerp(_760, 1.2f, _749));  // [sem: blended]
    } else {
      _781 = 1.4f;  // [sem: blended]
      _782 = 1.0f;  // [sem: blended]
      _783 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _784 = 1.0f - _783;
    _796 = ((exp2(log2(((saturate((_690 * _690) * _723) * _784) + _783) * _723) * _782) - _726) * _781) + _726;
    _808 = ((exp2(log2(((saturate((_706 * _706) * _724) * _784) + _783) * _724) * _782) - _726) * _781) + _726;
    _820 = ((exp2(log2(((saturate((_722 * _722) * _725) * _784) + _783) * _725) * _782) - _726) * _781) + _726;
    _827 = saturate(exp2(log2(mad(_820, -0.09902974f, mad(_808, -0.09802088f, (_796 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _834 = saturate(exp2(log2(mad(_820, -0.098961174f, mad(_808, 1.1519032f, (_796 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _841 = saturate(exp2(log2(mad(_820, 1.1510737f, mad(_808, -0.09804345f, (_796 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _847 = 1.0f - abs(_etcParams.w);
      _848 = saturate(_etcParams.w);  // [sem: expr_sat]
      _850 = (_847 * _827) + _848;
      _852 = (_847 * _834) + _848;
      _854 = (_847 * _841) + _848;
      if (_colorGradingParams.w > 0.0f) {
        _859 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _876 = (((max(0.0f, (1.0f - _852)) - _852) * _859) + _852);
        _877 = (((max(0.0f, (1.0f - _850)) - _850) * _859) + _850);
        _878 = (((max(0.0f, (1.0f - _854)) - _854) * _859) + _854);
      } else {
        _876 = _852;
        _877 = _850;
        _878 = _854;
      }
      _880 = _userImageAdjust.y + 1.0f;
      _882 = _userImageAdjust.x + 0.5f;
      _885 = ((_877 + -0.5f) * _880) + _882;
      _888 = ((_876 + -0.5f) * _880) + _882;
      _891 = ((_878 + -0.5f) * _880) + _882;
      _897 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _932 = exp2(log2(saturate(mad(_colorBlind0.z, _891, mad(_colorBlind0.y, _888, (_colorBlind0.x * _885))))) * _897);
      _933 = exp2(log2(saturate(mad(_colorBlind1.z, _891, mad(_colorBlind1.y, _888, (_colorBlind1.x * _885))))) * _897);
      _934 = exp2(log2(saturate(mad(_colorBlind2.z, _891, mad(_colorBlind2.y, _888, (_colorBlind2.x * _885))))) * _897);
    } else {
      _932 = _827;
      _933 = _834;
      _934 = _841;
    }
  } else {
    _932 = _562;
    _933 = _561;
    _934 = _560;
  }
  if (_etcParams.y > 1.0f) {
    _939 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _942 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _948 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_939, _942), float2(_939, _942))));  // [sem: expr_sat]
    _953 = (_948 * _932);
    _954 = (_948 * _933);
    _955 = (_948 * _934);
  } else {
    _953 = _932;
    _954 = _933;
    _955 = _934;
  }
  if (_579 && (_etcParams.z > 0.0f)) {
    _985 = select((_953 <= 0.0031308f), (_953 * 12.92f), (((pow(_953, 0.41666666f)) * 1.055f) + -0.055f));
    _986 = select((_954 <= 0.0031308f), (_954 * 12.92f), (((pow(_954, 0.41666666f)) * 1.055f) + -0.055f));
    _987 = select((_955 <= 0.0031308f), (_955 * 12.92f), (((pow(_955, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _985 = _953;
    _986 = _954;
    _987 = _955;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _990 = (float)((uint)((uint)(_563)));
    if (!(_990 < _viewDir.w)) {
      if (!(!(_990 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1001 = 0.0f;
        _1002 = 0.0f;
        _1003 = 0.0f;
      } else {
        _1001 = _985;
        _1002 = _986;
        _1003 = _987;
      }
    } else {
      _1001 = 0.0f;
      _1002 = 0.0f;
      _1003 = 0.0f;
    }
  } else {
    _1001 = _985;
    _1002 = _986;
    _1003 = _987;
  }
  _1007 = exp2(log2(_1001 * 0.0001f) * 0.15930176f);
  _1011 = exp2(log2(_1002 * 0.0001f) * 0.15930176f);
  _1015 = exp2(log2(_1003 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1007 * 18.6875f) + 1.0f)) * ((_1007 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1011 * 18.6875f) + 1.0f)) * ((_1011 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1015 * 18.6875f) + 1.0f)) * ((_1015 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _576;
  return SV_Target;
}
