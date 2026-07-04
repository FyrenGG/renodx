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
  float _366;
  float _367;
  float _476;
  float _477;
  float _478;
  float _479;
  int _480;
  float _485;
  float _486;
  float _487;
  float _488;
  int _489;
  float _494;
  float _495;
  float _496;
  float _497;
  int _498;
  float _640;
  float _641;
  float _642;
  int _643;
  float _717;
  float _718;
  float _719;
  float _795;
  float _796;
  float _797;
  float _798;
  float _799;
  float _800;
  float _801;
  bool _862;
  float _879;
  float _880;
  float _881;
  float _891;
  float _1256;
  float _1257;
  float _1258;
  float _1259;
  float _1358;
  float _1359;
  float _1660;
  float _1661;
  float _1662;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1757;
  float _1962;
  float _1963;
  float _1964;
  float _2057;
  float _2058;
  float _2059;
  float _2113;
  float _2114;
  float _2115;
  float _2134;
  float _2135;
  float _2136;
  float _2166;
  float _2167;
  float _2168;
  float _2182;
  float _2183;
  float _2184;
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
  float _283;
  float _284;
  float _285;
  int _290;
  int _298;
  float4 _305;
  int _310;
  float _318;
  float _319;
  float _322;
  float _323;
  uint2 _325;
  uint _340;
  int _342;
  float _350;
  float _351;
  float _353;
  float _354;
  float _355;
  float _369;
  float _370;
  float _371;
  float _372;
  float _374;
  int _378;
  float _386;
  int _387;
  float _395;
  float _398;
  float _401;
  float _402;
  float _403;
  float _404;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  float _413;
  float _416;
  float _419;
  float _422;
  float _425;
  float _428;
  float _435;
  float _436;
  float _437;
  float _444;
  float _445;
  float _446;
  float _449;
  float _452;
  float _455;
  int _460;
  float _468;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  float _474;
  int _482;
  int _491;
  float _499;
  float _500;
  float _501;
  float _505;
  float _506;
  float _507;
  float _522;
  float _529;
  float _530;
  float _531;
  float _542;
  bool _543;
  float _544;
  float _545;
  float _546;
  float _547;
  int _548;
  float _558;
  float _559;
  float _560;
  float _588;
  float _593;
  float _594;
  float _599;
  float _600;
  float _601;
  float _610;
  float _612;
  float _613;
  float _615;
  float _617;
  float _618;
  float _619;
  float _625;
  float _626;
  float _647;
  float _648;
  float _649;
  float4 _654;
  float4 _658;
  int _665;
  float _673;
  float _675;
  float _682;
  float _683;
  float _684;
  int _687;
  float4 _692;
  int _696;
  float _704;
  float _706;
  int _720;
  float _728;
  int _734;
  float _742;
  float _745;
  int _770;
  int _778;
  float4 _785;
  float _788;
  float _790;
  float _793;
  float _806;
  float _807;
  float _808;
  float _809;
  float _818;
  float _819;
  float _821;
  float4 _829;
  float _838;
  float _839;
  float _840;
  float _841;
  float _848;
  float _868;
  float _871;
  float _895;
  float _896;
  float _897;
  float4 _900;
  int _902;
  float _910;
  float _925;
  float _926;
  float _927;
  float _933;
  float _936;
  int _947;
  uint _953;
  uint _954;
  uint4 _956;
  float4 _959;
  float _977;
  float _978;
  float _979;
  float _981;
  float _982;
  float _983;
  float _984;
  float _987;
  float _988;
  float _991;
  float _992;
  float _996;
  float _998;
  float _999;
  float _1000;
  float _1001;
  float _1003;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1018;
  float _1022;
  float _1026;
  float _1028;
  float _1041;
  float _1044;
  float _1050;
  float _1065;
  float _1066;
  float _1067;
  float _1078;
  float _1084;
  float _1087;
  float _1090;
  float _1091;
  float _1092;
  float _1093;
  float _1102;
  float _1111;
  float _1120;
  float _1122;
  float _1134;
  float _1140;
  float _1143;
  float _1146;
  int _1147;
  float _1161;
  float _1162;
  float _1163;
  float _1191;
  float _1192;
  float _1196;
  float _1206;
  float _1207;
  float _1208;
  float _1220;
  float _1226;
  float _1228;
  float _1235;
  float _1236;
  float _1244;
  float _1249;
  float _1262;
  float _1263;
  float _1278;
  float _1279;
  float _1280;
  float _1296;
  float _1297;
  float _1298;
  float _1309;
  float _1314;
  float _1315;
  uint2 _1317;
  uint _1332;
  float _1342;
  float _1343;
  float _1345;
  float _1346;
  float _1347;
  float _1361;
  float _1362;
  float _1363;
  float _1364;
  float _1366;
  float _1367;
  float _1368;
  float _1369;
  int _1370;
  int _1378;
  float _1381;
  float _1384;
  float _1386;
  float _1411;
  float _1412;
  float _1413;
  int _1414;
  int _1422;
  float _1425;
  float _1428;
  float _1430;
  float _1431;
  float _1432;
  float _1436;
  int _1487;
  int _1495;
  float4 _1502;
  float _1516;
  float _1552;
  float _1569;
  float _1570;
  float _1571;
  float _1581;
  float _1590;
  float _1591;
  float _1604;
  float _1633;
  float _1634;
  float _1636;
  float _1698;
  float _1709;
  int _1714;
  float _1722;
  int _1724;
  float _1732;
  float _1734;
  float _1741;
  float _1742;
  float _1743;
  uint _1744;
  bool _1760;
  float _1766;
  float _1815;
  float _1816;
  float _1817;
  float _1819;
  float _1826;
  float _1827;
  float _1828;
  float _1847;
  float _1848;
  float _1849;
  float _1850;
  float _1851;
  float _1852;
  float _1853;
  float _1854;
  float _1855;
  float _1901;
  float _1902;
  float _1903;
  float _1904;
  float _1905;
  float _1906;
  float _1907;
  float _1924;
  float _1925;
  float _1926;
  float _1927;
  float _1933;
  float _1936;
  float _1943;
  float _1944;
  float _1945;
  float _1974;
  float _1999;
  float _2000;
  float _2001;
  float _2020;
  float _2021;
  float _2022;
  float _2028;
  float _2032;
  float _2033;
  float _2034;
  float _2035;
  float _2040;
  float _2065;
  float _2069;
  float _2070;
  float _2071;
  float _2072;
  float _2102;
  float _2124;
  float _2125;
  float _2129;
  float _2173;
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
  _283 = 4.0f / _35;
  _284 = _283 * _143;
  _285 = _283 * _144;
  _290 = WaveReadLaneFirst(_materialIndex);
  _298 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_290 < (uint)170000), _290, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _305 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_298 < (uint)65000), _298, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_284, ((_time.x * 0.10000000149011612f) + _285)));
  _310 = WaveReadLaneFirst(_materialIndex);
  _318 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_310 < (uint)170000), _310, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _319 = _318 * (_305.y + -0.30000001192092896f);
  _322 = (_319 * 0.0010000000474974513f) + _143;
  _323 = (_319 * 0.019999999552965164f) + _144;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_325.x, _325.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _340 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_325.x)))))) + 0.5f) * _322), int((float((int)(int(float((int)((int)(_325.y)))))) + 0.5f) * _323), 0));
  _342 = _340.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _350 = (((float)((uint)((uint)((uint)((uint)(_340.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _351 = (((float)((uint)((uint)(((uint)((uint)(_340.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _353 = 1.0f - abs(_350);
  _354 = abs(_351);
  _355 = _353 - _354;
  if (!(_355 >= 0.0f)) {
    _366 = (select((_350 >= 0.0f), 1.0f, -1.0f) * (1.0f - _354));
    _367 = (select((_351 >= 0.0f), 1.0f, -1.0f) * _353);
  } else {
    _366 = _350;
    _367 = _351;
  }
  _369 = rsqrt(dot(float3(_366, _367, _355), float3(_366, _367, _355)));  // [sem: invLength]
  _370 = _369 * _366;
  _371 = _369 * _367;
  _372 = _369 * _355;
  _374 = rsqrt(dot(float3(_370, _371, _372), float3(_370, _371, _372)));  // [sem: invLength]
  _378 = WaveReadLaneFirst(_materialIndex);
  _386 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_378 < (uint)170000), _378, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _387 = WaveReadLaneFirst(_materialIndex);
  _395 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_387 < (uint)170000), _387, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _398 = saturate(1.0f - _395) * _386;
  if (!(!(_398 >= 0.0010000000474974513f))) {
    _401 = ddx_coarse(_274);
    _402 = ddx_coarse(_275);
    _403 = ddx_coarse(_276);
    _404 = ddy_coarse(_274);
    _405 = ddy_coarse(_275);
    _406 = ddy_coarse(_276);
    _407 = ddx_coarse(_143);
    _408 = ddx_coarse(_144);
    _409 = ddy_coarse(_143);
    _410 = ddy_coarse(_144);
    _413 = (_405 * _188) - (_406 * _187);
    _416 = (_406 * _186) - (_404 * _188);
    _419 = (_404 * _187) - (_405 * _186);
    _422 = (_403 * _187) - (_402 * _188);
    _425 = (_401 * _188) - (_403 * _186);
    _428 = (_402 * _186) - (_401 * _187);
    _435 = (_409 * _422) + (_413 * _407);
    _436 = (_409 * _425) + (_416 * _407);
    _437 = (_409 * _428) + (_419 * _407);
    _444 = (_410 * _422) + (_413 * _408);
    _445 = (_410 * _425) + (_416 * _408);
    _446 = (_410 * _428) + (_408 * _419);
    _449 = max(dot(float3(_435, _436, _437), float3(_435, _436, _437)), dot(float3(_444, _445, _446), float3(_444, _445, _446)));
    _452 = rsqrt(select((!(_449 == 0.0f)), _449, 0.10000000149011612f));  // [sem: rsqrt_val]
    _455 = _452 * _274;
    _460 = WaveReadLaneFirst(_materialIndex);
    _468 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_460 < (uint)170000), _460, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _469 = _468 * _230;
    _470 = _468 * _231;
    _471 = _468 * _232;
    _472 = floor(_469);
    _473 = floor(_470);
    _474 = floor(_471);
    _476 = 10.0f;
    _477 = 0.0f;
    _478 = 0.0f;
    _479 = 0.0f;
    _480 = -1;
    while(true) {
      _485 = _476;
      _486 = _477;
      _487 = _478;
      _488 = _479;
      _489 = -1;
      while(true) {
        _494 = _485;
        _495 = _486;
        _496 = _487;
        _497 = _488;
        _498 = -1;
        while(true) {
          _499 = float((int)(_498));
          _500 = float((int)(_489));
          _501 = float((int)(_480));
          _505 = sin(_499 + _472);
          _506 = sin(_500 + _473);
          _507 = sin(_501 + _474);
          _522 = _time.x * 0.20000000298023224f;
          _529 = sin(_522 * frac(sin(dot(float3(_505, _506, _507), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _499;
          _530 = sin(_522 * frac(sin(dot(float3(_505, _506, _507), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _500;
          _531 = sin(_522 * frac(sin(dot(float3(_505, _506, _507), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _501;
          _542 = max(abs((_472 - _469) + _529), max(abs((_473 - _470) + _530), abs((_474 - _471) + _531)));
          _543 = (_542 < _494);
          _544 = select(_543, _542, _494);
          _545 = select(_543, _529, _495);
          _546 = select(_543, _530, _496);
          _547 = select(_543, _531, _497);
          _548 = _498 + 1;
          if (!(_548 == 2)) {
            _494 = _544;
            _495 = _545;
            _496 = _546;
            _497 = _547;
            _498 = _548;
            continue;
          }
          while(true) {
            _491 = _489 + 1;
            if (!(_491 == 2)) {
              _485 = _544;
              _486 = _545;
              _487 = _546;
              _488 = _547;
              _489 = _491;
              __loop_jump_target = 484;
              break;
            }
            while(true) {
              _482 = _480 + 1;
              if (!(_482 == 2)) {
                _476 = _544;
                _477 = _545;
                _478 = _546;
                _479 = _547;
                _480 = _482;
                __loop_jump_target = 475;
                break;
              }
              _558 = (_545 + _472) / _468;
              _559 = (_546 + _473) / _468;
              _560 = (_547 + _474) / _468;
              _588 = mad((_viewProj[2].w), _560, mad((_viewProj[1].w), _559, ((_viewProj[0].w) * _558))) + (_viewProj[3].w);
              _593 = (((mad((_viewProj[2].x), _560, mad((_viewProj[1].x), _559, ((_viewProj[0].x) * _558))) + (_viewProj[3].x)) / _588) * 0.5f) + 0.5f;
              _594 = 0.5f - (((mad((_viewProj[2].y), _560, mad((_viewProj[1].y), _559, ((_viewProj[0].y) * _558))) + (_viewProj[3].y)) / _588) * 0.5f);
              _599 = _558 - _mainPosition.x;
              _600 = _559 - _mainPosition.y;
              _601 = _560 - _mainPosition.z;
  // [sem: expr_sat]
              _610 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _398)) * sqrt(dot(float3(_599, _600, _601), float3(_599, _600, _601))))) * 1.0152283906936646f));
              _612 = 1.0f - saturate(_610);
              _613 = _610 * 0.5f;
              _615 = (_143 - _593) / _612;
              _617 = (_144 - _594) / _612;
              _618 = sin(_613);
              _619 = cos(_613);
              _625 = mad((-0.0f - _618), _617, (_619 * _615)) + _593;
              _626 = mad(_619, _617, (_618 * _615)) + _594;
              _640 = 0.0f;
              _641 = 0.0f;
              _642 = 0.0f;
              _643 = 1;
              while(true) {
                _647 = (float((int)(6 - _643)) * 0.1666666716337204f) * ((saturate(_158.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(_143)))), float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(_144))))), float2(12.989800453186035f, 78.23300170898438f))) * 43758.546875f) + 0.5f));
                _648 = _647 * mad((_452 * _437), _276, mad((_452 * _436), _275, (_455 * _435)));
                _649 = _647 * mad((_452 * _446), _276, mad((_452 * _445), _275, (_455 * _444)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _654 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_648 + _143), (_649 + _144)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _658 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_648 + _625), (_649 + _626)));
                _665 = WaveReadLaneFirst(_materialIndex);
                _673 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_665 < (uint)170000), _665, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _675 = (float)((bool)(uint)(_654.w < _673));
                _682 = (_675 * ((_658.x * 0.4000000059604645f) - _640)) + _640;
                _683 = (_675 * ((_658.y * 0.4000000059604645f) - _641)) + _641;
                _684 = (_675 * ((_658.z * 0.4000000059604645f) - _642)) + _642;
                if (!(_654.w > 0.8999999761581421f)) {
                  _687 = _643 + 1;
                  if ((int)_687 < (int)6) {
                    _640 = _682;
                    _641 = _683;
                    _642 = _684;
                    _643 = _687;
                    continue;
                  }
                }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _692 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_625, _626));
                _696 = WaveReadLaneFirst(_materialIndex);
                _704 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_696 < (uint)170000), _696, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
                _706 = (float)((bool)(uint)(_654.w < _704));
                _717 = ((_706 * (_692.x - _682)) + _682);
                _718 = ((_706 * (_692.y - _683)) + _683);
                _719 = ((_706 * (_692.z - _684)) + _684);
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
        if (__loop_jump_target == 484) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 475) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _717 = 0.0f;
    _718 = 0.0f;
    _719 = 0.0f;
  }
  _720 = WaveReadLaneFirst(_materialIndex);
  _728 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_720 < (uint)170000), _720, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _734 = WaveReadLaneFirst(_materialIndex);
  _742 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_734 < (uint)170000), _734, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _745 = saturate((_742 * 100.0f) + -99.0f);  // [sem: expr_sat]
  if (!(!(_745 >= 0.0010000000474974513f))) {
    if ((_342 == _renderPassSelfPlayer) | (_342 == _renderPassTest) | (_342 == _renderPassDetectRemoteCatch) | (_342 == _renderPassDetectPickedRemoteCatch)) {
      _770 = WaveReadLaneFirst(_materialIndex);
      _778 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_770 < (uint)170000), _770, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
      _785 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_778 < (uint)65000), _778, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_284 - (_time.x * 0.2199999988079071f)), (_285 - (_time.x * 0.18000000715255737f))));
      _788 = _785.x + -0.30000001192092896f;
      _790 = ((_785.x + -0.4000000059604645f) * 10.471975326538086f) + -1.5707963705062866f;
      _793 = _788 * 0.006000000052154064f;
      _795 = _793;
      _796 = _793;
      _797 = 0.0f;
      _798 = 0.0f;
      _799 = 0.0f;
      _800 = 0.0f;
      _801 = -1.0f;
      while(true) {
        _806 = _143 - ((_795 * sin(_790)) * _801);
        _807 = _144 - ((_796 * cos(_790)) * _801);
        _808 = _806 + -0.5f;
        _809 = _807 + -0.5f;
  // [sem: invLength]
        _818 = rsqrt(dot(float2(_808, _809), float2(_808, _809))) * ((_788 * 0.05999999865889549f) * sqrt((_808 * _808) + (_809 * _809)));
        _819 = _818 * _808;
        _821 = _818 * _809;
        _829 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_806, _807));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _838 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_806 - _819), (_807 - _821))))).x) * 0.20000000298023224f) + _797;
        _839 = (_829.y * 0.20000000298023224f) + _798;
        _840 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_819 + _806), (_821 + _807))))).z) * 0.20000000298023224f) + _799;
        _841 = (_829.w * 0.20000000298023224f) + _800;
        _848 = _801 + 0.20000000298023224f;
        if (!(!(_848 <= 1.0f))) {
          _795 = (_795 * 1.0099999904632568f);
          _796 = (_796 * 1.0099999904632568f);
          _797 = (_838 * 0.8999999761581421f);
          _798 = (_839 * 0.8999999761581421f);
          _799 = (_840 * 0.8999999761581421f);
          _800 = (_841 * 0.8999999761581421f);
          _801 = _848;
          continue;
        }
        if (!(_342 == _renderPassSelfPlayer)) {
          _862 = (_342 == _renderPassTest);
        } else {
          _862 = true;
        }
        _868 = saturate(_841 * 1.0800000429153442f);  // [sem: expr_sat]
        _871 = max(0.0010000000474974513f, _exposure0.x);
        _879 = ((((_838 * 0.5400000214576721f) * select(_862, 0.550000011920929f, 0.5f)) / _871) * _868);
        _880 = ((((_839 * 0.5400000214576721f) * select(_862, 0.699999988079071f, 0.800000011920929f)) / _871) * _868);
        _881 = (((_840 * 0.5400000214576721f) / _871) * _868);
        break;
      }
    } else {
      _879 = 0.0f;
      _880 = 0.0f;
      _881 = 0.0f;
    }
  } else {
    _879 = 0.0f;
    _880 = 0.0f;
    _881 = 0.0f;
  }
  if ((_342 == _renderPassSelfPlayer) | (_342 == _renderPassTest)) {
    _891 = _745;  // [sem: expr_sat]
  } else {
    _891 = saturate(_728 * 2.0f);  // [sem: expr_sat]
  }
  _895 = _279.z + (_891 * (_719 - _279.z));
  _896 = _279.y + (_891 * (_718 - _279.y));
  _897 = _279.x + (_891 * (_717 - _279.x));
  _900 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_143, _144), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _902 = WaveReadLaneFirst(_materialIndex);
  _910 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_902 < (uint)170000), _902, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightBackground);
  if (!(!(_910 >= 0.0010000000474974513f))) {
    if (!(_342 == _renderPassSelfPlayer)) {
      if (!(_342 == _renderPassTest)) {
        _925 = _230 - _mainPosition.x;
        _926 = _231 - _mainPosition.y;
        _927 = _232 - _mainPosition.z;
        _933 = sqrt(((_925 * _925) + (_926 * _926)) + (_927 * _927));
        _936 = 1.0f - saturate(_933 * 0.03333333507180214f);
        _947 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(_bufferSizeAndInvSize.x * _143)), (int)(uint(_bufferSizeAndInvSize.y * _144)), 0)))).x) & 127;
        if ((uint)(_947 + -53) < (uint)15) {
          _953 = uint(_bufferSizeAndInvSize.x * _322);
          _954 = uint(_bufferSizeAndInvSize.y * _323);
          _956 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_953, _954, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _959 = __3__36__0__0__g_gbufferNormal.Load(int3(_953, _954, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _977 = (saturate(_959.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _978 = (saturate(_959.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _979 = (saturate(_959.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _981 = rsqrt(dot(float3(_977, _978, _979), float3(_977, _978, _979)));  // [sem: invLength]
          _982 = _981 * _977;
          _983 = _981 * _978;
          _984 = _979 * _981;
          _987 = (((float)((uint)((uint)(((uint)((uint)(_956.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _988 = (((float)((uint)((uint)(_956.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _991 = (_987 + _988) * 0.5f;
          _992 = (_987 - _988) * 0.5f;
          _996 = (1.0f - abs(_991)) - abs(_992);
          _998 = rsqrt(dot(float3(_991, _992, _996), float3(_991, _992, _996)));  // [sem: invLength]
          _999 = _998 * _991;
          _1000 = _998 * _992;
          _1001 = _998 * _996;
          _1003 = select((_984 >= 0.0f), 1.0f, -1.0f);
          _1006 = -0.0f - (1.0f / (_1003 + _984));
          _1007 = _983 * _1006;
          _1008 = _1007 * _982;
          _1009 = _1003 * _982;
          _1018 = mad(_1001, _982, mad(_1000, _1008, ((((_1009 * _982) * _1006) + 1.0f) * _999)));
          _1022 = mad(_1001, _983, mad(_1000, (_1003 + (_1007 * _983)), ((_999 * _1003) * _1008)));
          _1026 = mad(_1001, _984, mad(_1000, (-0.0f - _983), (-0.0f - (_1009 * _999))));
          _1028 = rsqrt(dot(float3(_1018, _1022, _1026), float3(_1018, _1022, _1026)));  // [sem: invLength]
          _1041 = 1.0f - saturate(dot(float3((_1028 * _1018), (_1028 * _1022), (_1028 * _1026)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _1044 = max(0.0010000000474974513f, _exposure0.x);
          _1050 = (_1041 * _1041) * (_936 * _910);
          _1256 = (((0.05000000074505806f / _1044) * _1050) + _897);
          _1257 = (((0.07999999821186066f / _1044) * _1050) + _896);
          _1258 = (((0.10000000149011612f / _1044) * _1050) + _895);
          _1259 = _900.w;
        } else {
          _1065 = _230 - _aimHighlightPosition.x;
          _1066 = _231 - _aimHighlightPosition.y;
          _1067 = _232 - _aimHighlightPosition.z;
          _1078 = 1.0f - saturate(sqrt(((_1065 * _1065) + (_1066 * _1066)) + (_1067 * _1067)) / (_aimHighlightPosition.w * 5.0f));
          _1084 = saturate(((_1078 * _1078) * _1078) + ((1.0f - saturate(_933 * 0.5f)) * 0.10000000149011612f)) * _900.w;
          _1087 = (_900.w * _900.w) * _936;
          _1090 = _1084 * 0.875f;
          _1091 = _1084 * 1.625f;
          _1092 = _1084 * 2.5f;
          _1093 = _1084 * 60.0f;
          _1102 = (((1.0f - saturate(_1093 + -2.0f)) * saturate(_1093 + -1.5f)) * (0.3499999940395355f - _1090)) + _1090;
          _1111 = (((0.6499999761581421f - _1091) * saturate(_1093 + -1.7000000476837158f)) * (1.0f - saturate(_1093 + -3.0f))) + _1091;
          _1120 = ((saturate(_1093 + -2.200000047683716f) * (1.0f - _1092)) * (1.0f - saturate(_1093 + -6.0f))) + _1092;
          _1122 = saturate(_1093 + -7.0f);  // [sem: expr_sat]
          _1134 = 1.0f - _1087;
          _1140 = (((((_1122 * ((_1084 * 1.75f) - _1102)) + _1102) * _1134) + (_1087 * 0.3499999940395355f)) * _910) + _897;
          _1143 = (((((((_1084 * 3.25f) - _1111) * _1122) + _1111) * _1134) + (_1087 * 0.6499999761581421f)) * _910) + _896;
          _1146 = (((((((_1084 * 5.0f) - _1120) * _1122) + _1120) * _1134) + _1087) * _910) + _895;
          _1147 = _947 + -105;
          if ((_947 == 107) || ((_947 == 26) || (((uint)(_947 + -27) < (uint)2) || ((uint)_1147 < (uint)2)))) {
            _1161 = _mainPosition.x - _viewPos.x;
            _1162 = _mainPosition.y - _viewPos.y;
            _1163 = _mainPosition.z - _viewPos.z;
            _1191 = mad((_viewProjRelative[2].w), _1163, mad((_viewProjRelative[1].w), _1162, ((_viewProjRelative[0].w) * _1161))) + (_viewProjRelative[3].w);
            _1192 = (mad((_viewProjRelative[2].x), _1163, mad((_viewProjRelative[1].x), _1162, ((_viewProjRelative[0].x) * _1161))) + (_viewProjRelative[3].x)) / _1191;
            _1196 = 0.5f - (((mad((_viewProjRelative[2].y), _1163, mad((_viewProjRelative[1].y), _1162, ((_viewProjRelative[0].y) * _1161))) + (_viewProjRelative[3].y)) / _1191) * 0.5f);
            _1206 = ((_view[0].x) * 5.0f) + _1161;
            _1207 = ((_view[1].x) * 5.0f) + _1162;
            _1208 = ((_view[2].x) * 5.0f) + _1163;
            _1220 = mad((_viewProjRelative[2].w), _1208, mad((_viewProjRelative[1].w), _1207, (_1206 * (_viewProjRelative[0].w)))) + (_viewProjRelative[3].w);
            _1226 = (0.5f - (((mad((_viewProjRelative[2].y), _1208, mad((_viewProjRelative[1].y), _1207, (_1206 * (_viewProjRelative[0].y)))) + (_viewProjRelative[3].y)) / _1220) * 0.5f)) - _1196;
            _1228 = (_35 * 0.5f) * (((mad((_viewProjRelative[2].x), _1208, mad((_viewProjRelative[1].x), _1207, (_1206 * (_viewProjRelative[0].x)))) + (_viewProjRelative[3].x)) / _1220) - _1192);
            _1235 = _144 - _1196;
            _1236 = ((_143 + -0.5f) - (_1192 * 0.5f)) * _35;
            _1244 = 1.0f - saturate(sqrt((_1235 * _1235) + (_1236 * _1236)) / max(0.0010000000474974513f, sqrt((_1226 * _1226) + (_1228 * _1228))));
            _1249 = (_1244 * _1244) * (select(((uint)_1147 < (uint)3), 0.05000000074505806f, 0.004999999888241291f) * _910);
            _1256 = ((_1249 * 0.3499999940395355f) + _1140);
            _1257 = ((_1249 * 0.6499999761581421f) + _1143);
            _1258 = (_1249 + _1146);
            _1259 = _1087;
          } else {
            _1256 = _1140;
            _1257 = _1143;
            _1258 = _1146;
            _1259 = _1087;
          }
        }
      } else {
        _1256 = _897;
        _1257 = _896;
        _1258 = _895;
        _1259 = _900.w;
      }
    } else {
      _1256 = _897;
      _1257 = _896;
      _1258 = _895;
      _1259 = _900.w;
    }
  } else {
    _1256 = _897;
    _1257 = _896;
    _1258 = _895;
    _1259 = _900.w;
  }
  if (_745 > 0.0f) {
    _1278 = float((int)(int(_230 * 2000.0f))) * 0.0005000000237487257f;
    _1279 = float((int)(int(_231 * 2000.0f))) * 0.0005000000237487257f;
    _1280 = float((int)(int(_232 * 2000.0f))) * 0.0005000000237487257f;
  // [sem: expr_sat]
    _1296 = saturate(frac(sin(dot(float3(_1278, _1279, _1280), float3(127.0999984741211f, 311.70001220703125f, 74.69999694824219f))) * 43758.546875f) + -0.5f);
  // [sem: expr_sat]
    _1297 = saturate(frac(sin(dot(float3(_1278, _1279, _1280), float3(269.5f, 183.3000030517578f, 246.10000610351562f))) * 43758.546875f) + -0.5f);
  // [sem: expr_sat]
    _1298 = saturate(frac(sin(dot(float3(_1278, _1279, _1280), float3(113.5f, 271.8999938964844f, 124.5999984741211f))) * 43758.546875f) + -0.5f);
    _1309 = frac(sin(dot(float2(_143, _144), float2(127.0999984741211f, 311.70001220703125f))) * 437.5450134277344f) * 0.5f;
    _1314 = ((frac((_1297 + _1296) - _1298) - _1309) * 0.02500000037252903f) + _143;
    _1315 = ((frac((_1297 - _1296) + _1298) - _1309) * 0.02500000037252903f) + _144;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1317.x, _1317.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _1332 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_1317.x)))))) + 0.5f) * _1314), int((float((int)(int(float((int)((int)(_1317.y)))))) + 0.5f) * _1315), 0));
    _1342 = (((float)((uint)((uint)((uint)((uint)(_1332.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1343 = (((float)((uint)((uint)(((uint)((uint)(_1332.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1345 = 1.0f - abs(_1342);
    _1346 = abs(_1343);
    _1347 = _1345 - _1346;
    if (!(_1347 >= 0.0f)) {
      _1358 = (select((_1342 >= 0.0f), 1.0f, -1.0f) * (1.0f - _1346));
      _1359 = (select((_1343 >= 0.0f), 1.0f, -1.0f) * _1345);
    } else {
      _1358 = _1342;
      _1359 = _1343;
    }
    _1361 = rsqrt(dot(float3(_1358, _1359, _1347), float3(_1358, _1359, _1347)));  // [sem: invLength]
    _1362 = _1361 * _1358;
    _1363 = _1361 * _1359;
    _1364 = _1361 * _1347;
    _1366 = rsqrt(dot(float3(_1362, _1363, _1364), float3(_1362, _1363, _1364)));  // [sem: invLength]
    _1367 = _1366 * _1362;
    _1368 = _1366 * _1363;
    _1369 = _1366 * _1364;
    _1370 = WaveReadLaneFirst(_materialIndex);
    _1378 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1370 < (uint)170000), _1370, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimGimmickColor);
    _1381 = (float)((uint)((uint)(((uint)(_1378) >> 16) & 255)));
    _1384 = (float)((uint)((uint)(((uint)(_1378) >> 8) & 255)));
    _1386 = (float)((uint)((uint)(_1378 & 255)));
    _1411 = select(((_1381 * 0.003921568859368563f) < 0.040449999272823334f), (_1381 * 0.0003035269910469651f), exp2(log2((_1381 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1412 = select(((_1384 * 0.003921568859368563f) < 0.040449999272823334f), (_1384 * 0.0003035269910469651f), exp2(log2((_1384 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1413 = select(((_1386 * 0.003921568859368563f) < 0.040449999272823334f), (_1386 * 0.0003035269910469651f), exp2(log2((_1386 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1414 = WaveReadLaneFirst(_materialIndex);
    _1422 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1414 < (uint)170000), _1414, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightColor);
    _1425 = (float)((uint)((uint)(((uint)(_1422) >> 16) & 255)));
    _1428 = (float)((uint)((uint)(((uint)(_1422) >> 8) & 255)));
    _1430 = (float)((uint)((uint)(_1422 & 255)));
    _1431 = _143 + -0.5f;
    _1432 = _144 + -0.5f;
    _1436 = sqrt((_1432 * _1432) + (_1431 * _1431));
    if (_342 == _renderPassAimHighlight) {
      _1487 = WaveReadLaneFirst(_materialIndex);
      _1495 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1487 < (uint)170000), _1487, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._auraTex);
      _1502 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1495 < (uint)65000), _1495, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((8.0f / _35) * _143) + ((_305.w + -0.5f) * 0.10000000149011612f)), ((((5.0f / _35) * _144) + ((_305.z + -0.5f) * 0.10000000149011612f)) - (_time.x * 0.019999999552965164f))));
      _1516 = max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _143), int(_customRenderPassSizeInvSize.y * _144), 0)))).x));
      _1552 = mad((_invViewProj[2].w), _1516, mad((_invViewProj[1].w), _192, ((_invViewProj[0].w) * _190))) + (_invViewProj[3].w);
      _1569 = (((mad((_invViewProj[2].x), _1516, mad((_invViewProj[1].x), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[3].x)) / _1552) - _aimHighlightPosition.x) - ((_1502.x + -0.5f) * 0.4000000059604645f);
      _1570 = (((mad((_invViewProj[2].y), _1516, mad((_invViewProj[1].y), _192, ((_invViewProj[0].y) * _190))) + (_invViewProj[3].y)) / _1552) - _aimHighlightPosition.y) - ((_1502.y + -0.5f) * 0.4000000059604645f);
      _1571 = (((mad((_invViewProj[2].z), _1516, mad((_invViewProj[1].z), _192, ((_invViewProj[0].z) * _190))) + (_invViewProj[3].z)) / _1552) - _aimHighlightPosition.z) - ((_1502.z + -0.5f) * 0.4000000059604645f);
      _1581 = 1.0f - saturate(sqrt(((_1569 * _1569) + (_1570 * _1570)) + (_1571 * _1571)) / _aimHighlightPosition.w);
      _1590 = _1581 * ((sin((_time.x * 10.0f) + (_1581 * 20.0f)) + 1.5f) * 0.33329999446868896f);
      _1591 = _1590 * _1590;
      _1604 = (((((_1591 * _1591) * ((pow(_1581, 5.0f)) * 7999999.0f)) * _1591) + 1.0f) / max(0.0010000000474974513f, _exposure0.x)) * _1591;
      if (((_nearFarProj.x / _193) + 0.05000000074505806f) < (_nearFarProj.x / _1516)) {
        _1633 = 1.0f - saturate(dot(float3(((((_374 * _370) - _1367) * 0.75f) + _1367), ((((_374 * _371) - _1368) * 0.75f) + _1368), ((((_374 * _372) - _1369) * 0.75f) + _1369)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _1634 = _1633 * _1633;
        _1636 = (_1634 * _1634) * _1633;
        _1660 = ((_1636 * (lerp(_1411, 0.3499999940395355f, 0.30000001192092896f))) + (_1256 * 4.0f));
        _1661 = ((_1636 * (lerp(_1412, 0.6499999761581421f, 0.30000001192092896f))) + (_1257 * 4.0f));
        _1662 = ((_1636 * (lerp(_1413, 1.0f, 0.30000001192092896f))) + (_1258 * 4.0f));
      } else {
        _1660 = (_1411 * _1259);
        _1661 = (_1412 * _1259);
        _1662 = (_1413 * _1259);
      }
      _1703 = _1436;
      _1704 = (((((_1604 * select(((_1425 * 0.003921568859368563f) < 0.040449999272823334f), (_1425 * 0.0003035269910469651f), exp2(log2((_1425 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _1256) + _1660) * _745) + _1256);
      _1705 = (((((_1604 * select(((_1428 * 0.003921568859368563f) < 0.040449999272823334f), (_1428 * 0.0003035269910469651f), exp2(log2((_1428 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _1257) + _1661) * _745) + _1257);
      _1706 = (((((_1604 * select(((_1430 * 0.003921568859368563f) < 0.040449999272823334f), (_1430 * 0.0003035269910469651f), exp2(log2((_1430 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _1258) + _1662) * _745) + _1258);
    } else {
      if (((float)((uint)((uint)(_1332.x & 255)))) == ((float)((uint)(uint)(_renderPassAimHighlight)))) {
        if (((_nearFarProj.x / _193) + 0.05000000074505806f) < (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _1314), int(_customRenderPassSizeInvSize.y * _1315), 0)))).x)))) {
          _1698 = min(max(saturate(1.0f - (_1436 * 2.0f)), 0.10000000149011612f), 1.0f) * 0.05000000074505806f;
          _1703 = _1436;
          _1704 = (_1698 * _1411);
          _1705 = (_1698 * _1412);
          _1706 = (_1698 * _1413);
        } else {
          _1703 = _1436;
          _1704 = _1256;
          _1705 = _1257;
          _1706 = _1258;
        }
      } else {
        _1703 = _1436;
        _1704 = _1256;
        _1705 = _1257;
        _1706 = _1258;
      }
    }
  } else {
    _1262 = _143 + -0.5f;
    _1263 = _144 + -0.5f;
    _1703 = sqrt((_1263 * _1263) + (_1262 * _1262));
    _1704 = _1256;
    _1705 = _1257;
    _1706 = _1258;
  }
  _1709 = saturate((_1703 + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
  _1714 = WaveReadLaneFirst(_materialIndex);
  _1722 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1714 < (uint)170000), _1714, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._vignetteIntensity);
  _1724 = WaveReadLaneFirst(_materialIndex);
  _1732 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)(select(((uint)_1724 < (uint)170000), _1724, 0)) + 0u))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _1734 = 1.0f - ((((_1709 * _1709) * (3.0f - (_1709 * 2.0f))) * _1722) * _1732);
  _1741 = max(0.0f, (_1734 * (_1704 + _879)));
  _1742 = max(0.0f, (_1734 * (_1705 + _880)));
  _1743 = max(0.0f, (_1734 * (_1706 + _881)));
  _1744 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1757 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _1744, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1757 = 1.0f;
  }
  _1760 = (_localToneMappingParams.w > 0.0f);
  if (_1760) {
    // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
    // Description: This is the SDR permutation of screen-effect composite variant 0xB4588179 (a PostProcessMaterial pixel shader binding PostProcessAimHighlight_CD bindless parameters) that statically inlines the vanilla tonemap pipeline and can own the visible final output while its screen effect plays, so an unreplaced curve renders the whole screen with vanilla colors (flat/grey compared to the RenoDX look) for the duration of the effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, wash, user image adjust, colorblind matrix).
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1741, _1742, _1743));
    _2020 = _rndx_tonemapped_color.x;
    _2021 = _rndx_tonemapped_color.y;
    _2022 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2028 = 1.0f - abs(_etcParams.w);
      _2032 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2033 = (_2028 * _2020) + _2032;
      _2034 = (_2028 * _2021) + _2032;
      _2035 = (_2028 * _2022) + _2032;
      if (_colorGradingParams.w > 0.0f) {
        _2040 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2057 = (((max(0.0f, (1.0f - _2033)) - _2033) * _2040) + _2033);
        _2058 = (((max(0.0f, (1.0f - _2034)) - _2034) * _2040) + _2034);
        _2059 = (((max(0.0f, (1.0f - _2035)) - _2035) * _2040) + _2035);
      } else {
        _2057 = _2033;
        _2058 = _2034;
        _2059 = _2035;
      }
      _2065 = _userImageAdjust.y + 1.0f;
      _2069 = _userImageAdjust.x + 0.5f;
      _2070 = ((_2057 + -0.5f) * _2065) + _2069;
      _2071 = ((_2058 + -0.5f) * _2065) + _2069;
      _2072 = ((_2059 + -0.5f) * _2065) + _2069;
      _2102 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _2113 = exp2(log2(saturate(mad(_colorBlind0.z, _2072, mad(_colorBlind0.y, _2071, (_colorBlind0.x * _2070))))) * _2102);
      _2114 = exp2(log2(saturate(mad(_colorBlind1.z, _2072, mad(_colorBlind1.y, _2071, (_colorBlind1.x * _2070))))) * _2102);
      _2115 = exp2(log2(saturate(mad(_colorBlind2.z, _2072, mad(_colorBlind2.y, _2071, (_colorBlind2.x * _2070))))) * _2102);
    } else {
      _2113 = _2020;
      _2114 = _2021;
      _2115 = _2022;
    }
  } else {
    _2113 = _1741;
    _2114 = _1742;
    _2115 = _1743;
  }
  if (_etcParams.y > 1.0f) {
    _2124 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2125 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: ScreenEffectVignette] [Version: 1.12.02]
    // Description: When this SDR screen-effect composite variant is the visible final output while its effect plays, scale the game's native _etcParams.y-driven vignette by the RenoDX Vignette setting so vignette strength matches the main composite's behavior instead of snapping to full native strength for the effect's duration. The scaling only applies when this shader owns the final output (_etcParams.z == 0, no sRGB re-encode pass follows) and the RenoDX basic postprocess final path is active. Mirrors the BasicPostProcessVignette patch in PostProcessMaterial_0x21212A93.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _2129 = saturate(1.0f - (dot(float2(_2124, _2125), float2(_2124, _2125)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: ScreenEffectVignette]
    _2134 = (_2129 * _2113);
    _2135 = (_2129 * _2114);
    _2136 = (_2129 * _2115);
  } else {
    _2134 = _2113;
    _2135 = _2114;
    _2136 = _2115;
  }
  if (_1760 && (_etcParams.z > 0.0f)) {
    _2166 = select((_2134 <= 0.0031308000907301903f), (_2134 * 12.920000076293945f), (((pow(_2134, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2167 = select((_2135 <= 0.0031308000907301903f), (_2135 * 12.920000076293945f), (((pow(_2135, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2168 = select((_2136 <= 0.0031308000907301903f), (_2136 * 12.920000076293945f), (((pow(_2136, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _2166 = _2134;
    _2167 = _2135;
    _2168 = _2136;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2173 = (float)((uint)_1744);
    if (!(_2173 < _viewDir.w)) {
      if (!(_2173 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2182 = _2166;
        _2183 = _2167;
        _2184 = _2168;
      } else {
        _2182 = 0.0f;
        _2183 = 0.0f;
        _2184 = 0.0f;
      }
    } else {
      _2182 = 0.0f;
      _2183 = 0.0f;
      _2184 = 0.0f;
    }
  } else {
    _2182 = _2166;
    _2183 = _2167;
    _2184 = _2168;
  }
  // RenoDX: >>> [Patch: ScreenEffectFinalizeSDR] [Version: 1.12.02]
  // Description: On the SDR lane this screen-effect composite variant can be the visible final output while its effect plays (it writes the display target with _etcParams.z == 0, so no standalone final pass runs after it). Without this block the RenoDX SDR finalization (white point/color temperature, Purkinje night gating, and the SDR Gamma setting) drops out for the duration of the effect and snaps back when the effect stops drawing. Applies FinalizeSDR to the post-letterbox color only when this shader owns the final output and the RenoDX basic postprocess final path is active. Mirrors the BasicPostProcessFinalizeSDR patch in PostProcessMaterial_0x21212A93.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_2182, _2183, _2184), _sunDirection.y, _moonDirection.y);
    _2182 = _rndx_final_color.x;
    _2183 = _rndx_final_color.y;
    _2184 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: ScreenEffectFinalizeSDR]
  SV_Target.x = _2182;
  SV_Target.y = _2183;
  SV_Target.z = _2184;
  SV_Target.w = _1757;
  return SV_Target;
}
