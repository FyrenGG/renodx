struct PostProcessAimHighlight_CDStruct {
  float _aimHighlightProgress;
  float _aimHighlightBackground;
  uint _noiseTex;
  uint _auraTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  uint _aimGimmickColor;
  uint _aimHighlightColor;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
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
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
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

struct BindlessParameters_PostProcessAimHighlight_CD {
  PostProcessAimHighlight_CDStruct BindlessParameters_PostProcessAimHighlight_CD;
};

typedef BindlessParameters_PostProcessAimHighlight_CD BindlessParameters_PostProcessAimHighlight_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAimHighlight_CD_t> BindlessParameters_PostProcessAimHighlight_CD[] : register(b0, space100);

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
  float _35;
  int _41;
  float _49;
  float _139;
  float _140;
  float _143;
  float _144;
  float _368;
  float _369;
  float _478;
  float _479;
  float _480;
  float _481;
  int _482;
  float _487;
  float _488;
  float _489;
  float _490;
  int _491;
  float _496;
  float _497;
  float _498;
  float _499;
  int _500;
  float _642;
  float _643;
  float _644;
  int _645;
  float _719;
  float _720;
  float _721;
  float _797;
  float _798;
  float _799;
  float _800;
  float _801;
  float _802;
  float _803;
  bool _864;
  float _881;
  float _882;
  float _883;
  float _893;
  float _1262;
  float _1263;
  float _1264;
  float _1265;
  float _1364;
  float _1365;
  float _1666;
  float _1667;
  float _1668;
  float _1709;
  float _1710;
  float _1711;
  float _1712;
  float _1763;
  float _1968;
  float _1969;
  float _1970;
  float _2063;
  float _2064;
  float _2065;
  float _2119;
  float _2120;
  float _2121;
  float _2140;
  float _2141;
  float _2142;
  float _2172;
  float _2173;
  float _2174;
  float _2188;
  float _2189;
  float _2190;
  int _52;
  float _60;
  int _63;
  float _71;
  int _74;
  float _82;
  int _83;
  float _91;
  float _92;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _105;
  float _110;
  float _114;
  float _123;
  float _125;
  float _129;
  float _133;
  float _158;
  float4 _170;
  float _183;
  float _184;
  float _185;
  float _187;
  float _188;
  float _189;
  float _190;
  float _192;
  float _194;
  float _195;
  float _231;
  float _232;
  float _233;
  float _234;
  float _270;
  float _271;
  float _272;
  float _273;
  float _275;
  float _276;
  float _277;
  float _278;
  float4 _281;
  float _285;
  float _286;
  float _287;
  int _292;
  int _300;
  float4 _307;
  int _312;
  float _320;
  float _321;
  float _324;
  float _325;
  uint2 _327;
  uint _342;
  int _344;
  float _352;
  float _353;
  float _355;
  float _356;
  float _357;
  float _371;
  float _372;
  float _373;
  float _374;
  float _376;
  int _380;
  float _388;
  int _389;
  float _397;
  float _400;
  float _403;
  float _404;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float _412;
  float _415;
  float _418;
  float _421;
  float _424;
  float _427;
  float _430;
  float _437;
  float _438;
  float _439;
  float _446;
  float _447;
  float _448;
  float _451;
  float _454;
  float _457;
  int _462;
  float _470;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  int _484;
  int _493;
  float _501;
  float _502;
  float _503;
  float _507;
  float _508;
  float _509;
  float _524;
  float _531;
  float _532;
  float _533;
  float _544;
  bool _545;
  float _546;
  float _547;
  float _548;
  float _549;
  int _550;
  float _560;
  float _561;
  float _562;
  float _590;
  float _595;
  float _596;
  float _601;
  float _602;
  float _603;
  float _612;
  float _614;
  float _615;
  float _617;
  float _619;
  float _620;
  float _621;
  float _627;
  float _628;
  float _649;
  float _650;
  float _651;
  float4 _656;
  float4 _660;
  int _667;
  float _675;
  float _677;
  float _684;
  float _685;
  float _686;
  int _689;
  float4 _694;
  int _698;
  float _706;
  float _708;
  int _722;
  float _730;
  int _736;
  float _744;
  float _747;
  int _772;
  int _780;
  float4 _787;
  float _790;
  float _792;
  float _795;
  float _808;
  float _809;
  float _810;
  float _811;
  float _820;
  float _821;
  float _823;
  float4 _831;
  float _840;
  float _841;
  float _842;
  float _843;
  float _850;
  float _870;
  float _873;
  float _897;
  float _898;
  float _899;
  float4 _902;
  int _904;
  float _912;
  float _927;
  float _928;
  float _929;
  float _935;
  float _938;
  int _951;
  uint _959;
  uint _960;
  uint4 _962;
  float4 _965;
  float _983;
  float _984;
  float _985;
  float _987;
  float _988;
  float _989;
  float _990;
  float _993;
  float _994;
  float _997;
  float _998;
  float _1002;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1009;
  float _1012;
  float _1013;
  float _1014;
  float _1015;
  float _1024;
  float _1028;
  float _1032;
  float _1034;
  float _1047;
  float _1050;
  float _1056;
  float _1071;
  float _1072;
  float _1073;
  float _1084;
  float _1090;
  float _1093;
  float _1096;
  float _1097;
  float _1098;
  float _1099;
  float _1108;
  float _1117;
  float _1126;
  float _1128;
  float _1140;
  float _1146;
  float _1149;
  float _1152;
  int _1153;
  float _1167;
  float _1168;
  float _1169;
  float _1197;
  float _1198;
  float _1202;
  float _1212;
  float _1213;
  float _1214;
  float _1226;
  float _1232;
  float _1234;
  float _1241;
  float _1242;
  float _1250;
  float _1255;
  float _1268;
  float _1269;
  float _1284;
  float _1285;
  float _1286;
  float _1302;
  float _1303;
  float _1304;
  float _1315;
  float _1320;
  float _1321;
  uint2 _1323;
  uint _1338;
  float _1348;
  float _1349;
  float _1351;
  float _1352;
  float _1353;
  float _1367;
  float _1368;
  float _1369;
  float _1370;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  int _1376;
  int _1384;
  float _1387;
  float _1390;
  float _1392;
  float _1417;
  float _1418;
  float _1419;
  int _1420;
  int _1428;
  float _1431;
  float _1434;
  float _1436;
  float _1437;
  float _1438;
  float _1442;
  int _1493;
  int _1501;
  float4 _1508;
  float _1522;
  float _1558;
  float _1575;
  float _1576;
  float _1577;
  float _1587;
  float _1596;
  float _1597;
  float _1610;
  float _1639;
  float _1640;
  float _1642;
  float _1704;
  float _1715;
  int _1720;
  float _1728;
  int _1730;
  float _1738;
  float _1740;
  float _1747;
  float _1748;
  float _1749;
  uint _1750;
  bool _1766;
  float _1772;
  float _1821;
  float _1822;
  float _1823;
  float _1825;
  float _1832;
  float _1833;
  float _1834;
  float _1853;
  float _1854;
  float _1855;
  float _1856;
  float _1857;
  float _1858;
  float _1859;
  float _1860;
  float _1861;
  float _1907;
  float _1908;
  float _1909;
  float _1910;
  float _1911;
  float _1912;
  float _1913;
  float _1930;
  float _1931;
  float _1932;
  float _1933;
  float _1939;
  float _1942;
  float _1949;
  float _1950;
  float _1951;
  float _1980;
  float _2005;
  float _2006;
  float _2007;
  float _2026;
  float _2027;
  float _2028;
  float _2034;
  float _2038;
  float _2039;
  float _2040;
  float _2041;
  float _2046;
  float _2071;
  float _2075;
  float _2076;
  float _2077;
  float _2078;
  float _2108;
  float _2130;
  float _2131;
  float _2135;
  float _2179;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_49 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _52 = WaveReadLaneFirst(_materialIndex);
    _60 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_52 < (uint)170000), _52, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
    if (_60 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _143 = TEXCOORD.x;
      _144 = TEXCOORD.y;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _71 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
    if (!(!(_71 >= 0.001f))) {
      _74 = WaveReadLaneFirst(_materialIndex);
      _82 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_74 < (uint)170000), _74, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
      _83 = WaveReadLaneFirst(_materialIndex);
      _91 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
      _92 = _91 * _82;
      _97 = 0.5f / _35;
      _98 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _99 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _97;
      _100 = dot(float2(_98, _99), float2(_98, _99));
      _101 = sqrt(_100);
      if (_92 > 0.0f) {
        _105 = sqrt(dot(float2(0.5f, _97), float2(0.5f, _97)));
        _110 = tan(_101 * _92) * (rsqrt(_100) * _105);
        _114 = tan(_105 * _92);
        _139 = (((_110 * _98) / _114) + 0.5f);
        _140 = (((_110 * _99) / _114) + _97);
      } else {
        if (_92 < 0.0f) {
          _123 = select((_35 < 1.0f), 0.5f, _97);
          _125 = _92 * -10.0f;
          _129 = atan(_101 * _125) * (rsqrt(_100) * _123);
          _133 = atan(_123 * _125);
          _139 = (((_129 * _98) / _133) + 0.5f);
          _140 = (((_129 * _99) / _133) + _97);
        } else {
          _139 = 0.0f;
          _140 = 0.0f;
        }
      }
      _143 = _139;
      _144 = (_140 * _35);
    } else {
      _143 = TEXCOORD.x;
      _144 = TEXCOORD.y;
    }
  }
  _158 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _170 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _143) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _144) + -0.5f))), 0));
  _183 = (saturate(_170.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _184 = (saturate(_170.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _185 = (saturate(_170.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _187 = rsqrt(dot(float3(_183, _184, _185), float3(_183, _184, _185)));  // [sem: invLength]
  _188 = _187 * _183;
  _189 = _187 * _184;
  _190 = _185 * _187;
  _192 = (_143 * 2.0f) + -1.0f;
  _194 = 1.0f - (_144 * 2.0f);
  _195 = max(1e-07f, _158.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _231 = mad((_invViewProj[3].z), _195, mad((_invViewProj[3].y), _194, ((_invViewProj[3].x) * _192))) + (_invViewProj[3].w);
  _232 = (mad((_invViewProj[0].z), _195, mad((_invViewProj[0].y), _194, ((_invViewProj[0].x) * _192))) + (_invViewProj[0].w)) / _231;
  _233 = (mad((_invViewProj[1].z), _195, mad((_invViewProj[1].y), _194, ((_invViewProj[1].x) * _192))) + (_invViewProj[1].w)) / _231;
  _234 = (mad((_invViewProj[2].z), _195, mad((_invViewProj[2].y), _194, ((_invViewProj[2].x) * _192))) + (_invViewProj[2].w)) / _231;
  _270 = mad((_invViewProjRelative[3].z), _195, mad((_invViewProjRelative[3].y), _194, ((_invViewProjRelative[3].x) * _192))) + (_invViewProjRelative[3].w);
  _271 = (mad((_invViewProjRelative[0].z), _195, mad((_invViewProjRelative[0].y), _194, ((_invViewProjRelative[0].x) * _192))) + (_invViewProjRelative[0].w)) / _270;
  _272 = (mad((_invViewProjRelative[1].z), _195, mad((_invViewProjRelative[1].y), _194, ((_invViewProjRelative[1].x) * _192))) + (_invViewProjRelative[1].w)) / _270;
  _273 = (mad((_invViewProjRelative[2].z), _195, mad((_invViewProjRelative[2].y), _194, ((_invViewProjRelative[2].x) * _192))) + (_invViewProjRelative[2].w)) / _270;
  _275 = rsqrt(dot(float3(_271, _272, _273), float3(_271, _272, _273)));  // [sem: invLength]
  _276 = _275 * _271;
  _277 = _275 * _272;
  _278 = _275 * _273;
  _281 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _285 = 4.0f / _35;
  _286 = _285 * _143;
  _287 = _285 * _144;
  _292 = WaveReadLaneFirst(_materialIndex);
  _300 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_292 < (uint)170000), _292, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _307 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_300 < (uint)65000), _300, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_286, ((_time.x * 0.1f) + _287)));
  _312 = WaveReadLaneFirst(_materialIndex);
  _320 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_312 < (uint)170000), _312, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _321 = _320 * (_307.y + -0.3f);
  _324 = (_321 * 0.001f) + _143;
  _325 = (_321 * 0.02f) + _144;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_327.x, _327.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _342 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_327.x))))))) + 0.5f) * _324)), ((int)((((float)((int)((int)((float)((int)((int)(_327.y))))))) + 0.5f) * _325)), 0));
  _344 = _342.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _352 = (((float)((uint)((uint)((uint)((uint)(_342.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _353 = (((float)((uint)((uint)(((uint)((uint)(_342.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _355 = 1.0f - abs(_352);
  _356 = abs(_353);
  _357 = _355 - _356;
  if (!(_357 >= 0.0f)) {
    _368 = (select((_352 >= 0.0f), 1.0f, -1.0f) * (1.0f - _356));
    _369 = (select((_353 >= 0.0f), 1.0f, -1.0f) * _355);
  } else {
    _368 = _352;
    _369 = _353;
  }
  _371 = rsqrt(dot(float3(_368, _369, _357), float3(_368, _369, _357)));  // [sem: invLength]
  _372 = _371 * _368;
  _373 = _371 * _369;
  _374 = _371 * _357;
  _376 = rsqrt(dot(float3(_372, _373, _374), float3(_372, _373, _374)));  // [sem: invLength]
  _380 = WaveReadLaneFirst(_materialIndex);
  _388 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_380 < (uint)170000), _380, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _389 = WaveReadLaneFirst(_materialIndex);
  _397 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_389 < (uint)170000), _389, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _400 = saturate(1.0f - _397) * _388;
  if (!(!(_400 >= 0.001f))) {
    _403 = ddx_coarse(_276);
    _404 = ddx_coarse(_277);
    _405 = ddx_coarse(_278);
    _406 = ddy_coarse(_276);
    _407 = ddy_coarse(_277);
    _408 = ddy_coarse(_278);
    _409 = ddx_coarse(_143);
    _410 = ddx_coarse(_144);
    _411 = ddy_coarse(_143);
    _412 = ddy_coarse(_144);
    _415 = (_407 * _190) - (_408 * _189);
    _418 = (_408 * _188) - (_406 * _190);
    _421 = (_406 * _189) - (_407 * _188);
    _424 = (_405 * _189) - (_404 * _190);
    _427 = (_403 * _190) - (_405 * _188);
    _430 = (_404 * _188) - (_403 * _189);
    _437 = (_411 * _424) + (_415 * _409);
    _438 = (_411 * _427) + (_418 * _409);
    _439 = (_411 * _430) + (_421 * _409);
    _446 = (_412 * _424) + (_415 * _410);
    _447 = (_412 * _427) + (_418 * _410);
    _448 = (_412 * _430) + (_410 * _421);
    _451 = max(dot(float3(_437, _438, _439), float3(_437, _438, _439)), dot(float3(_446, _447, _448), float3(_446, _447, _448)));
    _454 = rsqrt(select((!(_451 == 0.0f)), _451, 0.1f));  // [sem: rsqrt_val]
    _457 = _454 * _276;
    _462 = WaveReadLaneFirst(_materialIndex);
    _470 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_462 < (uint)170000), _462, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _471 = _470 * _232;
    _472 = _470 * _233;
    _473 = _470 * _234;
    _474 = floor(_471);
    _475 = floor(_472);
    _476 = floor(_473);
    _478 = 10.0f;
    _479 = 0.0f;
    _480 = 0.0f;
    _481 = 0.0f;
    _482 = -1;
    while(true) {
      _487 = _478;
      _488 = _479;
      _489 = _480;
      _490 = _481;
      _491 = -1;
      while(true) {
        _496 = _487;
        _497 = _488;
        _498 = _489;
        _499 = _490;
        _500 = -1;
        while(true) {
          _501 = (float)((int)(_500));
          _502 = (float)((int)(_491));
          _503 = (float)((int)(_482));
          _507 = sin(_501 + _474);
          _508 = sin(_502 + _475);
          _509 = sin(_503 + _476);
          _524 = _time.x * 0.2f;
          _531 = sin(_524 * frac(sin(dot(float3(_507, _508, _509), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _501;
          _532 = sin(_524 * frac(sin(dot(float3(_507, _508, _509), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _502;
          _533 = sin(_524 * frac(sin(dot(float3(_507, _508, _509), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _503;
          _544 = max(abs((_474 - _471) + _531), max(abs((_475 - _472) + _532), abs((_476 - _473) + _533)));
          _545 = (_544 < _496);
          _546 = select(_545, _544, _496);
          _547 = select(_545, _531, _497);
          _548 = select(_545, _532, _498);
          _549 = select(_545, _533, _499);
          _550 = (int)(_500) + (int)(1);
          if (!(_550 == 2)) {
            _496 = _546;
            _497 = _547;
            _498 = _548;
            _499 = _549;
            _500 = _550;
            continue;
          }
          while(true) {
            _493 = (int)(_491) + (int)(1);
            if (!(_493 == 2)) {
              _487 = _546;
              _488 = _547;
              _489 = _548;
              _490 = _549;
              _491 = _493;
              __loop_jump_target = 486;
              break;
            }
            while(true) {
              _484 = (int)(_482) + (int)(1);
              if (!(_484 == 2)) {
                _478 = _546;
                _479 = _547;
                _480 = _548;
                _481 = _549;
                _482 = _484;
                __loop_jump_target = 477;
                break;
              }
              _560 = (_547 + _474) / _470;
              _561 = (_548 + _475) / _470;
              _562 = (_549 + _476) / _470;
              _590 = mad((_viewProj[3].z), _562, mad((_viewProj[3].y), _561, ((_viewProj[3].x) * _560))) + (_viewProj[3].w);
              _595 = (((mad((_viewProj[0].z), _562, mad((_viewProj[0].y), _561, ((_viewProj[0].x) * _560))) + (_viewProj[0].w)) / _590) * 0.5f) + 0.5f;
              _596 = 0.5f - (((mad((_viewProj[1].z), _562, mad((_viewProj[1].y), _561, ((_viewProj[1].x) * _560))) + (_viewProj[1].w)) / _590) * 0.5f);
              _601 = _560 - _mainPosition.x;
              _602 = _561 - _mainPosition.y;
              _603 = _562 - _mainPosition.z;
              // [sem: expr_sat]
              _612 = saturate(1.0f - ((1.0f - ((1.0f / max(1e-05f, _400)) * sqrt(dot(float3(_601, _602, _603), float3(_601, _602, _603))))) * 1.0152284f));
              _614 = 1.0f - saturate(_612);
              _615 = _612 * 0.5f;
              _617 = (_143 - _595) / _614;
              _619 = (_144 - _596) / _614;
              _620 = sin(_615);
              _621 = cos(_615);
              _627 = mad((-0.0f - _620), _619, (_621 * _617)) + _595;
              _628 = mad(_621, _619, (_620 * _617)) + _596;
              _642 = 0.0f;
              _643 = 0.0f;
              _644 = 0.0f;
              _645 = 1;
              while(true) {
                _649 = (((float)((int)((int)(6) - (int)(_645)))) * 0.16666667f) * ((saturate(_158.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_143))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_144)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f));
                _650 = _649 * mad((_454 * _439), _278, mad((_454 * _438), _277, (_457 * _437)));
                _651 = _649 * mad((_454 * _448), _278, mad((_454 * _447), _277, (_457 * _446)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _656 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_650 + _143), (_651 + _144)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _660 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_650 + _627), (_651 + _628)));
                _667 = WaveReadLaneFirst(_materialIndex);
                _675 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_667 < (uint)170000), _667, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _677 = (float)((bool)(_656.w < _675));
                _684 = (_677 * ((_660.x * 0.4f) - _642)) + _642;
                _685 = (_677 * ((_660.y * 0.4f) - _643)) + _643;
                _686 = (_677 * ((_660.z * 0.4f) - _644)) + _644;
                if (!(_656.w > 0.9f)) {
                  _689 = (int)(_645) + (int)(1);
                  if ((int)_689 < (int)6) {
                    _642 = _684;
                    _643 = _685;
                    _644 = _686;
                    _645 = _689;
                    continue;
                  }
                }
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _694 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_627, _628));
                _698 = WaveReadLaneFirst(_materialIndex);
                _706 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_698 < (uint)170000), _698, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _708 = (float)((bool)(_656.w < _706));
                _719 = ((_708 * (_694.x - _684)) + _684);
                _720 = ((_708 * (_694.y - _685)) + _685);
                _721 = ((_708 * (_694.z - _686)) + _686);
                break;
              }
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 486) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 477) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _719 = 0.0f;
    _720 = 0.0f;
    _721 = 0.0f;
  }
  _722 = WaveReadLaneFirst(_materialIndex);
  _730 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_722 < (uint)170000), _722, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _736 = WaveReadLaneFirst(_materialIndex);
  _744 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_736 < (uint)170000), _736, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _747 = saturate((_744 * 100.0f) + -99.0f);  // [sem: expr_sat]
  if (!(!(_747 >= 0.001f))) {
    if ((_344 == _renderPassSelfPlayer) || (_344 == _renderPassTest) || (_344 == _renderPassDetectRemoteCatch) || (_344 == _renderPassDetectPickedRemoteCatch)) {
      _772 = WaveReadLaneFirst(_materialIndex);
      _780 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_772 < (uint)170000), _772, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
      _787 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_780 < (uint)65000), _780, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_286 - (_time.x * 0.22f)), (_287 - (_time.x * 0.18f))));
      _790 = _787.x + -0.3f;
      _792 = ((_787.x + -0.4f) * 10.471975f) + -1.5707964f;
      _795 = _790 * 0.006f;
      _797 = _795;
      _798 = _795;
      _799 = 0.0f;
      _800 = 0.0f;
      _801 = 0.0f;
      _802 = 0.0f;
      _803 = -1.0f;
      while(true) {
        _808 = _143 - ((_797 * sin(_792)) * _803);
        _809 = _144 - ((_798 * cos(_792)) * _803);
        _810 = _808 + -0.5f;
        _811 = _809 + -0.5f;
        // [sem: invLength]
        _820 = rsqrt(dot(float2(_810, _811), float2(_810, _811))) * ((_790 * 0.06f) * sqrt((_810 * _810) + (_811 * _811)));
        _821 = _820 * _810;
        _823 = _820 * _811;
        _831 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_808, _809));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _840 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_808 - _821), (_809 - _823))))).x) * 0.2f) + _799;
        _841 = (_831.y * 0.2f) + _800;
        _842 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_821 + _808), (_823 + _809))))).z) * 0.2f) + _801;
        _843 = (_831.w * 0.2f) + _802;
        _850 = _803 + 0.2f;
        if (!(!(_850 <= 1.0f))) {
          _797 = (_797 * 1.01f);
          _798 = (_798 * 1.01f);
          _799 = (_840 * 0.9f);
          _800 = (_841 * 0.9f);
          _801 = (_842 * 0.9f);
          _802 = (_843 * 0.9f);
          _803 = _850;
          continue;
        }
        if (!(_344 == _renderPassSelfPlayer)) {
          _864 = (_344 == _renderPassTest);
        } else {
          _864 = true;
        }
        _870 = saturate(_843 * 1.08f);  // [sem: expr_sat]
        _873 = max(0.001f, _exposure0.x);
        _881 = ((((_840 * 0.54f) * select(_864, 0.55f, 0.5f)) / _873) * _870);
        _882 = ((((_841 * 0.54f) * select(_864, 0.7f, 0.8f)) / _873) * _870);
        _883 = (((_842 * 0.54f) / _873) * _870);
        break;
      }
    } else {
      _881 = 0.0f;
      _882 = 0.0f;
      _883 = 0.0f;
    }
  } else {
    _881 = 0.0f;
    _882 = 0.0f;
    _883 = 0.0f;
  }
  if ((_344 == _renderPassSelfPlayer) || (_344 == _renderPassTest)) {
    _893 = _747;  // [sem: expr_sat]
  } else {
    _893 = saturate(_730 * 2.0f);  // [sem: expr_sat]
  }
  _897 = _281.z + (_893 * (_721 - _281.z));
  _898 = _281.y + (_893 * (_720 - _281.y));
  _899 = _281.x + (_893 * (_719 - _281.x));
  _902 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _904 = WaveReadLaneFirst(_materialIndex);
  _912 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_904 < (uint)170000), _904, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightBackground);
  if (!(!(_912 >= 0.001f))) {
    if (!(_344 == _renderPassSelfPlayer)) {
      if (!(_344 == _renderPassTest)) {
        _927 = _232 - _mainPosition.x;
        _928 = _233 - _mainPosition.y;
        _929 = _234 - _mainPosition.z;
        _935 = sqrt(((_927 * _927) + (_928 * _928)) + (_929 * _929));
        _938 = 1.0f - saturate(_935 * 0.033333335f);
        _951 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _143) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _144) + -0.5f))), 0)))).x) & 127;
        if ((uint)((int)(_951) + (int)(-52)) < (uint)16) {
          _959 = (uint)((_bufferSizeAndInvSize.x * _324) + -0.5f);
          _960 = (uint)((_bufferSizeAndInvSize.y * _325) + -0.5f);
          _962 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_959, _960, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _965 = __3__36__0__0__g_gbufferNormal.Load(int3(_959, _960, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _983 = (saturate(_965.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _984 = (saturate(_965.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _985 = (saturate(_965.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _987 = rsqrt(dot(float3(_983, _984, _985), float3(_983, _984, _985)));  // [sem: invLength]
          _988 = _987 * _983;
          _989 = _987 * _984;
          _990 = _985 * _987;
          _993 = (((float)((uint)((uint)(((uint)((uint)(_962.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _994 = (((float)((uint)((uint)(_962.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _997 = (_993 + _994) * 0.5f;
          _998 = (_993 - _994) * 0.5f;
          _1002 = (1.0f - abs(_997)) - abs(_998);
          _1004 = rsqrt(dot(float3(_997, _998, _1002), float3(_997, _998, _1002)));  // [sem: invLength]
          _1005 = _1004 * _997;
          _1006 = _1004 * _998;
          _1007 = _1004 * _1002;
          _1009 = select((_990 >= 0.0f), 1.0f, -1.0f);
          _1012 = -0.0f - (1.0f / (_1009 + _990));
          _1013 = _989 * _1012;
          _1014 = _1013 * _988;
          _1015 = _1009 * _988;
          _1024 = mad(_1007, _988, mad(_1006, _1014, ((((_1015 * _988) * _1012) + 1.0f) * _1005)));
          _1028 = mad(_1007, _989, mad(_1006, (_1009 + (_1013 * _989)), ((_1005 * _1009) * _1014)));
          _1032 = mad(_1007, _990, mad(_1006, (-0.0f - _989), (-0.0f - (_1015 * _1005))));
          _1034 = rsqrt(dot(float3(_1024, _1028, _1032), float3(_1024, _1028, _1032)));  // [sem: invLength]
          _1047 = 1.0f - saturate(dot(float3((_1034 * _1024), (_1034 * _1028), (_1034 * _1032)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _1050 = max(0.001f, _exposure0.x);
          _1056 = (_1047 * _1047) * (_938 * _912);
          _1262 = (((0.05f / _1050) * _1056) + _899);
          _1263 = (((0.08f / _1050) * _1056) + _898);
          _1264 = (((0.1f / _1050) * _1056) + _897);
          _1265 = _902.w;
        } else {
          _1071 = _232 - _aimHighlightPosition.x;
          _1072 = _233 - _aimHighlightPosition.y;
          _1073 = _234 - _aimHighlightPosition.z;
          _1084 = 1.0f - saturate(sqrt(((_1071 * _1071) + (_1072 * _1072)) + (_1073 * _1073)) / (_aimHighlightPosition.w * 5.0f));
          _1090 = saturate(((_1084 * _1084) * _1084) + ((1.0f - saturate(_935 * 0.5f)) * 0.1f)) * _902.w;
          _1093 = (_902.w * _902.w) * _938;
          _1096 = _1090 * 0.875f;
          _1097 = _1090 * 1.625f;
          _1098 = _1090 * 2.5f;
          _1099 = _1090 * 60.0f;
          _1108 = (((1.0f - saturate(_1099 + -2.0f)) * saturate(_1099 + -1.5f)) * (0.35f - _1096)) + _1096;
          _1117 = (((0.65f - _1097) * saturate(_1099 + -1.7f)) * (1.0f - saturate(_1099 + -3.0f))) + _1097;
          _1126 = ((saturate(_1099 + -2.2f) * (1.0f - _1098)) * (1.0f - saturate(_1099 + -6.0f))) + _1098;
          _1128 = saturate(_1099 + -7.0f);  // [sem: expr_sat]
          _1140 = 1.0f - _1093;
          _1146 = (((((_1128 * ((_1090 * 1.75f) - _1108)) + _1108) * _1140) + (_1093 * 0.35f)) * _912) + _899;
          _1149 = (((((((_1090 * 3.25f) - _1117) * _1128) + _1117) * _1140) + (_1093 * 0.65f)) * _912) + _898;
          _1152 = (((((((_1090 * 5.0f) - _1126) * _1128) + _1126) * _1140) + _1093) * _912) + _897;
          _1153 = (int)(_951) + (int)(-105);
          if ((_951 == 107) || ((_951 == 26) || (((uint)((int)(_951) + (int)(-27)) < (uint)2) || ((uint)_1153 < (uint)2)))) {
            _1167 = _mainPosition.x - _viewPos.x;
            _1168 = _mainPosition.y - _viewPos.y;
            _1169 = _mainPosition.z - _viewPos.z;
            _1197 = mad((_viewProjRelative[3].z), _1169, mad((_viewProjRelative[3].y), _1168, ((_viewProjRelative[3].x) * _1167))) + (_viewProjRelative[3].w);
            _1198 = (mad((_viewProjRelative[0].z), _1169, mad((_viewProjRelative[0].y), _1168, ((_viewProjRelative[0].x) * _1167))) + (_viewProjRelative[0].w)) / _1197;
            _1202 = 0.5f - (((mad((_viewProjRelative[1].z), _1169, mad((_viewProjRelative[1].y), _1168, ((_viewProjRelative[1].x) * _1167))) + (_viewProjRelative[1].w)) / _1197) * 0.5f);
            _1212 = ((_view[0].x) * 5.0f) + _1167;
            _1213 = ((_view[0].y) * 5.0f) + _1168;
            _1214 = ((_view[0].z) * 5.0f) + _1169;
            _1226 = mad((_viewProjRelative[3].z), _1214, mad((_viewProjRelative[3].y), _1213, (_1212 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
            _1232 = (0.5f - (((mad((_viewProjRelative[1].z), _1214, mad((_viewProjRelative[1].y), _1213, (_1212 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1226) * 0.5f)) - _1202;
            _1234 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _1214, mad((_viewProjRelative[0].y), _1213, (_1212 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1226) - _1198);
            _1241 = _144 - _1202;
            _1242 = ((_143 + -0.5f) - (_1198 * 0.5f)) * _35;
            _1250 = 1.0f - saturate(sqrt((_1241 * _1241) + (_1242 * _1242)) / max(0.001f, sqrt((_1232 * _1232) + (_1234 * _1234))));
            _1255 = (_1250 * _1250) * (select(((uint)_1153 < (uint)3), 0.05f, 0.005f) * _912);
            _1262 = ((_1255 * 0.35f) + _1146);
            _1263 = ((_1255 * 0.65f) + _1149);
            _1264 = (_1255 + _1152);
            _1265 = _1093;
          } else {
            _1262 = _1146;
            _1263 = _1149;
            _1264 = _1152;
            _1265 = _1093;
          }
        }
      } else {
        _1262 = _899;
        _1263 = _898;
        _1264 = _897;
        _1265 = _902.w;
      }
    } else {
      _1262 = _899;
      _1263 = _898;
      _1264 = _897;
      _1265 = _902.w;
    }
  } else {
    _1262 = _899;
    _1263 = _898;
    _1264 = _897;
    _1265 = _902.w;
  }
  if (_747 > 0.0f) {
    _1284 = ((float)((int)((int)(_232 * 2000.0f)))) * 0.0005f;
    _1285 = ((float)((int)((int)(_233 * 2000.0f)))) * 0.0005f;
    _1286 = ((float)((int)((int)(_234 * 2000.0f)))) * 0.0005f;
    _1302 = saturate(frac(sin(dot(float3(_1284, _1285, _1286), float3(127.1f, 311.7f, 74.7f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1303 = saturate(frac(sin(dot(float3(_1284, _1285, _1286), float3(269.5f, 183.3f, 246.1f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1304 = saturate(frac(sin(dot(float3(_1284, _1285, _1286), float3(113.5f, 271.9f, 124.6f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1315 = frac(sin(dot(float2(_143, _144), float2(127.1f, 311.7f))) * 437.545f) * 0.5f;
    _1320 = ((frac((_1303 + _1302) - _1304) - _1315) * 0.025f) + _143;
    _1321 = ((frac((_1303 - _1302) + _1304) - _1315) * 0.025f) + _144;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1323.x, _1323.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _1338 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_1323.x))))))) + 0.5f) * _1320)), ((int)((((float)((int)((int)((float)((int)((int)(_1323.y))))))) + 0.5f) * _1321)), 0));
    _1348 = (((float)((uint)((uint)((uint)((uint)(_1338.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1349 = (((float)((uint)((uint)(((uint)((uint)(_1338.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1351 = 1.0f - abs(_1348);
    _1352 = abs(_1349);
    _1353 = _1351 - _1352;
    if (!(_1353 >= 0.0f)) {
      _1364 = (select((_1348 >= 0.0f), 1.0f, -1.0f) * (1.0f - _1352));
      _1365 = (select((_1349 >= 0.0f), 1.0f, -1.0f) * _1351);
    } else {
      _1364 = _1348;
      _1365 = _1349;
    }
    _1367 = rsqrt(dot(float3(_1364, _1365, _1353), float3(_1364, _1365, _1353)));  // [sem: invLength]
    _1368 = _1367 * _1364;
    _1369 = _1367 * _1365;
    _1370 = _1367 * _1353;
    _1372 = rsqrt(dot(float3(_1368, _1369, _1370), float3(_1368, _1369, _1370)));  // [sem: invLength]
    _1373 = _1372 * _1368;
    _1374 = _1372 * _1369;
    _1375 = _1372 * _1370;
    _1376 = WaveReadLaneFirst(_materialIndex);
    _1384 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1376 < (uint)170000), _1376, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimGimmickColor);
    _1387 = (float)((uint)((uint)(((uint)((uint)(_1384)) >> 16) & 255)));
    _1390 = (float)((uint)((uint)(((uint)((uint)(_1384)) >> 8) & 255)));
    _1392 = (float)((uint)((uint)(_1384 & 255)));
    _1417 = select(((_1387 * 0.003921569f) < 0.04045f), (_1387 * 0.000303527f), exp2(log2((_1387 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1418 = select(((_1390 * 0.003921569f) < 0.04045f), (_1390 * 0.000303527f), exp2(log2((_1390 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1419 = select(((_1392 * 0.003921569f) < 0.04045f), (_1392 * 0.000303527f), exp2(log2((_1392 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1420 = WaveReadLaneFirst(_materialIndex);
    _1428 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1420 < (uint)170000), _1420, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightColor);
    _1431 = (float)((uint)((uint)(((uint)((uint)(_1428)) >> 16) & 255)));
    _1434 = (float)((uint)((uint)(((uint)((uint)(_1428)) >> 8) & 255)));
    _1436 = (float)((uint)((uint)(_1428 & 255)));
    _1437 = _143 + -0.5f;
    _1438 = _144 + -0.5f;
    _1442 = sqrt((_1438 * _1438) + (_1437 * _1437));
    if (_344 == _renderPassAimHighlight) {
      _1493 = WaveReadLaneFirst(_materialIndex);
      _1501 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1493 < (uint)170000), _1493, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._auraTex);
      _1508 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1501 < (uint)65000), _1501, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((8.0f / _35) * _143) + ((_307.w + -0.5f) * 0.1f)), ((((5.0f / _35) * _144) + ((_307.z + -0.5f) * 0.1f)) - (_time.x * 0.02f))));
      _1522 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _143)), ((int)(_customRenderPassSizeInvSize.y * _144)), 0)))).x));
      _1558 = mad((_invViewProj[3].z), _1522, mad((_invViewProj[3].y), _194, ((_invViewProj[3].x) * _192))) + (_invViewProj[3].w);
      _1575 = (((mad((_invViewProj[0].z), _1522, mad((_invViewProj[0].y), _194, ((_invViewProj[0].x) * _192))) + (_invViewProj[0].w)) / _1558) - _aimHighlightPosition.x) - ((_1508.x + -0.5f) * 0.4f);
      _1576 = (((mad((_invViewProj[1].z), _1522, mad((_invViewProj[1].y), _194, ((_invViewProj[1].x) * _192))) + (_invViewProj[1].w)) / _1558) - _aimHighlightPosition.y) - ((_1508.y + -0.5f) * 0.4f);
      _1577 = (((mad((_invViewProj[2].z), _1522, mad((_invViewProj[2].y), _194, ((_invViewProj[2].x) * _192))) + (_invViewProj[2].w)) / _1558) - _aimHighlightPosition.z) - ((_1508.z + -0.5f) * 0.4f);
      _1587 = 1.0f - saturate(sqrt(((_1575 * _1575) + (_1576 * _1576)) + (_1577 * _1577)) / _aimHighlightPosition.w);
      _1596 = _1587 * ((sin((_time.x * 10.0f) + (_1587 * 20.0f)) + 1.5f) * 0.3333f);
      _1597 = _1596 * _1596;
      _1610 = (((((_1597 * _1597) * ((pow(_1587, 5.0f)) * 7.999999e+06f)) * _1597) + 1.0f) / max(0.001f, _exposure0.x)) * _1597;
      if (((_nearFarProj.x / _195) + 0.05f) < (_nearFarProj.x / _1522)) {
        _1639 = 1.0f - saturate(dot(float3(((((_376 * _372) - _1373) * 0.75f) + _1373), ((((_376 * _373) - _1374) * 0.75f) + _1374), ((((_376 * _374) - _1375) * 0.75f) + _1375)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _1640 = _1639 * _1639;
        _1642 = (_1640 * _1640) * _1639;
        _1666 = ((_1642 * (lerp(_1417, 0.35f, 0.3f))) + (_1262 * 4.0f));
        _1667 = ((_1642 * (lerp(_1418, 0.65f, 0.3f))) + (_1263 * 4.0f));
        _1668 = ((_1642 * (lerp(_1419, 1.0f, 0.3f))) + (_1264 * 4.0f));
      } else {
        _1666 = (_1417 * _1265);
        _1667 = (_1418 * _1265);
        _1668 = (_1419 * _1265);
      }
      _1709 = _1442;
      _1710 = (((((_1610 * select(((_1431 * 0.003921569f) < 0.04045f), (_1431 * 0.000303527f), exp2(log2((_1431 * 0.003717127f) + 0.052132703f) * 2.4f))) - _1262) + _1666) * _747) + _1262);
      _1711 = (((((_1610 * select(((_1434 * 0.003921569f) < 0.04045f), (_1434 * 0.000303527f), exp2(log2((_1434 * 0.003717127f) + 0.052132703f) * 2.4f))) - _1263) + _1667) * _747) + _1263);
      _1712 = (((((_1610 * select(((_1436 * 0.003921569f) < 0.04045f), (_1436 * 0.000303527f), exp2(log2((_1436 * 0.003717127f) + 0.052132703f) * 2.4f))) - _1264) + _1668) * _747) + _1264);
    } else {
      if (((float)((uint)((uint)(_1338.x & 255)))) == ((float)((uint)((uint)(_renderPassAimHighlight))))) {
        if (((_nearFarProj.x / _195) + 0.05f) < (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1320)), ((int)(_customRenderPassSizeInvSize.y * _1321)), 0)))).x)))) {
          _1704 = min(max(saturate(1.0f - (_1442 * 2.0f)), 0.1f), 1.0f) * 0.05f;
          _1709 = _1442;
          _1710 = (_1704 * _1417);
          _1711 = (_1704 * _1418);
          _1712 = (_1704 * _1419);
        } else {
          _1709 = _1442;
          _1710 = _1262;
          _1711 = _1263;
          _1712 = _1264;
        }
      } else {
        _1709 = _1442;
        _1710 = _1262;
        _1711 = _1263;
        _1712 = _1264;
      }
    }
  } else {
    _1268 = _143 + -0.5f;
    _1269 = _144 + -0.5f;
    _1709 = sqrt((_1269 * _1269) + (_1268 * _1268));
    _1710 = _1262;
    _1711 = _1263;
    _1712 = _1264;
  }
  _1715 = saturate((_1709 + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _1720 = WaveReadLaneFirst(_materialIndex);
  _1728 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1720 < (uint)170000), _1720, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._vignetteIntensity);
  _1730 = WaveReadLaneFirst(_materialIndex);
  _1738 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1730 < (uint)170000), _1730, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _1740 = 1.0f - ((((_1715 * _1715) * (3.0f - (_1715 * 2.0f))) * _1728) * _1738);
  _1747 = max(0.0f, (_1740 * (_1710 + _881)));
  _1748 = max(0.0f, (_1740 * (_1711 + _882)));
  _1749 = max(0.0f, (_1740 * (_1712 + _883)));
  _1750 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1763 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1750, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1763 = 1.0f;
  }
  _1766 = (_localToneMappingParams.w > 0.0f);
  if (_1766) {
    _1772 = _userImageAdjust.z * _exposure0.x;
    _1821 = exp2(log2(max(0.0f, (((_1772 * max(0.0f, (((_1747 * 1.70505f) - (_1748 * 0.62179f)) - (_1749 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1822 = exp2(log2(max(0.0f, (((max(0.0f, (((_1748 * 1.1408f) - (_1747 * 0.13026f)) - (_1749 * 0.01055f))) * _1772) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1823 = exp2(log2(max(0.0f, (((max(0.0f, (((_1747 * -0.024f) - (_1748 * 0.12897f)) + (_1749 * 1.15297f))) * _1772) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1825 = dot(float3(_1821, _1822, _1823), float3(0.212671f, 0.71516f, 0.072169f));
    _1832 = ((_1821 - _1825) * _powerParams.w) + _1825;
    _1833 = ((_1822 - _1825) * _powerParams.w) + _1825;
    _1834 = ((_1823 - _1825) * _powerParams.w) + _1825;
    _1853 = min(max(log2(mad(_1834, 0.079223745f, mad(_1833, 0.0784336f, (_1832 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1854 = min(max(log2(mad(_1834, 0.07916613f, mad(_1833, 0.87846863f, (_1832 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1855 = min(max(log2(mad(_1834, 0.879143f, mad(_1833, 0.0784336f, (_1832 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1856 = _1853 * 0.060606062f;
    _1857 = _1854 * 0.060606062f;
    _1858 = _1855 * 0.060606062f;
    _1859 = _1856 * _1856;
    _1860 = _1857 * _1857;
    _1861 = _1858 * _1858;
    _1907 = min(0.0f, (-0.0f - (((_1853 * 0.0072181816f) + ((_1859 * 0.4298f) + (((_1859 * _1859) * ((31.96f - (_1853 * 2.4327273f)) + (_1859 * 15.5f))) - ((_1853 * 0.41624245f) * _1859)))) + -0.00232f)));
    _1908 = min(0.0f, (-0.0f - (((_1854 * 0.0072181816f) + ((_1860 * 0.4298f) + (((_1860 * _1860) * ((31.96f - (_1854 * 2.4327273f)) + (_1860 * 15.5f))) - ((_1854 * 0.41624245f) * _1860)))) + -0.00232f)));
    _1909 = min(0.0f, (-0.0f - (((_1855 * 0.0072181816f) + ((_1861 * 0.4298f) + (((_1861 * _1861) * ((31.96f - (_1855 * 2.4327273f)) + (_1861 * 15.5f))) - ((_1855 * 0.41624245f) * _1861)))) + -0.00232f)));
    _1910 = -0.0f - _1907;
    _1911 = -0.0f - _1908;
    _1912 = -0.0f - _1909;
    _1913 = dot(float3(_1910, _1911, _1912), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1930 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1931 = -0.79999995f / _1930;
      _1932 = -1.2f / _1930;
      _1933 = 0.20000005f / _1930;
      _1939 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1942 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1949 = (_1931 + 1.4f) + (_1942 * (-0.39999998f - _1931));
      _1950 = (_1932 + 1.6f) + (_1942 * (-0.6f - _1932));
      _1951 = (_1933 + 0.9f) + (_1942 * (0.5f - _1933));
      _1968 = (lerp(_1950, 1.2f, _1939));  // [sem: blended]
      _1969 = (lerp(_1949, 1.0f, _1939));  // [sem: blended]
      _1970 = (lerp(_1951, 1.4f, _1939));  // [sem: blended]
    } else {
      _1968 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1969 = 1.0f;  // [sem: blended]
      _1970 = 1.4f;  // [sem: blended]
    }
    _1980 = 1.0f - _1968;
    _2005 = ((exp2(log2(((saturate((_1907 * _1907) * _1910) * _1980) + _1968) * _1910) * _1969) - _1913) * _1970) + _1913;
    _2006 = ((exp2(log2(((saturate((_1908 * _1908) * _1911) * _1980) + _1968) * _1911) * _1969) - _1913) * _1970) + _1913;
    _2007 = ((exp2(log2(((saturate((_1909 * _1909) * _1912) * _1980) + _1968) * _1912) * _1969) - _1913) * _1970) + _1913;
    _2026 = saturate(exp2(log2(mad(_2007, -0.09902974f, mad(_2006, -0.09802088f, (_2005 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2027 = saturate(exp2(log2(mad(_2007, -0.098961174f, mad(_2006, 1.1519032f, (_2005 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2028 = saturate(exp2(log2(mad(_2007, 1.1510737f, mad(_2006, -0.09804345f, (_2005 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2034 = 1.0f - abs(_etcParams.w);
      _2038 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2039 = (_2034 * _2026) + _2038;
      _2040 = (_2034 * _2027) + _2038;
      _2041 = (_2034 * _2028) + _2038;
      if (_colorGradingParams.w > 0.0f) {
        _2046 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2063 = (((max(0.0f, (1.0f - _2039)) - _2039) * _2046) + _2039);
        _2064 = (((max(0.0f, (1.0f - _2040)) - _2040) * _2046) + _2040);
        _2065 = (((max(0.0f, (1.0f - _2041)) - _2041) * _2046) + _2041);
      } else {
        _2063 = _2039;
        _2064 = _2040;
        _2065 = _2041;
      }
      _2071 = _userImageAdjust.y + 1.0f;
      _2075 = _userImageAdjust.x + 0.5f;
      _2076 = ((_2063 + -0.5f) * _2071) + _2075;
      _2077 = ((_2064 + -0.5f) * _2071) + _2075;
      _2078 = ((_2065 + -0.5f) * _2071) + _2075;
      _2108 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2119 = exp2(log2(saturate(mad(_colorBlind0.z, _2078, mad(_colorBlind0.y, _2077, (_colorBlind0.x * _2076))))) * _2108);
      _2120 = exp2(log2(saturate(mad(_colorBlind1.z, _2078, mad(_colorBlind1.y, _2077, (_colorBlind1.x * _2076))))) * _2108);
      _2121 = exp2(log2(saturate(mad(_colorBlind2.z, _2078, mad(_colorBlind2.y, _2077, (_colorBlind2.x * _2076))))) * _2108);
    } else {
      _2119 = _2026;
      _2120 = _2027;
      _2121 = _2028;
    }
  } else {
    _2119 = _1747;
    _2120 = _1748;
    _2121 = _1749;
  }
  if (_etcParams.y > 1.0f) {
    _2130 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2131 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2135 = saturate(1.0f - (dot(float2(_2130, _2131), float2(_2130, _2131)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2140 = (_2135 * _2119);
    _2141 = (_2135 * _2120);
    _2142 = (_2135 * _2121);
  } else {
    _2140 = _2119;
    _2141 = _2120;
    _2142 = _2121;
  }
  if (_1766 && (_etcParams.z > 0.0f)) {
    _2172 = select((_2140 <= 0.0031308f), (_2140 * 12.92f), (((pow(_2140, 0.41666666f)) * 1.055f) + -0.055f));
    _2173 = select((_2141 <= 0.0031308f), (_2141 * 12.92f), (((pow(_2141, 0.41666666f)) * 1.055f) + -0.055f));
    _2174 = select((_2142 <= 0.0031308f), (_2142 * 12.92f), (((pow(_2142, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2172 = _2140;
    _2173 = _2141;
    _2174 = _2142;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2179 = (float)((uint)((uint)(_1750)));
    if (!(_2179 < _viewDir.w)) {
      if (!(_2179 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2188 = _2172;
        _2189 = _2173;
        _2190 = _2174;
      } else {
        _2188 = 0.0f;
        _2189 = 0.0f;
        _2190 = 0.0f;
      }
    } else {
      _2188 = 0.0f;
      _2189 = 0.0f;
      _2190 = 0.0f;
    }
  } else {
    _2188 = _2172;
    _2189 = _2173;
    _2190 = _2174;
  }
  SV_Target.x = _2188;
  SV_Target.y = _2189;
  SV_Target.z = _2190;
  SV_Target.w = _1763;
  return SV_Target;
}
