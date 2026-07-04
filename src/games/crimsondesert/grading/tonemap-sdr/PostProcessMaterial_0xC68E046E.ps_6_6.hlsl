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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t69, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t32, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t40, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t76, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t77, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t78, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t79, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t80, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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
};

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b30, space35) {
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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b46, space35) {
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
  float _402;
  float _403;
  float _512;
  float _513;
  float _514;
  float _515;
  int _516;
  float _521;
  float _522;
  float _523;
  float _524;
  int _525;
  float _530;
  float _531;
  float _532;
  float _533;
  int _534;
  float _676;
  float _677;
  float _678;
  int _679;
  float _822;
  float _823;
  float _824;
  float _900;
  float _901;
  float _902;
  float _903;
  float _904;
  float _905;
  float _906;
  bool _967;
  float _984;
  float _985;
  float _986;
  float _996;
  float _1361;
  float _1362;
  float _1363;
  float _1364;
  float _1463;
  float _1464;
  float _1765;
  float _1766;
  float _1767;
  float _1808;
  float _1809;
  float _1810;
  float _1811;
  float _1862;
  float _2067;
  float _2068;
  float _2069;
  float _2162;
  float _2163;
  float _2164;
  float _2218;
  float _2219;
  float _2220;
  float _2239;
  float _2240;
  float _2241;
  float _2271;
  float _2272;
  float _2273;
  float _2287;
  float _2288;
  float _2289;
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
  float4 _168;
  float _181;
  float _182;
  float _183;
  float _185;
  float _186;
  float _187;
  float _188;
  float _190;
  float _192;
  float _193;
  float _229;
  float _230;
  float _231;
  float _232;
  float _268;
  float _269;
  float _270;
  float _271;
  float _273;
  float _274;
  float _275;
  float _276;
  float4 _279;
  float _289;
  float _290;
  float _291;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  int _326;
  int _334;
  float4 _341;
  int _346;
  float _354;
  float _355;
  float _358;
  float _359;
  uint2 _361;
  uint _376;
  int _378;
  float _386;
  float _387;
  float _389;
  float _390;
  float _391;
  float _405;
  float _406;
  float _407;
  float _408;
  float _410;
  int _414;
  float _422;
  int _423;
  float _431;
  float _434;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  float _449;
  float _452;
  float _455;
  float _458;
  float _461;
  float _464;
  float _471;
  float _472;
  float _473;
  float _480;
  float _481;
  float _482;
  float _485;
  float _488;
  float _491;
  int _496;
  float _504;
  float _505;
  float _506;
  float _507;
  float _508;
  float _509;
  float _510;
  int _518;
  int _527;
  float _535;
  float _536;
  float _537;
  float _541;
  float _542;
  float _543;
  float _558;
  float _565;
  float _566;
  float _567;
  float _578;
  bool _579;
  float _580;
  float _581;
  float _582;
  float _583;
  int _584;
  float _594;
  float _595;
  float _596;
  float _624;
  float _629;
  float _630;
  float _635;
  float _636;
  float _637;
  float _646;
  float _648;
  float _649;
  float _651;
  float _653;
  float _654;
  float _655;
  float _661;
  float _662;
  float _683;
  float _684;
  float _685;
  float4 _690;
  float4 _694;
  float _704;
  float _705;
  float _706;
  int _734;
  float _742;
  float _744;
  float _751;
  float _752;
  float _753;
  int _756;
  float4 _761;
  float _771;
  float _772;
  float _773;
  int _801;
  float _809;
  float _811;
  int _825;
  float _833;
  int _839;
  float _847;
  float _850;
  int _875;
  int _883;
  float4 _890;
  float _893;
  float _895;
  float _898;
  float _911;
  float _912;
  float _913;
  float _914;
  float _923;
  float _924;
  float _926;
  float4 _934;
  float _943;
  float _944;
  float _945;
  float _946;
  float _953;
  float _973;
  float _976;
  float _1000;
  float _1001;
  float _1002;
  float4 _1005;
  int _1007;
  float _1015;
  float _1030;
  float _1031;
  float _1032;
  float _1038;
  float _1041;
  int _1052;
  uint _1058;
  uint _1059;
  uint4 _1061;
  float4 _1064;
  float _1082;
  float _1083;
  float _1084;
  float _1086;
  float _1087;
  float _1088;
  float _1089;
  float _1092;
  float _1093;
  float _1096;
  float _1097;
  float _1101;
  float _1103;
  float _1104;
  float _1105;
  float _1106;
  float _1108;
  float _1111;
  float _1112;
  float _1113;
  float _1114;
  float _1123;
  float _1127;
  float _1131;
  float _1133;
  float _1146;
  float _1149;
  float _1155;
  float _1170;
  float _1171;
  float _1172;
  float _1183;
  float _1189;
  float _1192;
  float _1195;
  float _1196;
  float _1197;
  float _1198;
  float _1207;
  float _1216;
  float _1225;
  float _1227;
  float _1239;
  float _1245;
  float _1248;
  float _1251;
  int _1252;
  float _1266;
  float _1267;
  float _1268;
  float _1296;
  float _1297;
  float _1301;
  float _1311;
  float _1312;
  float _1313;
  float _1325;
  float _1331;
  float _1333;
  float _1340;
  float _1341;
  float _1349;
  float _1354;
  float _1367;
  float _1368;
  float _1383;
  float _1384;
  float _1385;
  float _1401;
  float _1402;
  float _1403;
  float _1414;
  float _1419;
  float _1420;
  uint2 _1422;
  uint _1437;
  float _1447;
  float _1448;
  float _1450;
  float _1451;
  float _1452;
  float _1466;
  float _1467;
  float _1468;
  float _1469;
  float _1471;
  float _1472;
  float _1473;
  float _1474;
  int _1475;
  int _1483;
  float _1486;
  float _1489;
  float _1491;
  float _1516;
  float _1517;
  float _1518;
  int _1519;
  int _1527;
  float _1530;
  float _1533;
  float _1535;
  float _1536;
  float _1537;
  float _1541;
  int _1592;
  int _1600;
  float4 _1607;
  float _1621;
  float _1657;
  float _1674;
  float _1675;
  float _1676;
  float _1686;
  float _1695;
  float _1696;
  float _1709;
  float _1738;
  float _1739;
  float _1741;
  float _1803;
  float _1814;
  int _1819;
  float _1827;
  int _1829;
  float _1837;
  float _1839;
  float _1846;
  float _1847;
  float _1848;
  uint _1849;
  bool _1865;
  float _1871;
  float _1920;
  float _1921;
  float _1922;
  float _1924;
  float _1931;
  float _1932;
  float _1933;
  float _1952;
  float _1953;
  float _1954;
  float _1955;
  float _1956;
  float _1957;
  float _1958;
  float _1959;
  float _1960;
  float _2006;
  float _2007;
  float _2008;
  float _2009;
  float _2010;
  float _2011;
  float _2012;
  float _2029;
  float _2030;
  float _2031;
  float _2032;
  float _2038;
  float _2041;
  float _2048;
  float _2049;
  float _2050;
  float _2079;
  float _2104;
  float _2105;
  float _2106;
  float _2125;
  float _2126;
  float _2127;
  float _2133;
  float _2137;
  float _2138;
  float _2139;
  float _2140;
  float _2145;
  float _2170;
  float _2174;
  float _2175;
  float _2176;
  float _2177;
  float _2207;
  float _2229;
  float _2230;
  float _2234;
  float _2278;
  float _2299;
  float _2300;
  float _2301;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_41 < (uint)170000), _41, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_49 > 0.0010000000474974513f) {
    __branch_chain_0 = true;
  } else {
    _52 = WaveReadLaneFirst(_materialIndex);
    _60 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_52 < (uint)170000), _52, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
    if (_60 < -0.0010000000474974513f) {
      __branch_chain_0 = true;
    } else {
      _143 = TEXCOORD.x;
      _144 = TEXCOORD.y;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _71 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_63 < (uint)170000), _63, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
    if (!(!(_71 >= 0.0010000000474974513f))) {
      _74 = WaveReadLaneFirst(_materialIndex);
      _82 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_74 < (uint)170000), _74, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
      _83 = WaveReadLaneFirst(_materialIndex);
      _91 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_83 < (uint)170000), _83, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
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
  _168 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint(_bufferSizeAndInvSize.x * _143)), (int)(uint(_bufferSizeAndInvSize.y * _144)), 0));
  _181 = (saturate(_168.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _182 = (saturate(_168.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _183 = (saturate(_168.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _185 = rsqrt(dot(float3(_181, _182, _183), float3(_181, _182, _183)));  // [sem: invLength]
  _186 = _185 * _181;
  _187 = _185 * _182;
  _188 = _183 * _185;
  _190 = (_143 * 2.0f) + -1.0f;
  _192 = 1.0f - (_144 * 2.0f);
  _193 = max(1.0000000116860974e-07f, _158.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _229 = mad((_invViewProj[2].w), _193, mad((_invViewProj[1].w), _192, ((_invViewProj[0].w) * _190))) + (_invViewProj[3].w);
  _230 = (mad((_invViewProj[2].x), _193, mad((_invViewProj[1].x), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[3].x)) / _229;
  _231 = (mad((_invViewProj[2].y), _193, mad((_invViewProj[1].y), _192, ((_invViewProj[0].y) * _190))) + (_invViewProj[3].y)) / _229;
  _232 = (mad((_invViewProj[2].z), _193, mad((_invViewProj[1].z), _192, ((_invViewProj[0].z) * _190))) + (_invViewProj[3].z)) / _229;
  _268 = mad((_invViewProjRelative[2].w), _193, mad((_invViewProjRelative[1].w), _192, ((_invViewProjRelative[0].w) * _190))) + (_invViewProjRelative[3].w);
  _269 = (mad((_invViewProjRelative[2].x), _193, mad((_invViewProjRelative[1].x), _192, ((_invViewProjRelative[0].x) * _190))) + (_invViewProjRelative[3].x)) / _268;
  _270 = (mad((_invViewProjRelative[2].y), _193, mad((_invViewProjRelative[1].y), _192, ((_invViewProjRelative[0].y) * _190))) + (_invViewProjRelative[3].y)) / _268;
  _271 = (mad((_invViewProjRelative[2].z), _193, mad((_invViewProjRelative[1].z), _192, ((_invViewProjRelative[0].z) * _190))) + (_invViewProjRelative[3].z)) / _268;
  _273 = rsqrt(dot(float3(_269, _270, _271), float3(_269, _270, _271)));  // [sem: invLength]
  _274 = _273 * _269;
  _275 = _273 * _270;
  _276 = _273 * _271;
  _279 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _289 = (pow(_279.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _290 = (pow(_279.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _291 = (pow(_279.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _316 = exp2(log2(max(0.0f, (_289 + -0.8359375f)) / (18.8515625f - (_289 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _317 = exp2(log2(max(0.0f, (_290 + -0.8359375f)) / (18.8515625f - (_290 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _318 = exp2(log2(max(0.0f, (_291 + -0.8359375f)) / (18.8515625f - (_291 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _319 = 4.0f / _35;
  _320 = _319 * _143;
  _321 = _319 * _144;
  _326 = WaveReadLaneFirst(_materialIndex);
  _334 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_326 < (uint)170000), _326, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _341 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_334 < (uint)65000), _334, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_320, ((_time.x * 0.10000000149011612f) + _321)));
  _346 = WaveReadLaneFirst(_materialIndex);
  _354 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_346 < (uint)170000), _346, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _355 = _354 * (_341.y + -0.30000001192092896f);
  _358 = (_355 * 0.0010000000474974513f) + _143;
  _359 = (_355 * 0.019999999552965164f) + _144;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_361.x, _361.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _376 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_361.x)))))) + 0.5f) * _358), int((float((int)(int(float((int)((int)(_361.y)))))) + 0.5f) * _359), 0));
  _378 = _376.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _386 = (((float)((uint)((uint)((uint)((uint)(_376.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _387 = (((float)((uint)((uint)(((uint)((uint)(_376.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _389 = 1.0f - abs(_386);
  _390 = abs(_387);
  _391 = _389 - _390;
  if (!(_391 >= 0.0f)) {
    _402 = (select((_386 >= 0.0f), 1.0f, -1.0f) * (1.0f - _390));
    _403 = (select((_387 >= 0.0f), 1.0f, -1.0f) * _389);
  } else {
    _402 = _386;
    _403 = _387;
  }
  _405 = rsqrt(dot(float3(_402, _403, _391), float3(_402, _403, _391)));  // [sem: invLength]
  _406 = _405 * _402;
  _407 = _405 * _403;
  _408 = _405 * _391;
  _410 = rsqrt(dot(float3(_406, _407, _408), float3(_406, _407, _408)));  // [sem: invLength]
  _414 = WaveReadLaneFirst(_materialIndex);
  _422 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_414 < (uint)170000), _414, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _423 = WaveReadLaneFirst(_materialIndex);
  _431 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_423 < (uint)170000), _423, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _434 = saturate(1.0f - _431) * _422;
  if (!(!(_434 >= 0.0010000000474974513f))) {
    _437 = ddx_coarse(_274);
    _438 = ddx_coarse(_275);
    _439 = ddx_coarse(_276);
    _440 = ddy_coarse(_274);
    _441 = ddy_coarse(_275);
    _442 = ddy_coarse(_276);
    _443 = ddx_coarse(_143);
    _444 = ddx_coarse(_144);
    _445 = ddy_coarse(_143);
    _446 = ddy_coarse(_144);
    _449 = (_441 * _188) - (_442 * _187);
    _452 = (_442 * _186) - (_440 * _188);
    _455 = (_440 * _187) - (_441 * _186);
    _458 = (_439 * _187) - (_438 * _188);
    _461 = (_437 * _188) - (_439 * _186);
    _464 = (_438 * _186) - (_437 * _187);
    _471 = (_445 * _458) + (_449 * _443);
    _472 = (_445 * _461) + (_452 * _443);
    _473 = (_445 * _464) + (_455 * _443);
    _480 = (_446 * _458) + (_449 * _444);
    _481 = (_446 * _461) + (_452 * _444);
    _482 = (_446 * _464) + (_444 * _455);
    _485 = max(dot(float3(_471, _472, _473), float3(_471, _472, _473)), dot(float3(_480, _481, _482), float3(_480, _481, _482)));
    _488 = rsqrt(select((!(_485 == 0.0f)), _485, 0.10000000149011612f));  // [sem: rsqrt_val]
    _491 = _488 * _274;
    _496 = WaveReadLaneFirst(_materialIndex);
    _504 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_496 < (uint)170000), _496, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _505 = _504 * _230;
    _506 = _504 * _231;
    _507 = _504 * _232;
    _508 = floor(_505);
    _509 = floor(_506);
    _510 = floor(_507);
    _512 = 10.0f;
    _513 = 0.0f;
    _514 = 0.0f;
    _515 = 0.0f;
    _516 = -1;
    while(true) {
      _521 = _512;
      _522 = _513;
      _523 = _514;
      _524 = _515;
      _525 = -1;
      while(true) {
        _530 = _521;
        _531 = _522;
        _532 = _523;
        _533 = _524;
        _534 = -1;
        while(true) {
          _535 = float((int)(_534));
          _536 = float((int)(_525));
          _537 = float((int)(_516));
          _541 = sin(_535 + _508);
          _542 = sin(_536 + _509);
          _543 = sin(_537 + _510);
          _558 = _time.x * 0.20000000298023224f;
          _565 = sin(_558 * frac(sin(dot(float3(_541, _542, _543), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _535;
          _566 = sin(_558 * frac(sin(dot(float3(_541, _542, _543), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _536;
          _567 = sin(_558 * frac(sin(dot(float3(_541, _542, _543), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _537;
          _578 = max(abs((_508 - _505) + _565), max(abs((_509 - _506) + _566), abs((_510 - _507) + _567)));
          _579 = (_578 < _530);
          _580 = select(_579, _578, _530);
          _581 = select(_579, _565, _531);
          _582 = select(_579, _566, _532);
          _583 = select(_579, _567, _533);
          _584 = _534 + 1;
          if (!(_584 == 2)) {
            _530 = _580;
            _531 = _581;
            _532 = _582;
            _533 = _583;
            _534 = _584;
            continue;
          }
          while(true) {
            _527 = _525 + 1;
            if (!(_527 == 2)) {
              _521 = _580;
              _522 = _581;
              _523 = _582;
              _524 = _583;
              _525 = _527;
              __loop_jump_target = 520;
              break;
            }
            while(true) {
              _518 = _516 + 1;
              if (!(_518 == 2)) {
                _512 = _580;
                _513 = _581;
                _514 = _582;
                _515 = _583;
                _516 = _518;
                __loop_jump_target = 511;
                break;
              }
              _594 = (_581 + _508) / _504;
              _595 = (_582 + _509) / _504;
              _596 = (_583 + _510) / _504;
              _624 = mad((_viewProj[2].w), _596, mad((_viewProj[1].w), _595, ((_viewProj[0].w) * _594))) + (_viewProj[3].w);
              _629 = (((mad((_viewProj[2].x), _596, mad((_viewProj[1].x), _595, ((_viewProj[0].x) * _594))) + (_viewProj[3].x)) / _624) * 0.5f) + 0.5f;
              _630 = 0.5f - (((mad((_viewProj[2].y), _596, mad((_viewProj[1].y), _595, ((_viewProj[0].y) * _594))) + (_viewProj[3].y)) / _624) * 0.5f);
              _635 = _594 - _mainPosition.x;
              _636 = _595 - _mainPosition.y;
              _637 = _596 - _mainPosition.z;
  // [sem: expr_sat]
              _646 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _434)) * sqrt(dot(float3(_635, _636, _637), float3(_635, _636, _637))))) * 1.0152283906936646f));
              _648 = 1.0f - saturate(_646);
              _649 = _646 * 0.5f;
              _651 = (_143 - _629) / _648;
              _653 = (_144 - _630) / _648;
              _654 = sin(_649);
              _655 = cos(_649);
              _661 = mad((-0.0f - _654), _653, (_655 * _651)) + _629;
              _662 = mad(_655, _653, (_654 * _651)) + _630;
              _676 = 0.0f;
              _677 = 0.0f;
              _678 = 0.0f;
              _679 = 1;
              while(true) {
                _683 = (float((int)(6 - _679)) * 0.1666666716337204f) * ((saturate(_158.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(_143)))), float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(_144))))), float2(12.989800453186035f, 78.23300170898438f))) * 43758.546875f) + 0.5f));
                _684 = _683 * mad((_488 * _473), _276, mad((_488 * _472), _275, (_491 * _471)));
                _685 = _683 * mad((_488 * _482), _276, mad((_488 * _481), _275, (_491 * _480)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _690 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_684 + _143), (_685 + _144)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _694 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_684 + _661), (_685 + _662)));
                _704 = (pow(_694.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _705 = (pow(_694.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _706 = (pow(_694.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _734 = WaveReadLaneFirst(_materialIndex);
                _742 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_734 < (uint)170000), _734, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _744 = (float)((bool)(uint)(_690.w < _742));
                _751 = (_744 * ((exp2(log2(max(0.0f, (_704 + -0.8359375f)) / (18.8515625f - (_704 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _676)) + _676;
                _752 = (_744 * ((exp2(log2(max(0.0f, (_705 + -0.8359375f)) / (18.8515625f - (_705 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _677)) + _677;
                _753 = (_744 * ((exp2(log2(max(0.0f, (_706 + -0.8359375f)) / (18.8515625f - (_706 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _678)) + _678;
                if (!(_690.w > 0.8999999761581421f)) {
                  _756 = _679 + 1;
                  if ((int)_756 < (int)6) {
                    _676 = _751;
                    _677 = _752;
                    _678 = _753;
                    _679 = _756;
                    continue;
                  }
                }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _761 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_661, _662));
                _771 = (pow(_761.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _772 = (pow(_761.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _773 = (pow(_761.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _801 = WaveReadLaneFirst(_materialIndex);
                _809 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_801 < (uint)170000), _801, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _811 = (float)((bool)(uint)(_690.w < _809));
                _822 = ((_811 * ((exp2(log2(max(0.0f, (_771 + -0.8359375f)) / (18.8515625f - (_771 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _751)) + _751);
                _823 = ((_811 * ((exp2(log2(max(0.0f, (_772 + -0.8359375f)) / (18.8515625f - (_772 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _752)) + _752);
                _824 = ((_811 * ((exp2(log2(max(0.0f, (_773 + -0.8359375f)) / (18.8515625f - (_773 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _753)) + _753);
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
        if (__loop_jump_target == 520) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 511) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _822 = 0.0f;
    _823 = 0.0f;
    _824 = 0.0f;
  }
  _825 = WaveReadLaneFirst(_materialIndex);
  _833 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_825 < (uint)170000), _825, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _839 = WaveReadLaneFirst(_materialIndex);
  _847 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_839 < (uint)170000), _839, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _850 = saturate((_847 * 100.0f) + -99.0f);  // [sem: expr_sat]
  if (!(!(_850 >= 0.0010000000474974513f))) {
    if ((_378 == _renderPassSelfPlayer) | (_378 == _renderPassTest) | (_378 == _renderPassDetectRemoteCatch) | (_378 == _renderPassDetectPickedRemoteCatch)) {
      _875 = WaveReadLaneFirst(_materialIndex);
      _883 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_875 < (uint)170000), _875, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
      _890 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_883 < (uint)65000), _883, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_320 - (_time.x * 0.2199999988079071f)), (_321 - (_time.x * 0.18000000715255737f))));
      _893 = _890.x + -0.30000001192092896f;
      _895 = ((_890.x + -0.4000000059604645f) * 10.471975326538086f) + -1.5707963705062866f;
      _898 = _893 * 0.006000000052154064f;
      _900 = _898;
      _901 = _898;
      _902 = 0.0f;
      _903 = 0.0f;
      _904 = 0.0f;
      _905 = 0.0f;
      _906 = -1.0f;
      while(true) {
        _911 = _143 - ((_900 * sin(_895)) * _906);
        _912 = _144 - ((_901 * cos(_895)) * _906);
        _913 = _911 + -0.5f;
        _914 = _912 + -0.5f;
  // [sem: invLength]
        _923 = rsqrt(dot(float2(_913, _914), float2(_913, _914))) * ((_893 * 0.05999999865889549f) * sqrt((_913 * _913) + (_914 * _914)));
        _924 = _923 * _913;
        _926 = _923 * _914;
        _934 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_911, _912));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _943 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_911 - _924), (_912 - _926))))).x) * 0.20000000298023224f) + _902;
        _944 = (_934.y * 0.20000000298023224f) + _903;
        _945 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_924 + _911), (_926 + _912))))).z) * 0.20000000298023224f) + _904;
        _946 = (_934.w * 0.20000000298023224f) + _905;
        _953 = _906 + 0.20000000298023224f;
        if (!(!(_953 <= 1.0f))) {
          _900 = (_900 * 1.0099999904632568f);
          _901 = (_901 * 1.0099999904632568f);
          _902 = (_943 * 0.8999999761581421f);
          _903 = (_944 * 0.8999999761581421f);
          _904 = (_945 * 0.8999999761581421f);
          _905 = (_946 * 0.8999999761581421f);
          _906 = _953;
          continue;
        }
        if (!(_378 == _renderPassSelfPlayer)) {
          _967 = (_378 == _renderPassTest);
        } else {
          _967 = true;
        }
        _973 = saturate(_946 * 1.0800000429153442f);  // [sem: expr_sat]
        _976 = max(0.0010000000474974513f, _exposure0.x);
        _984 = ((((_943 * 0.5400000214576721f) * select(_967, 0.550000011920929f, 0.5f)) / _976) * _973);
        _985 = ((((_944 * 0.5400000214576721f) * select(_967, 0.699999988079071f, 0.800000011920929f)) / _976) * _973);
        _986 = (((_945 * 0.5400000214576721f) / _976) * _973);
        break;
      }
    } else {
      _984 = 0.0f;
      _985 = 0.0f;
      _986 = 0.0f;
    }
  } else {
    _984 = 0.0f;
    _985 = 0.0f;
    _986 = 0.0f;
  }
  if ((_378 == _renderPassSelfPlayer) | (_378 == _renderPassTest)) {
    _996 = _850;  // [sem: expr_sat]
  } else {
    _996 = saturate(_833 * 2.0f);  // [sem: expr_sat]
  }
  _1000 = _318 + (_996 * (_824 - _318));
  _1001 = _317 + (_996 * (_823 - _317));
  _1002 = _316 + (_996 * (_822 - _316));
  _1005 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _1007 = WaveReadLaneFirst(_materialIndex);
  _1015 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1007 < (uint)170000), _1007, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightBackground);
  if (!(!(_1015 >= 0.0010000000474974513f))) {
    if (!(_378 == _renderPassSelfPlayer)) {
      if (!(_378 == _renderPassTest)) {
        _1030 = _230 - _mainPosition.x;
        _1031 = _231 - _mainPosition.y;
        _1032 = _232 - _mainPosition.z;
        _1038 = sqrt(((_1030 * _1030) + (_1031 * _1031)) + (_1032 * _1032));
        _1041 = 1.0f - saturate(_1038 * 0.03333333507180214f);
        _1052 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(_bufferSizeAndInvSize.x * _143)), (int)(uint(_bufferSizeAndInvSize.y * _144)), 0)))).x) & 127;
        if ((uint)(_1052 + -53) < (uint)15) {
          _1058 = uint(_bufferSizeAndInvSize.x * _358);
          _1059 = uint(_bufferSizeAndInvSize.y * _359);
          _1061 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1058, _1059, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _1064 = __3__36__0__0__g_gbufferNormal.Load(int3(_1058, _1059, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _1082 = (saturate(_1064.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1083 = (saturate(_1064.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1084 = (saturate(_1064.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1086 = rsqrt(dot(float3(_1082, _1083, _1084), float3(_1082, _1083, _1084)));  // [sem: invLength]
          _1087 = _1086 * _1082;
          _1088 = _1086 * _1083;
          _1089 = _1084 * _1086;
          _1092 = (((float)((uint)((uint)(((uint)((uint)(_1061.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1093 = (((float)((uint)((uint)(_1061.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1096 = (_1092 + _1093) * 0.5f;
          _1097 = (_1092 - _1093) * 0.5f;
          _1101 = (1.0f - abs(_1096)) - abs(_1097);
          _1103 = rsqrt(dot(float3(_1096, _1097, _1101), float3(_1096, _1097, _1101)));  // [sem: invLength]
          _1104 = _1103 * _1096;
          _1105 = _1103 * _1097;
          _1106 = _1103 * _1101;
          _1108 = select((_1089 >= 0.0f), 1.0f, -1.0f);
          _1111 = -0.0f - (1.0f / (_1108 + _1089));
          _1112 = _1088 * _1111;
          _1113 = _1112 * _1087;
          _1114 = _1108 * _1087;
          _1123 = mad(_1106, _1087, mad(_1105, _1113, ((((_1114 * _1087) * _1111) + 1.0f) * _1104)));
          _1127 = mad(_1106, _1088, mad(_1105, (_1108 + (_1112 * _1088)), ((_1104 * _1108) * _1113)));
          _1131 = mad(_1106, _1089, mad(_1105, (-0.0f - _1088), (-0.0f - (_1114 * _1104))));
          _1133 = rsqrt(dot(float3(_1123, _1127, _1131), float3(_1123, _1127, _1131)));  // [sem: invLength]
          _1146 = 1.0f - saturate(dot(float3((_1133 * _1123), (_1133 * _1127), (_1133 * _1131)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _1149 = max(0.0010000000474974513f, _exposure0.x);
          _1155 = (_1146 * _1146) * (_1041 * _1015);
          _1361 = (((0.05000000074505806f / _1149) * _1155) + _1002);
          _1362 = (((0.07999999821186066f / _1149) * _1155) + _1001);
          _1363 = (((0.10000000149011612f / _1149) * _1155) + _1000);
          _1364 = _1005.w;
        } else {
          _1170 = _230 - _aimHighlightPosition.x;
          _1171 = _231 - _aimHighlightPosition.y;
          _1172 = _232 - _aimHighlightPosition.z;
          _1183 = 1.0f - saturate(sqrt(((_1170 * _1170) + (_1171 * _1171)) + (_1172 * _1172)) / (_aimHighlightPosition.w * 5.0f));
          _1189 = saturate(((_1183 * _1183) * _1183) + ((1.0f - saturate(_1038 * 0.5f)) * 0.10000000149011612f)) * _1005.w;
          _1192 = (_1005.w * _1005.w) * _1041;
          _1195 = _1189 * 0.875f;
          _1196 = _1189 * 1.625f;
          _1197 = _1189 * 2.5f;
          _1198 = _1189 * 60.0f;
          _1207 = (((1.0f - saturate(_1198 + -2.0f)) * saturate(_1198 + -1.5f)) * (0.3499999940395355f - _1195)) + _1195;
          _1216 = (((0.6499999761581421f - _1196) * saturate(_1198 + -1.7000000476837158f)) * (1.0f - saturate(_1198 + -3.0f))) + _1196;
          _1225 = ((saturate(_1198 + -2.200000047683716f) * (1.0f - _1197)) * (1.0f - saturate(_1198 + -6.0f))) + _1197;
          _1227 = saturate(_1198 + -7.0f);  // [sem: expr_sat]
          _1239 = 1.0f - _1192;
          _1245 = (((((_1227 * ((_1189 * 1.75f) - _1207)) + _1207) * _1239) + (_1192 * 0.3499999940395355f)) * _1015) + _1002;
          _1248 = (((((((_1189 * 3.25f) - _1216) * _1227) + _1216) * _1239) + (_1192 * 0.6499999761581421f)) * _1015) + _1001;
          _1251 = (((((((_1189 * 5.0f) - _1225) * _1227) + _1225) * _1239) + _1192) * _1015) + _1000;
          _1252 = _1052 + -105;
          if ((_1052 == 107) || ((_1052 == 26) || (((uint)(_1052 + -27) < (uint)2) || ((uint)_1252 < (uint)2)))) {
            _1266 = _mainPosition.x - _viewPos.x;
            _1267 = _mainPosition.y - _viewPos.y;
            _1268 = _mainPosition.z - _viewPos.z;
            _1296 = mad((_viewProjRelative[2].w), _1268, mad((_viewProjRelative[1].w), _1267, ((_viewProjRelative[0].w) * _1266))) + (_viewProjRelative[3].w);
            _1297 = (mad((_viewProjRelative[2].x), _1268, mad((_viewProjRelative[1].x), _1267, ((_viewProjRelative[0].x) * _1266))) + (_viewProjRelative[3].x)) / _1296;
            _1301 = 0.5f - (((mad((_viewProjRelative[2].y), _1268, mad((_viewProjRelative[1].y), _1267, ((_viewProjRelative[0].y) * _1266))) + (_viewProjRelative[3].y)) / _1296) * 0.5f);
            _1311 = ((_view[0].x) * 5.0f) + _1266;
            _1312 = ((_view[1].x) * 5.0f) + _1267;
            _1313 = ((_view[2].x) * 5.0f) + _1268;
            _1325 = mad((_viewProjRelative[2].w), _1313, mad((_viewProjRelative[1].w), _1312, (_1311 * (_viewProjRelative[0].w)))) + (_viewProjRelative[3].w);
            _1331 = (0.5f - (((mad((_viewProjRelative[2].y), _1313, mad((_viewProjRelative[1].y), _1312, (_1311 * (_viewProjRelative[0].y)))) + (_viewProjRelative[3].y)) / _1325) * 0.5f)) - _1301;
            _1333 = (_35 * 0.5f) * (((mad((_viewProjRelative[2].x), _1313, mad((_viewProjRelative[1].x), _1312, (_1311 * (_viewProjRelative[0].x)))) + (_viewProjRelative[3].x)) / _1325) - _1297);
            _1340 = _144 - _1301;
            _1341 = ((_143 + -0.5f) - (_1297 * 0.5f)) * _35;
            _1349 = 1.0f - saturate(sqrt((_1340 * _1340) + (_1341 * _1341)) / max(0.0010000000474974513f, sqrt((_1331 * _1331) + (_1333 * _1333))));
            _1354 = (_1349 * _1349) * (select(((uint)_1252 < (uint)3), 0.05000000074505806f, 0.004999999888241291f) * _1015);
            _1361 = ((_1354 * 0.3499999940395355f) + _1245);
            _1362 = ((_1354 * 0.6499999761581421f) + _1248);
            _1363 = (_1354 + _1251);
            _1364 = _1192;
          } else {
            _1361 = _1245;
            _1362 = _1248;
            _1363 = _1251;
            _1364 = _1192;
          }
        }
      } else {
        _1361 = _1002;
        _1362 = _1001;
        _1363 = _1000;
        _1364 = _1005.w;
      }
    } else {
      _1361 = _1002;
      _1362 = _1001;
      _1363 = _1000;
      _1364 = _1005.w;
    }
  } else {
    _1361 = _1002;
    _1362 = _1001;
    _1363 = _1000;
    _1364 = _1005.w;
  }
  if (_850 > 0.0f) {
    _1383 = float((int)(int(_230 * 2000.0f))) * 0.0005000000237487257f;
    _1384 = float((int)(int(_231 * 2000.0f))) * 0.0005000000237487257f;
    _1385 = float((int)(int(_232 * 2000.0f))) * 0.0005000000237487257f;
  // [sem: expr_sat]
    _1401 = saturate(frac(sin(dot(float3(_1383, _1384, _1385), float3(127.0999984741211f, 311.70001220703125f, 74.69999694824219f))) * 43758.546875f) + -0.5f);
  // [sem: expr_sat]
    _1402 = saturate(frac(sin(dot(float3(_1383, _1384, _1385), float3(269.5f, 183.3000030517578f, 246.10000610351562f))) * 43758.546875f) + -0.5f);
  // [sem: expr_sat]
    _1403 = saturate(frac(sin(dot(float3(_1383, _1384, _1385), float3(113.5f, 271.8999938964844f, 124.5999984741211f))) * 43758.546875f) + -0.5f);
    _1414 = frac(sin(dot(float2(_143, _144), float2(127.0999984741211f, 311.70001220703125f))) * 437.5450134277344f) * 0.5f;
    _1419 = ((frac((_1402 + _1401) - _1403) - _1414) * 0.02500000037252903f) + _143;
    _1420 = ((frac((_1402 - _1401) + _1403) - _1414) * 0.02500000037252903f) + _144;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1422.x, _1422.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _1437 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_1422.x)))))) + 0.5f) * _1419), int((float((int)(int(float((int)((int)(_1422.y)))))) + 0.5f) * _1420), 0));
    _1447 = (((float)((uint)((uint)((uint)((uint)(_1437.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1448 = (((float)((uint)((uint)(((uint)((uint)(_1437.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1450 = 1.0f - abs(_1447);
    _1451 = abs(_1448);
    _1452 = _1450 - _1451;
    if (!(_1452 >= 0.0f)) {
      _1463 = (select((_1447 >= 0.0f), 1.0f, -1.0f) * (1.0f - _1451));
      _1464 = (select((_1448 >= 0.0f), 1.0f, -1.0f) * _1450);
    } else {
      _1463 = _1447;
      _1464 = _1448;
    }
    _1466 = rsqrt(dot(float3(_1463, _1464, _1452), float3(_1463, _1464, _1452)));  // [sem: invLength]
    _1467 = _1466 * _1463;
    _1468 = _1466 * _1464;
    _1469 = _1466 * _1452;
    _1471 = rsqrt(dot(float3(_1467, _1468, _1469), float3(_1467, _1468, _1469)));  // [sem: invLength]
    _1472 = _1471 * _1467;
    _1473 = _1471 * _1468;
    _1474 = _1471 * _1469;
    _1475 = WaveReadLaneFirst(_materialIndex);
    _1483 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1475 < (uint)170000), _1475, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimGimmickColor);
    _1486 = (float)((uint)((uint)(((uint)(_1483) >> 16) & 255)));
    _1489 = (float)((uint)((uint)(((uint)(_1483) >> 8) & 255)));
    _1491 = (float)((uint)((uint)(_1483 & 255)));
    _1516 = select(((_1486 * 0.003921568859368563f) < 0.040449999272823334f), (_1486 * 0.0003035269910469651f), exp2(log2((_1486 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1517 = select(((_1489 * 0.003921568859368563f) < 0.040449999272823334f), (_1489 * 0.0003035269910469651f), exp2(log2((_1489 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1518 = select(((_1491 * 0.003921568859368563f) < 0.040449999272823334f), (_1491 * 0.0003035269910469651f), exp2(log2((_1491 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1519 = WaveReadLaneFirst(_materialIndex);
    _1527 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1519 < (uint)170000), _1519, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightColor);
    _1530 = (float)((uint)((uint)(((uint)(_1527) >> 16) & 255)));
    _1533 = (float)((uint)((uint)(((uint)(_1527) >> 8) & 255)));
    _1535 = (float)((uint)((uint)(_1527 & 255)));
    _1536 = _143 + -0.5f;
    _1537 = _144 + -0.5f;
    _1541 = sqrt((_1537 * _1537) + (_1536 * _1536));
    if (_378 == _renderPassAimHighlight) {
      _1592 = WaveReadLaneFirst(_materialIndex);
      _1600 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1592 < (uint)170000), _1592, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._auraTex);
      _1607 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1600 < (uint)65000), _1600, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((8.0f / _35) * _143) + ((_341.w + -0.5f) * 0.10000000149011612f)), ((((5.0f / _35) * _144) + ((_341.z + -0.5f) * 0.10000000149011612f)) - (_time.x * 0.019999999552965164f))));
      _1621 = max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _143), int(_customRenderPassSizeInvSize.y * _144), 0)))).x));
      _1657 = mad((_invViewProj[2].w), _1621, mad((_invViewProj[1].w), _192, ((_invViewProj[0].w) * _190))) + (_invViewProj[3].w);
      _1674 = (((mad((_invViewProj[2].x), _1621, mad((_invViewProj[1].x), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[3].x)) / _1657) - _aimHighlightPosition.x) - ((_1607.x + -0.5f) * 0.4000000059604645f);
      _1675 = (((mad((_invViewProj[2].y), _1621, mad((_invViewProj[1].y), _192, ((_invViewProj[0].y) * _190))) + (_invViewProj[3].y)) / _1657) - _aimHighlightPosition.y) - ((_1607.y + -0.5f) * 0.4000000059604645f);
      _1676 = (((mad((_invViewProj[2].z), _1621, mad((_invViewProj[1].z), _192, ((_invViewProj[0].z) * _190))) + (_invViewProj[3].z)) / _1657) - _aimHighlightPosition.z) - ((_1607.z + -0.5f) * 0.4000000059604645f);
      _1686 = 1.0f - saturate(sqrt(((_1674 * _1674) + (_1675 * _1675)) + (_1676 * _1676)) / _aimHighlightPosition.w);
      _1695 = _1686 * ((sin((_time.x * 10.0f) + (_1686 * 20.0f)) + 1.5f) * 0.33329999446868896f);
      _1696 = _1695 * _1695;
      _1709 = (((((_1696 * _1696) * ((pow(_1686, 5.0f)) * 7999999.0f)) * _1696) + 1.0f) / max(0.0010000000474974513f, _exposure0.x)) * _1696;
      if (((_nearFarProj.x / _193) + 0.05000000074505806f) < (_nearFarProj.x / _1621)) {
        _1738 = 1.0f - saturate(dot(float3(((((_410 * _406) - _1472) * 0.75f) + _1472), ((((_410 * _407) - _1473) * 0.75f) + _1473), ((((_410 * _408) - _1474) * 0.75f) + _1474)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _1739 = _1738 * _1738;
        _1741 = (_1739 * _1739) * _1738;
        _1765 = ((_1741 * (lerp(_1516, 0.3499999940395355f, 0.30000001192092896f))) + (_1361 * 4.0f));
        _1766 = ((_1741 * (lerp(_1517, 0.6499999761581421f, 0.30000001192092896f))) + (_1362 * 4.0f));
        _1767 = ((_1741 * (lerp(_1518, 1.0f, 0.30000001192092896f))) + (_1363 * 4.0f));
      } else {
        _1765 = (_1516 * _1364);
        _1766 = (_1517 * _1364);
        _1767 = (_1518 * _1364);
      }
      _1808 = _1541;
      _1809 = (((((_1709 * select(((_1530 * 0.003921568859368563f) < 0.040449999272823334f), (_1530 * 0.0003035269910469651f), exp2(log2((_1530 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _1361) + _1765) * _850) + _1361);
      _1810 = (((((_1709 * select(((_1533 * 0.003921568859368563f) < 0.040449999272823334f), (_1533 * 0.0003035269910469651f), exp2(log2((_1533 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _1362) + _1766) * _850) + _1362);
      _1811 = (((((_1709 * select(((_1535 * 0.003921568859368563f) < 0.040449999272823334f), (_1535 * 0.0003035269910469651f), exp2(log2((_1535 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _1363) + _1767) * _850) + _1363);
    } else {
      if (((float)((uint)((uint)(_1437.x & 255)))) == ((float)((uint)(uint)(_renderPassAimHighlight)))) {
        if (((_nearFarProj.x / _193) + 0.05000000074505806f) < (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _1419), int(_customRenderPassSizeInvSize.y * _1420), 0)))).x)))) {
          _1803 = min(max(saturate(1.0f - (_1541 * 2.0f)), 0.10000000149011612f), 1.0f) * 0.05000000074505806f;
          _1808 = _1541;
          _1809 = (_1803 * _1516);
          _1810 = (_1803 * _1517);
          _1811 = (_1803 * _1518);
        } else {
          _1808 = _1541;
          _1809 = _1361;
          _1810 = _1362;
          _1811 = _1363;
        }
      } else {
        _1808 = _1541;
        _1809 = _1361;
        _1810 = _1362;
        _1811 = _1363;
      }
    }
  } else {
    _1367 = _143 + -0.5f;
    _1368 = _144 + -0.5f;
    _1808 = sqrt((_1368 * _1368) + (_1367 * _1367));
    _1809 = _1361;
    _1810 = _1362;
    _1811 = _1363;
  }
  _1814 = saturate((_1808 + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
  _1819 = WaveReadLaneFirst(_materialIndex);
  _1827 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1819 < (uint)170000), _1819, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._vignetteIntensity);
  _1829 = WaveReadLaneFirst(_materialIndex);
  _1837 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1829 < (uint)170000), _1829, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _1839 = 1.0f - ((((_1814 * _1814) * (3.0f - (_1814 * 2.0f))) * _1827) * _1837);
  _1846 = max(0.0f, (_1839 * (_1809 + _984)));
  _1847 = max(0.0f, (_1839 * (_1810 + _985)));
  _1848 = max(0.0f, (_1839 * (_1811 + _986)));
  _1849 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1862 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _1849, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1862 = 1.0f;
  }
  _1865 = (_localToneMappingParams.w > 0.0f);
  if (_1865) {
    // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
    // Description: Screen-effect composite variant 0xC68E046E, HDR/PQ output permutation (samples PQ-encoded scene color, blends its effect overlay driven by the PostProcessAimHighlight bindless parameter block, and re-encodes to ST.2084 before SV_Target). Like every member of the game's postprocess material family it statically inlines the full vanilla tonemap pipeline and can own the visible final output while its screen effect plays, so leaving the vanilla curve here would render the entire screen with vanilla colors (flat/grey versus the RenoDX look) for the effect's duration. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1846, _1847, _1848));
    _2125 = _rndx_tonemapped_color.x;
    _2126 = _rndx_tonemapped_color.y;
    _2127 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2133 = 1.0f - abs(_etcParams.w);
      _2137 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2138 = (_2133 * _2125) + _2137;
      _2139 = (_2133 * _2126) + _2137;
      _2140 = (_2133 * _2127) + _2137;
      if (_colorGradingParams.w > 0.0f) {
        _2145 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2162 = (((max(0.0f, (1.0f - _2138)) - _2138) * _2145) + _2138);
        _2163 = (((max(0.0f, (1.0f - _2139)) - _2139) * _2145) + _2139);
        _2164 = (((max(0.0f, (1.0f - _2140)) - _2140) * _2145) + _2140);
      } else {
        _2162 = _2138;
        _2163 = _2139;
        _2164 = _2140;
      }
      _2170 = _userImageAdjust.y + 1.0f;
      _2174 = _userImageAdjust.x + 0.5f;
      _2175 = ((_2162 + -0.5f) * _2170) + _2174;
      _2176 = ((_2163 + -0.5f) * _2170) + _2174;
      _2177 = ((_2164 + -0.5f) * _2170) + _2174;
      _2207 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _2218 = exp2(log2(saturate(mad(_colorBlind0.z, _2177, mad(_colorBlind0.y, _2176, (_colorBlind0.x * _2175))))) * _2207);
      _2219 = exp2(log2(saturate(mad(_colorBlind1.z, _2177, mad(_colorBlind1.y, _2176, (_colorBlind1.x * _2175))))) * _2207);
      _2220 = exp2(log2(saturate(mad(_colorBlind2.z, _2177, mad(_colorBlind2.y, _2176, (_colorBlind2.x * _2175))))) * _2207);
    } else {
      _2218 = _2125;
      _2219 = _2126;
      _2220 = _2127;
    }
  } else {
    _2218 = _1846;
    _2219 = _1847;
    _2220 = _1848;
  }
  if (_etcParams.y > 1.0f) {
    _2229 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2230 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2234 = saturate(1.0f - (dot(float2(_2229, _2230), float2(_2229, _2230)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2239 = (_2234 * _2218);
    _2240 = (_2234 * _2219);
    _2241 = (_2234 * _2220);
  } else {
    _2239 = _2218;
    _2240 = _2219;
    _2241 = _2220;
  }
  if (_1865 && (_etcParams.z > 0.0f)) {
    _2271 = select((_2239 <= 0.0031308000907301903f), (_2239 * 12.920000076293945f), (((pow(_2239, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2272 = select((_2240 <= 0.0031308000907301903f), (_2240 * 12.920000076293945f), (((pow(_2240, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2273 = select((_2241 <= 0.0031308000907301903f), (_2241 * 12.920000076293945f), (((pow(_2241, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _2271 = _2239;
    _2272 = _2240;
    _2273 = _2241;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2278 = (float)((uint)_1849);
    if (!(_2278 < _viewDir.w)) {
      if (!(_2278 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2287 = _2271;
        _2288 = _2272;
        _2289 = _2273;
      } else {
        _2287 = 0.0f;
        _2288 = 0.0f;
        _2289 = 0.0f;
      }
    } else {
      _2287 = 0.0f;
      _2288 = 0.0f;
      _2289 = 0.0f;
    }
  } else {
    _2287 = _2271;
    _2288 = _2272;
    _2289 = _2273;
  }
  _2299 = exp2(log2(_2287 * 9.999999747378752e-05f) * 0.1593017578125f);
  _2300 = exp2(log2(_2288 * 9.999999747378752e-05f) * 0.1593017578125f);
  _2301 = exp2(log2(_2289 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_2299 * 18.6875f) + 1.0f)) * ((_2299 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2300 * 18.6875f) + 1.0f)) * ((_2300 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2301 * 18.6875f) + 1.0f)) * ((_2301 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1862;
  return SV_Target;
}
