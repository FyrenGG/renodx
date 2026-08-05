struct PostProcessAxiom_CDStruct {
  float _axiomEyeProgress;
  float _axiomEyeRadius;
  uint _axiomEyeTargetColor;
  uint _axiomPlayerColor;
  uint _axiomBackgroundColor;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessAxiom_CD {
  PostProcessAxiom_CDStruct BindlessParameters_PostProcessAxiom_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

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
  float _30;
  float4 _33;
  float _39;
  float _42;
  float _45;
  float _54;
  float _63;
  float _72;
  float _74;
  float _75;
  float _76;
  float _81;
  float _93;
  float _94;
  int _97;
  int _105;
  float4 _118;
  float _121;
  float _122;
  float _123;
  float _124;
  float _125;
  float _126;
  uint2 _128;
  uint _143;
  int _145;
  float _149;
  float _154;
  float _156;
  float _157;
  float _158;
  float _169;
  float _170;
  float _595;
  float _596;
  float _597;
  float _829;
  float _830;
  float _831;
  float _857;
  float _858;
  float _859;
  float _885;
  float _1090;
  float _1091;
  float _1092;
  float _1185;
  float _1186;
  float _1187;
  float _1241;
  float _1242;
  float _1243;
  float _1259;
  float _1260;
  float _1261;
  float _1291;
  float _1292;
  float _1293;
  float _1307;
  float _1308;
  float _1309;
  float _172;
  float _173;
  float _174;
  float _175;
  float _177;
  float _178;
  float _179;
  float _180;
  int _183;
  float _191;
  float _207;
  float _218;
  float _229;
  float _242;
  float _248;
  int _253;
  int _261;
  float _264;
  float _267;
  float _269;
  float4 _274;
  float _285;
  float _295;
  float _305;
  float _316;
  float _328;
  float _340;
  float _351;
  float _362;
  int _365;
  float _373;
  float _384;
  float _395;
  int _398;
  int _406;
  float4 _423;
  float _436;
  float _437;
  float _441;
  int _452;
  int _460;
  float _463;
  float _466;
  float _468;
  int _506;
  int _514;
  float _517;
  float _520;
  float _522;
  float _531;
  float _540;
  float _549;
  float _567;
  float _569;
  float _572;
  float4 _579;
  float _598;
  float _599;
  float _600;
  float _629;
  int _632;
  int _640;
  float4 _657;
  float _670;
  float _671;
  float _675;
  int _686;
  int _694;
  float _697;
  float _700;
  float _702;
  int _740;
  int _748;
  float _751;
  float _754;
  float _756;
  float _765;
  float _774;
  float _783;
  float _801;
  float _803;
  float _806;
  float4 _813;
  float _832;
  float _833;
  float _834;
  float _863;
  float _867;
  float _871;
  uint _872;
  bool _888;
  float _894;
  float _913;
  float _929;
  float _945;
  float _946;
  float _950;
  float _953;
  float _956;
  float _963;
  float _970;
  float _977;
  float _978;
  float _979;
  float _980;
  float _981;
  float _982;
  float _983;
  float _999;
  float _1015;
  float _1031;
  float _1032;
  float _1033;
  float _1034;
  float _1035;
  float _1052;
  float _1053;
  float _1054;
  float _1055;
  float _1058;
  float _1061;
  float _1065;
  float _1069;
  float _1073;
  float _1093;
  float _1105;
  float _1117;
  float _1129;
  float _1136;
  float _1143;
  float _1150;
  float _1156;
  float _1157;
  float _1159;
  float _1161;
  float _1163;
  float _1168;
  float _1189;
  float _1191;
  float _1194;
  float _1197;
  float _1200;
  float _1206;
  float _1246;
  float _1248;
  float _1254;
  float _1296;
  float _1313;
  float _1317;
  float _1321;
  _30 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _39 = (pow(_33.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _42 = (pow(_33.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_33.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _54 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f;
  _63 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f) * 10000.0f;
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f) * 10000.0f;
  _74 = (TEXCOORD.x * 2.0f) + -1.0f;
  _75 = TEXCOORD.y * 2.0f;
  _76 = 1.0f - _75;
  _81 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _93 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _81, mad((_invViewProj[3].y), _76, ((_invViewProj[3].x) * _74)));
  _94 = 6.0f / _30;
  _97 = WaveReadLaneFirst(_materialIndex);
  _105 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
  _118 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_105 < (uint)65000), _105, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_94 * TEXCOORD.x), ((_time.x * 0.01f) + (_94 * TEXCOORD.y))));
  _121 = _118.x + -0.5f;
  _122 = _118.y + -0.5f;
  _123 = _121 * 0.005f;
  _124 = _122 * 0.005f;
  _125 = _123 + TEXCOORD.x;
  _126 = _124 + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_128.x, _128.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _143 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_128.x))))))) + 0.5f) * _125)), ((int)((((float)((int)((int)((float)((int)((int)(_128.y))))))) + 0.5f) * _126)), 0));
  _145 = _143.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _149 = (((float)((uint)((uint)((uint)((uint)(_143.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _154 = (((float)((uint)((uint)(((uint)((uint)(_143.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _156 = 1.0f - abs(_149);
  _157 = abs(_154);
  _158 = _156 - _157;
  if (!(_158 >= 0.0f)) {
    _169 = (select((_154 >= 0.0f), 1.0f, -1.0f) * _156);
    _170 = (select((_149 >= 0.0f), 1.0f, -1.0f) * (1.0f - _157));
  } else {
    _169 = _154;
    _170 = _149;
  }
  _172 = rsqrt(dot(float3(_170, _169, _158), float3(_170, _169, _158)));  // [sem: invLength]
  _173 = _172 * _170;
  _174 = _172 * _169;
  _175 = _172 * _158;
  _177 = rsqrt(dot(float3(_173, _174, _175), float3(_173, _174, _175)));  // [sem: invLength]
  _178 = _177 * _173;
  _179 = _177 * _174;
  _180 = _177 * _175;
  _183 = WaveReadLaneFirst(_materialIndex);
  _191 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_183 < (uint)170000), _183, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeProgress);
  _207 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _81, mad((_invViewProj[0].y), _76, ((_invViewProj[0].x) * _74)))) / _93) - _mainPosition.x;
  _218 = ((mad((_invViewProj[1].z), _81, mad((_invViewProj[1].y), _76, ((_invViewProj[1].x) * _74))) + (_invViewProj[1].w)) / _93) - _mainPosition.y;
  _229 = ((mad((_invViewProj[2].z), _81, mad((_invViewProj[2].y), _76, ((_invViewProj[2].x) * _74))) + (_invViewProj[2].w)) / _93) - _mainPosition.z;
  // [sem: expr_sat]
  _242 = saturate((1.0f - saturate(sqrt(((_218 * _218) + (_207 * _207)) + (_229 * _229)) / max(0.001f, (_191 * 50.0f)))) * 1.25f);
  _248 = (saturate((_191 * 4.0f) + -3.0f) * (1.0f - _242)) + _242;
  if (_242 > 0.0f) {
    _253 = WaveReadLaneFirst(_materialIndex);
    _261 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_253 < (uint)170000), _253, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomBackgroundColor);
    _264 = (float)((uint)((uint)(((uint)((uint)(_261)) >> 16) & 255)));
    _267 = (float)((uint)((uint)(((uint)((uint)(_261)) >> 8) & 255)));
    _269 = (float)((uint)((uint)(_261 & 255)));
    // [sem: _3__36__0__0__g_specularAO_sampleLod]
    _274 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _123), (TEXCOORD.y - _124)), 0.0f);
    _285 = select(((_264 * 0.003921569f) < 0.04045f), (_264 * 0.000303527f), exp2(log2((_264 * 0.003717127f) + 0.052132703f) * 2.4f)) * _274.w;
    _295 = select(((_267 * 0.003921569f) < 0.04045f), (_267 * 0.000303527f), exp2(log2((_267 * 0.003717127f) + 0.052132703f) * 2.4f)) * _274.w;
    _305 = select(((_269 * 0.003921569f) < 0.04045f), (_269 * 0.000303527f), exp2(log2((_269 * 0.003717127f) + 0.052132703f) * 2.4f)) * _274.w;
    _316 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _125)), ((int)(_customRenderPassSizeInvSize.y * _126)), 0)))).x));
    _328 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _316, mad((_invViewProj[3].y), _76, ((_invViewProj[3].x) * _74)));
    _340 = ((mad((_invViewProj[0].z), _316, mad((_invViewProj[0].y), _76, ((_invViewProj[0].x) * _74))) + (_invViewProj[0].w)) / _328) - _mainPosition.x;
    _351 = ((mad((_invViewProj[1].z), _316, mad((_invViewProj[1].y), _76, ((_invViewProj[1].x) * _74))) + (_invViewProj[1].w)) / _328) - _mainPosition.y;
    _362 = ((mad((_invViewProj[2].z), _316, mad((_invViewProj[2].y), _76, ((_invViewProj[2].x) * _74))) + (_invViewProj[2].w)) / _328) - _mainPosition.z;
    _365 = WaveReadLaneFirst(_materialIndex);
    _373 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_365 < (uint)170000), _365, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeRadius);
    _384 = 1.0f - saturate(sqrt(((_351 * _351) + (_340 * _340)) + (_362 * _362)) / max(0.001f, (_373 * _248)));
    if ((_145 == _renderPassSelfPlayer) || ((!(_145 == _renderPassSelfPlayer)) && (_145 == _renderPassTest))) {
      if (_384 > 0.0f) {
        _395 = 2.0f / _30;
        _398 = WaveReadLaneFirst(_materialIndex);
        _406 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_398 < (uint)170000), _398, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
        _423 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_406 < (uint)65000), _406, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_395 * TEXCOORD.x) - (_118.x * 0.25f)) + (_time.x * 0.1f)), ((_395 * TEXCOORD.y) - (_118.y * 0.25f))));
        // [sem: expr_sat]
        _436 = saturate(1.0f - dot(float3(_178, _179, _180), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _437 = _423.z + -0.5f;
        _441 = saturate(((_436 * _436) * _436) + _437);  // [sem: expr_sat]
        if ((_145 == _renderPassSelfPlayer) || ((!(_145 == _renderPassSelfPlayer)) && (_145 == _renderPassTest))) {
          _452 = WaveReadLaneFirst(_materialIndex);
          _460 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_452 < (uint)170000), _452, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
          _463 = (float)((uint)((uint)(((uint)((uint)(_460)) >> 16) & 255)));
          _466 = (float)((uint)((uint)(((uint)((uint)(_460)) >> 8) & 255)));
          _468 = (float)((uint)((uint)(_460 & 255)));
          _857 = (select(((_468 * 0.003921569f) < 0.04045f), (_468 * 0.000303527f), exp2(log2((_468 * 0.003717127f) + 0.052132703f) * 2.4f)) * _441);
          _858 = (select(((_466 * 0.003921569f) < 0.04045f), (_466 * 0.000303527f), exp2(log2((_466 * 0.003717127f) + 0.052132703f) * 2.4f)) * _441);
          _859 = (select(((_463 * 0.003921569f) < 0.04045f), (_463 * 0.000303527f), exp2(log2((_463 * 0.003717127f) + 0.052132703f) * 2.4f)) * _441);
        } else {
          if (_145 == _renderPassDetectItem) {
            _506 = WaveReadLaneFirst(_materialIndex);
            _514 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_506 < (uint)170000), _506, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
            _517 = (float)((uint)((uint)(((uint)((uint)(_514)) >> 16) & 255)));
            _520 = (float)((uint)((uint)(((uint)((uint)(_514)) >> 8) & 255)));
            _522 = (float)((uint)((uint)(_514 & 255)));
            _531 = select(((_517 * 0.003921569f) < 0.04045f), (_517 * 0.000303527f), exp2(log2((_517 * 0.003717127f) + 0.052132703f) * 2.4f));
            _540 = select(((_520 * 0.003921569f) < 0.04045f), (_520 * 0.000303527f), exp2(log2((_520 * 0.003717127f) + 0.052132703f) * 2.4f));
            _549 = select(((_522 * 0.003921569f) < 0.04045f), (_522 * 0.000303527f), exp2(log2((_522 * 0.003717127f) + 0.052132703f) * 2.4f));
            // [sem: expr_sat]
            _567 = saturate(1.0f - dot(float3((((_423.x + -0.5f) * 4.0f) + _178), (((_423.y + -0.5f) * 4.0f) + _179), ((_437 * 4.0f) + _180)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
            _569 = saturate(_567 * _567);  // [sem: expr_sat]
            _572 = saturate((_384 * 2.0f) + -1.0f);  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_specularAO_sampleLod]
            _579 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_121 * 0.049999997f)), (TEXCOORD.y - (_122 * 0.049999997f))), 0.0f);
            if (!(_579.w < 0.1f)) {
              if (_579.w < 0.14f) {
                _595 = _549;
                _596 = _540;
                _597 = (_531 + 1.0f);
              } else {
                if (_579.w < 0.17f) {
                  _595 = _549;
                  _596 = (_540 + 1.0f);
                  _597 = _531;
                } else {
                  if (_579.w < 0.3f) {
                    _595 = (_549 + 1.0f);
                    _596 = _540;
                    _597 = _531;
                  } else {
                    _595 = _549;
                    _596 = _540;
                    _597 = _531;
                  }
                }
              }
            } else {
              _595 = _549;
              _596 = _540;
              _597 = _531;
            }
            _598 = _531 * _441;
            _599 = _540 * _441;
            _600 = _549 * _441;
            _857 = ((((_600 - _305) + (((_595 * _569) - _600) * _572)) * _384) + _305);
            _858 = ((((_599 - _295) + (((_596 * _569) - _599) * _572)) * _384) + _295);
            _859 = ((((_598 - _285) + (((_597 * _569) - _598) * _572)) * _384) + _285);
          } else {
            _857 = _305;
            _858 = _295;
            _859 = _285;
          }
        }
      } else {
        _857 = _305;
        _858 = _295;
        _859 = _285;
      }
    } else {
      if (_384 > 0.0f) {
        if (_145 == _renderPassDetectItem) {
          _629 = 2.0f / _30;
          _632 = WaveReadLaneFirst(_materialIndex);
          _640 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_632 < (uint)170000), _632, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
          _657 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_640 < (uint)65000), _640, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_629 * TEXCOORD.x) - (_118.x * 0.25f)) + (_time.x * 0.1f)), ((_629 * TEXCOORD.y) - (_118.y * 0.25f))));
          // [sem: expr_sat]
          _670 = saturate(1.0f - dot(float3(_178, _179, _180), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _671 = _657.z + -0.5f;
          _675 = saturate(((_670 * _670) * _670) + _671);  // [sem: expr_sat]
          if ((_145 == _renderPassSelfPlayer) || ((!(_145 == _renderPassSelfPlayer)) && (_145 == _renderPassTest))) {
            _686 = WaveReadLaneFirst(_materialIndex);
            _694 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_686 < (uint)170000), _686, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
            _697 = (float)((uint)((uint)(((uint)((uint)(_694)) >> 16) & 255)));
            _700 = (float)((uint)((uint)(((uint)((uint)(_694)) >> 8) & 255)));
            _702 = (float)((uint)((uint)(_694 & 255)));
            _857 = (select(((_702 * 0.003921569f) < 0.04045f), (_702 * 0.000303527f), exp2(log2((_702 * 0.003717127f) + 0.052132703f) * 2.4f)) * _675);
            _858 = (select(((_700 * 0.003921569f) < 0.04045f), (_700 * 0.000303527f), exp2(log2((_700 * 0.003717127f) + 0.052132703f) * 2.4f)) * _675);
            _859 = (select(((_697 * 0.003921569f) < 0.04045f), (_697 * 0.000303527f), exp2(log2((_697 * 0.003717127f) + 0.052132703f) * 2.4f)) * _675);
          } else {
            if (_145 == _renderPassDetectItem) {
              _740 = WaveReadLaneFirst(_materialIndex);
              _748 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_740 < (uint)170000), _740, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
              _751 = (float)((uint)((uint)(((uint)((uint)(_748)) >> 16) & 255)));
              _754 = (float)((uint)((uint)(((uint)((uint)(_748)) >> 8) & 255)));
              _756 = (float)((uint)((uint)(_748 & 255)));
              _765 = select(((_751 * 0.003921569f) < 0.04045f), (_751 * 0.000303527f), exp2(log2((_751 * 0.003717127f) + 0.052132703f) * 2.4f));
              _774 = select(((_754 * 0.003921569f) < 0.04045f), (_754 * 0.000303527f), exp2(log2((_754 * 0.003717127f) + 0.052132703f) * 2.4f));
              _783 = select(((_756 * 0.003921569f) < 0.04045f), (_756 * 0.000303527f), exp2(log2((_756 * 0.003717127f) + 0.052132703f) * 2.4f));
              // [sem: expr_sat]
              _801 = saturate(1.0f - dot(float3((((_657.x + -0.5f) * 4.0f) + _178), (((_657.y + -0.5f) * 4.0f) + _179), ((_671 * 4.0f) + _180)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
              _803 = saturate(_801 * _801);  // [sem: expr_sat]
              _806 = saturate((_384 * 2.0f) + -1.0f);  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_specularAO_sampleLod]
              _813 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_121 * 0.049999997f)), (TEXCOORD.y - (_122 * 0.049999997f))), 0.0f);
              if (!(_813.w < 0.1f)) {
                if (_813.w < 0.14f) {
                  _829 = _783;
                  _830 = _774;
                  _831 = (_765 + 1.0f);
                } else {
                  if (_813.w < 0.17f) {
                    _829 = _783;
                    _830 = (_774 + 1.0f);
                    _831 = _765;
                  } else {
                    if (_813.w < 0.3f) {
                      _829 = (_783 + 1.0f);
                      _830 = _774;
                      _831 = _765;
                    } else {
                      _829 = _783;
                      _830 = _774;
                      _831 = _765;
                    }
                  }
                }
              } else {
                _829 = _783;
                _830 = _774;
                _831 = _765;
              }
              _832 = _765 * _675;
              _833 = _774 * _675;
              _834 = _783 * _675;
              _857 = ((((_834 - _305) + (((_829 * _803) - _834) * _806)) * _384) + _305);
              _858 = ((((_833 - _295) + (((_830 * _803) - _833) * _806)) * _384) + _295);
              _859 = ((((_832 - _285) + (((_831 * _803) - _832) * _806)) * _384) + _285);
            } else {
              _857 = _305;
              _858 = _295;
              _859 = _285;
            }
          }
        } else {
          _857 = _305;
          _858 = _295;
          _859 = _285;
        }
      } else {
        _857 = _305;
        _858 = _295;
        _859 = _285;
      }
    }
  } else {
    _857 = _72;
    _858 = _63;
    _859 = _54;
  }
  _863 = (((_859 * _242) - _54) * _248) + _54;
  _867 = (((_858 * _242) - _63) * _248) + _63;
  _871 = (((_857 * _242) - _72) * _248) + _72;
  _872 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _885 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _872, 0)))).x) & 127)))) + 0.5f);
  } else {
    _885 = 1.0f;
  }
  _888 = (_localToneMappingParams.w > 0.0f);
  if (_888) {
    _894 = _exposure0.x * _userImageAdjust.z;
    _913 = exp2(_powerParams.x * log2(max(0.0f, (((_894 * max(0.0f, (((_867 * -0.62179f) - (_871 * 0.08326f)) + (_863 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _929 = exp2(log2(max(0.0f, (((_slopeParams.y * _894) * max(0.0f, (((_867 * 1.1408f) - (_871 * 0.01055f)) - (_863 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _945 = exp2(log2(max(0.0f, (((_slopeParams.z * _894) * max(0.0f, (((_871 * 1.15297f) - (_867 * 0.12897f)) - (_863 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _946 = dot(float3(_913, _929, _945), float3(0.212671f, 0.71516f, 0.072169f));
    _950 = ((_913 - _946) * _powerParams.w) + _946;
    _953 = ((_929 - _946) * _powerParams.w) + _946;
    _956 = ((_945 - _946) * _powerParams.w) + _946;
    _963 = min(max(log2(mad(_956, 0.079223745f, mad(_953, 0.0784336f, (_950 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _970 = min(max(log2(mad(_956, 0.07916613f, mad(_953, 0.87846863f, (_950 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _977 = min(max(log2(mad(_956, 0.879143f, mad(_953, 0.0784336f, (_950 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _978 = _963 * 0.060606062f;
    _979 = _970 * 0.060606062f;
    _980 = _977 * 0.060606062f;
    _981 = _978 * _978;
    _982 = _979 * _979;
    _983 = _980 * _980;
    _999 = min(0.0f, (-0.0f - (((_963 * 0.0072181816f) + ((_981 * 0.4298f) + (((_981 * _981) * ((31.96f - (_963 * 2.4327273f)) + (_981 * 15.5f))) - ((_963 * 0.41624245f) * _981)))) + -0.00232f)));
    _1015 = min(0.0f, (-0.0f - (((_970 * 0.0072181816f) + ((_982 * 0.4298f) + (((_982 * _982) * ((31.96f - (_970 * 2.4327273f)) + (_982 * 15.5f))) - ((_970 * 0.41624245f) * _982)))) + -0.00232f)));
    _1031 = min(0.0f, (-0.0f - (((_977 * 0.0072181816f) + ((_983 * 0.4298f) + (((_983 * _983) * ((31.96f - (_977 * 2.4327273f)) + (_983 * 15.5f))) - ((_977 * 0.41624245f) * _983)))) + -0.00232f)));
    _1032 = -0.0f - _999;
    _1033 = -0.0f - _1015;
    _1034 = -0.0f - _1031;
    _1035 = dot(float3(_1032, _1033, _1034), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1052 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1053 = -0.79999995f / _1052;
      _1054 = -1.2f / _1052;
      _1055 = 0.20000005f / _1052;
      _1058 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1061 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1065 = (_1053 + 1.4f) + (_1061 * (-0.39999998f - _1053));
      _1069 = (_1054 + 1.6f) + (_1061 * (-0.6f - _1054));
      _1073 = (_1055 + 0.9f) + (_1061 * (0.5f - _1055));
      _1090 = (lerp(_1073, 1.4f, _1058));  // [sem: blended]
      _1091 = (lerp(_1065, 1.0f, _1058));  // [sem: blended]
      _1092 = (lerp(_1069, 1.2f, _1058));  // [sem: blended]
    } else {
      _1090 = 1.4f;  // [sem: blended]
      _1091 = 1.0f;  // [sem: blended]
      _1092 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1093 = 1.0f - _1092;
    _1105 = ((exp2(log2(((saturate((_999 * _999) * _1032) * _1093) + _1092) * _1032) * _1091) - _1035) * _1090) + _1035;
    _1117 = ((exp2(log2(((saturate((_1015 * _1015) * _1033) * _1093) + _1092) * _1033) * _1091) - _1035) * _1090) + _1035;
    _1129 = ((exp2(log2(((saturate((_1031 * _1031) * _1034) * _1093) + _1092) * _1034) * _1091) - _1035) * _1090) + _1035;
    _1136 = saturate(exp2(log2(mad(_1129, -0.09902974f, mad(_1117, -0.09802088f, (_1105 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1143 = saturate(exp2(log2(mad(_1129, -0.098961174f, mad(_1117, 1.1519032f, (_1105 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1150 = saturate(exp2(log2(mad(_1129, 1.1510737f, mad(_1117, -0.09804345f, (_1105 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1156 = 1.0f - abs(_etcParams.w);
      _1157 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1159 = (_1156 * _1136) + _1157;
      _1161 = (_1156 * _1143) + _1157;
      _1163 = (_1156 * _1150) + _1157;
      if (_colorGradingParams.w > 0.0f) {
        _1168 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1185 = (((max(0.0f, (1.0f - _1163)) - _1163) * _1168) + _1163);
        _1186 = (((max(0.0f, (1.0f - _1161)) - _1161) * _1168) + _1161);
        _1187 = (((max(0.0f, (1.0f - _1159)) - _1159) * _1168) + _1159);
      } else {
        _1185 = _1163;
        _1186 = _1161;
        _1187 = _1159;
      }
      _1189 = _userImageAdjust.y + 1.0f;
      _1191 = _userImageAdjust.x + 0.5f;
      _1194 = ((_1187 + -0.5f) * _1189) + _1191;
      _1197 = ((_1186 + -0.5f) * _1189) + _1191;
      _1200 = ((_1185 + -0.5f) * _1189) + _1191;
      _1206 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1241 = exp2(log2(saturate(mad(_colorBlind2.z, _1200, mad(_colorBlind2.y, _1197, (_colorBlind2.x * _1194))))) * _1206);
      _1242 = exp2(log2(saturate(mad(_colorBlind1.z, _1200, mad(_colorBlind1.y, _1197, (_colorBlind1.x * _1194))))) * _1206);
      _1243 = exp2(log2(saturate(mad(_colorBlind0.z, _1200, mad(_colorBlind0.y, _1197, (_colorBlind0.x * _1194))))) * _1206);
    } else {
      _1241 = _1150;
      _1242 = _1143;
      _1243 = _1136;
    }
  } else {
    _1241 = _871;
    _1242 = _867;
    _1243 = _863;
  }
  if (_etcParams.y > 1.0f) {
    _1246 = abs(_74);
    _1248 = abs(_75 + -1.0f);
    _1254 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1246, _1248), float2(_1246, _1248))));  // [sem: expr_sat]
    _1259 = (_1254 * _1241);
    _1260 = (_1254 * _1242);
    _1261 = (_1254 * _1243);
  } else {
    _1259 = _1241;
    _1260 = _1242;
    _1261 = _1243;
  }
  if (_888 && (_etcParams.z > 0.0f)) {
    _1291 = select((_1261 <= 0.0031308f), (_1261 * 12.92f), (((pow(_1261, 0.41666666f)) * 1.055f) + -0.055f));
    _1292 = select((_1260 <= 0.0031308f), (_1260 * 12.92f), (((pow(_1260, 0.41666666f)) * 1.055f) + -0.055f));
    _1293 = select((_1259 <= 0.0031308f), (_1259 * 12.92f), (((pow(_1259, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1291 = _1261;
    _1292 = _1260;
    _1293 = _1259;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1296 = (float)((uint)((uint)(_872)));
    if (!(_1296 < _viewDir.w)) {
      if (!(!(_1296 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1307 = 0.0f;
        _1308 = 0.0f;
        _1309 = 0.0f;
      } else {
        _1307 = _1291;
        _1308 = _1292;
        _1309 = _1293;
      }
    } else {
      _1307 = 0.0f;
      _1308 = 0.0f;
      _1309 = 0.0f;
    }
  } else {
    _1307 = _1291;
    _1308 = _1292;
    _1309 = _1293;
  }
  _1313 = exp2(log2(_1307 * 0.0001f) * 0.15930176f);
  _1317 = exp2(log2(_1308 * 0.0001f) * 0.15930176f);
  _1321 = exp2(log2(_1309 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1313 * 18.6875f) + 1.0f)) * ((_1313 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1317 * 18.6875f) + 1.0f)) * ((_1317 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1321 * 18.6875f) + 1.0f)) * ((_1321 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _885;
  return SV_Target;
}
