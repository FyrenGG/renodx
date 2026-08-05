struct PostProcessFocusStruct {
  float _focusRatio;
  float _focusSceneDepthFade;
  float _focusBackgroundSaturation;
  float _focus3DBlend;
  float _focusCharacterMaterialMask;
  float _focusColorBrightness;
  uint _focusColor;
  float _focusColorRemap;
  float _maskRatio;
  float _maskNoiseIntensity;
  float _maskBlurThickness;
  float _maskBlurPower;
  uint _maskNoiseTexture;
  float _playerFocusRadius;
  float _playerFocusCenterRadius;
  float _playerFocusPower;
  float3 _playerFocusPositionOffset;
  float _targetFocusRadius;
  float _targetFocusCenterRadius;
  float _targetFocusPower;
  float3 _targetFocusPositionOffset;
  float _connectPlayerTargetDistance;
  float _connectPlayerTargetPower;
  float _worldFocusRadius;
  float _worldFocusCenterRadius;
  float _worldFocusPower;
  float3 _worldFocusPosition;
};

struct BindlessParameters_PostProcessFocus {
  PostProcessFocusStruct BindlessParameters_PostProcessFocus;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessFocus BindlessParameters_PostProcessFocus_t;
ConstantBuffer<BindlessParameters_PostProcessFocus_t> BindlessParameters_PostProcessFocus[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _26;
  float4 _29;
  float _35;
  float _38;
  float _41;
  float _50;
  float _59;
  float _68;
  int _71;
  float _79;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _629;
  float _635;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _641;
  float _821;
  float _832;
  float _833;
  float _1062;
  float _1079;
  float _1080;
  float _1217;
  float _1268;
  float _1269;
  float _1270;
  float _1330;
  float _1331;
  float _1332;
  float _1346;
  float _1551;
  float _1552;
  float _1553;
  float _1646;
  float _1647;
  float _1648;
  float _1702;
  float _1703;
  float _1704;
  float _1723;
  float _1724;
  float _1725;
  float _1755;
  float _1756;
  float _1757;
  float _1771;
  float _1772;
  float _1773;
  float _84;
  float _87;
  float _89;
  float _90;
  float _102;
  float _111;
  float _120;
  float _129;
  int _132;
  int _140;
  float _143;
  float _146;
  float _148;
  float _151;
  int _154;
  float _162;
  float _173;
  float _184;
  float _195;
  int _198;
  float _206;
  int _209;
  float _217;
  int _220;
  float _228;
  int _231;
  float _239;
  int _244;
  float _252;
  int _255;
  float _263;
  float _267;
  float _271;
  float _274;
  float _276;
  float _278;
  int _281;
  float _289;
  float _292;
  float _294;
  float _296;
  float _301;
  float _302;
  float _303;
  float _304;
  float _314;
  float _328;
  float _337;
  float _348;
  float _352;
  float _356;
  float _360;
  float _364;
  float _372;
  float _373;
  float _380;
  float _382;
  float _384;
  float _386;
  float _390;
  float _398;
  float _405;
  float _406;
  float _410;
  float _426;
  int _442;
  float _450;
  int _453;
  float _461;
  float _465;
  float _469;
  float _472;
  float _474;
  float _476;
  int _479;
  float _487;
  float _490;
  float _492;
  float _494;
  float _499;
  float _500;
  float _501;
  float _502;
  float _512;
  float _526;
  float _535;
  float _546;
  float _550;
  float _554;
  float _558;
  float _562;
  float _570;
  float _571;
  float _578;
  float _580;
  float _582;
  float _584;
  float _588;
  float _596;
  float _603;
  float _604;
  float _608;
  float _624;
  int _646;
  float _654;
  int _657;
  float _665;
  float _669;
  float _673;
  int _676;
  float _684;
  float _687;
  float _689;
  float _691;
  float _692;
  float _693;
  float _694;
  float _704;
  float _718;
  float _727;
  float _738;
  float _742;
  float _746;
  float _750;
  float _754;
  float _762;
  float _763;
  float _770;
  float _772;
  float _774;
  float _776;
  float _780;
  float _788;
  float _795;
  float _796;
  float _800;
  float _816;
  int _836;
  float _844;
  int _853;
  float _861;
  float _862;
  float _863;
  float _864;
  float _865;
  float _866;
  float _867;
  float _868;
  float _869;
  float _873;
  float _875;
  float _877;
  float _879;
  float _891;
  float _896;
  float _898;
  float _900;
  float _912;
  float _921;
  float _932;
  float _936;
  float _940;
  float _944;
  float _948;
  float _956;
  float _957;
  float _964;
  float _968;
  float _969;
  float _970;
  float _971;
  float _975;
  float _980;
  float _987;
  float _989;
  float _991;
  float _993;
  float _997;
  float _1005;
  float _1012;
  float _1025;
  float _1028;
  float _1030;
  float _1033;
  float _1034;
  float _1038;
  float _1040;
  float _1043;
  float _1057;
  float _1063;
  float _1064;
  float _1065;
  float _1066;
  float4 _1083;
  float _1088;
  float _1091;
  int _1094;
  float _1102;
  bool _1117;
  int _1120;
  float _1128;
  float _1187;
  int _1190;
  float _1198;
  int _1203;
  float _1211;
  float _1218;
  int _1221;
  float _1229;
  int _1232;
  float _1240;
  float _1242;
  float _1254;
  int _1273;
  float _1281;
  float _1303;
  float _1308;
  float _1309;
  float _1312;
  float _1315;
  float _1318;
  float _1319;
  uint _1333;
  bool _1349;
  float _1355;
  float _1374;
  float _1390;
  float _1406;
  float _1407;
  float _1411;
  float _1414;
  float _1417;
  float _1424;
  float _1431;
  float _1438;
  float _1439;
  float _1440;
  float _1441;
  float _1442;
  float _1443;
  float _1444;
  float _1460;
  float _1476;
  float _1492;
  float _1493;
  float _1494;
  float _1495;
  float _1496;
  float _1513;
  float _1514;
  float _1515;
  float _1516;
  float _1519;
  float _1522;
  float _1526;
  float _1530;
  float _1534;
  float _1554;
  float _1566;
  float _1578;
  float _1590;
  float _1597;
  float _1604;
  float _1611;
  float _1617;
  float _1618;
  float _1620;
  float _1622;
  float _1624;
  float _1629;
  float _1650;
  float _1652;
  float _1655;
  float _1658;
  float _1661;
  float _1667;
  float _1709;
  float _1712;
  float _1718;
  float _1760;
  float _1777;
  float _1781;
  float _1785;
  _26 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (pow(_29.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_29.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_29.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _50 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  _59 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = WaveReadLaneFirst(_materialIndex);
  _79 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusRatio);
  if (!(!(_79 >= 0.001f))) {
    _84 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _87 = (TEXCOORD.x * 2.0f) + -1.0f;
    _89 = 1.0f - (TEXCOORD.y * 2.0f);
    _90 = max(1e-07f, _84.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _102 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _90, mad((_invViewProj[3].y), _89, ((_invViewProj[3].x) * _87)));
    _111 = (mad((_invViewProj[0].z), _90, mad((_invViewProj[0].y), _89, ((_invViewProj[0].x) * _87))) + (_invViewProj[0].w)) / _102;
    _120 = (mad((_invViewProj[1].z), _90, mad((_invViewProj[1].y), _89, ((_invViewProj[1].x) * _87))) + (_invViewProj[1].w)) / _102;
    _129 = (mad((_invViewProj[2].z), _90, mad((_invViewProj[2].y), _89, ((_invViewProj[2].x) * _87))) + (_invViewProj[2].w)) / _102;
    _132 = WaveReadLaneFirst(_materialIndex);
    _140 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_132 < (uint)170000), _132, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColor);
    _143 = (float)((uint)((uint)(((uint)((uint)(_140)) >> 16) & 255)));
    _146 = (float)((uint)((uint)(((uint)((uint)(_140)) >> 8) & 255)));
    _148 = (float)((uint)((uint)(_140 & 255)));
    _151 = max(0.001f, _exposure0.x);
    _154 = WaveReadLaneFirst(_materialIndex);
    _162 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_154 < (uint)170000), _154, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorBrightness);
    _173 = (select(((_143 * 0.003921569f) < 0.04045f), (_143 * 0.000303527f), exp2(log2((_143 * 0.003717127f) + 0.052132703f) * 2.4f)) / _151) * _162;
    _184 = (select(((_146 * 0.003921569f) < 0.04045f), (_146 * 0.000303527f), exp2(log2((_146 * 0.003717127f) + 0.052132703f) * 2.4f)) / _151) * _162;
    _195 = (select(((_148 * 0.003921569f) < 0.04045f), (_148 * 0.000303527f), exp2(log2((_148 * 0.003717127f) + 0.052132703f) * 2.4f)) / _151) * _162;
    _198 = WaveReadLaneFirst(_materialIndex);
    _206 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_198 < (uint)170000), _198, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusRadius);
    _209 = WaveReadLaneFirst(_materialIndex);
    _217 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_209 < (uint)170000), _209, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusRadius);
    _220 = WaveReadLaneFirst(_materialIndex);
    _228 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_220 < (uint)170000), _220, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusRadius);
    _231 = WaveReadLaneFirst(_materialIndex);
    _239 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_231 < (uint)170000), _231, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focus3DBlend);
    if (!(!(_206 >= 0.001f))) {
      _244 = WaveReadLaneFirst(_materialIndex);
      _252 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusCenterRadius);
      _255 = WaveReadLaneFirst(_materialIndex);
      _263 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_255 < (uint)170000), _255, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.x);
      _267 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_255 < (uint)170000), _255, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.y);
      _271 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_255 < (uint)170000), _255, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.z);
      _274 = _mainPosition.x + _263;
      _276 = _mainPosition.y + _267;
      _278 = _mainPosition.z + _271;
      _281 = WaveReadLaneFirst(_materialIndex);
      _289 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_281 < (uint)170000), _281, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPower);
      _292 = _274 - _viewPos.x;
      _294 = _276 - _viewPos.y;
      _296 = _278 - _viewPos.z;
      _301 = dot(float3(_292, _294, _296), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _302 = _111 - _274;
      _303 = _120 - _276;
      _304 = _129 - _278;
      _314 = saturate((sqrt(((_303 * _303) + (_302 * _302)) + (_304 * _304)) - _252) / max(0.001f, _206));  // [sem: expr_sat]
      if (_239 < 1.0f) {
        _328 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _296, mad((_viewProjRelative[3].y), _294, ((_viewProjRelative[3].x) * _292)));
        _337 = (mad((_viewProjRelative[0].z), _296, mad((_viewProjRelative[0].y), _294, ((_viewProjRelative[0].x) * _292))) + (_viewProjRelative[0].w)) / _328;
        _348 = 0.5f - (((mad((_viewProjRelative[1].z), _296, mad((_viewProjRelative[1].y), _294, ((_viewProjRelative[1].x) * _292))) + (_viewProjRelative[1].w)) / _328) * 0.5f);
        _352 = ((_view[0].x) * _206) + _292;
        _356 = ((_view[0].y) * _206) + _294;
        _360 = ((_view[0].z) * _206) + _296;
        _364 = mad((_viewProjRelative[3].z), _360, mad((_viewProjRelative[3].y), _356, (_352 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _372 = (0.5f - (((mad((_viewProjRelative[1].z), _360, mad((_viewProjRelative[1].y), _356, (_352 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _364) * 0.5f)) - _348;
        _373 = _26 * 0.5f;
        _380 = (((mad((_viewProjRelative[0].z), _360, mad((_viewProjRelative[0].y), _356, (_352 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _364) - _337) * _373;
        _382 = ((_view[0].x) * _252) + _292;
        _384 = ((_view[0].y) * _252) + _294;
        _386 = ((_view[0].z) * _252) + _296;
        _390 = mad((_viewProjRelative[3].z), _386, mad((_viewProjRelative[3].y), _384, (_382 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _398 = (0.5f - (((mad((_viewProjRelative[1].z), _386, mad((_viewProjRelative[1].y), _384, (_382 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _390) * 0.5f)) - _348;
        _405 = (((mad((_viewProjRelative[0].z), _386, mad((_viewProjRelative[0].y), _384, (_382 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _390) - _337) * _373;
        _406 = TEXCOORD.y - _348;
        _410 = ((TEXCOORD.x + -0.5f) - (_337 * 0.5f)) * _26;
        // [sem: expr_sat]
        _426 = saturate((sqrt((_406 * _406) + (_410 * _410)) - sqrt((_405 * _405) + (_398 * _398))) / max(0.001f, sqrt((_380 * _380) + (_372 * _372))));
        _431 = _301;
        _432 = _278;
        _433 = _276;
        _434 = _274;
        _435 = _289;
        _436 = _252;
        _437 = (lerp(_426, _314, _239));  // [sem: blended]
      } else {
        _431 = _301;
        _432 = _278;
        _433 = _276;
        _434 = _274;
        _435 = _289;
        _436 = _252;
        _437 = _314;  // [sem: blended]
      }
    } else {
      _431 = 1.0f;
      _432 = 0.0f;
      _433 = 0.0f;
      _434 = 0.0f;
      _435 = 1.0f;
      _436 = 0.0f;
      _437 = 1.0f;  // [sem: blended]
    }
    if (!(!(_217 >= 0.001f))) {
      _442 = WaveReadLaneFirst(_materialIndex);
      _450 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_442 < (uint)170000), _442, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusCenterRadius);
      _453 = WaveReadLaneFirst(_materialIndex);
      _461 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_453 < (uint)170000), _453, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.x);
      _465 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_453 < (uint)170000), _453, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.y);
      _469 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_453 < (uint)170000), _453, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.z);
      _472 = _targetFocusPosition.x + _461;
      _474 = _targetFocusPosition.y + _465;
      _476 = _targetFocusPosition.z + _469;
      _479 = WaveReadLaneFirst(_materialIndex);
      _487 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_479 < (uint)170000), _479, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPower);
      _490 = _472 - _viewPos.x;
      _492 = _474 - _viewPos.y;
      _494 = _476 - _viewPos.z;
      _499 = dot(float3(_490, _492, _494), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _500 = _111 - _472;
      _501 = _120 - _474;
      _502 = _129 - _476;
      _512 = saturate((sqrt(((_501 * _501) + (_500 * _500)) + (_502 * _502)) - _450) / max(0.001f, _217));  // [sem: expr_sat]
      if (_239 < 1.0f) {
        _526 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _494, mad((_viewProjRelative[3].y), _492, ((_viewProjRelative[3].x) * _490)));
        _535 = (mad((_viewProjRelative[0].z), _494, mad((_viewProjRelative[0].y), _492, ((_viewProjRelative[0].x) * _490))) + (_viewProjRelative[0].w)) / _526;
        _546 = 0.5f - (((mad((_viewProjRelative[1].z), _494, mad((_viewProjRelative[1].y), _492, ((_viewProjRelative[1].x) * _490))) + (_viewProjRelative[1].w)) / _526) * 0.5f);
        _550 = ((_view[0].x) * _217) + _490;
        _554 = ((_view[0].y) * _217) + _492;
        _558 = ((_view[0].z) * _217) + _494;
        _562 = mad((_viewProjRelative[3].z), _558, mad((_viewProjRelative[3].y), _554, (_550 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _570 = (0.5f - (((mad((_viewProjRelative[1].z), _558, mad((_viewProjRelative[1].y), _554, (_550 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _562) * 0.5f)) - _546;
        _571 = _26 * 0.5f;
        _578 = (((mad((_viewProjRelative[0].z), _558, mad((_viewProjRelative[0].y), _554, (_550 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _562) - _535) * _571;
        _580 = ((_view[0].x) * _450) + _490;
        _582 = ((_view[0].y) * _450) + _492;
        _584 = ((_view[0].z) * _450) + _494;
        _588 = mad((_viewProjRelative[3].z), _584, mad((_viewProjRelative[3].y), _582, (_580 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _596 = (0.5f - (((mad((_viewProjRelative[1].z), _584, mad((_viewProjRelative[1].y), _582, (_580 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _588) * 0.5f)) - _546;
        _603 = (((mad((_viewProjRelative[0].z), _584, mad((_viewProjRelative[0].y), _582, (_580 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _588) - _535) * _571;
        _604 = TEXCOORD.y - _546;
        _608 = ((TEXCOORD.x + -0.5f) - (_535 * 0.5f)) * _26;
        // [sem: expr_sat]
        _624 = saturate((sqrt((_604 * _604) + (_608 * _608)) - sqrt((_603 * _603) + (_596 * _596))) / max(0.001f, sqrt((_578 * _578) + (_570 * _570))));
        _629 = (lerp(_624, _512, _239));  // [sem: blended]
      } else {
        _629 = _512;  // [sem: blended]
      }
      _635 = _499;
      _636 = _476;
      _637 = _474;
      _638 = _472;
      _639 = _487;
      _640 = _450;
      _641 = ((saturate(_499) * (_629 + -1.0f)) + 1.0f);
    } else {
      _635 = 1.0f;
      _636 = 0.0f;
      _637 = 0.0f;
      _638 = 0.0f;
      _639 = 1.0f;
      _640 = 0.0f;
      _641 = 1.0f;
    }
    if (!(!(_228 >= 0.001f))) {
      _646 = WaveReadLaneFirst(_materialIndex);
      _654 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_646 < (uint)170000), _646, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusCenterRadius);
      _657 = WaveReadLaneFirst(_materialIndex);
      _665 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_657 < (uint)170000), _657, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.x);
      _669 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_657 < (uint)170000), _657, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.y);
      _673 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_657 < (uint)170000), _657, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.z);
      _676 = WaveReadLaneFirst(_materialIndex);
      _684 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_676 < (uint)170000), _676, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPower);
      _687 = _665 - _viewPos.x;
      _689 = _669 - _viewPos.y;
      _691 = _673 - _viewPos.z;
      _692 = _111 - _665;
      _693 = _120 - _669;
      _694 = _129 - _673;
      _704 = saturate((sqrt(((_693 * _693) + (_692 * _692)) + (_694 * _694)) - _654) / max(0.001f, _228));  // [sem: expr_sat]
      if (_239 < 1.0f) {
        _718 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _691, mad((_viewProjRelative[3].y), _689, ((_viewProjRelative[3].x) * _687)));
        _727 = (mad((_viewProjRelative[0].z), _691, mad((_viewProjRelative[0].y), _689, ((_viewProjRelative[0].x) * _687))) + (_viewProjRelative[0].w)) / _718;
        _738 = 0.5f - (((mad((_viewProjRelative[1].z), _691, mad((_viewProjRelative[1].y), _689, ((_viewProjRelative[1].x) * _687))) + (_viewProjRelative[1].w)) / _718) * 0.5f);
        _742 = ((_view[0].x) * _228) + _687;
        _746 = ((_view[0].y) * _228) + _689;
        _750 = ((_view[0].z) * _228) + _691;
        _754 = mad((_viewProjRelative[3].z), _750, mad((_viewProjRelative[3].y), _746, (_742 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _762 = (0.5f - (((mad((_viewProjRelative[1].z), _750, mad((_viewProjRelative[1].y), _746, (_742 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _754) * 0.5f)) - _738;
        _763 = _26 * 0.5f;
        _770 = (((mad((_viewProjRelative[0].z), _750, mad((_viewProjRelative[0].y), _746, (_742 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _754) - _727) * _763;
        _772 = ((_view[0].x) * _654) + _687;
        _774 = ((_view[0].y) * _654) + _689;
        _776 = ((_view[0].z) * _654) + _691;
        _780 = mad((_viewProjRelative[3].z), _776, mad((_viewProjRelative[3].y), _774, (_772 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _788 = (0.5f - (((mad((_viewProjRelative[1].z), _776, mad((_viewProjRelative[1].y), _774, (_772 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _780) * 0.5f)) - _738;
        _795 = (((mad((_viewProjRelative[0].z), _776, mad((_viewProjRelative[0].y), _774, (_772 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _780) - _727) * _763;
        _796 = TEXCOORD.y - _738;
        _800 = ((TEXCOORD.x + -0.5f) - (_727 * 0.5f)) * _26;
        // [sem: expr_sat]
        _816 = saturate((sqrt((_796 * _796) + (_800 * _800)) - sqrt((_795 * _795) + (_788 * _788))) / max(0.001f, sqrt((_770 * _770) + (_762 * _762))));
        _821 = (lerp(_816, _704, _239));  // [sem: blended]
      } else {
        _821 = _704;  // [sem: blended]
      }
      _832 = _684;
      _833 = ((saturate(dot(float3(_687, _689, _691), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * (_821 + -1.0f)) + 1.0f);
    } else {
      _832 = 1.0f;
      _833 = 1.0f;
    }
    _836 = WaveReadLaneFirst(_materialIndex);
    _844 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_836 < (uint)170000), _836, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetDistance);
    if (((_206 >= 0.001f) && (_217 >= 0.001f)) && (_844 >= 0.01f)) {
      _853 = WaveReadLaneFirst(_materialIndex);
      _861 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_853 < (uint)170000), _853, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetPower);
      _862 = _436 + _206;
      _863 = _640 + _217;
      _864 = _638 - _434;
      _865 = _637 - _433;
      _866 = _636 - _432;
      _867 = _111 - _434;
      _868 = _120 - _433;
      _869 = _129 - _432;
      // [sem: expr_sat]
      _873 = saturate(dot(float3(_864, _865, _866), float3(_867, _868, _869)) / dot(float3(_864, _865, _866), float3(_864, _865, _866)));
      _875 = _867 - (_873 * _864);
      _877 = _868 - (_873 * _865);
      _879 = _869 - (_873 * _866);
      // [sem: expr_sat]
      _891 = saturate(sqrt(((_875 * _875) + (_877 * _877)) + (_879 * _879)) / max(0.001f, ((_873 * (_863 - _862)) + _862)));
      if (_239 < 1.0f) {
        _896 = _434 - _viewPos.x;
        _898 = _433 - _viewPos.y;
        _900 = _432 - _viewPos.z;
        _912 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _900, mad((_viewProjRelative[3].y), _898, ((_viewProjRelative[3].x) * _896)));
        _921 = (mad((_viewProjRelative[0].z), _900, mad((_viewProjRelative[0].y), _898, ((_viewProjRelative[0].x) * _896))) + (_viewProjRelative[0].w)) / _912;
        _932 = 0.5f - (((mad((_viewProjRelative[1].z), _900, mad((_viewProjRelative[1].y), _898, ((_viewProjRelative[1].x) * _896))) + (_viewProjRelative[1].w)) / _912) * 0.5f);
        _936 = ((_view[0].x) * _862) + _896;
        _940 = ((_view[0].y) * _862) + _898;
        _944 = ((_view[0].z) * _862) + _900;
        _948 = mad((_viewProjRelative[3].z), _944, mad((_viewProjRelative[3].y), _940, (_936 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _956 = (0.5f - (((mad((_viewProjRelative[1].z), _944, mad((_viewProjRelative[1].y), _940, (_936 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _948) * 0.5f)) - _932;
        _957 = _26 * 0.5f;
        _964 = (((mad((_viewProjRelative[0].z), _944, mad((_viewProjRelative[0].y), _940, (_936 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _948) - _921) * _957;
        _968 = sqrt((_964 * _964) + (_956 * _956));
        _969 = _638 - _viewPos.x;
        _970 = _637 - _viewPos.y;
        _971 = _636 - _viewPos.z;
        _975 = mad((_viewProjRelative[3].z), _971, mad((_viewProjRelative[3].y), _970, ((_viewProjRelative[3].x) * _969))) + (_viewProjRelative[3].w);
        _980 = (mad((_viewProjRelative[0].z), _971, mad((_viewProjRelative[0].y), _970, ((_viewProjRelative[0].x) * _969))) + (_viewProjRelative[0].w)) / _975;
        _987 = 0.5f - (((mad((_viewProjRelative[1].z), _971, mad((_viewProjRelative[1].y), _970, ((_viewProjRelative[1].x) * _969))) + (_viewProjRelative[1].w)) / _975) * 0.5f);
        _989 = ((_view[0].x) * _863) + _969;
        _991 = ((_view[0].y) * _863) + _970;
        _993 = ((_view[0].z) * _863) + _971;
        _997 = mad((_viewProjRelative[3].z), _993, mad((_viewProjRelative[3].y), _991, (_989 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _1005 = (0.5f - (((mad((_viewProjRelative[1].z), _993, mad((_viewProjRelative[1].y), _991, (_989 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _997) * 0.5f)) - _987;
        _1012 = (((mad((_viewProjRelative[0].z), _993, mad((_viewProjRelative[0].y), _991, (_989 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _997) - _980) * _957;
        _1025 = ((float)((int)((int)((int)(uint)((int)(_635 > 0.0f))) - (int)((int)(uint)((int)(_635 < 0.0f)))))) * ((float)((int)((int)((int)(uint)((int)(_431 > 0.0f))) - (int)((int)(uint)((int)(_431 < 0.0f))))));
        _1028 = (_1025 * 0.5f) * (_980 - _921);
        _1030 = (_987 - _932) * _1025;
        _1033 = (TEXCOORD.x + -0.5f) - (_921 * 0.5f);
        _1034 = TEXCOORD.y - _932;
        // [sem: expr_sat]
        _1038 = saturate(dot(float2(_1033, _1034), float2(_1028, _1030)) / dot(float2(_1028, _1030), float2(_1028, _1030)));
        _1040 = _1034 - (_1038 * _1030);
        _1043 = (_1033 - (_1038 * _1028)) * _26;
        // [sem: expr_sat]
        _1057 = saturate(sqrt((_1043 * _1043) + (_1040 * _1040)) / max(0.001f, (((sqrt((_1012 * _1012) + (_1005 * _1005)) - _968) * _1038) + _968)));
        _1062 = (lerp(_1057, _891, _239));  // [sem: blended]
      } else {
        _1062 = _891;  // [sem: blended]
      }
      _1063 = _434 - _638;
      _1064 = _433 - _637;
      _1065 = _432 - _636;
      _1066 = _844 * 0.5f;
      _1079 = _861;
      _1080 = ((1.0f - saturate((sqrt(((_1064 * _1064) + (_1065 * _1065)) + (_1063 * _1063)) - _1066) / _1066)) * _1062);
    } else {
      _1079 = 1.0f;
      _1080 = 1.0f;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1083 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1088 = (pow(_1083.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1091 = (pow(_1083.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1094 = WaveReadLaneFirst(_materialIndex);
    _1102 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1094 < (uint)170000), _1094, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskBlurPower);
    _1117 = ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15);
    _1120 = WaveReadLaneFirst(_materialIndex);
    _1128 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1120 < (uint)170000), _1120, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskRatio);
    _1187 = ((saturate(((1.0f - saturate(exp2(log2(max(0.0f, (_1091 + -0.8359375f)) / (18.851562f - (_1091 * 18.6875f))) * 6.277395f) * 10000.0f)) + exp2(log2(1.0f - saturate(exp2(log2(max(0.0f, (_1088 + -0.8359375f)) / (18.851562f - (_1088 * 18.6875f))) * 6.277395f) * 10000.0f)) * _1102)) + ((float)((bool)(_1117 && (!((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))))) == 0.0f)))))) + -1.0f) * _1128) + 1.0f;
    _1190 = WaveReadLaneFirst(_materialIndex);
    _1198 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1190 < (uint)170000), _1190, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
    if (!(!(_1198 >= 0.001f))) {
      _1203 = WaveReadLaneFirst(_materialIndex);
      _1211 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1203 < (uint)170000), _1203, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
      _1217 = ((_1211 * (((float)((bool)(_1117))) - _1187)) + _1187);
    } else {
      _1217 = _1187;
    }
    _1218 = _1217 * _1217;
    _1221 = WaveReadLaneFirst(_materialIndex);
    _1229 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1221 < (uint)170000), _1221, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusSceneDepthFade);
    _1232 = WaveReadLaneFirst(_materialIndex);
    _1240 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1232 < (uint)170000), _1232, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorRemap);
    _1242 = min(max(_1240, -1.0f), 1.0f);
    if (!(_1242 == 0.0f)) {
      if (!((_184 == 0.0f) && ((_173 == 0.0f) && (_195 == 0.0f)))) {
        // [sem: invLength]
        _1254 = rsqrt(dot(float3(_173, _184, _195), float3(_173, _184, _195))) * dot(float3(_50, _59, _68), float3(0.299f, 0.587f, 0.114f));
        _1268 = ((((_1254 * _195) - _68) * _1242) + _68);
        _1269 = ((((_1254 * _184) - _59) * _1242) + _59);
        _1270 = ((((_1254 * _173) - _50) * _1242) + _50);
      } else {
        _1268 = _68;
        _1269 = _59;
        _1270 = _50;
      }
    } else {
      _1268 = _68;
      _1269 = _59;
      _1270 = _50;
    }
    _1273 = WaveReadLaneFirst(_materialIndex);
    _1281 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1273 < (uint)170000), _1273, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusBackgroundSaturation);
    _1303 = (((((_1218 * _1218) * (pow(_437, _435))) * (pow(_641, _639))) * (pow(_1080, _1079))) * (pow(_833, _832))) * exp2(log2(1.0f - _84.x) * _1229);
    _1308 = (_1303 * 0.5f) * (1.0f - min(max(_1281, -1.0f), 1.0f));
    _1309 = dot(float3(_1270, _1269, _1268), float3(0.2126f, 0.7152f, 0.0722f));
    _1312 = (_1308 * (_1309 - _1270)) + _1270;
    _1315 = (_1308 * (_1309 - _1269)) + _1269;
    _1318 = (_1308 * (_1309 - _1268)) + _1268;
    _1319 = _1303 * _79;
    _1330 = (lerp(_1318, _195, _1319));  // [sem: blended]
    _1331 = (lerp(_1315, _184, _1319));  // [sem: blended]
    _1332 = (lerp(_1312, _173, _1319));  // [sem: blended]
  } else {
    _1330 = _68;  // [sem: blended]
    _1331 = _59;  // [sem: blended]
    _1332 = _50;  // [sem: blended]
  }
  _1333 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1346 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1333, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1346 = 1.0f;
  }
  _1349 = (_localToneMappingParams.w > 0.0f);
  if (_1349) {
    _1355 = _exposure0.x * _userImageAdjust.z;
    _1374 = exp2(_powerParams.x * log2(max(0.0f, (((_1355 * max(0.0f, (((_1331 * -0.62179f) - (_1330 * 0.08326f)) + (_1332 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _1390 = exp2(log2(max(0.0f, (((_slopeParams.y * _1355) * max(0.0f, (((_1331 * 1.1408f) - (_1330 * 0.01055f)) - (_1332 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _1406 = exp2(log2(max(0.0f, (((_slopeParams.z * _1355) * max(0.0f, (((_1330 * 1.15297f) - (_1331 * 0.12897f)) - (_1332 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _1407 = dot(float3(_1374, _1390, _1406), float3(0.212671f, 0.71516f, 0.072169f));
    _1411 = ((_1374 - _1407) * _powerParams.w) + _1407;
    _1414 = ((_1390 - _1407) * _powerParams.w) + _1407;
    _1417 = ((_1406 - _1407) * _powerParams.w) + _1407;
    _1424 = min(max(log2(mad(_1417, 0.079223745f, mad(_1414, 0.0784336f, (_1411 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1431 = min(max(log2(mad(_1417, 0.07916613f, mad(_1414, 0.87846863f, (_1411 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1438 = min(max(log2(mad(_1417, 0.879143f, mad(_1414, 0.0784336f, (_1411 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1439 = _1424 * 0.060606062f;
    _1440 = _1431 * 0.060606062f;
    _1441 = _1438 * 0.060606062f;
    _1442 = _1439 * _1439;
    _1443 = _1440 * _1440;
    _1444 = _1441 * _1441;
    _1460 = min(0.0f, (-0.0f - (((_1424 * 0.0072181816f) + ((_1442 * 0.4298f) + (((_1442 * _1442) * ((31.96f - (_1424 * 2.4327273f)) + (_1442 * 15.5f))) - ((_1424 * 0.41624245f) * _1442)))) + -0.00232f)));
    _1476 = min(0.0f, (-0.0f - (((_1431 * 0.0072181816f) + ((_1443 * 0.4298f) + (((_1443 * _1443) * ((31.96f - (_1431 * 2.4327273f)) + (_1443 * 15.5f))) - ((_1431 * 0.41624245f) * _1443)))) + -0.00232f)));
    _1492 = min(0.0f, (-0.0f - (((_1438 * 0.0072181816f) + ((_1444 * 0.4298f) + (((_1444 * _1444) * ((31.96f - (_1438 * 2.4327273f)) + (_1444 * 15.5f))) - ((_1438 * 0.41624245f) * _1444)))) + -0.00232f)));
    _1493 = -0.0f - _1460;
    _1494 = -0.0f - _1476;
    _1495 = -0.0f - _1492;
    _1496 = dot(float3(_1493, _1494, _1495), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1513 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1514 = -0.79999995f / _1513;
      _1515 = -1.2f / _1513;
      _1516 = 0.20000005f / _1513;
      _1519 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1522 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1526 = (_1514 + 1.4f) + (_1522 * (-0.39999998f - _1514));
      _1530 = (_1515 + 1.6f) + (_1522 * (-0.6f - _1515));
      _1534 = (_1516 + 0.9f) + (_1522 * (0.5f - _1516));
      _1551 = (lerp(_1534, 1.4f, _1519));  // [sem: blended]
      _1552 = (lerp(_1526, 1.0f, _1519));  // [sem: blended]
      _1553 = (lerp(_1530, 1.2f, _1519));  // [sem: blended]
    } else {
      _1551 = 1.4f;  // [sem: blended]
      _1552 = 1.0f;  // [sem: blended]
      _1553 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1554 = 1.0f - _1553;
    _1566 = ((exp2(log2(((saturate((_1460 * _1460) * _1493) * _1554) + _1553) * _1493) * _1552) - _1496) * _1551) + _1496;
    _1578 = ((exp2(log2(((saturate((_1476 * _1476) * _1494) * _1554) + _1553) * _1494) * _1552) - _1496) * _1551) + _1496;
    _1590 = ((exp2(log2(((saturate((_1492 * _1492) * _1495) * _1554) + _1553) * _1495) * _1552) - _1496) * _1551) + _1496;
    _1597 = saturate(exp2(log2(mad(_1590, -0.09902974f, mad(_1578, -0.09802088f, (_1566 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1604 = saturate(exp2(log2(mad(_1590, -0.098961174f, mad(_1578, 1.1519032f, (_1566 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1611 = saturate(exp2(log2(mad(_1590, 1.1510737f, mad(_1578, -0.09804345f, (_1566 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1617 = 1.0f - abs(_etcParams.w);
      _1618 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1620 = (_1617 * _1597) + _1618;
      _1622 = (_1617 * _1604) + _1618;
      _1624 = (_1617 * _1611) + _1618;
      if (_colorGradingParams.w > 0.0f) {
        _1629 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1646 = (((max(0.0f, (1.0f - _1624)) - _1624) * _1629) + _1624);
        _1647 = (((max(0.0f, (1.0f - _1622)) - _1622) * _1629) + _1622);
        _1648 = (((max(0.0f, (1.0f - _1620)) - _1620) * _1629) + _1620);
      } else {
        _1646 = _1624;
        _1647 = _1622;
        _1648 = _1620;
      }
      _1650 = _userImageAdjust.y + 1.0f;
      _1652 = _userImageAdjust.x + 0.5f;
      _1655 = ((_1648 + -0.5f) * _1650) + _1652;
      _1658 = ((_1647 + -0.5f) * _1650) + _1652;
      _1661 = ((_1646 + -0.5f) * _1650) + _1652;
      _1667 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1702 = exp2(log2(saturate(mad(_colorBlind0.z, _1661, mad(_colorBlind0.y, _1658, (_colorBlind0.x * _1655))))) * _1667);
      _1703 = exp2(log2(saturate(mad(_colorBlind1.z, _1661, mad(_colorBlind1.y, _1658, (_colorBlind1.x * _1655))))) * _1667);
      _1704 = exp2(log2(saturate(mad(_colorBlind2.z, _1661, mad(_colorBlind2.y, _1658, (_colorBlind2.x * _1655))))) * _1667);
    } else {
      _1702 = _1597;
      _1703 = _1604;
      _1704 = _1611;
    }
  } else {
    _1702 = _1332;
    _1703 = _1331;
    _1704 = _1330;
  }
  if (_etcParams.y > 1.0f) {
    _1709 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1712 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1718 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1709, _1712), float2(_1709, _1712))));  // [sem: expr_sat]
    _1723 = (_1718 * _1702);
    _1724 = (_1718 * _1703);
    _1725 = (_1718 * _1704);
  } else {
    _1723 = _1702;
    _1724 = _1703;
    _1725 = _1704;
  }
  if (_1349 && (_etcParams.z > 0.0f)) {
    _1755 = select((_1723 <= 0.0031308f), (_1723 * 12.92f), (((pow(_1723, 0.41666666f)) * 1.055f) + -0.055f));
    _1756 = select((_1724 <= 0.0031308f), (_1724 * 12.92f), (((pow(_1724, 0.41666666f)) * 1.055f) + -0.055f));
    _1757 = select((_1725 <= 0.0031308f), (_1725 * 12.92f), (((pow(_1725, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1755 = _1723;
    _1756 = _1724;
    _1757 = _1725;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1760 = (float)((uint)((uint)(_1333)));
    if (!(_1760 < _viewDir.w)) {
      if (!(!(_1760 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1771 = 0.0f;
        _1772 = 0.0f;
        _1773 = 0.0f;
      } else {
        _1771 = _1755;
        _1772 = _1756;
        _1773 = _1757;
      }
    } else {
      _1771 = 0.0f;
      _1772 = 0.0f;
      _1773 = 0.0f;
    }
  } else {
    _1771 = _1755;
    _1772 = _1756;
    _1773 = _1757;
  }
  _1777 = exp2(log2(_1771 * 0.0001f) * 0.15930176f);
  _1781 = exp2(log2(_1772 * 0.0001f) * 0.15930176f);
  _1785 = exp2(log2(_1773 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1777 * 18.6875f) + 1.0f)) * ((_1777 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1781 * 18.6875f) + 1.0f)) * ((_1781 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1785 * 18.6875f) + 1.0f)) * ((_1785 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1346;
  return SV_Target;
}
