struct PostProcessUber_CDStruct {
  uint _noiseTex;
  float _itemRatio;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _dropItemFakeLightIntensity;
  float _dropItemBlurWidth;
  float _dropItemBlurIntensity;
  float3 _channelBrightness;
  float _contrast;
  float3 _saturation;
  float _fishEyeMaxPower;
  uint _enemyMaskColor;
  uint _objectiveMaskColor;
  float _uiMainMenuEffect;
  float _uiQuickSlotEffect;
  uint _detectColorBase;
  float _detectModeG;
  float _detectModeR;
  float _detectModeB;
  float _detectModeKnowledge;
  float _detectModeInterrupt;
  uint _detectLiftColor;
  float _statusVignetteRatio1;
  float _statusVignetteRadius1;
  float _statusVignettePower1;
  float _statusVignetteChromaticShift1;
  uint _statusVignetteColor1;
  float _statusVignetteRatio2;
  float _statusVignetteRadius2;
  float _statusVignettePower2;
  float _statusVignetteChromaticShift2;
  uint _statusVignetteColor2;
  float _statusVignetteRatio3;
  float _statusVignetteRadius3;
  float _statusVignettePower3;
  float _statusVignetteChromaticShift3;
  uint _statusVignetteColor3;
  uint _temperatureWarningTex;
  uint _electrocutionTex;
  uint _enemyAlertTex;
  uint _wantedRegionColor;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
  float _invertColor;
  uint _followLearningColor;
  uint _followLearningSaturationTone;
  uint _followLearningNoiseTex;
  float _isBloodEffect;
  float _testEffectRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessUber_CD {
  PostProcessUber_CDStruct BindlessParameters_PostProcessUber_CD;
};

typedef BindlessParameters_PostProcessUber_CD BindlessParameters_PostProcessUber_CD_t;
ConstantBuffer<BindlessParameters_PostProcessUber_CD_t> BindlessParameters_PostProcessUber_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

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
  bool _47;
  bool _51;
  int _52;
  float _60;
  float _140;
  float _141;
  float _144;
  float _145;
  float _220;
  float _221;
  int _265;
  int _342;
  float _343;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _999;
  float _1000;
  float _1001;
  float _1002;
  float _1003;
  float _1029;
  float _1030;
  float _1031;
  float _1032;
  float _1327;
  float _1328;
  float _1329;
  float _1330;
  float _1422;
  float _1423;
  float _1424;
  float _1425;
  float _1440;
  float _1645;
  float _1646;
  float _1647;
  float _1740;
  float _1741;
  float _1742;
  float _1796;
  float _1797;
  float _1798;
  float _1814;
  float _1815;
  float _1816;
  float _1846;
  float _1847;
  float _1848;
  float _1862;
  float _1863;
  float _1864;
  float _67;
  float _69;
  float _70;
  float _71;
  int _72;
  float _80;
  float _92;
  float _99;
  float _100;
  float _101;
  float _102;
  float _106;
  float _111;
  float _115;
  float _124;
  float _126;
  float _130;
  float _134;
  int _158;
  int _159;
  int _167;
  uint2 _179;
  uint _194;
  int _196;
  float _204;
  float _205;
  float _207;
  float _208;
  float _209;
  float _223;
  float _224;
  float _225;
  float _226;
  float _228;
  float _229;
  float _230;
  float _231;
  float4 _234;
  float4 _274;
  float _276;
  float _312;
  int _351;
  float _359;
  float _373;
  float _374;
  float _375;
  float _403;
  float _404;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  float _416;
  float _417;
  float _418;
  float _470;
  float _471;
  float _472;
  float _482;
  float _493;
  float _494;
  float _495;
  float _497;
  float _500;
  float _504;
  float _505;
  float _506;
  float _511;
  float4 _523;
  float4 _535;
  uint _555;
  uint _556;
  uint4 _558;
  float4 _561;
  float _579;
  float _580;
  float _581;
  float _583;
  float _584;
  float _585;
  float _586;
  float _589;
  float _590;
  float _593;
  float _594;
  float _598;
  float _600;
  float _601;
  float _602;
  float _603;
  float _605;
  float _608;
  float _609;
  float _610;
  float _611;
  float _620;
  float _624;
  float _628;
  float _630;
  float _640;
  float _645;
  float _659;
  float _668;
  int _672;
  int _680;
  float _683;
  float _686;
  float _688;
  float _721;
  float _739;
  float _740;
  float _741;
  float _742;
  float _743;
  float _744;
  float _745;
  float _746;
  float _752;
  float _753;
  float _754;
  float _773;
  uint _796;
  uint _797;
  uint4 _799;
  float4 _802;
  float _820;
  float _821;
  float _822;
  float _824;
  float _825;
  float _826;
  float _827;
  float _830;
  float _831;
  float _834;
  float _835;
  float _839;
  float _841;
  float _842;
  float _843;
  float _844;
  float _846;
  float _849;
  float _850;
  float _851;
  float _852;
  float _861;
  float _865;
  float _869;
  float _871;
  float _886;
  float _891;
  float _892;
  float _896;
  float4 _903;
  float _905;
  float _924;
  bool _939;
  float _977;
  float4 _982;
  float _993;
  float _1011;
  float _1012;
  float _1013;
  float _1036;
  float _1043;
  float4 _1056;
  float4 _1068;
  float _1074;
  float _1107;
  float _1108;
  float _1111;
  float _1112;
  float _1119;
  float _1122;
  float _1123;
  float _1134;
  float _1150;
  float _1151;
  float _1159;
  float _1163;
  float4 _1171;
  float _1175;
  float _1182;
  float _1185;
  float _1195;
  float _1196;
  float _1197;
  float _1207;
  float _1212;
  float _1229;
  float4 _1238;
  int _1243;
  int _1251;
  float4 _1258;
  float _1266;
  float _1268;
  float _1276;
  float _1289;
  float _1292;
  float _1293;
  float _1315;
  float _1335;
  float4 _1344;
  int _1357;
  int _1365;
  float _1376;
  float _1385;
  float _1388;
  float _1389;
  float _1404;
  float _1407;
  float _1410;
  uint _1427;
  bool _1443;
  float _1449;
  float _1498;
  float _1499;
  float _1500;
  float _1502;
  float _1509;
  float _1510;
  float _1511;
  float _1530;
  float _1531;
  float _1532;
  float _1533;
  float _1534;
  float _1535;
  float _1536;
  float _1537;
  float _1538;
  float _1584;
  float _1585;
  float _1586;
  float _1587;
  float _1588;
  float _1589;
  float _1590;
  float _1607;
  float _1608;
  float _1609;
  float _1610;
  float _1616;
  float _1619;
  float _1626;
  float _1627;
  float _1628;
  float _1657;
  float _1682;
  float _1683;
  float _1684;
  float _1703;
  float _1704;
  float _1705;
  float _1711;
  float _1715;
  float _1716;
  float _1717;
  float _1718;
  float _1723;
  float _1748;
  float _1752;
  float _1753;
  float _1754;
  float _1755;
  float _1785;
  float _1804;
  float _1805;
  float _1809;
  float _1853;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._dropItemBlurIntensity);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
  _47 = (_46 >= 0.01f);
  _51 = (abs(_temperatureWarning) >= 0.01f);
  _52 = WaveReadLaneFirst(_materialIndex);
  _60 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_52 < (uint)170000), _52, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._isBloodEffect);
  if (!(_47 || _51)) {
    if (true) discard;
  }
  _67 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _69 = (TEXCOORD.x * 2.0f) + -1.0f;
  _70 = TEXCOORD.y * 2.0f;
  _71 = 1.0f - _70;
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  if (((_80 > 0.001f) || (_80 < -0.001f)) && (!_47)) {
    _92 = 0.5f / _67;
    _99 = (((_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) * 4.0f) + -0.5f;
    _100 = (((_destTargetSizAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) * 4.0f) - _92;
    _101 = dot(float2(_99, _100), float2(_99, _100));
    _102 = sqrt(_101);
    if (_80 > 0.0f) {
      _106 = sqrt(dot(float2(0.5f, _92), float2(0.5f, _92)));
      _111 = tan(_102 * _80) * (rsqrt(_101) * _106);
      _115 = tan(_106 * _80);
      _140 = (((_111 * _99) / _115) + 0.5f);
      _141 = (((_111 * _100) / _115) + _92);
    } else {
      if (_80 < 0.0f) {
        _124 = select((_67 < 1.0f), 0.5f, _92);
        _126 = _80 * -10.0f;
        _130 = atan(_102 * _126) * (rsqrt(_101) * _124);
        _134 = atan(_124 * _126);
        _140 = (((_130 * _99) / _134) + 0.5f);
        _141 = (((_130 * _100) / _134) + _92);
      } else {
        _140 = 0.0f;
        _141 = 0.0f;
      }
    }
    _144 = _140;
    _145 = (_141 * _67);
  } else {
    _144 = TEXCOORD.x;
    _145 = TEXCOORD.y;
  }
  _158 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0)))).x) & 127;
  _159 = WaveReadLaneFirst(_materialIndex);
  _167 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_159 < (uint)170000), _159, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._noiseTex);
  if (((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_179.x, _179.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _194 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_179.x))))))) + 0.5f) * _144)), ((int)((((float)((int)((int)((float)((int)((int)(_179.y))))))) + 0.5f) * _145)), 0));
    _196 = _194.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _204 = (((float)((uint)((uint)((uint)((uint)(_194.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _205 = (((float)((uint)((uint)(((uint)((uint)(_194.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _207 = 1.0f - abs(_204);
    _208 = abs(_205);
    _209 = _207 - _208;
    if (!(_209 >= 0.0f)) {
      _220 = (select((_204 >= 0.0f), 1.0f, -1.0f) * (1.0f - _208));
      _221 = (select((_205 >= 0.0f), 1.0f, -1.0f) * _207);
    } else {
      _220 = _204;
      _221 = _205;
    }
    _223 = rsqrt(dot(float3(_220, _221, _209), float3(_220, _221, _209)));  // [sem: invLength]
    _224 = _223 * _220;
    _225 = _223 * _221;
    _226 = _223 * _209;
    _228 = rsqrt(dot(float3(_224, _225, _226), float3(_224, _225, _226)));  // [sem: invLength]
    _229 = _228 * _224;
    _230 = _228 * _225;
    _231 = _228 * _226;
    _234 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_144, _145));  // [sem: _3__36__0__0__g_sceneColor_sample]
    if (_196 == _renderPassDetectObjective) {
      _265 = _renderPassDetectRemoteCatch;
      // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
      _274 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _144)), ((int)(_customRenderPassSizeInvSize.y * _145)), 0));
      _276 = max(1e-07f, _274.x);
      _312 = mad((_invViewProj[3].z), _276, mad((_invViewProj[3].y), _71, ((_invViewProj[3].x) * _69))) + (_invViewProj[3].w);
      _342 = _265;
      _343 = ((mad((_invViewProj[0].z), _276, mad((_invViewProj[0].y), _71, ((_invViewProj[0].x) * _69))) + (_invViewProj[0].w)) / _312);
      _344 = ((mad((_invViewProj[1].z), _276, mad((_invViewProj[1].y), _71, ((_invViewProj[1].x) * _69))) + (_invViewProj[1].w)) / _312);
      _345 = ((mad((_invViewProj[2].z), _276, mad((_invViewProj[2].y), _71, ((_invViewProj[2].x) * _69))) + (_invViewProj[2].w)) / _312);
      _346 = _274.x;
      _347 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f);
      _348 = (1.0f - saturate(dot(float3(_229, _230, _231), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
    } else {
      bool __branch_chain_243;
      if (_196 == _renderPassDetectRemoteCatch) {
        _265 = _renderPassDetectRemoteCatch;
        __branch_chain_243 = true;
      } else {
        if ((_196 == _renderPassDetectPickedRemoteCatch) || (_196 == _renderPassKnowledgeNPC)) {
          _265 = _renderPassDetectRemoteCatch;
          __branch_chain_243 = true;
        } else {
          if ((_196 == _renderPassEnemy) || (_196 == _renderPassSelfPlayer)) {
            _265 = _renderPassDetectRemoteCatch;
            __branch_chain_243 = true;
          } else {
            if (_196 == _renderPassTest) {
              _265 = _renderPassDetectRemoteCatch;
              __branch_chain_243 = true;
            } else {
              _342 = _renderPassDetectRemoteCatch;
              _343 = 0.0f;
              _344 = 0.0f;
              _345 = 0.0f;
              _346 = 0.0f;
              _347 = 0.0f;
              _348 = 0.0f;
              __branch_chain_243 = false;
            }
          }
        }
      }
      if (__branch_chain_243) {
        // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
        _274 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _144)), ((int)(_customRenderPassSizeInvSize.y * _145)), 0));
        _276 = max(1e-07f, _274.x);
        _312 = mad((_invViewProj[3].z), _276, mad((_invViewProj[3].y), _71, ((_invViewProj[3].x) * _69))) + (_invViewProj[3].w);
        _342 = _265;
        _343 = ((mad((_invViewProj[0].z), _276, mad((_invViewProj[0].y), _71, ((_invViewProj[0].x) * _69))) + (_invViewProj[0].w)) / _312);
        _344 = ((mad((_invViewProj[1].z), _276, mad((_invViewProj[1].y), _71, ((_invViewProj[1].x) * _69))) + (_invViewProj[1].w)) / _312);
        _345 = ((mad((_invViewProj[2].z), _276, mad((_invViewProj[2].y), _71, ((_invViewProj[2].x) * _69))) + (_invViewProj[2].w)) / _312);
        _346 = _274.x;
        _347 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f);
        _348 = (1.0f - saturate(dot(float3(_229, _230, _231), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      }
    }
    bool __branch_chain_341;
    if (!(_196 == _342)) {
      __branch_chain_341 = true;
    } else {
      _351 = WaveReadLaneFirst(_materialIndex);
      _359 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_351 < (uint)170000), _351, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
      if (!(_359 > 0.001f)) {
        __branch_chain_341 = true;
      } else {
        if ((!(_highLightForVision >= 0.001f)) && (!(_highLightForVisionRemoteCatch >= 0.001f))) {
          __branch_chain_341 = true;
        } else {
          __branch_chain_341 = false;
        }
      }
    }
    if (__branch_chain_341) {
      if (!(_196 == _renderPassDetectObjective) || ((_196 == _renderPassDetectObjective) && ((!(_highLightForVision >= 0.001f)) && (!(_highLightForVisionRemoteCatch >= 0.001f))))) {
        if (!(_196 == _renderPassKnowledgeNPC) || ((_196 == _renderPassKnowledgeNPC) && (!(_highLightForVision >= 0.001f)))) {
          _939 = (_196 == _renderPassSelfPlayer);
          if ((_939) || (((_196 == _renderPassTest) || (_196 == _renderPassEnemy)) || (_196 == _renderPassDetectPickedRemoteCatch))) {
            if ((_characterHighlight > 0.001f) || (_highLightForVisionRemoteCatch > 0.001f)) {
              if ((uint)_158 > (uint)10) {
                if ((uint)_158 < (uint)20) {
                  if (_158 == 11) {
                    _977 = _348 * 0.025f;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _982 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_977 + _144), (_977 + _145)));
                    if (!_939) {
                      if (!(_196 == _renderPassTest)) {
                        _993 = _982.y * 0.6f;
                        if (_196 == _renderPassEnemy) {
                          _999 = _982.x;
                          _1000 = _993;
                          _1001 = (_982.z * 0.6f);
                          _1002 = 10.0f;
                          _1003 = 1.0f;
                        } else {
                          _999 = (_982.x * 0.5f);
                          _1000 = _993;
                          _1001 = _982.z;
                          _1002 = 50.0f;
                          _1003 = 30.0f;
                        }
                      } else {
                        _999 = _982.x;
                        _1000 = _982.y;
                        _1001 = _982.z;
                        _1002 = 10.0f;
                        _1003 = 1.0f;
                      }
                    } else {
                      _999 = _982.x;
                      _1000 = _982.y;
                      _1001 = _982.z;
                      _1002 = 10.0f;
                      _1003 = 1.0f;
                    }
                    _1011 = _343 - _mainPosition.x;
                    _1012 = _344 - _mainPosition.y;
                    _1013 = _345 - _mainPosition.z;
                    _1029 = (((1.0f - saturate((sqrt(((_1011 * _1011) + (_1012 * _1012)) + (_1013 * _1013)) - _1003) / _1002)) * (1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _347)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _346)))))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                    _1030 = (_999 * 1.5f);
                    _1031 = (_1000 * 1.5f);
                    _1032 = (_1001 * 1.5f);
                  } else {
                    _1029 = 0.0f;
                    _1030 = _234.x;
                    _1031 = _234.y;
                    _1032 = _234.z;
                  }
                } else {
                  if (!(_158 == 107)) {
                    _977 = _348 * 0.025f;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _982 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_977 + _144), (_977 + _145)));
                    if (!_939) {
                      if (!(_196 == _renderPassTest)) {
                        _993 = _982.y * 0.6f;
                        if (_196 == _renderPassEnemy) {
                          _999 = _982.x;
                          _1000 = _993;
                          _1001 = (_982.z * 0.6f);
                          _1002 = 10.0f;
                          _1003 = 1.0f;
                        } else {
                          _999 = (_982.x * 0.5f);
                          _1000 = _993;
                          _1001 = _982.z;
                          _1002 = 50.0f;
                          _1003 = 30.0f;
                        }
                      } else {
                        _999 = _982.x;
                        _1000 = _982.y;
                        _1001 = _982.z;
                        _1002 = 10.0f;
                        _1003 = 1.0f;
                      }
                    } else {
                      _999 = _982.x;
                      _1000 = _982.y;
                      _1001 = _982.z;
                      _1002 = 10.0f;
                      _1003 = 1.0f;
                    }
                    _1011 = _343 - _mainPosition.x;
                    _1012 = _344 - _mainPosition.y;
                    _1013 = _345 - _mainPosition.z;
                    _1029 = (((1.0f - saturate((sqrt(((_1011 * _1011) + (_1012 * _1012)) + (_1013 * _1013)) - _1003) / _1002)) * (1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _347)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _346)))))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                    _1030 = (_999 * 1.5f);
                    _1031 = (_1000 * 1.5f);
                    _1032 = (_1001 * 1.5f);
                  } else {
                    _1029 = 0.0f;
                    _1030 = _234.x;
                    _1031 = _234.y;
                    _1032 = _234.z;
                  }
                }
              } else {
                _977 = _348 * 0.025f;
                // [sem: _3__36__0__0__g_sceneColor_sample]
                _982 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_977 + _144), (_977 + _145)));
                if (!_939) {
                  if (!(_196 == _renderPassTest)) {
                    _993 = _982.y * 0.6f;
                    if (_196 == _renderPassEnemy) {
                      _999 = _982.x;
                      _1000 = _993;
                      _1001 = (_982.z * 0.6f);
                      _1002 = 10.0f;
                      _1003 = 1.0f;
                    } else {
                      _999 = (_982.x * 0.5f);
                      _1000 = _993;
                      _1001 = _982.z;
                      _1002 = 50.0f;
                      _1003 = 30.0f;
                    }
                  } else {
                    _999 = _982.x;
                    _1000 = _982.y;
                    _1001 = _982.z;
                    _1002 = 10.0f;
                    _1003 = 1.0f;
                  }
                } else {
                  _999 = _982.x;
                  _1000 = _982.y;
                  _1001 = _982.z;
                  _1002 = 10.0f;
                  _1003 = 1.0f;
                }
                _1011 = _343 - _mainPosition.x;
                _1012 = _344 - _mainPosition.y;
                _1013 = _345 - _mainPosition.z;
                _1029 = (((1.0f - saturate((sqrt(((_1011 * _1011) + (_1012 * _1012)) + (_1013 * _1013)) - _1003) / _1002)) * (1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _347)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _346)))))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                _1030 = (_999 * 1.5f);
                _1031 = (_1000 * 1.5f);
                _1032 = (_1001 * 1.5f);
              }
            } else {
              _1029 = 0.0f;
              _1030 = _234.x;
              _1031 = _234.y;
              _1032 = _234.z;
            }
          } else {
            _1029 = 0.0f;
            _1030 = _234.x;
            _1031 = _234.y;
            _1032 = _234.z;
          }
        } else {
          _796 = (uint)((_bufferSizeAndInvSize.x * _144) + -0.5f);
          _797 = (uint)((_bufferSizeAndInvSize.y * _145) + -0.5f);
          _799 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_796, _797, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _802 = __3__36__0__0__g_gbufferNormal.Load(int3(_796, _797, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _820 = (saturate(_802.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _821 = (saturate(_802.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _822 = (saturate(_802.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _824 = rsqrt(dot(float3(_820, _821, _822), float3(_820, _821, _822)));  // [sem: invLength]
          _825 = _824 * _820;
          _826 = _824 * _821;
          _827 = _822 * _824;
          _830 = (((float)((uint)((uint)(((uint)((uint)(_799.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _831 = (((float)((uint)((uint)(_799.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _834 = (_830 + _831) * 0.5f;
          _835 = (_830 - _831) * 0.5f;
          _839 = (1.0f - abs(_834)) - abs(_835);
          _841 = rsqrt(dot(float3(_834, _835, _839), float3(_834, _835, _839)));  // [sem: invLength]
          _842 = _841 * _834;
          _843 = _841 * _835;
          _844 = _841 * _839;
          _846 = select((_827 >= 0.0f), 1.0f, -1.0f);
          _849 = -0.0f - (1.0f / (_846 + _827));
          _850 = _826 * _849;
          _851 = _850 * _825;
          _852 = _846 * _825;
          _861 = mad(_844, _825, mad(_843, _851, ((((_852 * _825) * _849) + 1.0f) * _842)));
          _865 = mad(_844, _826, mad(_843, (_846 + (_850 * _826)), ((_842 * _846) * _851)));
          _869 = mad(_844, _827, mad(_843, (-0.0f - _826), (-0.0f - (_852 * _842))));
          _871 = rsqrt(dot(float3(_861, _865, _869), float3(_861, _865, _869)));  // [sem: invLength]
          _886 = 1.0f - dot(float3(((_871 * _861) + -0.1f), ((_871 * _865) + -0.1f), ((_871 * _869) + -0.1f)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
          _891 = frac((_time.x * 2.0f) + _886);
          _892 = _891 * _891;
          _896 = _886 * 10.0f;
          _903 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_896, _896));
          _905 = _903.x * _903.x;
          _924 = 6.0f / max(0.001f, _exposure0.x);
          _1029 = ((saturate((_905 * _905) * 4.0f) * saturate((_892 * _892) * 5.0f)) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _347)) + 0.05f) - (_nearFarProj.x / max(1e-07f, _346)))));
          _1030 = ((_highLightForVision * (_924 - _234.x)) + _234.x);
          _1031 = ((_highLightForVision * ((_924 * 0.6444798f) - _234.y)) + _234.y);
          _1032 = (_234.z - (_highLightForVision * _234.z));
        }
      } else {
        _470 = _343 - _mainPosition.x;
        _471 = _344 - _mainPosition.y;
        _472 = _345 - _mainPosition.z;
        _482 = (1.0f - saturate(sqrt(((_470 * _470) + (_471 * _471)) + (_472 * _472)) * 0.125f)) * 0.2f;
        _493 = _470 - ((_viewPos.x - _mainPosition.x) * _482);
        _494 = _471 - ((_viewPos.y - _mainPosition.y) * _482);
        _495 = _472 - ((_viewPos.z - _mainPosition.z) * _482);
        _497 = rsqrt(dot(float3(_493, _494, _495), float3(_493, _494, _495)));  // [sem: invLength]
        _500 = _495 * _497;
        _504 = select((_500 < 0.0f), (-0.0f - _500), _500) + 1.0f;
        _505 = (_494 * _497) / _504;
        _506 = (_493 * _497) / _504;
        _511 = _time.x + sin(_time.x);
        _523 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.1f) + (_506 * 2.0f)), ((_511 * 0.1f) + (_505 * 2.0f))));
        _535 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_506 - (_time.x * 0.060000002f)) - (_523.x * 0.05f)), ((_505 - (_511 * 0.060000002f)) - (_523.w * 0.05f))));
        _555 = (uint)((((((_523.w + -1.0f) + _535.y) * 0.02f) + _144) * _bufferSizeAndInvSize.x) + -0.5f);
        _556 = (uint)((((((_523.y + -1.0f) + _535.w) * 0.02f) + _145) * _bufferSizeAndInvSize.y) + -0.5f);
        _558 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_555, _556, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _561 = __3__36__0__0__g_gbufferNormal.Load(int3(_555, _556, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _579 = (saturate(_561.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _580 = (saturate(_561.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _581 = (saturate(_561.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _583 = rsqrt(dot(float3(_579, _580, _581), float3(_579, _580, _581)));  // [sem: invLength]
        _584 = _583 * _579;
        _585 = _583 * _580;
        _586 = _581 * _583;
        _589 = (((float)((uint)((uint)(((uint)((uint)(_558.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _590 = (((float)((uint)((uint)(_558.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _593 = (_589 + _590) * 0.5f;
        _594 = (_589 - _590) * 0.5f;
        _598 = (1.0f - abs(_593)) - abs(_594);
        _600 = rsqrt(dot(float3(_593, _594, _598), float3(_593, _594, _598)));  // [sem: invLength]
        _601 = _600 * _593;
        _602 = _600 * _594;
        _603 = _600 * _598;
        _605 = select((_586 >= 0.0f), 1.0f, -1.0f);
        _608 = -0.0f - (1.0f / (_605 + _586));
        _609 = _585 * _608;
        _610 = _609 * _584;
        _611 = _605 * _584;
        _620 = mad(_603, _584, mad(_602, _610, ((((_611 * _584) * _608) + 1.0f) * _601)));
        _624 = mad(_603, _585, mad(_602, (_605 + (_609 * _585)), ((_601 * _605) * _610)));
        _628 = mad(_603, _586, mad(_602, (-0.0f - _585), (-0.0f - (_611 * _601))));
        _630 = rsqrt(dot(float3(_620, _624, _628), float3(_620, _624, _628)));  // [sem: invLength]
        _640 = 1.0f - abs(dot(float3((_630 * _620), (_630 * _624), (_630 * _628)), float3(_viewDir.x, _viewDir.y, _viewDir.z)));
        _645 = saturate((_640 * _640) + ((_535.y * _523.y) * _535.z));  // [sem: expr_sat]
        _659 = 1.0f - dot(float3((((_535.x + -0.5f) * _535.w) + _229), (((_535.y + -0.5f) * _535.w) + _230), (((_535.z + -0.5f) * _535.w) + _231)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
        _668 = (saturate(_645 * 10.0f) * saturate((_659 * _659) * 3.0f)) + ((_535.x * _535.z) * _535.w);
        _672 = WaveReadLaneFirst(_materialIndex);
        _680 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_672 < (uint)170000), _672, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._objectiveMaskColor);
        _683 = (float)((uint)((uint)(((uint)((uint)(_680)) >> 16) & 255)));
        _686 = (float)((uint)((uint)(((uint)((uint)(_680)) >> 8) & 255)));
        _688 = (float)((uint)((uint)(_680 & 255)));
        _721 = (_535.y * _535.w) * (1.0f / max(0.001f, _exposure0.x));
        // [sem: invLength]
        _739 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
        _740 = _739 * _detectModeLook.x;
        _741 = _739 * _detectModeLook.y;
        _742 = _739 * _detectModeLook.z;
        _743 = _343 - _detectModePosition.x;
        _744 = _344 - _detectModePosition.y;
        _745 = _345 - _detectModePosition.z;
        _746 = dot(float3(_740, _741, _742), float3(_743, _744, _745));
        _752 = _743 - (_740 * _746);
        _753 = _744 - (_741 * _746);
        _754 = _745 - (_742 * _746);
        _773 = 1.0f - saturate(sqrt(((_743 * _743) + (_744 * _744)) + (_745 * _745)) / _detectModeRadius);
        _1029 = (((_773 * _773) * ((1.0f - saturate(sqrt(((_752 * _752) + (_753 * _753)) + (_754 * _754)) / max(0.001f, (tan(_detectModeAngle * 0.017453292f) * _746)))) * (((_645 - _668) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _347)) + 0.05f) - (_nearFarProj.x / max(1e-07f, _346))))) + _668))) * _highLightForVision);
        _1030 = (_721 * select(((_683 * 0.011764707f) < 0.04045f), (_683 * 0.00091058103f), exp2(log2((_683 * 0.011151382f) + 0.052132703f) * 2.4f)));
        _1031 = (_721 * select(((_686 * 0.011764707f) < 0.04045f), (_686 * 0.00091058103f), exp2(log2((_686 * 0.011151382f) + 0.052132703f) * 2.4f)));
        _1032 = (_721 * select(((_688 * 0.011764707f) < 0.04045f), (_688 * 0.00091058103f), exp2(log2((_688 * 0.011151382f) + 0.052132703f) * 2.4f)));
      }
    } else {
      _373 = _343 - _mainPosition.x;
      _374 = _344 - _mainPosition.y;
      _375 = _345 - _mainPosition.z;
      // [sem: invLength]
      _403 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
      _404 = _403 * _detectModeLook.x;
      _405 = _403 * _detectModeLook.y;
      _406 = _403 * _detectModeLook.z;
      _407 = _343 - _detectModePosition.x;
      _408 = _344 - _detectModePosition.y;
      _409 = _345 - _detectModePosition.z;
      _410 = dot(float3(_404, _405, _406), float3(_407, _408, _409));
      _416 = _407 - (_404 * _410);
      _417 = _408 - (_405 * _410);
      _418 = _409 - (_406 * _410);
      _1029 = ((((1.0f - saturate((sqrt(((_373 * _373) + (_374 * _374)) + (_375 * _375)) + -30.0f) * 0.05f)) * saturate((_348 * _348) * 4.0f)) * (1.0f - saturate(sqrt(((_416 * _416) + (_417 * _417)) + (_418 * _418)) / max(0.001f, (tan(_detectModeAngle * 0.017453292f) * _410))))) * exp2(log2(1.0f - saturate(sqrt(((_407 * _407) + (_408 * _408)) + (_409 * _409)) / _detectModeRadius)) * 10.0f));
      _1030 = _234.x;
      _1031 = _234.y;
      _1032 = _234.z;
    }
  } else {
    _1029 = 0.0f;
    _1030 = 0.0f;
    _1031 = 0.0f;
    _1032 = 0.0f;
  }
  _1036 = abs(_temperatureWarning * 0.01f);
  if (_51) {
    if (_temperatureWarning > 0.0f) {
      _1043 = _67 * TEXCOORD.x;
      _1056 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1043 * 4.25f), ((TEXCOORD.y * 3.0f) - (_time.x * 0.15f))));
      _1068 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1043 * 2.3f), (((TEXCOORD.y * 2.1f) - (_1056.x * 0.1f)) + (_time.x * 0.2f))));
      _1074 = TEXCOORD.x + -0.5f;
      _1107 = abs((_1074 + ((_1056.y + -0.5f) * 0.01f)) + ((_1068.z + -0.5f) * 0.03f));
      _1108 = abs(((TEXCOORD.y + -0.5f) + ((_1056.x + -0.5f) * 0.02f)) + ((_1068.y + -0.5f) * 0.03f));
      _1111 = max((_1107 + -0.5f), 0.0f);
      _1112 = max((_1108 + -0.5f), 0.0f);
      _1119 = 0.5f - min(max((((1.0f - (saturate(abs(_1074) * 2.0f) * 0.39999998f)) * ((_1036 * 0.050000004f) + 0.1f)) * (((((_1056.z * 0.3f) + -0.5f) + (_1068.x * 0.7f)) * 1.1f) + 1.0f)), ((_1036 * 0.017500002f) + 0.035f)), ((_1036 * 0.110000014f) + 0.22000001f));
      _1122 = max((_1107 - _1119), 0.0f);
      _1123 = max((_1108 - _1119), 0.0f);
      _1134 = saturate((TEXCOORD.y + -0.15f) * 1.2500001f);  // [sem: expr_sat]
      _1150 = saturate(_1068.x * _1056.x);  // [sem: expr_sat]
      _1151 = _1036 * 0.2f;
      _1159 = ((saturate(_1036 * 2.0f) * saturate(saturate(sqrt((_1123 * _1123) + (_1122 * _1122)) * 10.0f) - saturate(sqrt((_1112 * _1112) + (_1111 * _1111)) * 10.0f))) * ((_1150 * (1.0f - _1151)) + _1151)) * ((((_1134 * _1134) * (3.0f - (_1134 * 2.0f))) * ((saturate((((_1056.x * 0.25f) + -0.35f) + (_1068.y * 0.75f)) * 1.6f) * 0.5f) + -0.35000002f)) + 1.0f);
      _1163 = _1159 * (_1036 * 0.1f);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1171 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1163 * (0.5f - TEXCOORD.x)) * _1068.x) + TEXCOORD.x), (((_1163 * (0.5f - TEXCOORD.y)) * _1068.y) + TEXCOORD.y)));
      _1175 = 1.0f - _1159;
      _1182 = ((_1175 * _1175) * _1175) * saturate(((_1150 * _1150) * 2.0f) * _1150);
      _1185 = max(0.001f, _exposure0.x);
      _1195 = (((1.0f / _1185) - _1171.x) * _1182) + _1171.x;
      _1196 = (((0.6f / _1185) - _1171.y) * _1182) + _1171.y;
      _1197 = (((0.3f / _1185) - _1171.z) * _1182) + _1171.z;
      _1207 = ((_1036 * _1036) * _1036) * saturate(_1036 + -0.5f);
      _1212 = saturate(_1159 * 2.0f);  // [sem: expr_sat]
      _1327 = (_1212 + _1029);
      _1328 = ((((_1195 - _1030) + (((_1159 / _1185) - _1195) * _1207)) * _1212) + _1030);
      _1329 = ((((_1196 - _1031) + ((((_1159 * 0.25f) / _1185) - _1196) * _1207)) * _1212) + _1031);
      _1330 = ((((_1197 - _1032) - (_1197 * _1207)) * _1212) + _1032);
    } else {
      if (_temperatureWarning < 0.0f) {
        _1229 = _67 * TEXCOORD.x;
        _1238 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1229 * 1.5f), (TEXCOORD.y * 1.5f)));
        _1243 = WaveReadLaneFirst(_materialIndex);
        _1251 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1243 < (uint)170000), _1243, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._temperatureWarningTex);
        _1258 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1251 < (uint)65000), _1251, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1229 * 2.0f), _70));
        _1266 = (select(((TEXCOORD.y / (1.0f - TEXCOORD.x)) < 1.0f), (1.0f - _1258.y), _1258.y) + -0.5f) * 0.3f;
        _1268 = (_1238.x + -0.4f) * 0.2f;
        _1276 = max(0.001f, _exposure0.x);
        _1289 = 0.5f - (_1036 * 0.25f);
        _1292 = max((abs(((TEXCOORD.x + -0.5f) + _1268) + _1266) - _1289), 0.0f);
        _1293 = max((abs(((_1266 + _1268) + -0.475f) + (TEXCOORD.y * 0.9f)) - _1289), 0.0f);
        _1315 = (_1036 * (1.0f - TEXCOORD.y)) * saturate((((_1258.y * 4.0f) * saturate(1.0f - ((1.0f - saturate(sqrt((_1293 * _1293) + (_1292 * _1292)) * 6.6666665f)) * 2.0f))) * saturate((_1258.y * _1258.y) * 2.0f)) * saturate(_1238.z * _1238.w));
        _1327 = (_1315 + _1029);
        _1328 = ((_1315 * ((((_1238.w * 1.8809775f) + 0.11902248f) / _1276) - _1030)) + _1030);
        _1329 = ((_1315 * ((((_1238.w * 1.3989123f) + 0.6010877f) / _1276) - _1031)) + _1031);
        _1330 = ((_1315 * ((2.0f / _1276) - _1032)) + _1032);
      } else {
        _1327 = _1029;
        _1328 = _1030;
        _1329 = _1031;
        _1330 = _1032;
      }
    }
  } else {
    _1327 = _1029;
    _1328 = _1030;
    _1329 = _1031;
    _1330 = _1032;
  }
  if (!(_electrocutionWarning == 0.0f)) {
    _1335 = _67 * TEXCOORD.x;
    _1344 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_167 < (uint)65000), _167, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1335 * 1.5f), (TEXCOORD.y * 1.5f)));
    _1357 = WaveReadLaneFirst(_materialIndex);
    _1365 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1357 < (uint)170000), _1357, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._electrocutionTex);
    _1376 = max(0.001f, _exposure0.x);
    _1385 = 0.5f - (_electrocutionWarning * 0.07f);
    _1388 = max((abs(TEXCOORD.x + -0.5f) - _1385), 0.0f);
    _1389 = max((abs(TEXCOORD.y + -0.5f) - _1385), 0.0f);
    _1404 = 1.0f - abs((frac((_time.x * 2.0f) + _1344.y) * 2.0f) + -1.0f);
    _1407 = (_1404 * _1404) * (saturate(sqrt((_1389 * _1389) + (_1388 * _1388)) / _1344.z) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1365 < (uint)65000), _1365, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1344.x * 0.05f) + (_1335 * 2.0f)), (((_1344.y * 0.05f) + _70) + (_time.x * 0.1f)))))).x));
    _1410 = (pow(_1407, 1.6f));
    _1422 = (_1407 + _1327);
    _1423 = ((_1410 * ((340.0f / _1376) - _1328)) + _1328);
    _1424 = ((_1410 * ((660.0f / _1376) - _1329)) + _1329);
    _1425 = ((_1410 * ((2000.0f / _1376) - _1330)) + _1330);
  } else {
    _1422 = _1327;
    _1423 = _1328;
    _1424 = _1329;
    _1425 = _1330;
  }
  _1427 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _1422_sat]
    _1440 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1427, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1440 = saturate(_1422);  // [sem: _1422_sat]
  }
  _1443 = (_localToneMappingParams.w > 0.0f);
  if (_1443) {
    _1449 = _userImageAdjust.z * _exposure0.x;
    _1498 = exp2(log2(max(0.0f, (((_1449 * max(0.0f, (((_1423 * 1.70505f) - (_1424 * 0.62179f)) - (_1425 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1499 = exp2(log2(max(0.0f, (((max(0.0f, (((_1424 * 1.1408f) - (_1423 * 0.13026f)) - (_1425 * 0.01055f))) * _1449) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1500 = exp2(log2(max(0.0f, (((max(0.0f, (((_1423 * -0.024f) - (_1424 * 0.12897f)) + (_1425 * 1.15297f))) * _1449) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1502 = dot(float3(_1498, _1499, _1500), float3(0.212671f, 0.71516f, 0.072169f));
    _1509 = ((_1498 - _1502) * _powerParams.w) + _1502;
    _1510 = ((_1499 - _1502) * _powerParams.w) + _1502;
    _1511 = ((_1500 - _1502) * _powerParams.w) + _1502;
    _1530 = min(max(log2(mad(_1511, 0.079223745f, mad(_1510, 0.0784336f, (_1509 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1531 = min(max(log2(mad(_1511, 0.07916613f, mad(_1510, 0.87846863f, (_1509 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1532 = min(max(log2(mad(_1511, 0.879143f, mad(_1510, 0.0784336f, (_1509 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1533 = _1530 * 0.060606062f;
    _1534 = _1531 * 0.060606062f;
    _1535 = _1532 * 0.060606062f;
    _1536 = _1533 * _1533;
    _1537 = _1534 * _1534;
    _1538 = _1535 * _1535;
    _1584 = min(0.0f, (-0.0f - (((_1530 * 0.0072181816f) + ((_1536 * 0.4298f) + (((_1536 * _1536) * ((31.96f - (_1530 * 2.4327273f)) + (_1536 * 15.5f))) - ((_1530 * 0.41624245f) * _1536)))) + -0.00232f)));
    _1585 = min(0.0f, (-0.0f - (((_1531 * 0.0072181816f) + ((_1537 * 0.4298f) + (((_1537 * _1537) * ((31.96f - (_1531 * 2.4327273f)) + (_1537 * 15.5f))) - ((_1531 * 0.41624245f) * _1537)))) + -0.00232f)));
    _1586 = min(0.0f, (-0.0f - (((_1532 * 0.0072181816f) + ((_1538 * 0.4298f) + (((_1538 * _1538) * ((31.96f - (_1532 * 2.4327273f)) + (_1538 * 15.5f))) - ((_1532 * 0.41624245f) * _1538)))) + -0.00232f)));
    _1587 = -0.0f - _1584;
    _1588 = -0.0f - _1585;
    _1589 = -0.0f - _1586;
    _1590 = dot(float3(_1587, _1588, _1589), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1607 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1608 = -0.79999995f / _1607;
      _1609 = -1.2f / _1607;
      _1610 = 0.20000005f / _1607;
      _1616 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1619 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1626 = (_1608 + 1.4f) + (_1619 * (-0.39999998f - _1608));
      _1627 = (_1609 + 1.6f) + (_1619 * (-0.6f - _1609));
      _1628 = (_1610 + 0.9f) + (_1619 * (0.5f - _1610));
      _1645 = (lerp(_1627, 1.2f, _1616));  // [sem: blended]
      _1646 = (lerp(_1626, 1.0f, _1616));  // [sem: blended]
      _1647 = (lerp(_1628, 1.4f, _1616));  // [sem: blended]
    } else {
      _1645 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1646 = 1.0f;  // [sem: blended]
      _1647 = 1.4f;  // [sem: blended]
    }
    _1657 = 1.0f - _1645;
    _1682 = ((exp2(log2(((saturate((_1584 * _1584) * _1587) * _1657) + _1645) * _1587) * _1646) - _1590) * _1647) + _1590;
    _1683 = ((exp2(log2(((saturate((_1585 * _1585) * _1588) * _1657) + _1645) * _1588) * _1646) - _1590) * _1647) + _1590;
    _1684 = ((exp2(log2(((saturate((_1586 * _1586) * _1589) * _1657) + _1645) * _1589) * _1646) - _1590) * _1647) + _1590;
    _1703 = saturate(exp2(log2(mad(_1684, -0.09902974f, mad(_1683, -0.09802088f, (_1682 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1704 = saturate(exp2(log2(mad(_1684, -0.098961174f, mad(_1683, 1.1519032f, (_1682 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1705 = saturate(exp2(log2(mad(_1684, 1.1510737f, mad(_1683, -0.09804345f, (_1682 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1711 = 1.0f - abs(_etcParams.w);
      _1715 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1716 = (_1711 * _1703) + _1715;
      _1717 = (_1711 * _1704) + _1715;
      _1718 = (_1711 * _1705) + _1715;
      if (_colorGradingParams.w > 0.0f) {
        _1723 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1740 = (((max(0.0f, (1.0f - _1716)) - _1716) * _1723) + _1716);
        _1741 = (((max(0.0f, (1.0f - _1717)) - _1717) * _1723) + _1717);
        _1742 = (((max(0.0f, (1.0f - _1718)) - _1718) * _1723) + _1718);
      } else {
        _1740 = _1716;
        _1741 = _1717;
        _1742 = _1718;
      }
      _1748 = _userImageAdjust.y + 1.0f;
      _1752 = _userImageAdjust.x + 0.5f;
      _1753 = ((_1740 + -0.5f) * _1748) + _1752;
      _1754 = ((_1741 + -0.5f) * _1748) + _1752;
      _1755 = ((_1742 + -0.5f) * _1748) + _1752;
      _1785 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1796 = exp2(log2(saturate(mad(_colorBlind0.z, _1755, mad(_colorBlind0.y, _1754, (_colorBlind0.x * _1753))))) * _1785);
      _1797 = exp2(log2(saturate(mad(_colorBlind1.z, _1755, mad(_colorBlind1.y, _1754, (_colorBlind1.x * _1753))))) * _1785);
      _1798 = exp2(log2(saturate(mad(_colorBlind2.z, _1755, mad(_colorBlind2.y, _1754, (_colorBlind2.x * _1753))))) * _1785);
    } else {
      _1796 = _1703;
      _1797 = _1704;
      _1798 = _1705;
    }
  } else {
    _1796 = _1423;
    _1797 = _1424;
    _1798 = _1425;
  }
  if (_etcParams.y > 1.0f) {
    _1804 = abs(_69);
    _1805 = abs(_70 + -1.0f);
    _1809 = saturate(1.0f - (dot(float2(_1804, _1805), float2(_1804, _1805)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1814 = (_1809 * _1796);
    _1815 = (_1809 * _1797);
    _1816 = (_1809 * _1798);
  } else {
    _1814 = _1796;
    _1815 = _1797;
    _1816 = _1798;
  }
  if (_1443 && (_etcParams.z > 0.0f)) {
    _1846 = select((_1814 <= 0.0031308f), (_1814 * 12.92f), (((pow(_1814, 0.41666666f)) * 1.055f) + -0.055f));
    _1847 = select((_1815 <= 0.0031308f), (_1815 * 12.92f), (((pow(_1815, 0.41666666f)) * 1.055f) + -0.055f));
    _1848 = select((_1816 <= 0.0031308f), (_1816 * 12.92f), (((pow(_1816, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1846 = _1814;
    _1847 = _1815;
    _1848 = _1816;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1853 = (float)((uint)((uint)(_1427)));
    if (!(_1853 < _viewDir.w)) {
      if (!(_1853 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1862 = _1846;
        _1863 = _1847;
        _1864 = _1848;
      } else {
        _1862 = 0.0f;
        _1863 = 0.0f;
        _1864 = 0.0f;
      }
    } else {
      _1862 = 0.0f;
      _1863 = 0.0f;
      _1864 = 0.0f;
    }
  } else {
    _1862 = _1846;
    _1863 = _1847;
    _1864 = _1848;
  }
  SV_Target.x = _1862;
  SV_Target.y = _1863;
  SV_Target.z = _1864;
  SV_Target.w = _1440;
  return SV_Target;
}
