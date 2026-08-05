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
  float _103;
  float _104;
  float _521;
  float _522;
  float _523;
  float _537;
  float _742;
  float _743;
  float _744;
  float _837;
  float _838;
  float _839;
  float _893;
  float _894;
  float _895;
  float _914;
  float _915;
  float _916;
  float _946;
  float _947;
  float _948;
  float _962;
  float _963;
  float _964;
  int _59;
  int _67;
  int _112;
  float4 _121;
  float _123;
  float _124;
  float _126;
  float _128;
  float _133;
  float _145;
  float _146;
  float _148;
  float _153;
  float _157;
  float _159;
  float _160;
  int _162;
  float _164;
  float _166;
  float _171;
  float _173;
  float _175;
  float _177;
  float _178;
  float _181;
  float _182;
  float _184;
  float _189;
  float _192;
  float _204;
  float _216;
  float _228;
  float _239;
  float _250;
  float _261;
  float _264;
  float _267;
  float _270;
  float _272;
  float _273;
  float _274;
  float _275;
  float _284;
  float _288;
  float _292;
  float _295;
  float _308;
  float _309;
  float _310;
  float _312;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _330;
  float _331;
  float _344;
  uint _372;
  uint _376;
  uint4 _378;
  float4 _381;
  float _388;
  float _392;
  float _396;
  float _398;
  float _399;
  float _400;
  float _401;
  float _406;
  float _410;
  float _412;
  float _414;
  float _418;
  float _420;
  float _421;
  float _422;
  float _423;
  float _425;
  float _428;
  float _429;
  float _430;
  float _431;
  float _437;
  float _443;
  float _448;
  float _450;
  float _451;
  float _452;
  float _453;
  float _462;
  float _467;
  float _474;
  float _477;
  float _489;
  float _492;
  float _507;
  uint _524;
  bool _540;
  float _546;
  float _565;
  float _581;
  float _597;
  float _598;
  float _602;
  float _605;
  float _608;
  float _615;
  float _622;
  float _629;
  float _630;
  float _631;
  float _632;
  float _633;
  float _634;
  float _635;
  float _651;
  float _667;
  float _683;
  float _684;
  float _685;
  float _686;
  float _687;
  float _704;
  float _705;
  float _706;
  float _707;
  float _710;
  float _713;
  float _717;
  float _721;
  float _725;
  float _745;
  float _757;
  float _769;
  float _781;
  float _788;
  float _795;
  float _802;
  float _808;
  float _809;
  float _811;
  float _813;
  float _815;
  float _820;
  float _841;
  float _843;
  float _846;
  float _849;
  float _852;
  float _858;
  float _900;
  float _903;
  float _909;
  float _951;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  _45 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
  _48 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_45 == _renderPassInteraction) {
    _59 = WaveReadLaneFirst(_materialIndex);
    _67 = WaveReadLaneFirst(BindlessParameters_PostProcessInteraction_CD[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessInteraction_CD._lineTex);
    // [sem: expr_sat]
    _103 = saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))));
    _104 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_67 < (uint)65000), _67, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 50.0f), (TEXCOORD.y * 50.0f))))).x);
  } else {
    _103 = 0.0f;  // [sem: expr_sat]
    _104 = 0.0f;
  }
  if (_45 == _renderPassInteraction) {
    _112 = (int)(_customRenderPassSizeInvSize.y * TEXCOORD.y);
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _121 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)((TEXCOORD.x - (0.1f / _srcTargetSizeAndInv.x)) * _customRenderPassSizeInvSize.x)), _112, 0));
    _123 = 2.2f / _srcTargetSizeAndInv.x;
    _124 = TEXCOORD.x - _123;
    _126 = (_124 * 2.0f) + -1.0f;
    _128 = 1.0f - (TEXCOORD.y * 2.0f);
    _133 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_124 * _customRenderPassSizeInvSize.x)), _112, 0)))).x));
    _145 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _133, mad((_invViewProj[3].y), _128, ((_invViewProj[3].x) * _126)));
    _146 = _123 + TEXCOORD.x;
    _148 = (_146 * 2.0f) + -1.0f;
    _153 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_146 * _customRenderPassSizeInvSize.x)), _112, 0)))).x));
    _157 = mad((_invViewProj[3].z), _153, mad((_invViewProj[3].y), _128, ((_invViewProj[3].x) * _148))) + (_invViewProj[3].w);
    _159 = 2.2f / _srcTargetSizeAndInv.y;
    _160 = TEXCOORD.y - _159;
    _162 = (int)(_customRenderPassSizeInvSize.x * TEXCOORD.x);
    _164 = (TEXCOORD.x * 2.0f) + -1.0f;
    _166 = 1.0f - (_160 * 2.0f);
    _171 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_162, ((int)(_160 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _173 = (_invViewProj[0].x) * _164;
    _175 = (_invViewProj[1].x) * _164;
    _177 = (_invViewProj[2].x) * _164;
    _178 = (_invViewProj[3].x) * _164;
    _181 = mad((_invViewProj[3].z), _171, mad((_invViewProj[3].y), _166, _178)) + (_invViewProj[3].w);
    _182 = _159 + TEXCOORD.y;
    _184 = 1.0f - (_182 * 2.0f);
    _189 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_162, ((int)(_182 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _192 = mad((_invViewProj[3].z), _189, mad((_invViewProj[3].y), _184, _178)) + (_invViewProj[3].w);
    _204 = ((mad((_invViewProj[0].z), _189, mad((_invViewProj[0].y), _184, _173)) + (_invViewProj[0].w)) / _192) - ((mad((_invViewProj[0].z), _171, mad((_invViewProj[0].y), _166, _173)) + (_invViewProj[0].w)) / _181);
    _216 = ((mad((_invViewProj[1].z), _189, mad((_invViewProj[1].y), _184, _175)) + (_invViewProj[1].w)) / _192) - ((mad((_invViewProj[1].z), _171, mad((_invViewProj[1].y), _166, _175)) + (_invViewProj[1].w)) / _181);
    _228 = ((mad((_invViewProj[2].z), _189, mad((_invViewProj[2].y), _184, _177)) + (_invViewProj[2].w)) / _192) - ((mad((_invViewProj[2].z), _171, mad((_invViewProj[2].y), _166, _177)) + (_invViewProj[2].w)) / _181);
    _239 = ((mad((_invViewProj[0].z), _153, mad((_invViewProj[0].y), _128, ((_invViewProj[0].x) * _148))) + (_invViewProj[0].w)) / _157) - ((mad((_invViewProj[0].z), _133, mad((_invViewProj[0].y), _128, ((_invViewProj[0].x) * _126))) + (_invViewProj[0].w)) / _145);
    _250 = ((mad((_invViewProj[1].z), _153, mad((_invViewProj[1].y), _128, ((_invViewProj[1].x) * _148))) + (_invViewProj[1].w)) / _157) - ((mad((_invViewProj[1].z), _133, mad((_invViewProj[1].y), _128, ((_invViewProj[1].x) * _126))) + (_invViewProj[1].w)) / _145);
    _261 = ((mad((_invViewProj[2].z), _153, mad((_invViewProj[2].y), _128, ((_invViewProj[2].x) * _148))) + (_invViewProj[2].w)) / _157) - ((mad((_invViewProj[2].z), _133, mad((_invViewProj[2].y), _128, ((_invViewProj[2].x) * _126))) + (_invViewProj[2].w)) / _145);
    _264 = (_250 * _228) - (_261 * _216);
    _267 = (_261 * _204) - (_239 * _228);
    _270 = (_239 * _216) - (_250 * _204);
    _272 = rsqrt(dot(float3(_264, _267, _270), float3(_264, _267, _270)));  // [sem: invLength]
    _273 = _264 * _272;
    _274 = _267 * _272;
    _275 = _272 * _270;
    // [sem: expr_sat]
    _284 = saturate(dot(float3(_273, _274, _275), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _288 = frac(_time.x * 0.4f);
    _292 = abs((1.999f - _284) - (_288 * 2.5f));
    _295 = saturate(1.0f - (_292 * 5.0f));  // [sem: expr_sat]
    // [sem: expr_sat]
    _308 = saturate(((_295 - (_295 * _288)) * _121.x) * saturate(exp2(log2(1.0f - _284) * 4.0f) + ((2.0f - _284) * _104)));
    _309 = _308 * _103;
    _310 = _121.x * 50.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    _312 = saturate(_310 * _310);  // [sem: expr_sat]
    _316 = saturate(1.0f - (_292 * 1.25f)) * _312;
    _317 = _316 * 0.002f;
    _318 = _317 * _48.x;
    _319 = _317 * _48.y;
    _320 = _317 * _48.z;
    _330 = _exposure2.x * (_312 - (_312 * _103));
    _331 = _330 * 2.0f;
    _344 = ((_330 * 8.0f) * saturate(exp2(log2(1.0f - abs(dot(float3(_273, _274, _275), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f))) + ((_exposure2.x * 5000.0f) * (lerp(_309, _308, 2.0f)));
    _521 = ((((_344 + _48.z) - (_316 * _48.z)) + _320) + (_331 * (1.0f - _320)));
    _522 = ((((_344 + _48.y) - (_316 * _48.y)) + _319) + (_331 * (1.0f - _319)));
    _523 = ((((_344 + _48.x) - (_316 * _48.x)) + _318) + (_331 * (1.0f - _318)));
  } else {
    if (_45 == _renderPassDetectObjective) {
      _372 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _376 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _378 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_372, _376, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _381 = __3__36__0__0__g_gbufferNormal.Load(int3(_372, _376, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _388 = (saturate(_381.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _392 = (saturate(_381.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _396 = (saturate(_381.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _398 = rsqrt(dot(float3(_388, _392, _396), float3(_388, _392, _396)));  // [sem: invLength]
      _399 = _398 * _388;
      _400 = _398 * _392;
      _401 = _396 * _398;
      _406 = (((float)((uint)((uint)(((uint)((uint)(_378.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _410 = (((float)((uint)((uint)(_378.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _412 = (_406 + _410) * 0.5f;
      _414 = (_406 - _410) * 0.5f;
      _418 = (1.0f - abs(_412)) - abs(_414);
      _420 = rsqrt(dot(float3(_412, _414, _418), float3(_412, _414, _418)));  // [sem: invLength]
      _421 = _420 * _412;
      _422 = _420 * _414;
      _423 = _420 * _418;
      _425 = select((_401 >= 0.0f), 1.0f, -1.0f);
      _428 = -0.0f - (1.0f / (_425 + _401));
      _429 = _400 * _428;
      _430 = _429 * _399;
      _431 = _425 * _399;
      _437 = mad(_423, _399, mad(_422, _430, ((((_431 * _399) * _428) + 1.0f) * _421)));
      _443 = mad(_423, _400, mad(_422, ((_429 * _400) + _425), ((_421 * _425) * _430)));
      _448 = mad(_423, _401, mad(_422, (-0.0f - _400), (-0.0f - (_431 * _421))));
      _450 = rsqrt(dot(float3(_437, _443, _448), float3(_437, _443, _448)));  // [sem: invLength]
      _451 = _450 * _437;
      _452 = _450 * _443;
      _453 = _450 * _448;
      // [sem: expr_sat]
      _462 = saturate(dot(float3(_451, _452, _453), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _467 = _time.x - _interactionTime;
      _474 = abs((1.999f - _462) - ((pow(_467, 0.5f)) * 2.25f));
      _477 = saturate(1.0f - (_474 * 40.0f));  // [sem: expr_sat]
      _489 = (saturate(exp2(log2(1.0f - abs(dot(float3(_451, _452, _453), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 0.8f)) * _103) * saturate(1.0f - (_474 * 3.3333333f));
      _492 = _exposure2.x * 25.0f;
      _507 = saturate(((_477 - ((_467 * 0.9f) * _477)) * _103) * saturate(exp2(log2(1.0f - _462) * 4.0f) + ((2.0f - _462) * _104))) * _492;
      _521 = ((lerp(_48.z, _492, _489)) + _507);
      _522 = ((lerp(_48.y, _492, _489)) + _507);
      _523 = ((lerp(_48.x, _492, _489)) + _507);
    } else {
      _521 = _48.z;
      _522 = _48.y;
      _523 = _48.x;
    }
  }
  _524 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _537 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _524, 0)))).x) & 127)))) + 0.5f);
  } else {
    _537 = 1.0f;
  }
  _540 = (_localToneMappingParams.w > 0.0f);
  if (_540) {
    _546 = _exposure0.x * _userImageAdjust.z;
    _565 = exp2(_powerParams.x * log2(max(0.0f, (((_546 * max(0.0f, (((_522 * -0.62179f) - (_521 * 0.08326f)) + (_523 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _581 = exp2(log2(max(0.0f, (((_slopeParams.y * _546) * max(0.0f, (((_522 * 1.1408f) - (_521 * 0.01055f)) - (_523 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _597 = exp2(log2(max(0.0f, (((_slopeParams.z * _546) * max(0.0f, (((_521 * 1.15297f) - (_522 * 0.12897f)) - (_523 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _598 = dot(float3(_565, _581, _597), float3(0.212671f, 0.71516f, 0.072169f));
    _602 = ((_565 - _598) * _powerParams.w) + _598;
    _605 = ((_581 - _598) * _powerParams.w) + _598;
    _608 = ((_597 - _598) * _powerParams.w) + _598;
    _615 = min(max(log2(mad(_608, 0.079223745f, mad(_605, 0.0784336f, (_602 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _622 = min(max(log2(mad(_608, 0.07916613f, mad(_605, 0.87846863f, (_602 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _629 = min(max(log2(mad(_608, 0.879143f, mad(_605, 0.0784336f, (_602 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _630 = _615 * 0.060606062f;
    _631 = _622 * 0.060606062f;
    _632 = _629 * 0.060606062f;
    _633 = _630 * _630;
    _634 = _631 * _631;
    _635 = _632 * _632;
    _651 = min(0.0f, (-0.0f - (((_615 * 0.0072181816f) + ((_633 * 0.4298f) + (((_633 * _633) * ((31.96f - (_615 * 2.4327273f)) + (_633 * 15.5f))) - ((_615 * 0.41624245f) * _633)))) + -0.00232f)));
    _667 = min(0.0f, (-0.0f - (((_622 * 0.0072181816f) + ((_634 * 0.4298f) + (((_634 * _634) * ((31.96f - (_622 * 2.4327273f)) + (_634 * 15.5f))) - ((_622 * 0.41624245f) * _634)))) + -0.00232f)));
    _683 = min(0.0f, (-0.0f - (((_629 * 0.0072181816f) + ((_635 * 0.4298f) + (((_635 * _635) * ((31.96f - (_629 * 2.4327273f)) + (_635 * 15.5f))) - ((_629 * 0.41624245f) * _635)))) + -0.00232f)));
    _684 = -0.0f - _651;
    _685 = -0.0f - _667;
    _686 = -0.0f - _683;
    _687 = dot(float3(_684, _685, _686), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _704 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _705 = -0.79999995f / _704;
      _706 = -1.2f / _704;
      _707 = 0.20000005f / _704;
      _710 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _713 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _717 = (_705 + 1.4f) + (_713 * (-0.39999998f - _705));
      _721 = (_706 + 1.6f) + (_713 * (-0.6f - _706));
      _725 = (_707 + 0.9f) + (_713 * (0.5f - _707));
      _742 = (lerp(_725, 1.4f, _710));  // [sem: blended]
      _743 = (lerp(_717, 1.0f, _710));  // [sem: blended]
      _744 = (lerp(_721, 1.2f, _710));  // [sem: blended]
    } else {
      _742 = 1.4f;  // [sem: blended]
      _743 = 1.0f;  // [sem: blended]
      _744 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _745 = 1.0f - _744;
    _757 = ((exp2(log2(((saturate((_651 * _651) * _684) * _745) + _744) * _684) * _743) - _687) * _742) + _687;
    _769 = ((exp2(log2(((saturate((_667 * _667) * _685) * _745) + _744) * _685) * _743) - _687) * _742) + _687;
    _781 = ((exp2(log2(((saturate((_683 * _683) * _686) * _745) + _744) * _686) * _743) - _687) * _742) + _687;
    _788 = saturate(exp2(log2(mad(_781, -0.09902974f, mad(_769, -0.09802088f, (_757 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _795 = saturate(exp2(log2(mad(_781, -0.098961174f, mad(_769, 1.1519032f, (_757 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _802 = saturate(exp2(log2(mad(_781, 1.1510737f, mad(_769, -0.09804345f, (_757 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _808 = 1.0f - abs(_etcParams.w);
      _809 = saturate(_etcParams.w);  // [sem: expr_sat]
      _811 = (_808 * _788) + _809;
      _813 = (_808 * _795) + _809;
      _815 = (_808 * _802) + _809;
      if (_colorGradingParams.w > 0.0f) {
        _820 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _837 = (((max(0.0f, (1.0f - _815)) - _815) * _820) + _815);
        _838 = (((max(0.0f, (1.0f - _813)) - _813) * _820) + _813);
        _839 = (((max(0.0f, (1.0f - _811)) - _811) * _820) + _811);
      } else {
        _837 = _815;
        _838 = _813;
        _839 = _811;
      }
      _841 = _userImageAdjust.y + 1.0f;
      _843 = _userImageAdjust.x + 0.5f;
      _846 = ((_839 + -0.5f) * _841) + _843;
      _849 = ((_838 + -0.5f) * _841) + _843;
      _852 = ((_837 + -0.5f) * _841) + _843;
      _858 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _893 = exp2(log2(saturate(mad(_colorBlind2.z, _852, mad(_colorBlind2.y, _849, (_colorBlind2.x * _846))))) * _858);
      _894 = exp2(log2(saturate(mad(_colorBlind1.z, _852, mad(_colorBlind1.y, _849, (_colorBlind1.x * _846))))) * _858);
      _895 = exp2(log2(saturate(mad(_colorBlind0.z, _852, mad(_colorBlind0.y, _849, (_colorBlind0.x * _846))))) * _858);
    } else {
      _893 = _802;
      _894 = _795;
      _895 = _788;
    }
  } else {
    _893 = _521;
    _894 = _522;
    _895 = _523;
  }
  if (_etcParams.y > 1.0f) {
    _900 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _903 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _909 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_900, _903), float2(_900, _903))));  // [sem: expr_sat]
    _914 = (_909 * _893);
    _915 = (_909 * _894);
    _916 = (_909 * _895);
  } else {
    _914 = _893;
    _915 = _894;
    _916 = _895;
  }
  if (_540 && (_etcParams.z > 0.0f)) {
    _946 = select((_915 <= 0.0031308f), (_915 * 12.92f), (((pow(_915, 0.41666666f)) * 1.055f) + -0.055f));
    _947 = select((_916 <= 0.0031308f), (_916 * 12.92f), (((pow(_916, 0.41666666f)) * 1.055f) + -0.055f));
    _948 = select((_914 <= 0.0031308f), (_914 * 12.92f), (((pow(_914, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _946 = _915;
    _947 = _916;
    _948 = _914;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _951 = (float)((uint)((uint)(_524)));
    if (!(_951 < _viewDir.w)) {
      if (!(!(_951 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _962 = 0.0f;
        _963 = 0.0f;
        _964 = 0.0f;
      } else {
        _962 = _947;
        _963 = _946;
        _964 = _948;
      }
    } else {
      _962 = 0.0f;
      _963 = 0.0f;
      _964 = 0.0f;
    }
  } else {
    _962 = _947;
    _963 = _946;
    _964 = _948;
  }
  SV_Target.x = _962;
  SV_Target.y = _963;
  SV_Target.z = _964;
  SV_Target.w = _537;
  return SV_Target;
}
