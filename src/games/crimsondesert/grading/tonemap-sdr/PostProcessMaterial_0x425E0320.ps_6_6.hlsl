struct PostProcessAbyssEnterGlid_CDStruct {
  float _startYPos;
  float _endYPos;
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t32, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t79, space36);

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

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};

typedef BindlessParameters_PostProcessAbyssEnterGlid_CD BindlessParameters_PostProcessAbyssEnterGlid_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterGlid_CD_t> BindlessParameters_PostProcessAbyssEnterGlid_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _25;
  float _33;
  int _34;
  float _42;
  float _48;
  float _49;
  float _80;
  float _83;
  float _119;
  float _120;
  float _121;
  float _122;
  float _124;
  float _125;
  float _126;
  float _127;
  float _130;
  float _134;
  float _135;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _141;
  float _142;
  float _158;
  float _159;
  float _160;
  float _165;
  float _171;
  float _174;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  int _190;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _322;
  float _323;
  float _324;
  float _367;
  float _409;
  float _410;
  int _411;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  int _422;
  float _725;
  float _784;
  float _785;
  int _786;
  float _791;
  float _792;
  float _793;
  float _794;
  float _795;
  float _796;
  int _797;
  bool _922;
  float _1023;
  float _1024;
  float _1025;
  float _1026;
  float _1027;
  float _1147;
  float _1208;
  float _1209;
  float _1210;
  bool _1785;
  float _1834;
  float _1847;
  float _1861;
  float _2064;
  float _2065;
  float _2066;
  float _2159;
  float _2160;
  float _2161;
  float _2215;
  float _2216;
  float _2217;
  float _2234;
  float _2235;
  float _2236;
  float _2266;
  float _2267;
  float _2268;
  float _2282;
  float _2283;
  float _2284;
  float _200;
  float _201;
  float _202;
  float _205;
  float _225;
  float _227;
  float _229;
  float _230;
  float _234;
  float _235;
  float _236;
  float _255;
  float _260;
  float _263;
  float _268;
  float _270;
  float _271;
  float _272;
  float _273;
  float _274;
  float _279;
  float _280;
  float _281;
  float _282;
  float _305;
  float _307;
  float _309;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  int _319;
  int _325;
  float _333;
  int _334;
  float _342;
  int _343;
  float _351;
  float _354;
  float _356;
  bool _357;
  float _368;
  float _369;
  float _370;
  float _371;
  float _382;
  float _383;
  float _392;
  bool _393;
  float _395;
  float _423;
  float _424;
  float _431;
  float _432;
  float _433;
  float _437;
  float _443;
  float _447;
  float _449;
  float _452;
  float _454;
  float _456;
  float _458;
  float _459;
  float _460;
  float _462;
  float _467;
  float _470;
  float _471;
  float _472;
  float _479;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _492;
  float _493;
  float _494;
  float _498;
  float _499;
  float _500;
  float _505;
  float _507;
  float _540;
  float _542;
  float _543;
  float _544;
  float _545;
  float _546;
  float _548;
  float _549;
  float _551;
  float _553;
  float _555;
  float _556;
  float _557;
  float _558;
  float _560;
  float _563;
  float _565;
  float _568;
  float _572;
  float _588;
  float _590;
  float _592;
  float _596;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  int _602;
  float _608;
  float _609;
  float _610;
  int _611;
  float _621;
  float _622;
  float _623;
  float _625;
  float _631;
  int _632;
  float _642;
  float _643;
  float _644;
  float _669;
  float _673;
  float _674;
  float _675;
  float _677;
  float _678;
  float _679;
  float _680;
  float _686;
  float _687;
  float _694;
  float _695;
  float _696;
  float _698;
  float _713;
  float _714;
  float _715;
  float _726;
  float _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _749;
  float _750;
  float _751;
  float _770;
  float _798;
  float _799;
  float _806;
  float _807;
  float _808;
  float _812;
  float _818;
  float _822;
  float _824;
  float _827;
  float _829;
  float _831;
  float _833;
  float _834;
  float _835;
  float _837;
  float _842;
  float _846;
  float _847;
  float _858;
  float _859;
  float _860;
  float _861;
  float _862;
  float _863;
  float _867;
  float _868;
  float _869;
  float _880;
  float _882;
  float _886;
  float _902;
  float _904;
  float _906;
  float _910;
  float _911;
  float _912;
  float _913;
  float _914;
  float _915;
  int _916;
  float _923;
  int _924;
  float _934;
  float _935;
  float _936;
  float _961;
  float _963;
  float _969;
  float _971;
  float _972;
  float _980;
  float _991;
  float _995;
  float _1000;
  float _1005;
  int _1028;
  float _1038;
  float _1039;
  float _1040;
  float _1068;
  float _1078;
  float _1079;
  float _1080;
  int _1081;
  float _1091;
  float _1092;
  float _1093;
  int _1122;
  float _1130;
  float _1131;
  float _1132;
  float _1133;
  float _1134;
  float _1135;
  float _1140;
  float _1152;
  float _1153;
  float _1154;
  float _1155;
  float _1156;
  float _1158;
  float _1160;
  float _1163;
  float _1165;
  float _1166;
  float _1171;
  float _1172;
  float _1185;
  float _1186;
  float _1189;
  float _1191;
  float _1192;
  float _1194;
  float _1198;
  float _1200;
  int _1214;
  float _1222;
  float _1260;
  float _1261;
  float _1262;
  float _1263;
  float _1267;
  float _1279;
  float _1282;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1289;
  float _1290;
  float _1294;
  float _1300;
  float _1301;
  float _1302;
  float _1311;
  float _1312;
  float _1313;
  float _1317;
  float _1339;
  float _1351;
  int _1352;
  float _1360;
  float _1362;
  float _1366;
  float _1372;
  float _1376;
  float _1384;
  float _1387;
  float _1390;
  float _1392;
  float _1393;
  float _1394;
  float _1402;
  float _1408;
  float _1412;
  float _1420;
  float _1423;
  float _1426;
  float _1428;
  float _1429;
  float _1430;
  float _1438;
  float _1444;
  float _1448;
  float _1456;
  float _1459;
  float _1463;
  float _1464;
  float _1467;
  float _1471;
  float _1475;
  float _1478;
  float _1492;
  float _1497;
  float _1508;
  float _1512;
  float _1518;
  float _1522;
  float _1523;
  float _1524;
  float _1528;
  float _1531;
  float _1539;
  float _1543;
  bool _1546;
  bool _1547;
  bool _1548;
  bool _1549;
  float _1564;
  bool _1567;
  bool _1568;
  float _1585;
  int _1590;
  float _1598;
  int _1611;
  float _1619;
  float _1622;
  int _1644;
  float _1652;
  int _1653;
  float _1661;
  float _1662;
  float _1665;
  float _1671;
  float _1676;
  float _1686;
  float _1688;
  float _1694;
  int _1716;
  float _1724;
  float _1734;
  int4 _1750;
  int _1755;
  int _1756;
  int _1757;
  int _1758;
  float4 _1787;
  float _1797;
  float _1798;
  float _1799;
  float _1827;
  float _1828;
  float _1829;
  float _1830;
  float _1841;
  float _1842;
  float _1843;
  uint _1848;
  bool _1864;
  float _1868;
  float _1917;
  float _1918;
  float _1919;
  float _1921;
  float _1928;
  float _1929;
  float _1930;
  float _1949;
  float _1950;
  float _1951;
  float _1952;
  float _1953;
  float _1954;
  float _1955;
  float _1956;
  float _1957;
  float _2003;
  float _2004;
  float _2005;
  float _2006;
  float _2007;
  float _2008;
  float _2009;
  float _2026;
  float _2027;
  float _2028;
  float _2029;
  float _2035;
  float _2038;
  float _2045;
  float _2046;
  float _2047;
  float _2076;
  float _2101;
  float _2102;
  float _2103;
  float _2122;
  float _2123;
  float _2124;
  float _2130;
  float _2134;
  float _2135;
  float _2136;
  float _2137;
  float _2142;
  float _2167;
  float _2171;
  float _2172;
  float _2173;
  float _2174;
  float _2204;
  float _2224;
  float _2225;
  float _2229;
  float _2273;
  float _2294;
  float _2295;
  float _2296;
  int __loop_jump_target = -1;
  _25 = WaveReadLaneFirst(_materialIndex);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_25 < (uint)170000), _25, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_34 < (uint)170000), _34, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  _48 = saturate((_viewPos.y - _42) / (_33 - _42));  // [sem: expr_sat]
  _49 = 1.0f - _48;
  _80 = (TEXCOORD.x * 2.0f) + -1.0f;
  _83 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _119 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _83, ((_invViewProjRelative[0].w) * _80));
  _120 = ((mad((_invViewProjRelative[1].x), _83, ((_invViewProjRelative[0].x) * _80)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _119;
  _121 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _83, ((_invViewProjRelative[0].y) * _80))) / _119;
  _122 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _83, ((_invViewProjRelative[0].z) * _80))) / _119;
  _124 = rsqrt(dot(float3(_120, _121, _122), float3(_120, _121, _122)));  // [sem: invLength]
  _125 = _124 * _120;
  _126 = _124 * _121;
  _127 = _124 * _122;
  _130 = sin(_time.x * 0.10000000149011612f) + 3.0f;
  _134 = (_130 * _125) + _125;
  _135 = (_130 * _126) + _126;
  _136 = (_130 * _127) + _127;
  _137 = floor(_viewPos.x);
  _138 = floor(_viewPos.y);
  _139 = floor(_viewPos.z);
  _140 = 1.0f / _125;
  _141 = 1.0f / _126;
  _142 = 1.0f / _127;
  _158 = float((int)(((int)(uint)((int)(_125 > 0.0f))) - ((int)(uint)((int)(_125 < 0.0f)))));
  _159 = float((int)(((int)(uint)((int)(_126 > 0.0f))) - ((int)(uint)((int)(_126 < 0.0f)))));
  _160 = float((int)(((int)(uint)((int)(_127 > 0.0f))) - ((int)(uint)((int)(_127 < 0.0f)))));
  _165 = _137 + (0.5f - _viewPos.x);
  _171 = _139 + (0.5f - _viewPos.z);
  _174 = ((_138 + (0.5f - _viewPos.y)) + (_159 * 0.5f)) * _141;
  _177 = _137;
  _178 = _138;
  _179 = _139;
  _180 = (((_158 * 0.5f) + _165) * _140);
  _181 = _174;
  _182 = (((_160 * 0.5f) + _171) * _142);
  _183 = 0.0f;
  _184 = 0.0f;
  _185 = 0.0f;
  _186 = 0.0f;
  _187 = 0.0f;
  _188 = 0.0f;
  _189 = 0.0f;
  _190 = 0;
  while(true) {
    _285 = _183;
    _286 = _184;
    _287 = _185;
    _288 = _186;
    _289 = _187;
    _290 = _188;
    _291 = _189;
    _200 = frac(sin(dot(float3(_177, _178, _179), float3(127.0999984741211f, 311.70001220703125f, 74.69999694824219f))) * 43758.546875f);
    _201 = frac(sin(dot(float3(_177, _178, _179), float3(269.5f, 183.3000030517578f, 246.10000610351562f))) * 43758.546875f);
    _202 = frac(sin(dot(float3(_177, _178, _179), float3(113.5f, 271.8999938964844f, 124.5999984741211f))) * 43758.546875f);
    _205 = _time.x * _200;
    _225 = (_177 - _viewPos.x) + min(max(((cos(_205 + _200) * 0.10000000149011612f) + _200), 0.004999999888241291f), 0.9950000047683716f);
    _227 = (_178 - _viewPos.y) + min(max(((cos(_205 + _201) * 0.10000000149011612f) + _201), 0.004999999888241291f), 0.9950000047683716f);
    _229 = (_179 - _viewPos.z) + min(max(((cos(_205 + _202) * 0.10000000149011612f) + _202), 0.004999999888241291f), 0.9950000047683716f);
    _230 = dot(float3(_225, _227, _229), float3(_125, _126, _127));
    _234 = _225 - (_230 * _125);
    _235 = _227 - (_230 * _126);
    _236 = _229 - (_230 * _127);
    bool __branch_chain_176;
    if (!((_230 > 0.0f) && (_230 < 50.0f))) {
      _285 = _183;
      _286 = _184;
      _287 = _185;
      _288 = _186;
      _289 = _187;
      _290 = _188;
      _291 = _189;
      __branch_chain_176 = true;
    } else {
      _255 = saturate((sqrt(((_234 * _234) + (_235 * _235)) + (_236 * _236)) + -0.0024999999441206455f) * 400.0f);  // [sem: expr_sat]
      _260 = 1.0f - ((_255 * _255) * (3.0f - (_255 * 2.0f)));
      _263 = saturate((_230 + -5.0f) * -0.20000000298023224f);  // [sem: expr_sat]
      _268 = ((_263 * _263) * (3.0f - (_263 * 2.0f))) * _260;
      _270 = _260 * (_268 / _230);
      _271 = _270 * ((_183 * 0.4000000059604645f) + 0.6000000238418579f);
      _272 = _270 * ((_184 * 0.4000000059604645f) + 0.6000000238418579f);
      _273 = _270 * ((_185 * 0.4000000059604645f) + 0.6000000238418579f);
      _274 = 1.0f - _189;
      _279 = (_271 * _274) + _186;
      _280 = (_272 * _274) + _187;
      _281 = (_273 * _274) + _188;
      _282 = (_268 * _274) + _189;
      if (!(_282 > 0.9900000095367432f)) {
        _285 = _271;
        _286 = _272;
        _287 = _273;
        _288 = _279;
        _289 = _280;
        _290 = _281;
        _291 = _282;
        __branch_chain_176 = true;
      } else {
        _322 = _279;
        _323 = _280;
        _324 = _281;
        __branch_chain_176 = false;
      }
    }
    if (__branch_chain_176) {
      _305 = (select((_181 < _180), 0.0f, 1.0f) * _158) * select((_182 < _180), 0.0f, 1.0f);
      _307 = (select((_180 < _181), 0.0f, 1.0f) * _159) * select((_182 < _181), 0.0f, 1.0f);
      _309 = (select((_180 < _182), 0.0f, 1.0f) * _160) * select((_181 < _182), 0.0f, 1.0f);
      _313 = (_305 * _140) + _180;
      _314 = (_307 * _141) + _181;
      _315 = (_309 * _142) + _182;
      _316 = _305 + _177;
      _317 = _307 + _178;
      _318 = _309 + _179;
      _319 = _190 + 1;
      if ((int)_319 < (int)5) {
        _177 = _316;
        _178 = _317;
        _179 = _318;
        _180 = _313;
        _181 = _314;
        _182 = _315;
        _183 = _285;
        _184 = _286;
        _185 = _287;
        _186 = _288;
        _187 = _289;
        _188 = _290;
        _189 = _291;
        _190 = _319;
        continue;
      } else {
        _322 = _288;
        _323 = _289;
        _324 = _290;
      }
    }
    _325 = WaveReadLaneFirst(_materialIndex);
    _333 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_325 < (uint)170000), _325, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._stardustIntensity);
    _334 = WaveReadLaneFirst(_materialIndex);
    _342 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_334 < (uint)170000), _334, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cubeScale);
    _343 = WaveReadLaneFirst(_materialIndex);
    _351 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_343 < (uint)170000), _343, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cubeDistance);
    _354 = (pow(_49, 2.200000047683716f));
    _356 = (_354 + 1.0f) * 5.0f;
    _357 = (_49 > 0.800000011920929f);
    if (_357) {
      _367 = ((exp2(log2(_48 * 5.0f) * 2.200000047683716f) * (_356 + -0.009999999776482582f)) + 0.009999999776482582f);
    } else {
      _367 = _356;
    }
    _368 = _367 * _125;
    _369 = _367 * _127;
    _370 = 1.0f / _368;
    _371 = 1.0f / _369;
    _382 = float((int)(((int)(uint)((int)(_368 > 0.0f))) - ((int)(uint)((int)(_368 < 0.0f)))));
    _383 = float((int)(((int)(uint)((int)(_369 > 0.0f))) - ((int)(uint)((int)(_369 < 0.0f)))));
    _392 = _342 * 0.009999999776482582f;
    _393 = (_49 < 1.0f);
    if (_393) {
      _395 = saturate(_49);  // [sem: _49_sat]
      _409 = (max((5.0f - (_354 * 5.300000190734863f)), 0.0f) * _351);
      _410 = (((_395 * _395) * _392) * (3.0f - (_395 * 2.0f)));
      _411 = 64;
    } else {
      if (_49 > 0.9998999834060669f) {
        _409 = 0.0f;
        _410 = _392;
        _411 = 0;
      } else {
        _409 = _351;
        _410 = _392;
        _411 = 64;
      }
    }
    if (!(_411 == 0)) {
      _416 = _137;
      _417 = _138;
      _418 = _139;
      _419 = (((_382 * 0.5f) + _165) * _370);
      _420 = _174;
      _421 = (((_383 * 0.5f) + _171) * _371);
      _422 = 0;
      while(true) {
        _423 = _viewPos.x - _416;
        _424 = _viewPos.z - _418;
        if (dot(float2(_423, _424), float2(_423, _424)) > (_409 * _409)) {
          _431 = frac(_416 * 0.1031000018119812f);
          _432 = frac(_417 * 0.1031000018119812f);
          _433 = frac(_418 * 0.1031000018119812f);
          _437 = dot(float3(_431, _432, _433), float3((_432 + 19.190000534057617f), (_433 + 19.190000534057617f), (_431 + 19.190000534057617f)));
          _443 = frac(((_432 + _431) + (_437 * 2.0f)) * (_437 + _433));
          if (_443 > 0.8999999761581421f) {
            _447 = (_418 + _time.x) + _443;
            _449 = (_447 * 2.0f) + _417;
            _452 = min(max((_443 * 0.5f), 0.10000000149011612f), _410);
            _454 = (_viewPos.x + -0.5f) - _416;
            _456 = (_viewPos.y + -0.5f) - _417;
            _458 = (_viewPos.z + -0.5f) - _418;
            _459 = cos(_447);
            _460 = sin(_447);
            _462 = mad(_460, _456, (_459 * _458));
            _467 = mad(_460, _126, (_459 * _369));
            _470 = mad(_459, _126, (-0.0f - (_369 * _460)));
            _471 = cos(_449);
            _472 = sin(_449);
            _479 = mad(_472, _467, (_471 * _368));
            _482 = mad(_471, _467, (-0.0f - (_368 * _472)));
            _483 = 1.0f / _479;
            _484 = 1.0f / _470;
            _485 = 1.0f / _482;
            _486 = _483 * mad(_472, _462, (_471 * _454));
            _487 = _484 * mad(_459, _456, (-0.0f - (_458 * _460)));
            _488 = _485 * mad(_471, _462, (-0.0f - (_454 * _472)));
            _492 = abs(_483) * _452;
            _493 = abs(_484) * _452;
            _494 = abs(_485) * _452;
            _498 = (-0.0f - _486) - _492;
            _499 = (-0.0f - _487) - _493;
            _500 = (-0.0f - _488) - _494;
            _505 = max(max(_498, _499), _500);
            _507 = min(min((_492 - _486), (_493 - _487)), (_494 - _488));
            _540 = (select((_498 < _499), 0.0f, 1.0f) * float((int)(((int)(uint)((int)(_479 < 0.0f))) - ((int)(uint)((int)(_479 > 0.0f)))))) * select((_498 < _500), 0.0f, 1.0f);
            _542 = (select((_499 < _498), 0.0f, 1.0f) * float((int)(((int)(uint)((int)(_470 < 0.0f))) - ((int)(uint)((int)(_470 > 0.0f)))))) * select((_499 < _500), 0.0f, 1.0f);
            _543 = (select((_500 < _498), 0.0f, 1.0f) * float((int)(((int)(uint)((int)(_482 < 0.0f))) - ((int)(uint)((int)(_482 > 0.0f)))))) * select((_500 < _499), 0.0f, 1.0f);
            _544 = -0.0f - _447;
            _545 = cos(_544);
            _546 = sin(_544);
            _548 = mad(_546, _542, (_543 * _545));
            _549 = -0.0f - _546;
            _551 = mad(_545, _542, (_543 * _549));
            _553 = mad(_546, _551, (_548 * _545));
            _555 = mad(_545, _551, (_548 * _549));
            _556 = -0.0f - _449;
            _557 = cos(_556);
            _558 = sin(_556);
            _560 = mad(_558, _553, (_557 * _540));
            _563 = mad(_557, _553, (-0.0f - (_540 * _558)));
            _565 = mad(_558, _563, (_560 * _557));
            _568 = mad(_557, _563, (-0.0f - (_558 * _560)));
            _572 = select(((_505 > _507) || (_507 < 0.0f)), 0.0f, _505);
            if (_572 > 0.0f) {
              _608 = (_572 * _125) + _viewPos.x;
              _609 = (_572 * _126) + _viewPos.y;
              _610 = (_572 * _127) + _viewPos.z;
              _611 = WaveReadLaneFirst(_materialIndex);
              _621 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_611 < (uint)170000), _611, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.x);
              _622 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_611 < (uint)170000), _611, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.y);
              _623 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_611 < (uint)170000), _611, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.z);
              _625 = rsqrt(dot(float3(_621, _622, _623), float3(_621, _622, _623)));  // [sem: invLength]
              _631 = max(dot(float3((_625 * _621), (_625 * _622), (_625 * _623)), float3(_565, _555, _568)), 0.05000000074505806f) * 0.009999999776482582f;
              _632 = WaveReadLaneFirst(_materialIndex);
              _642 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_632 < (uint)170000), _632, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.x);
              _643 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_632 < (uint)170000), _632, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.y);
              _644 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_632 < (uint)170000), _632, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.z);
              _669 = max(0.0f, _555);
              _673 = _134 - _608;
              _674 = _135 - _609;
              _675 = _136 - _610;
              _677 = rsqrt(dot(float3(_673, _674, _675), float3(_673, _674, _675)));  // [sem: invLength]
              _678 = _677 * _673;
              _679 = _677 * _674;
              _680 = _677 * _675;
              _686 = sqrt(((_673 * _673) + (_674 * _674)) + (_675 * _675));
              _687 = _686 * _686;
              _694 = -0.0f - _678;
              _695 = -0.0f - _679;
              _696 = -0.0f - _680;
              _698 = dot(float3(_694, _695, _696), float3(_565, _555, _568)) * 2.0f;
              _713 = _608 - (_125 * 0.009999999776482582f);
              _714 = _609 - (_126 * 0.009999999776482582f);
              _715 = _610 - (_127 * 0.009999999776482582f);
              if (_357) {
                _725 = ((exp2(log2(_48 * 5.0f) * 2.200000047683716f) * (_356 + -0.009999999776482582f)) + 0.009999999776482582f);
              } else {
                _725 = _356;
              }
              _726 = _725 * _678;
              _727 = _725 * _680;
              _728 = floor(_713);
              _729 = floor(_714);
              _730 = floor(_715);
              _731 = 1.0f / _726;
              _732 = 1.0f / _679;
              _733 = 1.0f / _727;
              _749 = float((int)(((int)(uint)((int)(_726 > 0.0f))) - ((int)(uint)((int)(_726 < 0.0f)))));
              _750 = float((int)(((int)(uint)((int)(_679 > 0.0f))) - ((int)(uint)((int)(_679 < 0.0f)))));
              _751 = float((int)(((int)(uint)((int)(_727 > 0.0f))) - ((int)(uint)((int)(_727 < 0.0f)))));
              if (_393) {
                _770 = saturate(_49);  // [sem: _49_sat]
                _784 = (max((5.0f - (_354 * 5.300000190734863f)), 0.0f) * _351);
                _785 = (((_770 * _770) * _392) * (3.0f - (_770 * 2.0f)));
                _786 = 64;
              } else {
                if (_49 > 0.9998999834060669f) {
                  _784 = 0.0f;
                  _785 = _392;
                  _786 = 0;
                } else {
                  _784 = _351;
                  _785 = _392;
                  _786 = 64;
                }
              }
              if (!(_786 == 0)) {
                _791 = _728;
                _792 = _729;
                _793 = _730;
                _794 = ((((0.5f - _713) + _728) + (_749 * 0.5f)) * _731);
                _795 = (_732 * (((0.5f - _714) + (_750 * 0.5f)) + _729));
                _796 = ((((0.5f - _715) + _730) + (_751 * 0.5f)) * _733);
                _797 = 0;
                while(true) {
                  _798 = _713 - _791;
                  _799 = _715 - _793;
                  bool __branch_chain_790;
                  if (!(dot(float2(_798, _799), float2(_798, _799)) > (_784 * _784))) {
                    __branch_chain_790 = true;
                  } else {
                    _806 = frac(_791 * 0.1031000018119812f);
                    _807 = frac(_792 * 0.1031000018119812f);
                    _808 = frac(_793 * 0.1031000018119812f);
                    _812 = dot(float3(_806, _807, _808), float3((_807 + 19.190000534057617f), (_808 + 19.190000534057617f), (_806 + 19.190000534057617f)));
                    _818 = frac(((_807 + _806) + (_812 * 2.0f)) * (_812 + _808));
                    if (!(_818 > 0.8999999761581421f)) {
                      __branch_chain_790 = true;
                    } else {
                      _822 = (_793 + _time.x) + _818;
                      _824 = (_822 * 2.0f) + _792;
                      _827 = min(max((_818 * 0.5f), 0.10000000149011612f), _785);
                      _829 = (_713 + -0.5f) - _791;
                      _831 = (_714 + -0.5f) - _792;
                      _833 = (_715 + -0.5f) - _793;
                      _834 = cos(_822);
                      _835 = sin(_822);
                      _837 = mad(_835, _831, (_834 * _833));
                      _842 = mad(_835, _679, (_834 * _727));
                      _846 = cos(_824);
                      _847 = sin(_824);
                      _858 = 1.0f / mad(_847, _842, (_846 * _726));
                      _859 = 1.0f / mad(_834, _679, (-0.0f - (_727 * _835)));
                      _860 = 1.0f / mad(_846, _842, (-0.0f - (_726 * _847)));
                      _861 = _858 * mad(_847, _837, (_846 * _829));
                      _862 = _859 * mad(_834, _831, (-0.0f - (_833 * _835)));
                      _863 = _860 * mad(_846, _837, (-0.0f - (_829 * _847)));
                      _867 = abs(_858) * _827;
                      _868 = abs(_859) * _827;
                      _869 = abs(_860) * _827;
                      _880 = max(max(((-0.0f - _861) - _867), ((-0.0f - _862) - _868)), ((-0.0f - _863) - _869));
                      _882 = min(min((_867 - _861), (_868 - _862)), (_869 - _863));
                      _886 = select(((_880 > _882) || (_882 < 0.0f)), 0.0f, _880);
                      if (!(_886 > 0.0f)) {
                        __branch_chain_790 = true;
                      } else {
                        __branch_chain_790 = false;
                      }
                    }
                  }
                  if (__branch_chain_790) {
                    _902 = (select((_795 < _794), 0.0f, 1.0f) * _749) * select((_796 < _794), 0.0f, 1.0f);
                    _904 = (select((_794 < _795), 0.0f, 1.0f) * _750) * select((_796 < _795), 0.0f, 1.0f);
                    _906 = (select((_794 < _796), 0.0f, 1.0f) * _751) * select((_795 < _796), 0.0f, 1.0f);
                    _910 = (_902 * _731) + _794;
                    _911 = (_904 * _732) + _795;
                    _912 = (_906 * _733) + _796;
                    _913 = _902 + _791;
                    _914 = _904 + _792;
                    _915 = _906 + _793;
                    _916 = _797 + 1;
                    if ((uint)_916 < (uint)_786) {
                      _791 = _913;
                      _792 = _914;
                      _793 = _915;
                      _794 = _910;
                      _795 = _911;
                      _796 = _912;
                      _797 = _916;
                      continue;
                    } else {
                      _922 = false;
                    }
                  } else {
                    _922 = (_886 < _686);
                  }
                  break;
                }
              } else {
                _922 = false;
              }
              _923 = select(_922, 0.0f, 1.0f);
              _924 = WaveReadLaneFirst(_materialIndex);
              _934 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_924 < (uint)170000), _924, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.x);
              _935 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_924 < (uint)170000), _924, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.y);
              _936 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_924 < (uint)170000), _924, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.z);
              _961 = dot(float3(_678, _679, _680), float3(_565, _555, _568));
              _963 = max(_961, 0.05000000074505806f) * (1.0f / ((_687 * 0.05000000074505806f) + 1.0f));
              _969 = 1.0f / ((_687 * 0.10000000149011612f) + 1.0f);
              _971 = max(_961, 0.009999999776482582f) * _969;
              _972 = _971 * 0.07323896884918213f;
              _980 = _969 * exp2(log2(max(dot(float3((_694 - (_698 * _565)), (_695 - (_698 * _555)), (_696 - (_698 * _568))), float3((-0.0f - _125), (-0.0f - _126), (-0.0f - _127))), 0.0f)) * 10.0f);
              _991 = (((_time.x * 50.0f) * exp2(log2(2.0f - _48) * 0.45454543828964233f)) + _609) * 0.019999999552965164f;
              _995 = frac(abs(_991));
              _1000 = select(((select((_991 >= (-0.0f - _991)), _995, (-0.0f - _995)) * 50.0f) > 2.0f), 0.0f, 1.0f);
              _1005 = (_572 * 0.10000000149011612f) + 1.0f;
              _1023 = _572;
              _1024 = (((((_669 * select((_642 < 0.040449999272823334f), (_642 * 0.07739938050508499f), exp2(log2((_642 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _631) + (_980 * 0.13286834955215454f)) + ((_972 + (_963 * select((_934 < 0.040449999272823334f), (_934 * 0.07739938050508499f), exp2(log2((_934 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) * _923)) + ((_1000 * 0.05000000074505806f) / _1005));
              _1025 = (((((_669 * select((_643 < 0.040449999272823334f), (_643 * 0.07739938050508499f), exp2(log2((_643 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _631) + (_980 * 0.21404112875461578f)) + ((_972 + (_963 * select((_935 < 0.040449999272823334f), (_935 * 0.07739938050508499f), exp2(log2((_935 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) * _923)) + ((_1000 * 0.10000000149011612f) / _1005));
              _1026 = (((((select((_644 < 0.040449999272823334f), (_644 * 0.07739938050508499f), exp2(log2((_644 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) * _669) + _631) + (_980 * 0.4479884207248688f)) + (((_971 * 0.21404112875461578f) + (_963 * select((_936 < 0.040449999272823334f), (_936 * 0.07739938050508499f), exp2(log2((_936 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) * _923)) + ((_1000 * 0.20000000298023224f) / _1005));
              _1027 = _572;
            } else {
              _588 = (select((_420 < _419), 0.0f, 1.0f) * _382) * select((_421 < _419), 0.0f, 1.0f);
              _590 = (select((_419 < _420), 0.0f, 1.0f) * _159) * select((_421 < _420), 0.0f, 1.0f);
              _592 = (select((_419 < _421), 0.0f, 1.0f) * _383) * select((_420 < _421), 0.0f, 1.0f);
              _596 = (_588 * _370) + _419;
              _597 = (_590 * _141) + _420;
              _598 = (_592 * _371) + _421;
              _599 = _588 + _416;
              _600 = _590 + _417;
              _601 = _592 + _418;
              _602 = _422 + 1;
              if ((uint)_602 < (uint)_411) {
                _416 = _599;
                _417 = _600;
                _418 = _601;
                _419 = _596;
                _420 = _597;
                _421 = _598;
                _422 = _602;
                continue;
              } else {
                _1023 = -1.0f;
                _1024 = 0.0f;
                _1025 = 0.0f;
                _1026 = 0.0f;
                _1027 = 50.0f;
              }
            }
          } else {
            _588 = (select((_420 < _419), 0.0f, 1.0f) * _382) * select((_421 < _419), 0.0f, 1.0f);
            _590 = (select((_419 < _420), 0.0f, 1.0f) * _159) * select((_421 < _420), 0.0f, 1.0f);
            _592 = (select((_419 < _421), 0.0f, 1.0f) * _383) * select((_420 < _421), 0.0f, 1.0f);
            _596 = (_588 * _370) + _419;
            _597 = (_590 * _141) + _420;
            _598 = (_592 * _371) + _421;
            _599 = _588 + _416;
            _600 = _590 + _417;
            _601 = _592 + _418;
            _602 = _422 + 1;
            if ((uint)_602 < (uint)_411) {
              _416 = _599;
              _417 = _600;
              _418 = _601;
              _419 = _596;
              _420 = _597;
              _421 = _598;
              _422 = _602;
              continue;
            } else {
              _1023 = -1.0f;
              _1024 = 0.0f;
              _1025 = 0.0f;
              _1026 = 0.0f;
              _1027 = 50.0f;
            }
          }
        } else {
          _588 = (select((_420 < _419), 0.0f, 1.0f) * _382) * select((_421 < _419), 0.0f, 1.0f);
          _590 = (select((_419 < _420), 0.0f, 1.0f) * _159) * select((_421 < _420), 0.0f, 1.0f);
          _592 = (select((_419 < _421), 0.0f, 1.0f) * _383) * select((_420 < _421), 0.0f, 1.0f);
          _596 = (_588 * _370) + _419;
          _597 = (_590 * _141) + _420;
          _598 = (_592 * _371) + _421;
          _599 = _588 + _416;
          _600 = _590 + _417;
          _601 = _592 + _418;
          _602 = _422 + 1;
          if ((uint)_602 < (uint)_411) {
            _416 = _599;
            _417 = _600;
            _418 = _601;
            _419 = _596;
            _420 = _597;
            _421 = _598;
            _422 = _602;
            continue;
          } else {
            _1023 = -1.0f;
            _1024 = 0.0f;
            _1025 = 0.0f;
            _1026 = 0.0f;
            _1027 = 50.0f;
          }
        }
        break;
      }
    } else {
      _1023 = -1.0f;
      _1024 = 0.0f;
      _1025 = 0.0f;
      _1026 = 0.0f;
      _1027 = 50.0f;
    }
    _1028 = WaveReadLaneFirst(_materialIndex);
    _1038 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1028 < (uint)170000), _1028, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.x);
    _1039 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1028 < (uint)170000), _1028, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.y);
    _1040 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1028 < (uint)170000), _1028, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.z);
    _1068 = exp2(log2(_1027 * 0.019999999552965164f) * 6.0f);
    _1078 = ((_1068 * (select((_1038 < 0.040449999272823334f), (_1038 * 0.07739938050508499f), exp2(log2((_1038 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) - _1024)) + _1024) * 1.2000000476837158f;
    _1079 = ((_1068 * (select((_1039 < 0.040449999272823334f), (_1039 * 0.07739938050508499f), exp2(log2((_1039 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) - _1025)) + _1025) * 1.2000000476837158f;
    _1080 = ((_1068 * (select((_1040 < 0.040449999272823334f), (_1040 * 0.07739938050508499f), exp2(log2((_1040 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) - _1026)) + _1026) * 1.2000000476837158f;
    _1081 = WaveReadLaneFirst(_materialIndex);
    _1091 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1081 < (uint)170000), _1081, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.x);
    _1092 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1081 < (uint)170000), _1081, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.y);
    _1093 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1081 < (uint)170000), _1081, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.z);
    _1122 = WaveReadLaneFirst(_materialIndex);
    _1130 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1122 < (uint)170000), _1122, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowRadius);
    _1131 = _1130 * ((sin(_time.x * 5.0f) * 0.050000011920928955f) + 0.949999988079071f);
    _1132 = _viewPos.x - _134;
    _1133 = _viewPos.y - _135;
    _1134 = _viewPos.z - _136;
    _1135 = dot(float3(_1132, _1133, _1134), float3(_125, _126, _127));
    _1140 = (_1135 * _1135) - (dot(float3(_1132, _1133, _1134), float3(_1132, _1133, _1134)) - (_1131 * _1131));
    if (!(_1140 < 0.0f)) {
      _1147 = ((-0.0f - _1135) - sqrt(_1140));
    } else {
      _1147 = 0.0f;
    }
    if ((_1147 > 0.0f) && (_1147 < _1027)) {
      _1152 = 50.0f / _1131;
      _1153 = _1132 / _1131;
      _1154 = _1133 / _1131;
      _1155 = _1134 / _1131;
      _1156 = dot(float3(_125, _126, _127), float3(_1153, _1154, _1155));
      _1158 = dot(float3(_1153, _1154, _1155), float3(_1153, _1154, _1155)) + -1.0f;
      _1160 = (_1156 * _1156) - _1158;
      if (!(_1160 < 0.0f)) {
        _1163 = sqrt(_1160);
        _1165 = (-0.0f - _1156) - _1163;
        _1166 = _1163 - _1156;
        if (!((_1166 < 0.0f) || (_1165 > _1152))) {
          _1171 = max(_1165, 0.0f);
          _1172 = min(_1166, _1152);
          _1185 = ((((-0.0f - _1158) - (_1172 * _1156)) + ((_1172 * _1172) * -0.3333333432674408f)) * _1172) + (((((_1171 * 0.3333333432674408f) + _1156) * _1171) + _1158) * _1171);
          _1186 = _1185 * 0.75f;
          if (_1186 > 0.0f) {
            _1189 = _1186 * _1186;
            _1191 = _1186 * (_1189 * _1189);
            _1192 = _1191 * _1191;
            _1194 = (_1192 * _1192) * 5.0f;
            _1198 = _1186 * _1185;
            _1200 = _1198 * 0.22500000894069672f;
            _1208 = (((_1194 * select((_1091 < 0.040449999272823334f), (_1091 * 0.07739938050508499f), exp2(log2((_1091 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _1078) + (_1198 * 0.07500000298023224f));
            _1209 = (((_1194 * select((_1092 < 0.040449999272823334f), (_1092 * 0.07739938050508499f), exp2(log2((_1092 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _1079) + _1200);
            _1210 = (((_1194 * select((_1093 < 0.040449999272823334f), (_1093 * 0.07739938050508499f), exp2(log2((_1093 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _1080) + _1200);
          } else {
            _1208 = _1078;
            _1209 = _1079;
            _1210 = _1080;
          }
        } else {
          _1208 = _1078;
          _1209 = _1079;
          _1210 = _1080;
        }
      } else {
        _1208 = _1078;
        _1209 = _1079;
        _1210 = _1080;
      }
    } else {
      _1208 = _1078;
      _1209 = _1079;
      _1210 = _1080;
    }
    _1214 = WaveReadLaneFirst(_materialIndex);
    _1222 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1214 < (uint)170000), _1214, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._tunnelTotal);
    _1260 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y;
    _1261 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y;
    _1262 = _1260 * 1.5f;
    _1263 = _1261 * 1.5f;
    _1267 = sqrt((_1263 * _1263) + (_1262 * _1262));
    _1279 = frac((sin((_1261 * 0.15000000596046448f) + (_1260 * 25.5f)) * 10000.0f) * (abs(sin((_1261 * 19.5f) + _1262)) + 0.10000000149011612f));
    _1282 = _time.x * 0.5f;
    _1283 = (_1260 * 22.5f) + _1282;
    _1284 = (_1261 * 22.5f) + _1282;
    _1285 = floor(_1283);
    _1286 = floor(_1284);
    _1287 = frac(_1283);
    _1288 = frac(_1284);
    _1289 = _1285 * 17.0f;
    _1290 = _1286 * 0.10000000149011612f;
    _1294 = _1286 * 13.0f;
    _1300 = frac((sin(_1290 + _1289) * 10000.0f) * (abs(sin(_1294 + _1285)) + 0.10000000149011612f));
    _1301 = _1285 + 1.0f;
    _1302 = _1301 * 17.0f;
    _1311 = frac((sin(_1302 + _1290) * 10000.0f) * (abs(sin(_1294 + _1301)) + 0.10000000149011612f));
    _1312 = _1286 + 1.0f;
    _1313 = _1312 * 0.10000000149011612f;
    _1317 = _1312 * 13.0f;
    _1339 = (_1287 * _1287) * (3.0f - (_1287 * 2.0f));
  // [sem: blended]
    _1351 = (lerp(_1300, _1311, _1339)) + (((_1288 * _1288) * (3.0f - (_1288 * 2.0f))) * (((frac((sin(_1313 + _1302) * 10000.0f) * (abs(sin(_1317 + _1301)) + 0.10000000149011612f)) - _1311) * _1339) + ((frac((sin(_1313 + _1289) * 10000.0f) * (abs(sin(_1317 + _1285)) + 0.10000000149011612f)) - _1300) * (1.0f - _1339))));
    _1352 = WaveReadLaneFirst(_materialIndex);
    _1360 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1352 < (uint)170000), _1352, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._anamorphicWidth);
    _1362 = (_1360 * 0.8999999761581421f) + 0.10999999940395355f;
    _1366 = saturate((_1267 - _1362) / (-0.0f - _1362));  // [sem: expr_sat]
    _1372 = saturate((cos(_1262) * 0.4000000059604645f) + -1.0f);  // [sem: expr_sat]
    _1376 = (_1372 * _1372) * (3.0f - (_1372 * 2.0f));
    _1384 = saturate(((abs(_1376 + _1263) + -0.03999999910593033f) + abs(_1263 - _1376)) * -25.0f);  // [sem: expr_sat]
    _1387 = _1366 * _1384;
    _1390 = ((3.0f - (_1384 * 2.0f)) * (3.0f - (_1366 * 2.0f))) * (_1387 * _1387);
    _1392 = (_1360 * 0.5f) + 0.11999999731779099f;
    _1393 = _1262 + -0.07999999821186066f;
    _1394 = _1263 + 0.004999999888241291f;
    _1402 = saturate((sqrt((_1394 * _1394) + (_1393 * _1393)) - _1392) / (-0.0f - _1392));  // [sem: expr_sat]
    _1408 = saturate((cos(_1393) * 0.4000000059604645f) + -1.0f);  // [sem: expr_sat]
    _1412 = (_1408 * _1408) * (3.0f - (_1408 * 2.0f));
    _1420 = saturate(((abs(_1412 + _1394) + -0.017999999225139618f) + abs(_1394 - _1412)) * -55.55555725097656f);  // [sem: expr_sat]
    _1423 = _1402 * _1420;
    _1426 = ((3.0f - (_1420 * 2.0f)) * (3.0f - (_1402 * 2.0f))) * (_1423 * _1423);
    _1428 = (_1360 * 0.699999988079071f) + 0.12999999523162842f;
    _1429 = _1262 + 0.09000000357627869f;
    _1430 = _1263 + -0.004999999888241291f;
    _1438 = saturate((sqrt((_1430 * _1430) + (_1429 * _1429)) - _1428) / (-0.0f - _1428));  // [sem: expr_sat]
    _1444 = saturate((cos(_1429) * 0.4000000059604645f) + -1.0f);  // [sem: expr_sat]
    _1448 = (_1444 * _1444) * (3.0f - (_1444 * 2.0f));
    _1456 = saturate(((abs(_1448 + _1430) + -0.014299999922513962f) + abs(_1430 - _1448)) * -69.93006896972656f);  // [sem: expr_sat]
    _1459 = _1438 * _1456;
    _1463 = _1260 * 2.25f;
    _1464 = _1261 * 2.25f;
    _1467 = (_1351 * 0.07999999821186066f) + 0.15000000596046448f;
    _1471 = saturate((abs(_1464) - _1467) / (-0.0f - _1467));  // [sem: expr_sat]
    _1475 = sqrt((_1464 * _1464) + (_1463 * _1463));
    _1478 = saturate((_1475 + -0.800000011920929f) * -0.7692307829856873f);  // [sem: expr_sat]
    _1492 = max(0.8999999761581421f, frac(frac((sin(_time.x * 8.550000190734863f) * 10000.0f) * (abs(sin(_time.x * 7.0f)) + 0.10000000149011612f)))) * 0.07999999821186066f;
    _1497 = saturate(((_1475 + -0.10000000149011612f) - _1492) / (-0.12000000476837158f - _1492));  // [sem: expr_sat]
    _1508 = saturate(((abs(_1463) * abs(_1261 * 1.6875f)) + -0.07000000029802322f) * -5.882352828979492f);  // [sem: expr_sat]
    _1512 = (_1471 * _1478) * _1508;
    _1518 = (((3.0f - (_1478 * 2.0f)) * (15.0f - (_1471 * 10.0f))) * (3.0f - (_1508 * 2.0f))) * (_1512 * _1512);
    _1522 = _1351 * -0.014999999664723873f;
    _1523 = _1522 + (_1260 * 2.8499999046325684f);
    _1524 = _1522 + (_1261 * 2.8499999046325684f);
    _1528 = sqrt((_1523 * _1523) + (_1524 * _1524));
    _1531 = saturate((_1528 + -1.0f) * -1.4285714626312256f);  // [sem: expr_sat]
    _1539 = saturate(((((_1531 * _1531) * _1528) * (3.0f - (_1531 * 2.0f))) + -0.10000000149011612f) * 2.5f);  // [sem: expr_sat]
    _1543 = atan(_1263 / _1262);
    _1546 = (_1262 < 0.0f);
    _1547 = (_1262 == 0.0f);
    _1548 = (_1263 >= 0.0f);
    _1549 = (_1263 < 0.0f);
    _1564 = atan(_1263 / (-0.0f - _1262));
    _1567 = (_1262 > -0.0f);
    _1568 = (_1262 == -0.0f);
    _1585 = saturate(-0.0f - (_1267 + -1.0f));  // [sem: expr_sat]
    _1590 = WaveReadLaneFirst(_materialIndex);
    _1598 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1590 < (uint)170000), _1590, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._blubIntensity);
    _1611 = WaveReadLaneFirst(_materialIndex);
    _1619 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1611 < (uint)170000), _1611, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._middleHaloIntensity);
    _1622 = (((lerp(_1279, 1.0f, 0.9700000286102295f)) * 0.8999999761581421f) * exp2(log2(((abs(sin(select((_1568 && _1548), 1.3566371202468872f, select((_1568 && _1549), -1.1566370725631714f, ((select((_1567 && _1549), (_1564 + -3.1415927410125732f), select((_1567 && _1548), (_1564 + 3.1415927410125732f), _1564)) * 0.800000011920929f) + 0.10000000149011612f))))) + abs(sin(select((_1547 && _1548), 1.2995574474334717f, select((_1547 && _1549), -0.8995574116706848f, ((select((_1546 && _1549), (_1543 + -3.1415927410125732f), select((_1546 && _1548), (_1543 + 3.1415927410125732f), _1543)) * 0.699999988079071f) + 0.20000000298023224f)))))) * 0.5f) * (((_1585 * _1585) * (3.0f - (_1585 * 2.0f))) - ((((_1539 * _1539) * 0.4000000059604645f) * (3.0f - (_1539 * 2.0f))) * _1598))) * 2.5f)) * _1619;
    _1644 = WaveReadLaneFirst(_materialIndex);
    _1652 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1644 < (uint)170000), _1644, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerpoint);
    _1653 = WaveReadLaneFirst(_materialIndex);
    _1661 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1653 < (uint)170000), _1653, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._streakGlowIntensity);
    _1662 = (_1518 * _1518) * _1661;
    _1665 = ((_1497 * _1497) * (3.0f - (_1497 * 2.0f))) * _1652;
    _1671 = exp2(log2(_1665 * 1.2000000476837158f) * 5.0f);
    _1676 = exp2(log2(_1665 * 1.100000023841858f) * 24.0f);
    _1686 = _1671 + (_1665 * 0.20000000298023224f);
    _1688 = (_1662 * 0.04965713247656822f) + (_1390 * 0.010022826492786407f);
    _1694 = (((3.0f - (_1456 * 2.0f)) * (3.0f - (_1438 * 2.0f))) * (_1459 * _1459)) + _1426;
    _1716 = WaveReadLaneFirst(_materialIndex);
    _1724 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_1716 < (uint)170000), _1716, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._anamorphicIntensity);
    _1734 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather]
    _1750 = __3__36__0__0__g_CustomRenderPassValue.GatherRed(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - (_customRenderPassSizeInvSize.z * 0.5f)), (TEXCOORD.y - (_customRenderPassSizeInvSize.w * 0.5f))));
    _1755 = _1750.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1756 = _1750.y & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1757 = _1750.z & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1758 = _1750.w & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    if ((_1755 == _renderPassSelfPlayer) | (_1755 == _renderPassTest)) {
      if ((_1756 == _renderPassSelfPlayer) | (_1756 == _renderPassTest)) {
        if ((_1757 == _renderPassSelfPlayer) | (_1757 == _renderPassTest)) {
          if (!(_1758 == _renderPassSelfPlayer)) {
            _1785 = (_1758 == _renderPassTest);
          } else {
            _1785 = true;
          }
        } else {
          _1785 = false;
        }
      } else {
        _1785 = false;
      }
    } else {
      _1785 = false;
    }
    _1787 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _1797 = (pow(_1787.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1798 = (pow(_1787.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1799 = (pow(_1787.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1827 = 10000.0f - (saturate(_354 * 7.0f) * 9950.0f);
    _1828 = _1827 * exp2(log2(max(0.0f, (_1797 + -0.8359375f)) / (18.8515625f - (_1797 * 18.6875f))) * 6.277394771575928f);
    _1829 = _1827 * exp2(log2(max(0.0f, (_1798 + -0.8359375f)) / (18.8515625f - (_1798 * 18.6875f))) * 6.277394771575928f);
    _1830 = _1827 * exp2(log2(max(0.0f, (_1799 + -0.8359375f)) / (18.8515625f - (_1799 * 18.6875f))) * 6.277394771575928f);
    if (!_1785) {
      _1834 = saturate(_1023);  // [sem: _1023_sat]
    } else {
      _1834 = 0.0f;  // [sem: _1023_sat]
    }
    _1841 = (_1834 * (max(0.0f, (_1734 * (((_1222 * saturate(_1208)) + ((_322 * 0.5f) * _333)) + (_1724 * exp2(log2(((((_1688 + (_1426 * 0.033104754984378815f)) + (((_1622 * 0.16689524054527283f) + 0.033104754984378815f) * _1622)) + _1676) + (_1686 * 0.07323896884918213f)) * 2.0f)))))) - _1828)) + _1828;
    _1842 = (_1834 * (max(0.0f, (_1734 * (((_1222 * saturate(_1209)) + ((_323 * 0.699999988079071f) * _333)) + (_1724 * exp2(log2(((((_1688 + (_1694 * 0.033104754984378815f)) + ((0.07323896884918213f - (_1622 * 0.02323896810412407f)) * _1622)) + _1676) + (_1686 * 0.21404112875461578f)) * 2.0f)))))) - _1829)) + _1829;
    _1843 = (_1834 * (max(0.0f, (_1734 * (((_1222 * saturate(_1210)) + ((_324 * 0.8999999761581421f) * _333)) + (_1724 * exp2(log2((((((((_1694 * 0.07323896884918213f) + (_1390 * 0.033104754984378815f)) + ((0.13286834955215454f - (_1622 * 0.08286835253238678f)) * _1622)) + (_1665 * 0.06370936334133148f)) + (_1662 * 0.1098584532737732f)) + (_1671 * 0.6038274168968201f)) + _1676) * 2.0f)))))) - _1830)) + _1830;
    if (!_1785) {
      _1847 = saturate(_1023);  // [sem: _1023_sat]
    } else {
      _1847 = 1.0f;  // [sem: _1023_sat]
    }
    _1848 = uint(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _1861 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _1848, 0)))).x) & 127)))) + 0.5f);
    } else {
      _1861 = _1847;
    }
    _1864 = (_localToneMappingParams.w > 0.0f);
    if (_1864) {
      // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
      // Description: HDR/PQ output permutation of a PostProcessMaterial screen-effect composite (hash 0x425E0320, PostProcessAbyssEnterGlid variant per its bindless parameter struct) that statically inlines the game's full final pipeline including the vanilla tonemap and can own the visible final output while its screen effect plays, so an unreplaced curve would render the whole screen with vanilla colors (flat/grey versus the RenoDX look) for the effect's duration. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1841, _1842, _1843));
      _2122 = _rndx_tonemapped_color.x;
      _2123 = _rndx_tonemapped_color.y;
      _2124 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2130 = 1.0f - abs(_etcParams.w);
        _2134 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2135 = (_2130 * _2122) + _2134;
        _2136 = (_2130 * _2123) + _2134;
        _2137 = (_2130 * _2124) + _2134;
        if (_colorGradingParams.w > 0.0f) {
          _2142 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2159 = (((max(0.0f, (1.0f - _2135)) - _2135) * _2142) + _2135);
          _2160 = (((max(0.0f, (1.0f - _2136)) - _2136) * _2142) + _2136);
          _2161 = (((max(0.0f, (1.0f - _2137)) - _2137) * _2142) + _2137);
        } else {
          _2159 = _2135;
          _2160 = _2136;
          _2161 = _2137;
        }
        _2167 = _userImageAdjust.y + 1.0f;
        _2171 = _userImageAdjust.x + 0.5f;
        _2172 = ((_2159 + -0.5f) * _2167) + _2171;
        _2173 = ((_2160 + -0.5f) * _2167) + _2171;
        _2174 = ((_2161 + -0.5f) * _2167) + _2171;
        _2204 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
        _2215 = exp2(log2(saturate(mad(_colorBlind0.z, _2174, mad(_colorBlind0.y, _2173, (_colorBlind0.x * _2172))))) * _2204);
        _2216 = exp2(log2(saturate(mad(_colorBlind1.z, _2174, mad(_colorBlind1.y, _2173, (_colorBlind1.x * _2172))))) * _2204);
        _2217 = exp2(log2(saturate(mad(_colorBlind2.z, _2174, mad(_colorBlind2.y, _2173, (_colorBlind2.x * _2172))))) * _2204);
      } else {
        _2215 = _2122;
        _2216 = _2123;
        _2217 = _2124;
      }
    } else {
      _2215 = _1841;
      _2216 = _1842;
      _2217 = _1843;
    }
    if (_etcParams.y > 1.0f) {
      _2224 = abs(_80);
      _2225 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _2229 = saturate(1.0f - (dot(float2(_2224, _2225), float2(_2224, _2225)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _2234 = (_2229 * _2215);
      _2235 = (_2229 * _2216);
      _2236 = (_2229 * _2217);
    } else {
      _2234 = _2215;
      _2235 = _2216;
      _2236 = _2217;
    }
    if (_1864 && (_etcParams.z > 0.0f)) {
      _2266 = select((_2234 <= 0.0031308000907301903f), (_2234 * 12.920000076293945f), (((pow(_2234, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2267 = select((_2235 <= 0.0031308000907301903f), (_2235 * 12.920000076293945f), (((pow(_2235, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2268 = select((_2236 <= 0.0031308000907301903f), (_2236 * 12.920000076293945f), (((pow(_2236, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    } else {
      _2266 = _2234;
      _2267 = _2235;
      _2268 = _2236;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2273 = (float)((uint)_1848);
      if (!(_2273 < _viewDir.w)) {
        if (!(_2273 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2282 = _2266;
          _2283 = _2267;
          _2284 = _2268;
        } else {
          _2282 = 0.0f;
          _2283 = 0.0f;
          _2284 = 0.0f;
        }
      } else {
        _2282 = 0.0f;
        _2283 = 0.0f;
        _2284 = 0.0f;
      }
    } else {
      _2282 = _2266;
      _2283 = _2267;
      _2284 = _2268;
    }
    _2294 = exp2(log2(_2282 * 9.999999747378752e-05f) * 0.1593017578125f);
    _2295 = exp2(log2(_2283 * 9.999999747378752e-05f) * 0.1593017578125f);
    _2296 = exp2(log2(_2284 * 9.999999747378752e-05f) * 0.1593017578125f);
    SV_Target.x = exp2(log2((1.0f / ((_2294 * 18.6875f) + 1.0f)) * ((_2294 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2295 * 18.6875f) + 1.0f)) * ((_2295 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2296 * 18.6875f) + 1.0f)) * ((_2296 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _1861;
    break;
  }
  return SV_Target;
}
