struct PostProcessLensFlareForGimmick_CDStruct {
  uint _lensDirtTexture;
  uint _lensColorTableTexture;
  uint _noiseTex;
  uint _noiseTex2;
  float _lensflareRatio;
  float _sunFlareScale;
  float _sunFlareIntensity;
  float _sunFlareAnimSpeed;
  float _sunFlareWeightThreshold;
  float _sunFlareWeightIntensity;
  float _lensDirtIntensity;
  float _lensDirtThreshold;
  float _chromaticShiftValue;
  float _useFishUV;
  float _fishEyeIntensity;
};

struct BindlessParameters_PostProcessLensFlareForGimmick_CD {
  PostProcessLensFlareForGimmick_CDStruct BindlessParameters_PostProcessLensFlareForGimmick_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessLensFlareForGimmick_CD BindlessParameters_PostProcessLensFlareForGimmick_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLensFlareForGimmick_CD_t> BindlessParameters_PostProcessLensFlareForGimmick_CD[] : register(b0, space100);

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
  int _26;
  float _34;
  float _35;
  float _36;
  float _44;
  float _45;
  float _46;
  float4 _49;
  float _56;
  int _59;
  float _67;
  float _71;
  float _74;
  float _75;
  float _76;
  float _77;
  float _78;
  float _79;
  float _80;
  float _118;
  float _119;
  float _1165;
  float _1166;
  float _1167;
  float _1181;
  float _1386;
  float _1387;
  float _1388;
  float _1481;
  float _1482;
  float _1483;
  float _1537;
  float _1538;
  float _1539;
  float _1558;
  float _1559;
  float _1560;
  float _1590;
  float _1591;
  float _1592;
  float _1606;
  float _1607;
  float _1608;
  float _84;
  float _88;
  float _93;
  float _95;
  float _104;
  float _108;
  float _110;
  int _122;
  float _130;
  bool _131;
  float _133;
  float _136;
  float _137;
  float _153;
  float _162;
  float _172;
  float _191;
  float _213;
  float _214;
  float _216;
  bool _217;
  bool _218;
  bool _219;
  bool _220;
  bool _221;
  float _226;
  bool _227;
  bool _228;
  float _230;
  float _234;
  int _237;
  int _245;
  int _248;
  float _256;
  int _259;
  float _267;
  float _268;
  float _269;
  int _272;
  float _280;
  float _287;
  float _288;
  int _291;
  float _299;
  float _302;
  int _305;
  int _313;
  float4 _329;
  float _337;
  float _340;
  float _347;
  float _351;
  float _352;
  float _353;
  float _372;
  int _375;
  int _383;
  float _387;
  float _389;
  bool _390;
  bool _391;
  float4 _412;
  float _419;
  bool _420;
  bool _421;
  bool _422;
  bool _423;
  float4 _440;
  float _450;
  float _458;
  float _467;
  float _481;
  int _484;
  int _492;
  float4 _499;
  int _505;
  float _513;
  int _516;
  float _524;
  float _531;
  float _535;
  int _538;
  float _546;
  float4 _559;
  float _562;
  float _697;
  float _698;
  float _700;
  bool _701;
  bool _702;
  bool _703;
  bool _704;
  bool _705;
  float _710;
  bool _711;
  bool _712;
  float _714;
  float _718;
  int _721;
  int _729;
  int _732;
  float _740;
  int _743;
  float _751;
  float _752;
  float _753;
  int _756;
  float _764;
  float _771;
  float _772;
  int _775;
  float _783;
  float _786;
  int _789;
  int _797;
  float4 _813;
  float _821;
  float _824;
  float _831;
  float _835;
  float _836;
  float _837;
  float _856;
  int _859;
  int _867;
  float _871;
  float _873;
  bool _874;
  bool _875;
  float4 _896;
  float _903;
  bool _904;
  bool _905;
  bool _906;
  bool _907;
  float4 _924;
  float _934;
  float _942;
  float _951;
  float _965;
  int _968;
  int _976;
  float4 _983;
  int _989;
  float _997;
  int _1000;
  float _1008;
  float _1015;
  float _1019;
  int _1022;
  float _1030;
  float4 _1043;
  float _1046;
  uint _1168;
  bool _1184;
  float _1190;
  float _1209;
  float _1225;
  float _1241;
  float _1242;
  float _1246;
  float _1249;
  float _1252;
  float _1259;
  float _1266;
  float _1273;
  float _1274;
  float _1275;
  float _1276;
  float _1277;
  float _1278;
  float _1279;
  float _1295;
  float _1311;
  float _1327;
  float _1328;
  float _1329;
  float _1330;
  float _1331;
  float _1348;
  float _1349;
  float _1350;
  float _1351;
  float _1354;
  float _1357;
  float _1361;
  float _1365;
  float _1369;
  float _1389;
  float _1401;
  float _1413;
  float _1425;
  float _1432;
  float _1439;
  float _1446;
  float _1452;
  float _1453;
  float _1455;
  float _1457;
  float _1459;
  float _1464;
  float _1485;
  float _1487;
  float _1490;
  float _1493;
  float _1496;
  float _1502;
  float _1544;
  float _1547;
  float _1553;
  float _1595;
  _26 = WaveReadLaneFirst(_materialIndex);
  _34 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_26 < (uint)170000), _26, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
  _35 = TEXCOORD.x + -0.5f;
  _36 = TEXCOORD.y + -0.5f;
  _44 = (rsqrt(dot(float2(_35, _36), float2(_35, _36))) * _34) * sqrt((_36 * _36) + (_35 * _35));
  _45 = _44 * _35;
  _46 = _44 * _36;
  _49 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _56 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _59 = WaveReadLaneFirst(_materialIndex);
  _67 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
  _71 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _74 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
  _75 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _76 = 0.5f / _75;
  _77 = _71 + -0.5f;
  _78 = _74 - _76;
  _79 = dot(float2(_77, _78), float2(_77, _78));
  _80 = sqrt(_79);
  if (_67 > 0.0f) {
    _88 = sqrt(dot(float2(0.5f, _76), float2(0.5f, _76)));
    _93 = tan(_88 * _67);
    _95 = tan(_80 * _67) * (rsqrt(_79) * _88);
    _118 = (((_95 * _78) / _93) + _76);
    _119 = (((_95 * _77) / _93) + 0.5f);
  } else {
    _84 = select((_75 < 1.0f), 0.5f, _76);
    if (_67 < 0.0f) {
      _104 = _67 * -10.0f;
      _108 = atan(_84 * _104);
      _110 = atan(_80 * _104) * (rsqrt(_79) * _84);
      _118 = (((_110 * _78) / _108) + _76);
      _119 = (((_110 * _77) / _108) + 0.5f);
    } else {
      _118 = _74;
      _119 = _71;
    }
  }
  _122 = WaveReadLaneFirst(_materialIndex);
  _130 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _131 = (_130 == 1.0f);
  _133 = select(_131, _119, TEXCOORD.x) + -0.5f;
  _136 = select(_131, (_118 * _75), TEXCOORD.y) + -0.5f;
  _137 = _133 * _56;
  _153 = (_viewProj[3].w) + mad((_viewProj[3].z), _questGuideWorldPosition.z, mad((_viewProj[3].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[3].x))));
  _162 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[2].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[2].x)))) + (_viewProj[2].w)) / _153;
  _172 = ((mad((_viewProj[1].z), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[1].x)))) + (_viewProj[1].w)) / _153) * -0.5f;
  _191 = (_56 * 0.5f) * (((_viewProj[0].w) + mad((_viewProj[0].z), _questGuideWorldPosition.z, mad((_viewProj[0].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[0].x))))) / _153);
  if ((!(abs(_questGuideWorldPosition.x) <= 1e-05f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 1e-05f))) && (!(abs(_questGuideWorldPosition.y) <= 1e-05f)))) {
    if (!((_191 <= -1.5f) || ((_162 < 0.0f) || ((_191 <= -1.6f) || (((_172 >= 1.05f) || (_172 <= -1.5f)) || (_191 >= 1.6f)))))) {
      _213 = _137 - _191;
      _214 = _136 - _172;
      _216 = atan(_213 / _214);
      _217 = (_214 < 0.0f);
      _218 = (_214 == 0.0f);
      _219 = (_213 >= 0.0f);
      _220 = (_213 < 0.0f);
      _221 = _217 && _220;
      _226 = select(_221, (_216 + -3.1415927f), select((_217 && _219), (_216 + 3.1415927f), _216));
      _227 = _218 && _220;
      _228 = _218 && _219;
      _230 = select(_228, 1.5707964f, select(_227, -1.5707964f, _226));
      _234 = sqrt((_213 * _213) + (_214 * _214));
      _237 = WaveReadLaneFirst(_materialIndex);
      _245 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_237 < (uint)170000), _237, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _248 = WaveReadLaneFirst(_materialIndex);
      _256 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_248 < (uint)170000), _248, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _259 = WaveReadLaneFirst(_materialIndex);
      _267 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_259 < (uint)170000), _259, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _268 = _191 - _137;
      _269 = _172 - _136;
      _272 = WaveReadLaneFirst(_materialIndex);
      _280 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_272 < (uint)170000), _272, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _287 = max((0.02f / (sqrt((_268 * _268) + (_269 * _269)) * _280)), 0.0f);
      _288 = _287 * _287;
      _291 = WaveReadLaneFirst(_materialIndex);
      _299 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_291 < (uint)170000), _291, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _302 = _time.x * _299;
      _305 = WaveReadLaneFirst(_materialIndex);
      _313 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_305 < (uint)170000), _305, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _329 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_313 < (uint)65000), _313, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_302 - cos((_230 * 3.0f) + _172)) + (sin((_230 * 2.0f) + _191) * 4.0f)), _302));
      _337 = 1.0f / exp2((_234 * 1.442695f) * ((frac(_329.x) * 0.66f) + 0.33f));
      _340 = frac((_337 * 20.0f) + 1.003125f);
      _347 = exp2(log2(1.0f - abs((_337 * 2.0f) + -1.0f)) * 0.3f);
      _351 = sin(select(_228, 6.2831855f, select(_227, -6.2831855f, (_226 * 4.0f))));
      _352 = _351 * _213;
      _353 = _351 * _214;
      _372 = (_337 * 0.49999997f) * exp2(log2((exp2(log2(1.0f - saturate(sqrt((_352 * _352) + (_353 * _353)))) * 8.0f) + (saturate(_337 + -0.9f) * 3.0f)) * _337) * 12.95f);
      _375 = WaveReadLaneFirst(_materialIndex);
      _383 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_375 < (uint)170000), _375, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _387 = exp2(log2(_234 * 16.0f) * 0.5f);
      _389 = atan(_214 / _213);
      _390 = (_213 == 0.0f);
      _391 = (_214 >= 0.0f);
      _412 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_383 < (uint)65000), _383, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_391 && _390), 2.3561945f, select((_217 && _390), -2.3561945f, (select(_221, (_389 + -3.1415927f), select((_391 && _220), (_389 + 3.1415927f), _389)) * 1.5f))), ((_time.x * 0.2f) - _387)));
      _419 = atan((-0.0f - _214) / (-0.0f - _213));
      _420 = (_213 > -0.0f);
      _421 = (_213 == -0.0f);
      _422 = (_214 <= -0.0f);
      _423 = (_214 > -0.0f);
      _440 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_383 < (uint)65000), _383, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_422 && _421), 2.3561945f, select((_423 && _421), -2.3561945f, (select((_423 && _420), (_419 + -3.1415927f), select((_422 && _420), (_419 + 3.1415927f), _419)) * 1.5f))), ((_time.x * 0.2f) - (_387 * 0.5f))));
      _450 = exp2(log2(min(max((1.0f - (_234 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
      _458 = exp2(log2(min(max((1.1f - (_234 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
      _467 = (((pow(_234, 0.1f)) * 0.1f) + 0.8f) + (sin(_329.x * 8.0f) * 0.2f);
      _481 = (exp2(log2(saturate(1.0f - (sqrt((_136 * _136) + (_133 * _133)) * _256))) * _267) * 150.0f) * _exposure2.x;
      _484 = WaveReadLaneFirst(_materialIndex);
      _492 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_484 < (uint)170000), _484, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _499 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_492 < (uint)65000), _492, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _505 = WaveReadLaneFirst(_materialIndex);
      _513 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_505 < (uint)170000), _505, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _516 = WaveReadLaneFirst(_materialIndex);
      _524 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_516 < (uint)170000), _516, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _531 = ((_viewDir.x + _viewDir.y) * 33.600002f) + (TEXCOORD.x * 0.1f);
      _535 = frac(sin(floor(_531)) * 43758.547f);
      _538 = WaveReadLaneFirst(_materialIndex);
      _546 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_538 < (uint)170000), _538, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _559 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _562 = ((((((frac(sin(ceil(_531)) * 43758.547f) - _535) * frac(_531)) + _535) * 0.65f) + 0.35f) * _546) * _559.w;
      _1165 = (((saturate(((saturate(pow(_499.z, _513)) + -1.0f) * _524) + 1.0f) * _562) * (((((((((min(max((abs((frac(_340 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _347) + 1.0f) * _372) + (((exp2(log2(saturate(max(_412.z, _440.z))) * 4.0f) * _450) + _458) * 7.0f)) * _467) + _288) * _481) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_45 + TEXCOORD.x), (_46 + TEXCOORD.y))))).z))) + _49.z);
      _1166 = (((saturate(((saturate(pow(_499.y, _513)) + -1.0f) * _524) + 1.0f) * _562) * (((((((((min(max((abs((frac(_340 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _347) + 1.0f) * _372) + (((exp2(log2(saturate(max(_412.y, _440.y))) * 4.0f) * _450) + _458) * 5.6f)) * _467) + _288) * _481) + _559.y)) + _49.y);
      _1167 = (((saturate(((saturate(pow(_499.x, _513)) + -1.0f) * _524) + 1.0f) * _562) * (((((((((min(max((abs((frac(_340 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _347) + 1.0f) * _372) + (((exp2(log2(saturate(max(_412.x, _440.x))) * 4.0f) * _450) + _458) * 5.6f)) * _467) + _288) * _481) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _45), (TEXCOORD.y - _46))))).x))) + _49.x);
    } else {
      _1165 = _49.z;
      _1166 = _49.y;
      _1167 = _49.x;
    }
  } else {
    if (!((_162 < 0.0f) || ((_191 <= -1.5f) || ((_191 <= -1.6f) || (((_172 >= 1.05f) || (_172 <= -1.5f)) || (_191 >= 1.6f)))))) {
      if (!(abs(_questGuideWorldPosition.z) <= 1e-05f)) {
        _697 = _137 - _191;
        _698 = _136 - _172;
        _700 = atan(_697 / _698);
        _701 = (_698 < 0.0f);
        _702 = (_698 == 0.0f);
        _703 = (_697 >= 0.0f);
        _704 = (_697 < 0.0f);
        _705 = _701 && _704;
        _710 = select(_705, (_700 + -3.1415927f), select((_701 && _703), (_700 + 3.1415927f), _700));
        _711 = _702 && _704;
        _712 = _702 && _703;
        _714 = select(_712, 1.5707964f, select(_711, -1.5707964f, _710));
        _718 = sqrt((_697 * _697) + (_698 * _698));
        _721 = WaveReadLaneFirst(_materialIndex);
        _729 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_721 < (uint)170000), _721, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _732 = WaveReadLaneFirst(_materialIndex);
        _740 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_732 < (uint)170000), _732, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
        _743 = WaveReadLaneFirst(_materialIndex);
        _751 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_743 < (uint)170000), _743, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
        _752 = _191 - _137;
        _753 = _172 - _136;
        _756 = WaveReadLaneFirst(_materialIndex);
        _764 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_756 < (uint)170000), _756, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
        _771 = max((0.02f / (sqrt((_752 * _752) + (_753 * _753)) * _764)), 0.0f);
        _772 = _771 * _771;
        _775 = WaveReadLaneFirst(_materialIndex);
        _783 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_775 < (uint)170000), _775, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
        _786 = _time.x * _783;
        _789 = WaveReadLaneFirst(_materialIndex);
        _797 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_789 < (uint)170000), _789, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _813 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_797 < (uint)65000), _797, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_786 - cos((_714 * 3.0f) + _172)) + (sin((_714 * 2.0f) + _191) * 4.0f)), _786));
        _821 = 1.0f / exp2((_718 * 1.442695f) * ((frac(_813.x) * 0.66f) + 0.33f));
        _824 = frac((_821 * 20.0f) + 1.003125f);
        _831 = exp2(log2(1.0f - abs((_821 * 2.0f) + -1.0f)) * 0.3f);
        _835 = sin(select(_712, 6.2831855f, select(_711, -6.2831855f, (_710 * 4.0f))));
        _836 = _835 * _697;
        _837 = _835 * _698;
        _856 = (_821 * 0.49999997f) * exp2(log2((exp2(log2(1.0f - saturate(sqrt((_836 * _836) + (_837 * _837)))) * 8.0f) + (saturate(_821 + -0.9f) * 3.0f)) * _821) * 12.95f);
        _859 = WaveReadLaneFirst(_materialIndex);
        _867 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_859 < (uint)170000), _859, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _871 = exp2(log2(_718 * 16.0f) * 0.5f);
        _873 = atan(_698 / _697);
        _874 = (_697 == 0.0f);
        _875 = (_698 >= 0.0f);
        _896 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_867 < (uint)65000), _867, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_875 && _874), 2.3561945f, select((_701 && _874), -2.3561945f, (select(_705, (_873 + -3.1415927f), select((_875 && _704), (_873 + 3.1415927f), _873)) * 1.5f))), ((_time.x * 0.2f) - _871)));
        _903 = atan((-0.0f - _698) / (-0.0f - _697));
        _904 = (_697 > -0.0f);
        _905 = (_697 == -0.0f);
        _906 = (_698 <= -0.0f);
        _907 = (_698 > -0.0f);
        _924 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_867 < (uint)65000), _867, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_906 && _905), 2.3561945f, select((_907 && _905), -2.3561945f, (select((_907 && _904), (_903 + -3.1415927f), select((_906 && _904), (_903 + 3.1415927f), _903)) * 1.5f))), ((_time.x * 0.2f) - (_871 * 0.5f))));
        _934 = exp2(log2(min(max((1.0f - (_718 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
        _942 = exp2(log2(min(max((1.1f - (_718 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
        _951 = (((pow(_718, 0.1f)) * 0.1f) + 0.8f) + (sin(_813.x * 8.0f) * 0.2f);
        _965 = (exp2(log2(saturate(1.0f - (sqrt((_136 * _136) + (_133 * _133)) * _740))) * _751) * 150.0f) * _exposure2.x;
        _968 = WaveReadLaneFirst(_materialIndex);
        _976 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_968 < (uint)170000), _968, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
        _983 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_976 < (uint)65000), _976, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
        _989 = WaveReadLaneFirst(_materialIndex);
        _997 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_989 < (uint)170000), _989, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
        _1000 = WaveReadLaneFirst(_materialIndex);
        _1008 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1000 < (uint)170000), _1000, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
        _1015 = ((_viewDir.x + _viewDir.y) * 33.600002f) + (TEXCOORD.x * 0.1f);
        _1019 = frac(sin(floor(_1015)) * 43758.547f);
        _1022 = WaveReadLaneFirst(_materialIndex);
        _1030 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1022 < (uint)170000), _1022, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1043 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _1046 = ((((((frac(sin(ceil(_1015)) * 43758.547f) - _1019) * frac(_1015)) + _1019) * 0.65f) + 0.35f) * _1030) * _1043.w;
        _1165 = (((saturate(((saturate(pow(_983.z, _997)) + -1.0f) * _1008) + 1.0f) * _1046) * (((((((((min(max((abs((frac(_824 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _831) + 1.0f) * _856) + (((exp2(log2(saturate(max(_896.z, _924.z))) * 4.0f) * _934) + _942) * 7.0f)) * _951) + _772) * _965) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_45 + TEXCOORD.x), (_46 + TEXCOORD.y))))).z))) + _49.z);
        _1166 = (((saturate(((saturate(pow(_983.y, _997)) + -1.0f) * _1008) + 1.0f) * _1046) * (((((((((min(max((abs((frac(_824 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _831) + 1.0f) * _856) + (((exp2(log2(saturate(max(_896.y, _924.y))) * 4.0f) * _934) + _942) * 5.6f)) * _951) + _772) * _965) + _1043.y)) + _49.y);
        _1167 = (((saturate(((saturate(pow(_983.x, _997)) + -1.0f) * _1008) + 1.0f) * _1046) * (((((((((min(max((abs((frac(_824 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _831) + 1.0f) * _856) + (((exp2(log2(saturate(max(_896.x, _924.x))) * 4.0f) * _934) + _942) * 5.6f)) * _951) + _772) * _965) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _45), (TEXCOORD.y - _46))))).x))) + _49.x);
      } else {
        _1165 = _49.z;
        _1166 = _49.y;
        _1167 = _49.x;
      }
    } else {
      _1165 = _49.z;
      _1166 = _49.y;
      _1167 = _49.x;
    }
  }
  _1168 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1181 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1168, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1181 = 1.0f;
  }
  _1184 = (_localToneMappingParams.w > 0.0f);
  if (_1184) {
    _1190 = _exposure0.x * _userImageAdjust.z;
    _1209 = exp2(_powerParams.x * log2(max(0.0f, (((_1190 * max(0.0f, (((_1166 * -0.62179f) - (_1165 * 0.08326f)) + (_1167 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _1225 = exp2(log2(max(0.0f, (((_slopeParams.y * _1190) * max(0.0f, (((_1166 * 1.1408f) - (_1165 * 0.01055f)) - (_1167 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _1241 = exp2(log2(max(0.0f, (((_slopeParams.z * _1190) * max(0.0f, (((_1165 * 1.15297f) - (_1166 * 0.12897f)) - (_1167 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _1242 = dot(float3(_1209, _1225, _1241), float3(0.212671f, 0.71516f, 0.072169f));
    _1246 = ((_1209 - _1242) * _powerParams.w) + _1242;
    _1249 = ((_1225 - _1242) * _powerParams.w) + _1242;
    _1252 = ((_1241 - _1242) * _powerParams.w) + _1242;
    _1259 = min(max(log2(mad(_1252, 0.079223745f, mad(_1249, 0.0784336f, (_1246 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1266 = min(max(log2(mad(_1252, 0.07916613f, mad(_1249, 0.87846863f, (_1246 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1273 = min(max(log2(mad(_1252, 0.879143f, mad(_1249, 0.0784336f, (_1246 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1274 = _1259 * 0.060606062f;
    _1275 = _1266 * 0.060606062f;
    _1276 = _1273 * 0.060606062f;
    _1277 = _1274 * _1274;
    _1278 = _1275 * _1275;
    _1279 = _1276 * _1276;
    _1295 = min(0.0f, (-0.0f - (((_1259 * 0.0072181816f) + ((_1277 * 0.4298f) + (((_1277 * _1277) * ((31.96f - (_1259 * 2.4327273f)) + (_1277 * 15.5f))) - ((_1259 * 0.41624245f) * _1277)))) + -0.00232f)));
    _1311 = min(0.0f, (-0.0f - (((_1266 * 0.0072181816f) + ((_1278 * 0.4298f) + (((_1278 * _1278) * ((31.96f - (_1266 * 2.4327273f)) + (_1278 * 15.5f))) - ((_1266 * 0.41624245f) * _1278)))) + -0.00232f)));
    _1327 = min(0.0f, (-0.0f - (((_1273 * 0.0072181816f) + ((_1279 * 0.4298f) + (((_1279 * _1279) * ((31.96f - (_1273 * 2.4327273f)) + (_1279 * 15.5f))) - ((_1273 * 0.41624245f) * _1279)))) + -0.00232f)));
    _1328 = -0.0f - _1295;
    _1329 = -0.0f - _1311;
    _1330 = -0.0f - _1327;
    _1331 = dot(float3(_1328, _1329, _1330), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1348 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1349 = -0.79999995f / _1348;
      _1350 = -1.2f / _1348;
      _1351 = 0.20000005f / _1348;
      _1354 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1357 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1361 = (_1349 + 1.4f) + (_1357 * (-0.39999998f - _1349));
      _1365 = (_1350 + 1.6f) + (_1357 * (-0.6f - _1350));
      _1369 = (_1351 + 0.9f) + (_1357 * (0.5f - _1351));
      _1386 = (lerp(_1369, 1.4f, _1354));  // [sem: blended]
      _1387 = (lerp(_1361, 1.0f, _1354));  // [sem: blended]
      _1388 = (lerp(_1365, 1.2f, _1354));  // [sem: blended]
    } else {
      _1386 = 1.4f;  // [sem: blended]
      _1387 = 1.0f;  // [sem: blended]
      _1388 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1389 = 1.0f - _1388;
    _1401 = ((exp2(log2(((saturate((_1295 * _1295) * _1328) * _1389) + _1388) * _1328) * _1387) - _1331) * _1386) + _1331;
    _1413 = ((exp2(log2(((saturate((_1311 * _1311) * _1329) * _1389) + _1388) * _1329) * _1387) - _1331) * _1386) + _1331;
    _1425 = ((exp2(log2(((saturate((_1327 * _1327) * _1330) * _1389) + _1388) * _1330) * _1387) - _1331) * _1386) + _1331;
    _1432 = saturate(exp2(log2(mad(_1425, -0.09902974f, mad(_1413, -0.09802088f, (_1401 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1439 = saturate(exp2(log2(mad(_1425, -0.098961174f, mad(_1413, 1.1519032f, (_1401 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1446 = saturate(exp2(log2(mad(_1425, 1.1510737f, mad(_1413, -0.09804345f, (_1401 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1452 = 1.0f - abs(_etcParams.w);
      _1453 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1455 = (_1452 * _1432) + _1453;
      _1457 = (_1452 * _1439) + _1453;
      _1459 = (_1452 * _1446) + _1453;
      if (_colorGradingParams.w > 0.0f) {
        _1464 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1481 = (((max(0.0f, (1.0f - _1459)) - _1459) * _1464) + _1459);
        _1482 = (((max(0.0f, (1.0f - _1457)) - _1457) * _1464) + _1457);
        _1483 = (((max(0.0f, (1.0f - _1455)) - _1455) * _1464) + _1455);
      } else {
        _1481 = _1459;
        _1482 = _1457;
        _1483 = _1455;
      }
      _1485 = _userImageAdjust.y + 1.0f;
      _1487 = _userImageAdjust.x + 0.5f;
      _1490 = ((_1483 + -0.5f) * _1485) + _1487;
      _1493 = ((_1482 + -0.5f) * _1485) + _1487;
      _1496 = ((_1481 + -0.5f) * _1485) + _1487;
      _1502 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1537 = exp2(log2(saturate(mad(_colorBlind2.z, _1496, mad(_colorBlind2.y, _1493, (_colorBlind2.x * _1490))))) * _1502);
      _1538 = exp2(log2(saturate(mad(_colorBlind1.z, _1496, mad(_colorBlind1.y, _1493, (_colorBlind1.x * _1490))))) * _1502);
      _1539 = exp2(log2(saturate(mad(_colorBlind0.z, _1496, mad(_colorBlind0.y, _1493, (_colorBlind0.x * _1490))))) * _1502);
    } else {
      _1537 = _1446;
      _1538 = _1439;
      _1539 = _1432;
    }
  } else {
    _1537 = _1165;
    _1538 = _1166;
    _1539 = _1167;
  }
  if (_etcParams.y > 1.0f) {
    _1544 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1547 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1553 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1544, _1547), float2(_1544, _1547))));  // [sem: expr_sat]
    _1558 = (_1553 * _1537);
    _1559 = (_1553 * _1538);
    _1560 = (_1553 * _1539);
  } else {
    _1558 = _1537;
    _1559 = _1538;
    _1560 = _1539;
  }
  if (_1184 && (_etcParams.z > 0.0f)) {
    _1590 = select((_1558 <= 0.0031308f), (_1558 * 12.92f), (((pow(_1558, 0.41666666f)) * 1.055f) + -0.055f));
    _1591 = select((_1559 <= 0.0031308f), (_1559 * 12.92f), (((pow(_1559, 0.41666666f)) * 1.055f) + -0.055f));
    _1592 = select((_1560 <= 0.0031308f), (_1560 * 12.92f), (((pow(_1560, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1590 = _1558;
    _1591 = _1559;
    _1592 = _1560;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1595 = (float)((uint)((uint)(_1168)));
    if (!(_1595 < _viewDir.w)) {
      if (!(!(_1595 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1606 = 0.0f;
        _1607 = 0.0f;
        _1608 = 0.0f;
      } else {
        _1606 = _1590;
        _1607 = _1591;
        _1608 = _1592;
      }
    } else {
      _1606 = 0.0f;
      _1607 = 0.0f;
      _1608 = 0.0f;
    }
  } else {
    _1606 = _1590;
    _1607 = _1591;
    _1608 = _1592;
  }
  SV_Target.x = _1608;
  SV_Target.y = _1607;
  SV_Target.z = _1606;
  SV_Target.w = _1181;
  return SV_Target;
}
