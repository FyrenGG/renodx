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
  float _404;
  float _405;
  float _514;
  float _515;
  float _516;
  float _517;
  int _518;
  float _523;
  float _524;
  float _525;
  float _526;
  int _527;
  float _532;
  float _533;
  float _534;
  float _535;
  int _536;
  float _678;
  float _679;
  float _680;
  int _681;
  float _824;
  float _825;
  float _826;
  float _902;
  float _903;
  float _904;
  float _905;
  float _906;
  float _907;
  float _908;
  bool _969;
  float _986;
  float _987;
  float _988;
  float _998;
  float _1367;
  float _1368;
  float _1369;
  float _1370;
  float _1469;
  float _1470;
  float _1771;
  float _1772;
  float _1773;
  float _1814;
  float _1815;
  float _1816;
  float _1817;
  float _1868;
  float _2073;
  float _2074;
  float _2075;
  float _2168;
  float _2169;
  float _2170;
  float _2224;
  float _2225;
  float _2226;
  float _2245;
  float _2246;
  float _2247;
  float _2277;
  float _2278;
  float _2279;
  float _2293;
  float _2294;
  float _2295;
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
  float _291;
  float _292;
  float _293;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  int _328;
  int _336;
  float4 _343;
  int _348;
  float _356;
  float _357;
  float _360;
  float _361;
  uint2 _363;
  uint _378;
  int _380;
  float _388;
  float _389;
  float _391;
  float _392;
  float _393;
  float _407;
  float _408;
  float _409;
  float _410;
  float _412;
  int _416;
  float _424;
  int _425;
  float _433;
  float _436;
  float _439;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _451;
  float _454;
  float _457;
  float _460;
  float _463;
  float _466;
  float _473;
  float _474;
  float _475;
  float _482;
  float _483;
  float _484;
  float _487;
  float _490;
  float _493;
  int _498;
  float _506;
  float _507;
  float _508;
  float _509;
  float _510;
  float _511;
  float _512;
  int _520;
  int _529;
  float _537;
  float _538;
  float _539;
  float _543;
  float _544;
  float _545;
  float _560;
  float _567;
  float _568;
  float _569;
  float _580;
  bool _581;
  float _582;
  float _583;
  float _584;
  float _585;
  int _586;
  float _596;
  float _597;
  float _598;
  float _626;
  float _631;
  float _632;
  float _637;
  float _638;
  float _639;
  float _648;
  float _650;
  float _651;
  float _653;
  float _655;
  float _656;
  float _657;
  float _663;
  float _664;
  float _685;
  float _686;
  float _687;
  float4 _692;
  float4 _696;
  float _706;
  float _707;
  float _708;
  int _736;
  float _744;
  float _746;
  float _753;
  float _754;
  float _755;
  int _758;
  float4 _763;
  float _773;
  float _774;
  float _775;
  int _803;
  float _811;
  float _813;
  int _827;
  float _835;
  int _841;
  float _849;
  float _852;
  int _877;
  int _885;
  float4 _892;
  float _895;
  float _897;
  float _900;
  float _913;
  float _914;
  float _915;
  float _916;
  float _925;
  float _926;
  float _928;
  float4 _936;
  float _945;
  float _946;
  float _947;
  float _948;
  float _955;
  float _975;
  float _978;
  float _1002;
  float _1003;
  float _1004;
  float4 _1007;
  int _1009;
  float _1017;
  float _1032;
  float _1033;
  float _1034;
  float _1040;
  float _1043;
  int _1056;
  uint _1064;
  uint _1065;
  uint4 _1067;
  float4 _1070;
  float _1088;
  float _1089;
  float _1090;
  float _1092;
  float _1093;
  float _1094;
  float _1095;
  float _1098;
  float _1099;
  float _1102;
  float _1103;
  float _1107;
  float _1109;
  float _1110;
  float _1111;
  float _1112;
  float _1114;
  float _1117;
  float _1118;
  float _1119;
  float _1120;
  float _1129;
  float _1133;
  float _1137;
  float _1139;
  float _1152;
  float _1155;
  float _1161;
  float _1176;
  float _1177;
  float _1178;
  float _1189;
  float _1195;
  float _1198;
  float _1201;
  float _1202;
  float _1203;
  float _1204;
  float _1213;
  float _1222;
  float _1231;
  float _1233;
  float _1245;
  float _1251;
  float _1254;
  float _1257;
  int _1258;
  float _1272;
  float _1273;
  float _1274;
  float _1302;
  float _1303;
  float _1307;
  float _1317;
  float _1318;
  float _1319;
  float _1331;
  float _1337;
  float _1339;
  float _1346;
  float _1347;
  float _1355;
  float _1360;
  float _1373;
  float _1374;
  float _1389;
  float _1390;
  float _1391;
  float _1407;
  float _1408;
  float _1409;
  float _1420;
  float _1425;
  float _1426;
  uint2 _1428;
  uint _1443;
  float _1453;
  float _1454;
  float _1456;
  float _1457;
  float _1458;
  float _1472;
  float _1473;
  float _1474;
  float _1475;
  float _1477;
  float _1478;
  float _1479;
  float _1480;
  int _1481;
  int _1489;
  float _1492;
  float _1495;
  float _1497;
  float _1522;
  float _1523;
  float _1524;
  int _1525;
  int _1533;
  float _1536;
  float _1539;
  float _1541;
  float _1542;
  float _1543;
  float _1547;
  int _1598;
  int _1606;
  float4 _1613;
  float _1627;
  float _1663;
  float _1680;
  float _1681;
  float _1682;
  float _1692;
  float _1701;
  float _1702;
  float _1715;
  float _1744;
  float _1745;
  float _1747;
  float _1809;
  float _1820;
  int _1825;
  float _1833;
  int _1835;
  float _1843;
  float _1845;
  float _1852;
  float _1853;
  float _1854;
  uint _1855;
  bool _1871;
  float _1877;
  float _1926;
  float _1927;
  float _1928;
  float _1930;
  float _1937;
  float _1938;
  float _1939;
  float _1958;
  float _1959;
  float _1960;
  float _1961;
  float _1962;
  float _1963;
  float _1964;
  float _1965;
  float _1966;
  float _2012;
  float _2013;
  float _2014;
  float _2015;
  float _2016;
  float _2017;
  float _2018;
  float _2035;
  float _2036;
  float _2037;
  float _2038;
  float _2044;
  float _2047;
  float _2054;
  float _2055;
  float _2056;
  float _2085;
  float _2110;
  float _2111;
  float _2112;
  float _2131;
  float _2132;
  float _2133;
  float _2139;
  float _2143;
  float _2144;
  float _2145;
  float _2146;
  float _2151;
  float _2176;
  float _2180;
  float _2181;
  float _2182;
  float _2183;
  float _2213;
  float _2235;
  float _2236;
  float _2240;
  float _2284;
  float _2305;
  float _2306;
  float _2307;
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
  _291 = (pow(_281.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _292 = (pow(_281.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _293 = (pow(_281.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _318 = exp2(log2(max(0.0f, (_291 + -0.8359375f)) / (18.851562f - (_291 * 18.6875f))) * 6.277395f) * 10000.0f;
  _319 = exp2(log2(max(0.0f, (_292 + -0.8359375f)) / (18.851562f - (_292 * 18.6875f))) * 6.277395f) * 10000.0f;
  _320 = exp2(log2(max(0.0f, (_293 + -0.8359375f)) / (18.851562f - (_293 * 18.6875f))) * 6.277395f) * 10000.0f;
  _321 = 4.0f / _35;
  _322 = _321 * _143;
  _323 = _321 * _144;
  _328 = WaveReadLaneFirst(_materialIndex);
  _336 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_328 < (uint)170000), _328, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _343 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_336 < (uint)65000), _336, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_322, ((_time.x * 0.1f) + _323)));
  _348 = WaveReadLaneFirst(_materialIndex);
  _356 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_348 < (uint)170000), _348, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _357 = _356 * (_343.y + -0.3f);
  _360 = (_357 * 0.001f) + _143;
  _361 = (_357 * 0.02f) + _144;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_363.x, _363.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _378 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_363.x))))))) + 0.5f) * _360)), ((int)((((float)((int)((int)((float)((int)((int)(_363.y))))))) + 0.5f) * _361)), 0));
  _380 = _378.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _388 = (((float)((uint)((uint)((uint)((uint)(_378.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _389 = (((float)((uint)((uint)(((uint)((uint)(_378.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _391 = 1.0f - abs(_388);
  _392 = abs(_389);
  _393 = _391 - _392;
  if (!(_393 >= 0.0f)) {
    _404 = (select((_388 >= 0.0f), 1.0f, -1.0f) * (1.0f - _392));
    _405 = (select((_389 >= 0.0f), 1.0f, -1.0f) * _391);
  } else {
    _404 = _388;
    _405 = _389;
  }
  _407 = rsqrt(dot(float3(_404, _405, _393), float3(_404, _405, _393)));  // [sem: invLength]
  _408 = _407 * _404;
  _409 = _407 * _405;
  _410 = _407 * _393;
  _412 = rsqrt(dot(float3(_408, _409, _410), float3(_408, _409, _410)));  // [sem: invLength]
  _416 = WaveReadLaneFirst(_materialIndex);
  _424 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_416 < (uint)170000), _416, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _425 = WaveReadLaneFirst(_materialIndex);
  _433 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_425 < (uint)170000), _425, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _436 = saturate(1.0f - _433) * _424;
  if (!(!(_436 >= 0.001f))) {
    _439 = ddx_coarse(_276);
    _440 = ddx_coarse(_277);
    _441 = ddx_coarse(_278);
    _442 = ddy_coarse(_276);
    _443 = ddy_coarse(_277);
    _444 = ddy_coarse(_278);
    _445 = ddx_coarse(_143);
    _446 = ddx_coarse(_144);
    _447 = ddy_coarse(_143);
    _448 = ddy_coarse(_144);
    _451 = (_443 * _190) - (_444 * _189);
    _454 = (_444 * _188) - (_442 * _190);
    _457 = (_442 * _189) - (_443 * _188);
    _460 = (_441 * _189) - (_440 * _190);
    _463 = (_439 * _190) - (_441 * _188);
    _466 = (_440 * _188) - (_439 * _189);
    _473 = (_447 * _460) + (_451 * _445);
    _474 = (_447 * _463) + (_454 * _445);
    _475 = (_447 * _466) + (_457 * _445);
    _482 = (_448 * _460) + (_451 * _446);
    _483 = (_448 * _463) + (_454 * _446);
    _484 = (_448 * _466) + (_446 * _457);
    _487 = max(dot(float3(_473, _474, _475), float3(_473, _474, _475)), dot(float3(_482, _483, _484), float3(_482, _483, _484)));
    _490 = rsqrt(select((!(_487 == 0.0f)), _487, 0.1f));  // [sem: rsqrt_val]
    _493 = _490 * _276;
    _498 = WaveReadLaneFirst(_materialIndex);
    _506 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_498 < (uint)170000), _498, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _507 = _506 * _232;
    _508 = _506 * _233;
    _509 = _506 * _234;
    _510 = floor(_507);
    _511 = floor(_508);
    _512 = floor(_509);
    _514 = 10.0f;
    _515 = 0.0f;
    _516 = 0.0f;
    _517 = 0.0f;
    _518 = -1;
    while(true) {
      _523 = _514;
      _524 = _515;
      _525 = _516;
      _526 = _517;
      _527 = -1;
      while(true) {
        _532 = _523;
        _533 = _524;
        _534 = _525;
        _535 = _526;
        _536 = -1;
        while(true) {
          _537 = (float)((int)(_536));
          _538 = (float)((int)(_527));
          _539 = (float)((int)(_518));
          _543 = sin(_537 + _510);
          _544 = sin(_538 + _511);
          _545 = sin(_539 + _512);
          _560 = _time.x * 0.2f;
          _567 = sin(_560 * frac(sin(dot(float3(_543, _544, _545), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _537;
          _568 = sin(_560 * frac(sin(dot(float3(_543, _544, _545), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _538;
          _569 = sin(_560 * frac(sin(dot(float3(_543, _544, _545), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _539;
          _580 = max(abs((_510 - _507) + _567), max(abs((_511 - _508) + _568), abs((_512 - _509) + _569)));
          _581 = (_580 < _532);
          _582 = select(_581, _580, _532);
          _583 = select(_581, _567, _533);
          _584 = select(_581, _568, _534);
          _585 = select(_581, _569, _535);
          _586 = (int)(_536) + (int)(1);
          if (!(_586 == 2)) {
            _532 = _582;
            _533 = _583;
            _534 = _584;
            _535 = _585;
            _536 = _586;
            continue;
          }
          while(true) {
            _529 = (int)(_527) + (int)(1);
            if (!(_529 == 2)) {
              _523 = _582;
              _524 = _583;
              _525 = _584;
              _526 = _585;
              _527 = _529;
              __loop_jump_target = 522;
              break;
            }
            while(true) {
              _520 = (int)(_518) + (int)(1);
              if (!(_520 == 2)) {
                _514 = _582;
                _515 = _583;
                _516 = _584;
                _517 = _585;
                _518 = _520;
                __loop_jump_target = 513;
                break;
              }
              _596 = (_583 + _510) / _506;
              _597 = (_584 + _511) / _506;
              _598 = (_585 + _512) / _506;
              _626 = mad((_viewProj[3].z), _598, mad((_viewProj[3].y), _597, ((_viewProj[3].x) * _596))) + (_viewProj[3].w);
              _631 = (((mad((_viewProj[0].z), _598, mad((_viewProj[0].y), _597, ((_viewProj[0].x) * _596))) + (_viewProj[0].w)) / _626) * 0.5f) + 0.5f;
              _632 = 0.5f - (((mad((_viewProj[1].z), _598, mad((_viewProj[1].y), _597, ((_viewProj[1].x) * _596))) + (_viewProj[1].w)) / _626) * 0.5f);
              _637 = _596 - _mainPosition.x;
              _638 = _597 - _mainPosition.y;
              _639 = _598 - _mainPosition.z;
              // [sem: expr_sat]
              _648 = saturate(1.0f - ((1.0f - ((1.0f / max(1e-05f, _436)) * sqrt(dot(float3(_637, _638, _639), float3(_637, _638, _639))))) * 1.0152284f));
              _650 = 1.0f - saturate(_648);
              _651 = _648 * 0.5f;
              _653 = (_143 - _631) / _650;
              _655 = (_144 - _632) / _650;
              _656 = sin(_651);
              _657 = cos(_651);
              _663 = mad((-0.0f - _656), _655, (_657 * _653)) + _631;
              _664 = mad(_657, _655, (_656 * _653)) + _632;
              _678 = 0.0f;
              _679 = 0.0f;
              _680 = 0.0f;
              _681 = 1;
              while(true) {
                _685 = (((float)((int)((int)(6) - (int)(_681)))) * 0.16666667f) * ((saturate(_158.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_143))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_144)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f));
                _686 = _685 * mad((_490 * _475), _278, mad((_490 * _474), _277, (_493 * _473)));
                _687 = _685 * mad((_490 * _484), _278, mad((_490 * _483), _277, (_493 * _482)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _692 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_686 + _143), (_687 + _144)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _696 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_686 + _663), (_687 + _664)));
                _706 = (pow(_696.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _707 = (pow(_696.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _708 = (pow(_696.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _736 = WaveReadLaneFirst(_materialIndex);
                _744 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_736 < (uint)170000), _736, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _746 = (float)((bool)(_692.w < _744));
                _753 = (_746 * ((exp2(log2(max(0.0f, (_706 + -0.8359375f)) / (18.851562f - (_706 * 18.6875f))) * 6.277395f) * 4000.0f) - _678)) + _678;
                _754 = (_746 * ((exp2(log2(max(0.0f, (_707 + -0.8359375f)) / (18.851562f - (_707 * 18.6875f))) * 6.277395f) * 4000.0f) - _679)) + _679;
                _755 = (_746 * ((exp2(log2(max(0.0f, (_708 + -0.8359375f)) / (18.851562f - (_708 * 18.6875f))) * 6.277395f) * 4000.0f) - _680)) + _680;
                if (!(_692.w > 0.9f)) {
                  _758 = (int)(_681) + (int)(1);
                  if ((int)_758 < (int)6) {
                    _678 = _753;
                    _679 = _754;
                    _680 = _755;
                    _681 = _758;
                    continue;
                  }
                }
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _763 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_663, _664));
                _773 = (pow(_763.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _774 = (pow(_763.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _775 = (pow(_763.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _803 = WaveReadLaneFirst(_materialIndex);
                _811 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_803 < (uint)170000), _803, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _813 = (float)((bool)(_692.w < _811));
                _824 = ((_813 * ((exp2(log2(max(0.0f, (_773 + -0.8359375f)) / (18.851562f - (_773 * 18.6875f))) * 6.277395f) * 10000.0f) - _753)) + _753);
                _825 = ((_813 * ((exp2(log2(max(0.0f, (_774 + -0.8359375f)) / (18.851562f - (_774 * 18.6875f))) * 6.277395f) * 10000.0f) - _754)) + _754);
                _826 = ((_813 * ((exp2(log2(max(0.0f, (_775 + -0.8359375f)) / (18.851562f - (_775 * 18.6875f))) * 6.277395f) * 10000.0f) - _755)) + _755);
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
        if (__loop_jump_target == 522) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 513) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _824 = 0.0f;
    _825 = 0.0f;
    _826 = 0.0f;
  }
  _827 = WaveReadLaneFirst(_materialIndex);
  _835 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_827 < (uint)170000), _827, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _841 = WaveReadLaneFirst(_materialIndex);
  _849 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_841 < (uint)170000), _841, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _852 = saturate((_849 * 100.0f) + -99.0f);  // [sem: expr_sat]
  if (!(!(_852 >= 0.001f))) {
    if ((_380 == _renderPassSelfPlayer) || (_380 == _renderPassTest) || (_380 == _renderPassDetectRemoteCatch) || (_380 == _renderPassDetectPickedRemoteCatch)) {
      _877 = WaveReadLaneFirst(_materialIndex);
      _885 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_877 < (uint)170000), _877, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
      _892 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_885 < (uint)65000), _885, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_322 - (_time.x * 0.22f)), (_323 - (_time.x * 0.18f))));
      _895 = _892.x + -0.3f;
      _897 = ((_892.x + -0.4f) * 10.471975f) + -1.5707964f;
      _900 = _895 * 0.006f;
      _902 = _900;
      _903 = _900;
      _904 = 0.0f;
      _905 = 0.0f;
      _906 = 0.0f;
      _907 = 0.0f;
      _908 = -1.0f;
      while(true) {
        _913 = _143 - ((_902 * sin(_897)) * _908);
        _914 = _144 - ((_903 * cos(_897)) * _908);
        _915 = _913 + -0.5f;
        _916 = _914 + -0.5f;
        // [sem: invLength]
        _925 = rsqrt(dot(float2(_915, _916), float2(_915, _916))) * ((_895 * 0.06f) * sqrt((_915 * _915) + (_916 * _916)));
        _926 = _925 * _915;
        _928 = _925 * _916;
        _936 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_913, _914));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _945 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_913 - _926), (_914 - _928))))).x) * 0.2f) + _904;
        _946 = (_936.y * 0.2f) + _905;
        _947 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_926 + _913), (_928 + _914))))).z) * 0.2f) + _906;
        _948 = (_936.w * 0.2f) + _907;
        _955 = _908 + 0.2f;
        if (!(!(_955 <= 1.0f))) {
          _902 = (_902 * 1.01f);
          _903 = (_903 * 1.01f);
          _904 = (_945 * 0.9f);
          _905 = (_946 * 0.9f);
          _906 = (_947 * 0.9f);
          _907 = (_948 * 0.9f);
          _908 = _955;
          continue;
        }
        if (!(_380 == _renderPassSelfPlayer)) {
          _969 = (_380 == _renderPassTest);
        } else {
          _969 = true;
        }
        _975 = saturate(_948 * 1.08f);  // [sem: expr_sat]
        _978 = max(0.001f, _exposure0.x);
        _986 = ((((_945 * 0.54f) * select(_969, 0.55f, 0.5f)) / _978) * _975);
        _987 = ((((_946 * 0.54f) * select(_969, 0.7f, 0.8f)) / _978) * _975);
        _988 = (((_947 * 0.54f) / _978) * _975);
        break;
      }
    } else {
      _986 = 0.0f;
      _987 = 0.0f;
      _988 = 0.0f;
    }
  } else {
    _986 = 0.0f;
    _987 = 0.0f;
    _988 = 0.0f;
  }
  if ((_380 == _renderPassSelfPlayer) || (_380 == _renderPassTest)) {
    _998 = _852;  // [sem: expr_sat]
  } else {
    _998 = saturate(_835 * 2.0f);  // [sem: expr_sat]
  }
  _1002 = _320 + (_998 * (_826 - _320));
  _1003 = _319 + (_998 * (_825 - _319));
  _1004 = _318 + (_998 * (_824 - _318));
  _1007 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _1009 = WaveReadLaneFirst(_materialIndex);
  _1017 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1009 < (uint)170000), _1009, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightBackground);
  if (!(!(_1017 >= 0.001f))) {
    if (!(_380 == _renderPassSelfPlayer)) {
      if (!(_380 == _renderPassTest)) {
        _1032 = _232 - _mainPosition.x;
        _1033 = _233 - _mainPosition.y;
        _1034 = _234 - _mainPosition.z;
        _1040 = sqrt(((_1032 * _1032) + (_1033 * _1033)) + (_1034 * _1034));
        _1043 = 1.0f - saturate(_1040 * 0.033333335f);
        _1056 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _143) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _144) + -0.5f))), 0)))).x) & 127;
        if ((uint)((int)(_1056) + (int)(-52)) < (uint)16) {
          _1064 = (uint)((_bufferSizeAndInvSize.x * _360) + -0.5f);
          _1065 = (uint)((_bufferSizeAndInvSize.y * _361) + -0.5f);
          _1067 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1064, _1065, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _1070 = __3__36__0__0__g_gbufferNormal.Load(int3(_1064, _1065, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _1088 = (saturate(_1070.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1089 = (saturate(_1070.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1090 = (saturate(_1070.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1092 = rsqrt(dot(float3(_1088, _1089, _1090), float3(_1088, _1089, _1090)));  // [sem: invLength]
          _1093 = _1092 * _1088;
          _1094 = _1092 * _1089;
          _1095 = _1090 * _1092;
          _1098 = (((float)((uint)((uint)(((uint)((uint)(_1067.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1099 = (((float)((uint)((uint)(_1067.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1102 = (_1098 + _1099) * 0.5f;
          _1103 = (_1098 - _1099) * 0.5f;
          _1107 = (1.0f - abs(_1102)) - abs(_1103);
          _1109 = rsqrt(dot(float3(_1102, _1103, _1107), float3(_1102, _1103, _1107)));  // [sem: invLength]
          _1110 = _1109 * _1102;
          _1111 = _1109 * _1103;
          _1112 = _1109 * _1107;
          _1114 = select((_1095 >= 0.0f), 1.0f, -1.0f);
          _1117 = -0.0f - (1.0f / (_1114 + _1095));
          _1118 = _1094 * _1117;
          _1119 = _1118 * _1093;
          _1120 = _1114 * _1093;
          _1129 = mad(_1112, _1093, mad(_1111, _1119, ((((_1120 * _1093) * _1117) + 1.0f) * _1110)));
          _1133 = mad(_1112, _1094, mad(_1111, (_1114 + (_1118 * _1094)), ((_1110 * _1114) * _1119)));
          _1137 = mad(_1112, _1095, mad(_1111, (-0.0f - _1094), (-0.0f - (_1120 * _1110))));
          _1139 = rsqrt(dot(float3(_1129, _1133, _1137), float3(_1129, _1133, _1137)));  // [sem: invLength]
          _1152 = 1.0f - saturate(dot(float3((_1139 * _1129), (_1139 * _1133), (_1139 * _1137)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _1155 = max(0.001f, _exposure0.x);
          _1161 = (_1152 * _1152) * (_1043 * _1017);
          _1367 = (((0.05f / _1155) * _1161) + _1004);
          _1368 = (((0.08f / _1155) * _1161) + _1003);
          _1369 = (((0.1f / _1155) * _1161) + _1002);
          _1370 = _1007.w;
        } else {
          _1176 = _232 - _aimHighlightPosition.x;
          _1177 = _233 - _aimHighlightPosition.y;
          _1178 = _234 - _aimHighlightPosition.z;
          _1189 = 1.0f - saturate(sqrt(((_1176 * _1176) + (_1177 * _1177)) + (_1178 * _1178)) / (_aimHighlightPosition.w * 5.0f));
          _1195 = saturate(((_1189 * _1189) * _1189) + ((1.0f - saturate(_1040 * 0.5f)) * 0.1f)) * _1007.w;
          _1198 = (_1007.w * _1007.w) * _1043;
          _1201 = _1195 * 0.875f;
          _1202 = _1195 * 1.625f;
          _1203 = _1195 * 2.5f;
          _1204 = _1195 * 60.0f;
          _1213 = (((1.0f - saturate(_1204 + -2.0f)) * saturate(_1204 + -1.5f)) * (0.35f - _1201)) + _1201;
          _1222 = (((0.65f - _1202) * saturate(_1204 + -1.7f)) * (1.0f - saturate(_1204 + -3.0f))) + _1202;
          _1231 = ((saturate(_1204 + -2.2f) * (1.0f - _1203)) * (1.0f - saturate(_1204 + -6.0f))) + _1203;
          _1233 = saturate(_1204 + -7.0f);  // [sem: expr_sat]
          _1245 = 1.0f - _1198;
          _1251 = (((((_1233 * ((_1195 * 1.75f) - _1213)) + _1213) * _1245) + (_1198 * 0.35f)) * _1017) + _1004;
          _1254 = (((((((_1195 * 3.25f) - _1222) * _1233) + _1222) * _1245) + (_1198 * 0.65f)) * _1017) + _1003;
          _1257 = (((((((_1195 * 5.0f) - _1231) * _1233) + _1231) * _1245) + _1198) * _1017) + _1002;
          _1258 = (int)(_1056) + (int)(-105);
          if ((_1056 == 107) || ((_1056 == 26) || (((uint)((int)(_1056) + (int)(-27)) < (uint)2) || ((uint)_1258 < (uint)2)))) {
            _1272 = _mainPosition.x - _viewPos.x;
            _1273 = _mainPosition.y - _viewPos.y;
            _1274 = _mainPosition.z - _viewPos.z;
            _1302 = mad((_viewProjRelative[3].z), _1274, mad((_viewProjRelative[3].y), _1273, ((_viewProjRelative[3].x) * _1272))) + (_viewProjRelative[3].w);
            _1303 = (mad((_viewProjRelative[0].z), _1274, mad((_viewProjRelative[0].y), _1273, ((_viewProjRelative[0].x) * _1272))) + (_viewProjRelative[0].w)) / _1302;
            _1307 = 0.5f - (((mad((_viewProjRelative[1].z), _1274, mad((_viewProjRelative[1].y), _1273, ((_viewProjRelative[1].x) * _1272))) + (_viewProjRelative[1].w)) / _1302) * 0.5f);
            _1317 = ((_view[0].x) * 5.0f) + _1272;
            _1318 = ((_view[0].y) * 5.0f) + _1273;
            _1319 = ((_view[0].z) * 5.0f) + _1274;
            _1331 = mad((_viewProjRelative[3].z), _1319, mad((_viewProjRelative[3].y), _1318, (_1317 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
            _1337 = (0.5f - (((mad((_viewProjRelative[1].z), _1319, mad((_viewProjRelative[1].y), _1318, (_1317 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1331) * 0.5f)) - _1307;
            _1339 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _1319, mad((_viewProjRelative[0].y), _1318, (_1317 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1331) - _1303);
            _1346 = _144 - _1307;
            _1347 = ((_143 + -0.5f) - (_1303 * 0.5f)) * _35;
            _1355 = 1.0f - saturate(sqrt((_1346 * _1346) + (_1347 * _1347)) / max(0.001f, sqrt((_1337 * _1337) + (_1339 * _1339))));
            _1360 = (_1355 * _1355) * (select(((uint)_1258 < (uint)3), 0.05f, 0.005f) * _1017);
            _1367 = ((_1360 * 0.35f) + _1251);
            _1368 = ((_1360 * 0.65f) + _1254);
            _1369 = (_1360 + _1257);
            _1370 = _1198;
          } else {
            _1367 = _1251;
            _1368 = _1254;
            _1369 = _1257;
            _1370 = _1198;
          }
        }
      } else {
        _1367 = _1004;
        _1368 = _1003;
        _1369 = _1002;
        _1370 = _1007.w;
      }
    } else {
      _1367 = _1004;
      _1368 = _1003;
      _1369 = _1002;
      _1370 = _1007.w;
    }
  } else {
    _1367 = _1004;
    _1368 = _1003;
    _1369 = _1002;
    _1370 = _1007.w;
  }
  if (_852 > 0.0f) {
    _1389 = ((float)((int)((int)(_232 * 2000.0f)))) * 0.0005f;
    _1390 = ((float)((int)((int)(_233 * 2000.0f)))) * 0.0005f;
    _1391 = ((float)((int)((int)(_234 * 2000.0f)))) * 0.0005f;
    _1407 = saturate(frac(sin(dot(float3(_1389, _1390, _1391), float3(127.1f, 311.7f, 74.7f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1408 = saturate(frac(sin(dot(float3(_1389, _1390, _1391), float3(269.5f, 183.3f, 246.1f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1409 = saturate(frac(sin(dot(float3(_1389, _1390, _1391), float3(113.5f, 271.9f, 124.6f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1420 = frac(sin(dot(float2(_143, _144), float2(127.1f, 311.7f))) * 437.545f) * 0.5f;
    _1425 = ((frac((_1408 + _1407) - _1409) - _1420) * 0.025f) + _143;
    _1426 = ((frac((_1408 - _1407) + _1409) - _1420) * 0.025f) + _144;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1428.x, _1428.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _1443 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_1428.x))))))) + 0.5f) * _1425)), ((int)((((float)((int)((int)((float)((int)((int)(_1428.y))))))) + 0.5f) * _1426)), 0));
    _1453 = (((float)((uint)((uint)((uint)((uint)(_1443.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1454 = (((float)((uint)((uint)(((uint)((uint)(_1443.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1456 = 1.0f - abs(_1453);
    _1457 = abs(_1454);
    _1458 = _1456 - _1457;
    if (!(_1458 >= 0.0f)) {
      _1469 = (select((_1453 >= 0.0f), 1.0f, -1.0f) * (1.0f - _1457));
      _1470 = (select((_1454 >= 0.0f), 1.0f, -1.0f) * _1456);
    } else {
      _1469 = _1453;
      _1470 = _1454;
    }
    _1472 = rsqrt(dot(float3(_1469, _1470, _1458), float3(_1469, _1470, _1458)));  // [sem: invLength]
    _1473 = _1472 * _1469;
    _1474 = _1472 * _1470;
    _1475 = _1472 * _1458;
    _1477 = rsqrt(dot(float3(_1473, _1474, _1475), float3(_1473, _1474, _1475)));  // [sem: invLength]
    _1478 = _1477 * _1473;
    _1479 = _1477 * _1474;
    _1480 = _1477 * _1475;
    _1481 = WaveReadLaneFirst(_materialIndex);
    _1489 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1481 < (uint)170000), _1481, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimGimmickColor);
    _1492 = (float)((uint)((uint)(((uint)((uint)(_1489)) >> 16) & 255)));
    _1495 = (float)((uint)((uint)(((uint)((uint)(_1489)) >> 8) & 255)));
    _1497 = (float)((uint)((uint)(_1489 & 255)));
    _1522 = select(((_1492 * 0.003921569f) < 0.04045f), (_1492 * 0.000303527f), exp2(log2((_1492 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1523 = select(((_1495 * 0.003921569f) < 0.04045f), (_1495 * 0.000303527f), exp2(log2((_1495 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1524 = select(((_1497 * 0.003921569f) < 0.04045f), (_1497 * 0.000303527f), exp2(log2((_1497 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1525 = WaveReadLaneFirst(_materialIndex);
    _1533 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1525 < (uint)170000), _1525, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightColor);
    _1536 = (float)((uint)((uint)(((uint)((uint)(_1533)) >> 16) & 255)));
    _1539 = (float)((uint)((uint)(((uint)((uint)(_1533)) >> 8) & 255)));
    _1541 = (float)((uint)((uint)(_1533 & 255)));
    _1542 = _143 + -0.5f;
    _1543 = _144 + -0.5f;
    _1547 = sqrt((_1543 * _1543) + (_1542 * _1542));
    if (_380 == _renderPassAimHighlight) {
      _1598 = WaveReadLaneFirst(_materialIndex);
      _1606 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1598 < (uint)170000), _1598, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._auraTex);
      _1613 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1606 < (uint)65000), _1606, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((8.0f / _35) * _143) + ((_343.w + -0.5f) * 0.1f)), ((((5.0f / _35) * _144) + ((_343.z + -0.5f) * 0.1f)) - (_time.x * 0.02f))));
      _1627 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _143)), ((int)(_customRenderPassSizeInvSize.y * _144)), 0)))).x));
      _1663 = mad((_invViewProj[3].z), _1627, mad((_invViewProj[3].y), _194, ((_invViewProj[3].x) * _192))) + (_invViewProj[3].w);
      _1680 = (((mad((_invViewProj[0].z), _1627, mad((_invViewProj[0].y), _194, ((_invViewProj[0].x) * _192))) + (_invViewProj[0].w)) / _1663) - _aimHighlightPosition.x) - ((_1613.x + -0.5f) * 0.4f);
      _1681 = (((mad((_invViewProj[1].z), _1627, mad((_invViewProj[1].y), _194, ((_invViewProj[1].x) * _192))) + (_invViewProj[1].w)) / _1663) - _aimHighlightPosition.y) - ((_1613.y + -0.5f) * 0.4f);
      _1682 = (((mad((_invViewProj[2].z), _1627, mad((_invViewProj[2].y), _194, ((_invViewProj[2].x) * _192))) + (_invViewProj[2].w)) / _1663) - _aimHighlightPosition.z) - ((_1613.z + -0.5f) * 0.4f);
      _1692 = 1.0f - saturate(sqrt(((_1680 * _1680) + (_1681 * _1681)) + (_1682 * _1682)) / _aimHighlightPosition.w);
      _1701 = _1692 * ((sin((_time.x * 10.0f) + (_1692 * 20.0f)) + 1.5f) * 0.3333f);
      _1702 = _1701 * _1701;
      _1715 = (((((_1702 * _1702) * ((pow(_1692, 5.0f)) * 7.999999e+06f)) * _1702) + 1.0f) / max(0.001f, _exposure0.x)) * _1702;
      if (((_nearFarProj.x / _195) + 0.05f) < (_nearFarProj.x / _1627)) {
        _1744 = 1.0f - saturate(dot(float3(((((_412 * _408) - _1478) * 0.75f) + _1478), ((((_412 * _409) - _1479) * 0.75f) + _1479), ((((_412 * _410) - _1480) * 0.75f) + _1480)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _1745 = _1744 * _1744;
        _1747 = (_1745 * _1745) * _1744;
        _1771 = ((_1747 * (lerp(_1522, 0.35f, 0.3f))) + (_1367 * 4.0f));
        _1772 = ((_1747 * (lerp(_1523, 0.65f, 0.3f))) + (_1368 * 4.0f));
        _1773 = ((_1747 * (lerp(_1524, 1.0f, 0.3f))) + (_1369 * 4.0f));
      } else {
        _1771 = (_1522 * _1370);
        _1772 = (_1523 * _1370);
        _1773 = (_1524 * _1370);
      }
      _1814 = _1547;
      _1815 = (((((_1715 * select(((_1536 * 0.003921569f) < 0.04045f), (_1536 * 0.000303527f), exp2(log2((_1536 * 0.003717127f) + 0.052132703f) * 2.4f))) - _1367) + _1771) * _852) + _1367);
      _1816 = (((((_1715 * select(((_1539 * 0.003921569f) < 0.04045f), (_1539 * 0.000303527f), exp2(log2((_1539 * 0.003717127f) + 0.052132703f) * 2.4f))) - _1368) + _1772) * _852) + _1368);
      _1817 = (((((_1715 * select(((_1541 * 0.003921569f) < 0.04045f), (_1541 * 0.000303527f), exp2(log2((_1541 * 0.003717127f) + 0.052132703f) * 2.4f))) - _1369) + _1773) * _852) + _1369);
    } else {
      if (((float)((uint)((uint)(_1443.x & 255)))) == ((float)((uint)((uint)(_renderPassAimHighlight))))) {
        if (((_nearFarProj.x / _195) + 0.05f) < (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1425)), ((int)(_customRenderPassSizeInvSize.y * _1426)), 0)))).x)))) {
          _1809 = min(max(saturate(1.0f - (_1547 * 2.0f)), 0.1f), 1.0f) * 0.05f;
          _1814 = _1547;
          _1815 = (_1809 * _1522);
          _1816 = (_1809 * _1523);
          _1817 = (_1809 * _1524);
        } else {
          _1814 = _1547;
          _1815 = _1367;
          _1816 = _1368;
          _1817 = _1369;
        }
      } else {
        _1814 = _1547;
        _1815 = _1367;
        _1816 = _1368;
        _1817 = _1369;
      }
    }
  } else {
    _1373 = _143 + -0.5f;
    _1374 = _144 + -0.5f;
    _1814 = sqrt((_1374 * _1374) + (_1373 * _1373));
    _1815 = _1367;
    _1816 = _1368;
    _1817 = _1369;
  }
  _1820 = saturate((_1814 + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _1825 = WaveReadLaneFirst(_materialIndex);
  _1833 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1825 < (uint)170000), _1825, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._vignetteIntensity);
  _1835 = WaveReadLaneFirst(_materialIndex);
  _1843 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1835 < (uint)170000), _1835, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _1845 = 1.0f - ((((_1820 * _1820) * (3.0f - (_1820 * 2.0f))) * _1833) * _1843);
  _1852 = max(0.0f, (_1845 * (_1815 + _986)));
  _1853 = max(0.0f, (_1845 * (_1816 + _987)));
  _1854 = max(0.0f, (_1845 * (_1817 + _988)));
  _1855 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1868 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1855, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1868 = 1.0f;
  }
  _1871 = (_localToneMappingParams.w > 0.0f);
  if (_1871) {
    _1877 = _userImageAdjust.z * _exposure0.x;
    _1926 = exp2(log2(max(0.0f, (((_1877 * max(0.0f, (((_1852 * 1.70505f) - (_1853 * 0.62179f)) - (_1854 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1927 = exp2(log2(max(0.0f, (((max(0.0f, (((_1853 * 1.1408f) - (_1852 * 0.13026f)) - (_1854 * 0.01055f))) * _1877) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1928 = exp2(log2(max(0.0f, (((max(0.0f, (((_1852 * -0.024f) - (_1853 * 0.12897f)) + (_1854 * 1.15297f))) * _1877) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1930 = dot(float3(_1926, _1927, _1928), float3(0.212671f, 0.71516f, 0.072169f));
    _1937 = ((_1926 - _1930) * _powerParams.w) + _1930;
    _1938 = ((_1927 - _1930) * _powerParams.w) + _1930;
    _1939 = ((_1928 - _1930) * _powerParams.w) + _1930;
    _1958 = min(max(log2(mad(_1939, 0.079223745f, mad(_1938, 0.0784336f, (_1937 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1959 = min(max(log2(mad(_1939, 0.07916613f, mad(_1938, 0.87846863f, (_1937 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1960 = min(max(log2(mad(_1939, 0.879143f, mad(_1938, 0.0784336f, (_1937 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1961 = _1958 * 0.060606062f;
    _1962 = _1959 * 0.060606062f;
    _1963 = _1960 * 0.060606062f;
    _1964 = _1961 * _1961;
    _1965 = _1962 * _1962;
    _1966 = _1963 * _1963;
    _2012 = min(0.0f, (-0.0f - (((_1958 * 0.0072181816f) + ((_1964 * 0.4298f) + (((_1964 * _1964) * ((31.96f - (_1958 * 2.4327273f)) + (_1964 * 15.5f))) - ((_1958 * 0.41624245f) * _1964)))) + -0.00232f)));
    _2013 = min(0.0f, (-0.0f - (((_1959 * 0.0072181816f) + ((_1965 * 0.4298f) + (((_1965 * _1965) * ((31.96f - (_1959 * 2.4327273f)) + (_1965 * 15.5f))) - ((_1959 * 0.41624245f) * _1965)))) + -0.00232f)));
    _2014 = min(0.0f, (-0.0f - (((_1960 * 0.0072181816f) + ((_1966 * 0.4298f) + (((_1966 * _1966) * ((31.96f - (_1960 * 2.4327273f)) + (_1966 * 15.5f))) - ((_1960 * 0.41624245f) * _1966)))) + -0.00232f)));
    _2015 = -0.0f - _2012;
    _2016 = -0.0f - _2013;
    _2017 = -0.0f - _2014;
    _2018 = dot(float3(_2015, _2016, _2017), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _2035 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _2036 = -0.79999995f / _2035;
      _2037 = -1.2f / _2035;
      _2038 = 0.20000005f / _2035;
      _2044 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _2047 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _2054 = (_2036 + 1.4f) + (_2047 * (-0.39999998f - _2036));
      _2055 = (_2037 + 1.6f) + (_2047 * (-0.6f - _2037));
      _2056 = (_2038 + 0.9f) + (_2047 * (0.5f - _2038));
      _2073 = (lerp(_2055, 1.2f, _2044));  // [sem: blended]
      _2074 = (lerp(_2054, 1.0f, _2044));  // [sem: blended]
      _2075 = (lerp(_2056, 1.4f, _2044));  // [sem: blended]
    } else {
      _2073 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _2074 = 1.0f;  // [sem: blended]
      _2075 = 1.4f;  // [sem: blended]
    }
    _2085 = 1.0f - _2073;
    _2110 = ((exp2(log2(((saturate((_2012 * _2012) * _2015) * _2085) + _2073) * _2015) * _2074) - _2018) * _2075) + _2018;
    _2111 = ((exp2(log2(((saturate((_2013 * _2013) * _2016) * _2085) + _2073) * _2016) * _2074) - _2018) * _2075) + _2018;
    _2112 = ((exp2(log2(((saturate((_2014 * _2014) * _2017) * _2085) + _2073) * _2017) * _2074) - _2018) * _2075) + _2018;
    _2131 = saturate(exp2(log2(mad(_2112, -0.09902974f, mad(_2111, -0.09802088f, (_2110 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2132 = saturate(exp2(log2(mad(_2112, -0.098961174f, mad(_2111, 1.1519032f, (_2110 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2133 = saturate(exp2(log2(mad(_2112, 1.1510737f, mad(_2111, -0.09804345f, (_2110 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2139 = 1.0f - abs(_etcParams.w);
      _2143 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2144 = (_2139 * _2131) + _2143;
      _2145 = (_2139 * _2132) + _2143;
      _2146 = (_2139 * _2133) + _2143;
      if (_colorGradingParams.w > 0.0f) {
        _2151 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2168 = (((max(0.0f, (1.0f - _2144)) - _2144) * _2151) + _2144);
        _2169 = (((max(0.0f, (1.0f - _2145)) - _2145) * _2151) + _2145);
        _2170 = (((max(0.0f, (1.0f - _2146)) - _2146) * _2151) + _2146);
      } else {
        _2168 = _2144;
        _2169 = _2145;
        _2170 = _2146;
      }
      _2176 = _userImageAdjust.y + 1.0f;
      _2180 = _userImageAdjust.x + 0.5f;
      _2181 = ((_2168 + -0.5f) * _2176) + _2180;
      _2182 = ((_2169 + -0.5f) * _2176) + _2180;
      _2183 = ((_2170 + -0.5f) * _2176) + _2180;
      _2213 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2224 = exp2(log2(saturate(mad(_colorBlind0.z, _2183, mad(_colorBlind0.y, _2182, (_colorBlind0.x * _2181))))) * _2213);
      _2225 = exp2(log2(saturate(mad(_colorBlind1.z, _2183, mad(_colorBlind1.y, _2182, (_colorBlind1.x * _2181))))) * _2213);
      _2226 = exp2(log2(saturate(mad(_colorBlind2.z, _2183, mad(_colorBlind2.y, _2182, (_colorBlind2.x * _2181))))) * _2213);
    } else {
      _2224 = _2131;
      _2225 = _2132;
      _2226 = _2133;
    }
  } else {
    _2224 = _1852;
    _2225 = _1853;
    _2226 = _1854;
  }
  if (_etcParams.y > 1.0f) {
    _2235 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2236 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2240 = saturate(1.0f - (dot(float2(_2235, _2236), float2(_2235, _2236)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2245 = (_2240 * _2224);
    _2246 = (_2240 * _2225);
    _2247 = (_2240 * _2226);
  } else {
    _2245 = _2224;
    _2246 = _2225;
    _2247 = _2226;
  }
  if (_1871 && (_etcParams.z > 0.0f)) {
    _2277 = select((_2245 <= 0.0031308f), (_2245 * 12.92f), (((pow(_2245, 0.41666666f)) * 1.055f) + -0.055f));
    _2278 = select((_2246 <= 0.0031308f), (_2246 * 12.92f), (((pow(_2246, 0.41666666f)) * 1.055f) + -0.055f));
    _2279 = select((_2247 <= 0.0031308f), (_2247 * 12.92f), (((pow(_2247, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2277 = _2245;
    _2278 = _2246;
    _2279 = _2247;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2284 = (float)((uint)((uint)(_1855)));
    if (!(_2284 < _viewDir.w)) {
      if (!(_2284 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2293 = _2277;
        _2294 = _2278;
        _2295 = _2279;
      } else {
        _2293 = 0.0f;
        _2294 = 0.0f;
        _2295 = 0.0f;
      }
    } else {
      _2293 = 0.0f;
      _2294 = 0.0f;
      _2295 = 0.0f;
    }
  } else {
    _2293 = _2277;
    _2294 = _2278;
    _2295 = _2279;
  }
  _2305 = exp2(log2(_2293 * 0.0001f) * 0.15930176f);
  _2306 = exp2(log2(_2294 * 0.0001f) * 0.15930176f);
  _2307 = exp2(log2(_2295 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2305 * 18.6875f) + 1.0f)) * ((_2305 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2306 * 18.6875f) + 1.0f)) * ((_2306 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2307 * 18.6875f) + 1.0f)) * ((_2307 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1868;
  return SV_Target;
}
