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

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t30, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  float _earthRadius;
  float3 _sceneConstantDummy;
};

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
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
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
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
  uint _characterMeshEffectType : packoffset(c028.z);
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
  int _38;
  float _46;
  bool _47;
  bool _51;
  float _140;
  float _141;
  float _144;
  float _145;
  float _220;
  float _221;
  int _301;
  int _378;
  float _379;
  float _380;
  float _381;
  float _382;
  float _383;
  float _384;
  float _1071;
  float _1072;
  float _1073;
  float _1074;
  float _1075;
  float _1101;
  float _1102;
  float _1103;
  float _1104;
  float _1435;
  float _1436;
  float _1437;
  float _1438;
  float _1530;
  float _1531;
  float _1532;
  float _1533;
  float _1548;
  float _1753;
  float _1754;
  float _1755;
  float _1848;
  float _1849;
  float _1850;
  float _1904;
  float _1905;
  float _1906;
  float _1922;
  float _1923;
  float _1924;
  float _1954;
  float _1955;
  float _1956;
  float _1970;
  float _1971;
  float _1972;
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
  float _244;
  float _245;
  float _246;
  float _271;
  float _272;
  float _273;
  float4 _310;
  float _312;
  float _348;
  int _387;
  float _395;
  float _409;
  float _410;
  float _411;
  float _439;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  float _452;
  float _453;
  float _454;
  float _506;
  float _507;
  float _508;
  float _518;
  float _529;
  float _530;
  float _531;
  float _533;
  float _536;
  float _540;
  float _541;
  float _542;
  float _547;
  float4 _559;
  float4 _571;
  uint _591;
  uint _592;
  uint4 _594;
  float4 _597;
  float _615;
  float _616;
  float _617;
  float _619;
  float _620;
  float _621;
  float _622;
  float _625;
  float _626;
  float _629;
  float _630;
  float _634;
  float _636;
  float _637;
  float _638;
  float _639;
  float _641;
  float _644;
  float _645;
  float _646;
  float _647;
  float _656;
  float _660;
  float _664;
  float _666;
  float _676;
  float _681;
  float _695;
  float _704;
  int _708;
  int _716;
  float _719;
  float _722;
  float _724;
  float _757;
  float _775;
  float _776;
  float _777;
  float _778;
  float _779;
  float _780;
  float _781;
  float _782;
  float _788;
  float _789;
  float _790;
  float _809;
  uint _832;
  uint _833;
  uint4 _835;
  float4 _838;
  float _856;
  float _857;
  float _858;
  float _860;
  float _861;
  float _862;
  float _863;
  float _866;
  float _867;
  float _870;
  float _871;
  float _875;
  float _877;
  float _878;
  float _879;
  float _880;
  float _882;
  float _885;
  float _886;
  float _887;
  float _888;
  float _897;
  float _901;
  float _905;
  float _907;
  float _922;
  float _927;
  float _928;
  float _932;
  float4 _939;
  float _941;
  float _960;
  bool _975;
  float _1013;
  float4 _1018;
  float _1028;
  float _1029;
  float _1030;
  float _1052;
  float _1053;
  float _1054;
  float _1055;
  float _1056;
  float _1057;
  float _1065;
  float _1083;
  float _1084;
  float _1085;
  float _1108;
  float _1115;
  float4 _1128;
  float4 _1140;
  float _1146;
  float _1179;
  float _1180;
  float _1183;
  float _1184;
  float _1191;
  float _1194;
  float _1195;
  float _1206;
  float _1222;
  float _1223;
  float _1231;
  float _1235;
  float4 _1243;
  float _1253;
  float _1254;
  float _1255;
  float _1280;
  float _1281;
  float _1282;
  float _1283;
  float _1290;
  float _1293;
  float _1303;
  float _1304;
  float _1305;
  float _1315;
  float _1320;
  float _1337;
  float4 _1346;
  int _1351;
  int _1359;
  float4 _1366;
  float _1374;
  float _1376;
  float _1384;
  float _1397;
  float _1400;
  float _1401;
  float _1423;
  float _1443;
  float4 _1452;
  int _1465;
  int _1473;
  float _1484;
  float _1493;
  float _1496;
  float _1497;
  float _1512;
  float _1515;
  float _1518;
  uint _1535;
  bool _1551;
  float _1557;
  float _1606;
  float _1607;
  float _1608;
  float _1610;
  float _1617;
  float _1618;
  float _1619;
  float _1638;
  float _1639;
  float _1640;
  float _1641;
  float _1642;
  float _1643;
  float _1644;
  float _1645;
  float _1646;
  float _1692;
  float _1693;
  float _1694;
  float _1695;
  float _1696;
  float _1697;
  float _1698;
  float _1715;
  float _1716;
  float _1717;
  float _1718;
  float _1724;
  float _1727;
  float _1734;
  float _1735;
  float _1736;
  float _1765;
  float _1790;
  float _1791;
  float _1792;
  float _1811;
  float _1812;
  float _1813;
  float _1819;
  float _1823;
  float _1824;
  float _1825;
  float _1826;
  float _1831;
  float _1856;
  float _1860;
  float _1861;
  float _1862;
  float _1863;
  float _1893;
  float _1912;
  float _1913;
  float _1917;
  float _1961;
  float _1982;
  float _1983;
  float _1984;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_38 < (uint)170000), _38, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._itemRatio);
  _47 = (_46 >= 0.009999999776482582f);
  _51 = (abs(_temperatureWarning) >= 0.009999999776482582f);
  if (!(_47 || _51)) {
    if (true) discard;
  }
  _67 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _69 = (TEXCOORD.x * 2.0f) + -1.0f;
  _70 = TEXCOORD.y * 2.0f;
  _71 = 1.0f - _70;
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_72 < (uint)170000), _72, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  if (((_80 > 0.0010000000474974513f) || (_80 < -0.0010000000474974513f)) && (!_47)) {
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
  _158 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _144) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _145) + -0.5f)), 0)))).x) & 127;
  _159 = WaveReadLaneFirst(_materialIndex);
  _167 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_159 < (uint)170000), _159, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._noiseTex);
  if (((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_179.x, _179.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _194 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_179.x)))))) + 0.5f) * _144), int((float((int)(int(float((int)((int)(_179.y)))))) + 0.5f) * _145), 0));
    _196 = _194.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _204 = (((float)((uint)((uint)((uint)((uint)(_194.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _205 = (((float)((uint)((uint)(((uint)((uint)(_194.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
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
    _244 = (pow(_234.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _245 = (pow(_234.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _246 = (pow(_234.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _271 = exp2(log2(max(0.0f, (_244 + -0.8359375f)) / (18.8515625f - (_244 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _272 = exp2(log2(max(0.0f, (_245 + -0.8359375f)) / (18.8515625f - (_245 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _273 = exp2(log2(max(0.0f, (_246 + -0.8359375f)) / (18.8515625f - (_246 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    if (_196 == _renderPassDetectObjective) {
      _301 = _renderPassDetectRemoteCatch;
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
      _310 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _144), int(_customRenderPassSizeInvSize.y * _145), 0));
      _312 = max(1.0000000116860974e-07f, _310.x);
      _348 = mad((_invViewProj[2].w), _312, mad((_invViewProj[1].w), _71, ((_invViewProj[0].w) * _69))) + (_invViewProj[3].w);
      _378 = _301;
      _379 = ((mad((_invViewProj[2].x), _312, mad((_invViewProj[1].x), _71, ((_invViewProj[0].x) * _69))) + (_invViewProj[3].x)) / _348);
      _380 = ((mad((_invViewProj[2].y), _312, mad((_invViewProj[1].y), _71, ((_invViewProj[0].y) * _69))) + (_invViewProj[3].y)) / _348);
      _381 = ((mad((_invViewProj[2].z), _312, mad((_invViewProj[1].z), _71, ((_invViewProj[0].z) * _69))) + (_invViewProj[3].z)) / _348);
      _382 = _310.x;
      _383 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _144) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _145) + -0.5f)), 0)))).x) & 16777215)))) * 5.960465188081798e-08f);
      _384 = (1.0f - saturate(dot(float3(_229, _230, _231), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
    } else {
      bool __branch_chain_279;
      if (_196 == _renderPassDetectRemoteCatch) {
        _301 = _renderPassDetectRemoteCatch;
        __branch_chain_279 = true;
      } else {
        if ((_196 == _renderPassDetectPickedRemoteCatch) || (_196 == _renderPassKnowledgeNPC)) {
          _301 = _renderPassDetectRemoteCatch;
          __branch_chain_279 = true;
        } else {
          if ((_196 == _renderPassEnemy) || (_196 == _renderPassSelfPlayer)) {
            _301 = _renderPassDetectRemoteCatch;
            __branch_chain_279 = true;
          } else {
            if (_196 == _renderPassTest) {
              _301 = _renderPassDetectRemoteCatch;
              __branch_chain_279 = true;
            } else {
              _378 = _renderPassDetectRemoteCatch;
              _379 = 0.0f;
              _380 = 0.0f;
              _381 = 0.0f;
              _382 = 0.0f;
              _383 = 0.0f;
              _384 = 0.0f;
              __branch_chain_279 = false;
            }
          }
        }
      }
      if (__branch_chain_279) {
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
        _310 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _144), int(_customRenderPassSizeInvSize.y * _145), 0));
        _312 = max(1.0000000116860974e-07f, _310.x);
        _348 = mad((_invViewProj[2].w), _312, mad((_invViewProj[1].w), _71, ((_invViewProj[0].w) * _69))) + (_invViewProj[3].w);
        _378 = _301;
        _379 = ((mad((_invViewProj[2].x), _312, mad((_invViewProj[1].x), _71, ((_invViewProj[0].x) * _69))) + (_invViewProj[3].x)) / _348);
        _380 = ((mad((_invViewProj[2].y), _312, mad((_invViewProj[1].y), _71, ((_invViewProj[0].y) * _69))) + (_invViewProj[3].y)) / _348);
        _381 = ((mad((_invViewProj[2].z), _312, mad((_invViewProj[1].z), _71, ((_invViewProj[0].z) * _69))) + (_invViewProj[3].z)) / _348);
        _382 = _310.x;
        _383 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _144) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _145) + -0.5f)), 0)))).x) & 16777215)))) * 5.960465188081798e-08f);
        _384 = (1.0f - saturate(dot(float3(_229, _230, _231), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      }
    }
    bool __branch_chain_377;
    if (!(_196 == _378)) {
      __branch_chain_377 = true;
    } else {
      _387 = WaveReadLaneFirst(_materialIndex);
      _395 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_387 < (uint)170000), _387, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._itemRatio);
      if (!(_395 > 0.0010000000474974513f)) {
        __branch_chain_377 = true;
      } else {
        if ((!(_highLightForVision >= 0.0010000000474974513f)) && (!(_highLightForVisionRemoteCatch >= 0.0010000000474974513f))) {
          __branch_chain_377 = true;
        } else {
          __branch_chain_377 = false;
        }
      }
    }
    if (__branch_chain_377) {
      if (!(_196 == _renderPassDetectObjective) || ((_196 == _renderPassDetectObjective) && ((!(_highLightForVision >= 0.0010000000474974513f)) && (!(_highLightForVisionRemoteCatch >= 0.0010000000474974513f))))) {
        if (!(_196 == _renderPassKnowledgeNPC) || ((_196 == _renderPassKnowledgeNPC) && (!(_highLightForVision >= 0.0010000000474974513f)))) {
          _975 = (_196 == _renderPassSelfPlayer);
          if ((_975) | (((_196 == _renderPassTest) || (_196 == _renderPassEnemy)) || (_196 == _renderPassDetectPickedRemoteCatch))) {
            if ((_characterHighlight > 0.0010000000474974513f) || (_highLightForVisionRemoteCatch > 0.0010000000474974513f)) {
              if ((uint)_158 > (uint)10) {
                if ((uint)_158 < (uint)20) {
                  if (_158 == 11) {
                    _1013 = _384 * 0.02500000037252903f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
                    _1018 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1013 + _144), (_1013 + _145)));
                    _1028 = (pow(_1018.x, 0.012683313339948654f));
                    _1029 = (pow(_1018.y, 0.012683313339948654f));
                    _1030 = (pow(_1018.z, 0.012683313339948654f));
                    _1052 = exp2(log2(max(0.0f, (_1028 + -0.8359375f)) / (18.8515625f - (_1028 * 18.6875f))) * 6.277394771575928f);
                    _1053 = exp2(log2(max(0.0f, (_1029 + -0.8359375f)) / (18.8515625f - (_1029 * 18.6875f))) * 6.277394771575928f);
                    _1054 = exp2(log2(max(0.0f, (_1030 + -0.8359375f)) / (18.8515625f - (_1030 * 18.6875f))) * 6.277394771575928f);
                    _1055 = _1052 * 10000.0f;
                    _1056 = _1053 * 10000.0f;
                    _1057 = _1054 * 10000.0f;
                    if (!_975) {
                      if (!(_196 == _renderPassTest)) {
                        _1065 = _1053 * 6000.0f;
                        if (_196 == _renderPassEnemy) {
                          _1071 = _1055;
                          _1072 = _1065;
                          _1073 = (_1054 * 6000.0f);
                          _1074 = 10.0f;
                          _1075 = 1.0f;
                        } else {
                          _1071 = (_1052 * 5000.0f);
                          _1072 = _1065;
                          _1073 = _1057;
                          _1074 = 50.0f;
                          _1075 = 30.0f;
                        }
                      } else {
                        _1071 = _1055;
                        _1072 = _1056;
                        _1073 = _1057;
                        _1074 = 10.0f;
                        _1075 = 1.0f;
                      }
                    } else {
                      _1071 = _1055;
                      _1072 = _1056;
                      _1073 = _1057;
                      _1074 = 10.0f;
                      _1075 = 1.0f;
                    }
                    _1083 = _379 - _mainPosition.x;
                    _1084 = _380 - _mainPosition.y;
                    _1085 = _381 - _mainPosition.z;
                    _1101 = (((1.0f - saturate((sqrt(((_1083 * _1083) + (_1084 * _1084)) + (_1085 * _1085)) - _1075) / _1074)) * (1.0f - saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, _383)) + 0.5f) - (_nearFarProj.x / max(1.0000000116860974e-07f, _382)))))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                    _1102 = (_1071 * 1.5f);
                    _1103 = (_1072 * 1.5f);
                    _1104 = (_1073 * 1.5f);
                  } else {
                    _1101 = 0.0f;
                    _1102 = _271;
                    _1103 = _272;
                    _1104 = _273;
                  }
                } else {
                  if (!(_158 == 107)) {
                    _1013 = _384 * 0.02500000037252903f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
                    _1018 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1013 + _144), (_1013 + _145)));
                    _1028 = (pow(_1018.x, 0.012683313339948654f));
                    _1029 = (pow(_1018.y, 0.012683313339948654f));
                    _1030 = (pow(_1018.z, 0.012683313339948654f));
                    _1052 = exp2(log2(max(0.0f, (_1028 + -0.8359375f)) / (18.8515625f - (_1028 * 18.6875f))) * 6.277394771575928f);
                    _1053 = exp2(log2(max(0.0f, (_1029 + -0.8359375f)) / (18.8515625f - (_1029 * 18.6875f))) * 6.277394771575928f);
                    _1054 = exp2(log2(max(0.0f, (_1030 + -0.8359375f)) / (18.8515625f - (_1030 * 18.6875f))) * 6.277394771575928f);
                    _1055 = _1052 * 10000.0f;
                    _1056 = _1053 * 10000.0f;
                    _1057 = _1054 * 10000.0f;
                    if (!_975) {
                      if (!(_196 == _renderPassTest)) {
                        _1065 = _1053 * 6000.0f;
                        if (_196 == _renderPassEnemy) {
                          _1071 = _1055;
                          _1072 = _1065;
                          _1073 = (_1054 * 6000.0f);
                          _1074 = 10.0f;
                          _1075 = 1.0f;
                        } else {
                          _1071 = (_1052 * 5000.0f);
                          _1072 = _1065;
                          _1073 = _1057;
                          _1074 = 50.0f;
                          _1075 = 30.0f;
                        }
                      } else {
                        _1071 = _1055;
                        _1072 = _1056;
                        _1073 = _1057;
                        _1074 = 10.0f;
                        _1075 = 1.0f;
                      }
                    } else {
                      _1071 = _1055;
                      _1072 = _1056;
                      _1073 = _1057;
                      _1074 = 10.0f;
                      _1075 = 1.0f;
                    }
                    _1083 = _379 - _mainPosition.x;
                    _1084 = _380 - _mainPosition.y;
                    _1085 = _381 - _mainPosition.z;
                    _1101 = (((1.0f - saturate((sqrt(((_1083 * _1083) + (_1084 * _1084)) + (_1085 * _1085)) - _1075) / _1074)) * (1.0f - saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, _383)) + 0.5f) - (_nearFarProj.x / max(1.0000000116860974e-07f, _382)))))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                    _1102 = (_1071 * 1.5f);
                    _1103 = (_1072 * 1.5f);
                    _1104 = (_1073 * 1.5f);
                  } else {
                    _1101 = 0.0f;
                    _1102 = _271;
                    _1103 = _272;
                    _1104 = _273;
                  }
                }
              } else {
                _1013 = _384 * 0.02500000037252903f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
                _1018 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1013 + _144), (_1013 + _145)));
                _1028 = (pow(_1018.x, 0.012683313339948654f));
                _1029 = (pow(_1018.y, 0.012683313339948654f));
                _1030 = (pow(_1018.z, 0.012683313339948654f));
                _1052 = exp2(log2(max(0.0f, (_1028 + -0.8359375f)) / (18.8515625f - (_1028 * 18.6875f))) * 6.277394771575928f);
                _1053 = exp2(log2(max(0.0f, (_1029 + -0.8359375f)) / (18.8515625f - (_1029 * 18.6875f))) * 6.277394771575928f);
                _1054 = exp2(log2(max(0.0f, (_1030 + -0.8359375f)) / (18.8515625f - (_1030 * 18.6875f))) * 6.277394771575928f);
                _1055 = _1052 * 10000.0f;
                _1056 = _1053 * 10000.0f;
                _1057 = _1054 * 10000.0f;
                if (!_975) {
                  if (!(_196 == _renderPassTest)) {
                    _1065 = _1053 * 6000.0f;
                    if (_196 == _renderPassEnemy) {
                      _1071 = _1055;
                      _1072 = _1065;
                      _1073 = (_1054 * 6000.0f);
                      _1074 = 10.0f;
                      _1075 = 1.0f;
                    } else {
                      _1071 = (_1052 * 5000.0f);
                      _1072 = _1065;
                      _1073 = _1057;
                      _1074 = 50.0f;
                      _1075 = 30.0f;
                    }
                  } else {
                    _1071 = _1055;
                    _1072 = _1056;
                    _1073 = _1057;
                    _1074 = 10.0f;
                    _1075 = 1.0f;
                  }
                } else {
                  _1071 = _1055;
                  _1072 = _1056;
                  _1073 = _1057;
                  _1074 = 10.0f;
                  _1075 = 1.0f;
                }
                _1083 = _379 - _mainPosition.x;
                _1084 = _380 - _mainPosition.y;
                _1085 = _381 - _mainPosition.z;
                _1101 = (((1.0f - saturate((sqrt(((_1083 * _1083) + (_1084 * _1084)) + (_1085 * _1085)) - _1075) / _1074)) * (1.0f - saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, _383)) + 0.5f) - (_nearFarProj.x / max(1.0000000116860974e-07f, _382)))))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                _1102 = (_1071 * 1.5f);
                _1103 = (_1072 * 1.5f);
                _1104 = (_1073 * 1.5f);
              }
            } else {
              _1101 = 0.0f;
              _1102 = _271;
              _1103 = _272;
              _1104 = _273;
            }
          } else {
            _1101 = 0.0f;
            _1102 = _271;
            _1103 = _272;
            _1104 = _273;
          }
        } else {
          _832 = uint((_bufferSizeAndInvSize.x * _144) + -0.5f);
          _833 = uint((_bufferSizeAndInvSize.y * _145) + -0.5f);
          _835 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_832, _833, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _838 = __3__36__0__0__g_gbufferNormal.Load(int3(_832, _833, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _856 = (saturate(_838.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _857 = (saturate(_838.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _858 = (saturate(_838.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _860 = rsqrt(dot(float3(_856, _857, _858), float3(_856, _857, _858)));  // [sem: invLength]
          _861 = _860 * _856;
          _862 = _860 * _857;
          _863 = _858 * _860;
          _866 = (((float)((uint)((uint)(((uint)((uint)(_835.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _867 = (((float)((uint)((uint)(_835.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _870 = (_866 + _867) * 0.5f;
          _871 = (_866 - _867) * 0.5f;
          _875 = (1.0f - abs(_870)) - abs(_871);
          _877 = rsqrt(dot(float3(_870, _871, _875), float3(_870, _871, _875)));  // [sem: invLength]
          _878 = _877 * _870;
          _879 = _877 * _871;
          _880 = _877 * _875;
          _882 = select((_863 >= 0.0f), 1.0f, -1.0f);
          _885 = -0.0f - (1.0f / (_882 + _863));
          _886 = _862 * _885;
          _887 = _886 * _861;
          _888 = _882 * _861;
          _897 = mad(_880, _861, mad(_879, _887, ((((_888 * _861) * _885) + 1.0f) * _878)));
          _901 = mad(_880, _862, mad(_879, (_882 + (_886 * _862)), ((_878 * _882) * _887)));
          _905 = mad(_880, _863, mad(_879, (-0.0f - _862), (-0.0f - (_888 * _878))));
          _907 = rsqrt(dot(float3(_897, _901, _905), float3(_897, _901, _905)));  // [sem: invLength]
          _922 = 1.0f - dot(float3(((_907 * _897) + -0.10000000149011612f), ((_907 * _901) + -0.10000000149011612f), ((_907 * _905) + -0.10000000149011612f)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
          _927 = frac((_time.x * 2.0f) + _922);
          _928 = _927 * _927;
          _932 = _922 * 10.0f;
          _939 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_932, _932));
          _941 = _939.x * _939.x;
          _960 = 6.0f / max(0.0010000000474974513f, _exposure0.x);
          _1101 = ((saturate((_941 * _941) * 4.0f) * saturate((_928 * _928) * 5.0f)) * saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, _383)) + 0.05000000074505806f) - (_nearFarProj.x / max(1.0000000116860974e-07f, _382)))));
          _1102 = ((_highLightForVision * (_960 - _271)) + _271);
          _1103 = ((_highLightForVision * ((_960 * 0.6444798111915588f) - _272)) + _272);
          _1104 = (_273 - (_highLightForVision * _273));
        }
      } else {
        _506 = _379 - _mainPosition.x;
        _507 = _380 - _mainPosition.y;
        _508 = _381 - _mainPosition.z;
        _518 = (1.0f - saturate(sqrt(((_506 * _506) + (_507 * _507)) + (_508 * _508)) * 0.125f)) * 0.20000000298023224f;
        _529 = _506 - ((_viewPos.x - _mainPosition.x) * _518);
        _530 = _507 - ((_viewPos.y - _mainPosition.y) * _518);
        _531 = _508 - ((_viewPos.z - _mainPosition.z) * _518);
        _533 = rsqrt(dot(float3(_529, _530, _531), float3(_529, _530, _531)));  // [sem: invLength]
        _536 = _531 * _533;
        _540 = select((_536 < 0.0f), (-0.0f - _536), _536) + 1.0f;
        _541 = (_530 * _533) / _540;
        _542 = (_529 * _533) / _540;
        _547 = _time.x + sin(_time.x);
        _559 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.10000000149011612f) + (_542 * 2.0f)), ((_547 * 0.10000000149011612f) + (_541 * 2.0f))));
        _571 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_542 - (_time.x * 0.06000000238418579f)) - (_559.x * 0.05000000074505806f)), ((_541 - (_547 * 0.06000000238418579f)) - (_559.w * 0.05000000074505806f))));
        _591 = uint((((((_559.w + -1.0f) + _571.y) * 0.019999999552965164f) + _144) * _bufferSizeAndInvSize.x) + -0.5f);
        _592 = uint((((((_559.y + -1.0f) + _571.w) * 0.019999999552965164f) + _145) * _bufferSizeAndInvSize.y) + -0.5f);
        _594 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_591, _592, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _597 = __3__36__0__0__g_gbufferNormal.Load(int3(_591, _592, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _615 = (saturate(_597.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _616 = (saturate(_597.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _617 = (saturate(_597.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _619 = rsqrt(dot(float3(_615, _616, _617), float3(_615, _616, _617)));  // [sem: invLength]
        _620 = _619 * _615;
        _621 = _619 * _616;
        _622 = _617 * _619;
        _625 = (((float)((uint)((uint)(((uint)((uint)(_594.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _626 = (((float)((uint)((uint)(_594.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _629 = (_625 + _626) * 0.5f;
        _630 = (_625 - _626) * 0.5f;
        _634 = (1.0f - abs(_629)) - abs(_630);
        _636 = rsqrt(dot(float3(_629, _630, _634), float3(_629, _630, _634)));  // [sem: invLength]
        _637 = _636 * _629;
        _638 = _636 * _630;
        _639 = _636 * _634;
        _641 = select((_622 >= 0.0f), 1.0f, -1.0f);
        _644 = -0.0f - (1.0f / (_641 + _622));
        _645 = _621 * _644;
        _646 = _645 * _620;
        _647 = _641 * _620;
        _656 = mad(_639, _620, mad(_638, _646, ((((_647 * _620) * _644) + 1.0f) * _637)));
        _660 = mad(_639, _621, mad(_638, (_641 + (_645 * _621)), ((_637 * _641) * _646)));
        _664 = mad(_639, _622, mad(_638, (-0.0f - _621), (-0.0f - (_647 * _637))));
        _666 = rsqrt(dot(float3(_656, _660, _664), float3(_656, _660, _664)));  // [sem: invLength]
        _676 = 1.0f - abs(dot(float3((_666 * _656), (_666 * _660), (_666 * _664)), float3(_viewDir.x, _viewDir.y, _viewDir.z)));
        _681 = saturate((_676 * _676) + ((_571.y * _559.y) * _571.z));  // [sem: expr_sat]
        _695 = 1.0f - dot(float3((((_571.x + -0.5f) * _571.w) + _229), (((_571.y + -0.5f) * _571.w) + _230), (((_571.z + -0.5f) * _571.w) + _231)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
        _704 = (saturate(_681 * 10.0f) * saturate((_695 * _695) * 3.0f)) + ((_571.x * _571.z) * _571.w);
        _708 = WaveReadLaneFirst(_materialIndex);
        _716 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_708 < (uint)170000), _708, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._objectiveMaskColor);
        _719 = (float)((uint)((uint)(((uint)(_716) >> 16) & 255)));
        _722 = (float)((uint)((uint)(((uint)(_716) >> 8) & 255)));
        _724 = (float)((uint)((uint)(_716 & 255)));
        _757 = (_571.y * _571.w) * (1.0f / max(0.0010000000474974513f, _exposure0.x));
  // [sem: invLength]
        _775 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
        _776 = _775 * _detectModeLook.x;
        _777 = _775 * _detectModeLook.y;
        _778 = _775 * _detectModeLook.z;
        _779 = _379 - _detectModePosition.x;
        _780 = _380 - _detectModePosition.y;
        _781 = _381 - _detectModePosition.z;
        _782 = dot(float3(_776, _777, _778), float3(_779, _780, _781));
        _788 = _779 - (_776 * _782);
        _789 = _780 - (_777 * _782);
        _790 = _781 - (_778 * _782);
        _809 = 1.0f - saturate(sqrt(((_779 * _779) + (_780 * _780)) + (_781 * _781)) / _detectModeRadius);
        _1101 = (((_809 * _809) * ((1.0f - saturate(sqrt(((_788 * _788) + (_789 * _789)) + (_790 * _790)) / max(0.0010000000474974513f, (tan(_detectModeAngle * 0.01745329238474369f) * _782)))) * (((_681 - _704) * saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, _383)) + 0.05000000074505806f) - (_nearFarProj.x / max(1.0000000116860974e-07f, _382))))) + _704))) * _highLightForVision);
        _1102 = (_757 * select(((_719 * 0.011764707043766975f) < 0.040449999272823334f), (_719 * 0.0009105810313485563f), exp2(log2((_719 * 0.011151381768286228f) + 0.052132703363895416f) * 2.4000000953674316f)));
        _1103 = (_757 * select(((_722 * 0.011764707043766975f) < 0.040449999272823334f), (_722 * 0.0009105810313485563f), exp2(log2((_722 * 0.011151381768286228f) + 0.052132703363895416f) * 2.4000000953674316f)));
        _1104 = (_757 * select(((_724 * 0.011764707043766975f) < 0.040449999272823334f), (_724 * 0.0009105810313485563f), exp2(log2((_724 * 0.011151381768286228f) + 0.052132703363895416f) * 2.4000000953674316f)));
      }
    } else {
      _409 = _379 - _mainPosition.x;
      _410 = _380 - _mainPosition.y;
      _411 = _381 - _mainPosition.z;
  // [sem: invLength]
      _439 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
      _440 = _439 * _detectModeLook.x;
      _441 = _439 * _detectModeLook.y;
      _442 = _439 * _detectModeLook.z;
      _443 = _379 - _detectModePosition.x;
      _444 = _380 - _detectModePosition.y;
      _445 = _381 - _detectModePosition.z;
      _446 = dot(float3(_440, _441, _442), float3(_443, _444, _445));
      _452 = _443 - (_440 * _446);
      _453 = _444 - (_441 * _446);
      _454 = _445 - (_442 * _446);
      _1101 = ((((1.0f - saturate((sqrt(((_409 * _409) + (_410 * _410)) + (_411 * _411)) + -30.0f) * 0.05000000074505806f)) * saturate((_384 * _384) * 4.0f)) * (1.0f - saturate(sqrt(((_452 * _452) + (_453 * _453)) + (_454 * _454)) / max(0.0010000000474974513f, (tan(_detectModeAngle * 0.01745329238474369f) * _446))))) * exp2(log2(1.0f - saturate(sqrt(((_443 * _443) + (_444 * _444)) + (_445 * _445)) / _detectModeRadius)) * 10.0f));
      _1102 = _271;
      _1103 = _272;
      _1104 = _273;
    }
  } else {
    _1101 = 0.0f;
    _1102 = 0.0f;
    _1103 = 0.0f;
    _1104 = 0.0f;
  }
  _1108 = abs(_temperatureWarning * 0.009999999776482582f);
  if (_51) {
    if (_temperatureWarning > 0.0f) {
      _1115 = _67 * TEXCOORD.x;
      _1128 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1115 * 4.25f), ((TEXCOORD.y * 3.0f) - (_time.x * 0.15000000596046448f))));
      _1140 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1115 * 2.299999952316284f), (((TEXCOORD.y * 2.0999999046325684f) - (_1128.x * 0.10000000149011612f)) + (_time.x * 0.20000000298023224f))));
      _1146 = TEXCOORD.x + -0.5f;
      _1179 = abs((_1146 + ((_1128.y + -0.5f) * 0.009999999776482582f)) + ((_1140.z + -0.5f) * 0.029999999329447746f));
      _1180 = abs(((TEXCOORD.y + -0.5f) + ((_1128.x + -0.5f) * 0.019999999552965164f)) + ((_1140.y + -0.5f) * 0.029999999329447746f));
      _1183 = max((_1179 + -0.5f), 0.0f);
      _1184 = max((_1180 + -0.5f), 0.0f);
      _1191 = 0.5f - min(max((((1.0f - (saturate(abs(_1146) * 2.0f) * 0.3999999761581421f)) * ((_1108 * 0.05000000447034836f) + 0.10000000149011612f)) * (((((_1128.z * 0.30000001192092896f) + -0.5f) + (_1140.x * 0.699999988079071f)) * 1.100000023841858f) + 1.0f)), ((_1108 * 0.017500001937150955f) + 0.03500000014901161f)), ((_1108 * 0.11000001430511475f) + 0.2200000137090683f));
      _1194 = max((_1179 - _1191), 0.0f);
      _1195 = max((_1180 - _1191), 0.0f);
      _1206 = saturate((TEXCOORD.y + -0.15000000596046448f) * 1.2500001192092896f);  // [sem: expr_sat]
      _1222 = saturate(_1140.x * _1128.x);  // [sem: expr_sat]
      _1223 = _1108 * 0.20000000298023224f;
      _1231 = ((saturate(_1108 * 2.0f) * saturate(saturate(sqrt((_1195 * _1195) + (_1194 * _1194)) * 10.0f) - saturate(sqrt((_1184 * _1184) + (_1183 * _1183)) * 10.0f))) * ((_1222 * (1.0f - _1223)) + _1223)) * ((((_1206 * _1206) * (3.0f - (_1206 * 2.0f))) * ((saturate((((_1128.x * 0.25f) + -0.3499999940395355f) + (_1140.y * 0.75f)) * 1.600000023841858f) * 0.5f) + -0.3500000238418579f)) + 1.0f);
      _1235 = _1231 * (_1108 * 0.10000000149011612f);
  // [sem: _3__36__0__0__g_sceneColor_sample]
      _1243 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1235 * (0.5f - TEXCOORD.x)) * _1140.x) + TEXCOORD.x), (((_1235 * (0.5f - TEXCOORD.y)) * _1140.y) + TEXCOORD.y)));
      _1253 = (pow(_1243.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1254 = (pow(_1243.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1255 = (pow(_1243.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1280 = exp2(log2(max(0.0f, (_1253 + -0.8359375f)) / (18.8515625f - (_1253 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _1281 = exp2(log2(max(0.0f, (_1254 + -0.8359375f)) / (18.8515625f - (_1254 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _1282 = exp2(log2(max(0.0f, (_1255 + -0.8359375f)) / (18.8515625f - (_1255 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _1283 = 1.0f - _1231;
      _1290 = ((_1283 * _1283) * _1283) * saturate(((_1222 * _1222) * 2.0f) * _1222);
      _1293 = max(0.0010000000474974513f, _exposure0.x);
      _1303 = (((1.0f / _1293) - _1280) * _1290) + _1280;
      _1304 = (((0.6000000238418579f / _1293) - _1281) * _1290) + _1281;
      _1305 = (((0.30000001192092896f / _1293) - _1282) * _1290) + _1282;
      _1315 = ((_1108 * _1108) * _1108) * saturate(_1108 + -0.5f);
      _1320 = saturate(_1231 * 2.0f);  // [sem: expr_sat]
      _1435 = (_1320 + _1101);
      _1436 = ((((_1303 - _1102) + (((_1231 / _1293) - _1303) * _1315)) * _1320) + _1102);
      _1437 = ((((_1304 - _1103) + ((((_1231 * 0.25f) / _1293) - _1304) * _1315)) * _1320) + _1103);
      _1438 = ((((_1305 - _1104) - (_1305 * _1315)) * _1320) + _1104);
    } else {
      if (_temperatureWarning < 0.0f) {
        _1337 = _67 * TEXCOORD.x;
        _1346 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1337 * 1.5f), (TEXCOORD.y * 1.5f)));
        _1351 = WaveReadLaneFirst(_materialIndex);
        _1359 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1351 < (uint)170000), _1351, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._temperatureWarningTex);
        _1366 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1359 < (uint)65000), _1359, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1337 * 2.0f), _70));
        _1374 = (select(((TEXCOORD.y / (1.0f - TEXCOORD.x)) < 1.0f), (1.0f - _1366.y), _1366.y) + -0.5f) * 0.30000001192092896f;
        _1376 = (_1346.x + -0.4000000059604645f) * 0.20000000298023224f;
        _1384 = max(0.0010000000474974513f, _exposure0.x);
        _1397 = 0.5f - (_1108 * 0.25f);
        _1400 = max((abs(((TEXCOORD.x + -0.5f) + _1376) + _1374) - _1397), 0.0f);
        _1401 = max((abs(((_1374 + _1376) + -0.4749999940395355f) + (TEXCOORD.y * 0.8999999761581421f)) - _1397), 0.0f);
        _1423 = (_1108 * (1.0f - TEXCOORD.y)) * saturate((((_1366.y * 4.0f) * saturate(1.0f - ((1.0f - saturate(sqrt((_1401 * _1401) + (_1400 * _1400)) * 6.666666507720947f)) * 2.0f))) * saturate((_1366.y * _1366.y) * 2.0f)) * saturate(_1346.z * _1346.w));
        _1435 = (_1423 + _1101);
        _1436 = ((_1423 * ((((_1346.w * 1.8809775114059448f) + 0.11902248114347458f) / _1384) - _1102)) + _1102);
        _1437 = ((_1423 * ((((_1346.w * 1.3989123106002808f) + 0.6010876893997192f) / _1384) - _1103)) + _1103);
        _1438 = ((_1423 * ((2.0f / _1384) - _1104)) + _1104);
      } else {
        _1435 = _1101;
        _1436 = _1102;
        _1437 = _1103;
        _1438 = _1104;
      }
    }
  } else {
    _1435 = _1101;
    _1436 = _1102;
    _1437 = _1103;
    _1438 = _1104;
  }
  if (!(_electrocutionWarning == 0.0f)) {
    _1443 = _67 * TEXCOORD.x;
    _1452 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_167 < (uint)65000), _167, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1443 * 1.5f), (TEXCOORD.y * 1.5f)));
    _1465 = WaveReadLaneFirst(_materialIndex);
    _1473 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1465 < (uint)170000), _1465, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._electrocutionTex);
    _1484 = max(0.0010000000474974513f, _exposure0.x);
    _1493 = 0.5f - (_electrocutionWarning * 0.07000000029802322f);
    _1496 = max((abs(TEXCOORD.x + -0.5f) - _1493), 0.0f);
    _1497 = max((abs(TEXCOORD.y + -0.5f) - _1493), 0.0f);
    _1512 = 1.0f - abs((frac((_time.x * 2.0f) + _1452.y) * 2.0f) + -1.0f);
    _1515 = (_1512 * _1512) * (saturate(sqrt((_1497 * _1497) + (_1496 * _1496)) / _1452.z) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1473 < (uint)65000), _1473, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1452.x * 0.05000000074505806f) + (_1443 * 2.0f)), (((_1452.y * 0.05000000074505806f) + _70) + (_time.x * 0.10000000149011612f)))))).x));
    _1518 = (pow(_1515, 1.600000023841858f));
    _1530 = (_1515 + _1435);
    _1531 = ((_1518 * ((340.0f / _1484) - _1436)) + _1436);
    _1532 = ((_1518 * ((660.0f / _1484) - _1437)) + _1437);
    _1533 = ((_1518 * ((2000.0f / _1484) - _1438)) + _1438);
  } else {
    _1530 = _1435;
    _1531 = _1436;
    _1532 = _1437;
    _1533 = _1438;
  }
  _1535 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
  // [sem: _1530_sat]
    _1548 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _1535, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1548 = saturate(_1530);  // [sem: _1530_sat]
  }
  _1551 = (_localToneMappingParams.w > 0.0f);
  if (_1551) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1531, _1532, _1533));
    _1811 = _rndx_tonemapped_color.x;
    _1812 = _rndx_tonemapped_color.y;
    _1813 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1819 = 1.0f - abs(_etcParams.w);
      _1823 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1824 = (_1819 * _1811) + _1823;
      _1825 = (_1819 * _1812) + _1823;
      _1826 = (_1819 * _1813) + _1823;
      if (_colorGradingParams.w > 0.0f) {
        _1831 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1848 = (((max(0.0f, (1.0f - _1824)) - _1824) * _1831) + _1824);
        _1849 = (((max(0.0f, (1.0f - _1825)) - _1825) * _1831) + _1825);
        _1850 = (((max(0.0f, (1.0f - _1826)) - _1826) * _1831) + _1826);
      } else {
        _1848 = _1824;
        _1849 = _1825;
        _1850 = _1826;
      }
      _1856 = _userImageAdjust.y + 1.0f;
      _1860 = _userImageAdjust.x + 0.5f;
      _1861 = ((_1848 + -0.5f) * _1856) + _1860;
      _1862 = ((_1849 + -0.5f) * _1856) + _1860;
      _1863 = ((_1850 + -0.5f) * _1856) + _1860;
      _1893 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _1904 = exp2(log2(saturate(mad(_colorBlind0.z, _1863, mad(_colorBlind0.y, _1862, (_colorBlind0.x * _1861))))) * _1893);
      _1905 = exp2(log2(saturate(mad(_colorBlind1.z, _1863, mad(_colorBlind1.y, _1862, (_colorBlind1.x * _1861))))) * _1893);
      _1906 = exp2(log2(saturate(mad(_colorBlind2.z, _1863, mad(_colorBlind2.y, _1862, (_colorBlind2.x * _1861))))) * _1893);
    } else {
      _1904 = _1811;
      _1905 = _1812;
      _1906 = _1813;
    }
  } else {
    _1904 = _1531;
    _1905 = _1532;
    _1906 = _1533;
  }
  if (_etcParams.y > 1.0f) {
    _1912 = abs(_69);
    _1913 = abs(_70 + -1.0f);
    _1917 = saturate(1.0f - (dot(float2(_1912, _1913), float2(_1912, _1913)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1922 = (_1917 * _1904);
    _1923 = (_1917 * _1905);
    _1924 = (_1917 * _1906);
  } else {
    _1922 = _1904;
    _1923 = _1905;
    _1924 = _1906;
  }
  if (_1551 && (_etcParams.z > 0.0f)) {
    _1954 = select((_1922 <= 0.0031308000907301903f), (_1922 * 12.920000076293945f), (((pow(_1922, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1955 = select((_1923 <= 0.0031308000907301903f), (_1923 * 12.920000076293945f), (((pow(_1923, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1956 = select((_1924 <= 0.0031308000907301903f), (_1924 * 12.920000076293945f), (((pow(_1924, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1954 = _1922;
    _1955 = _1923;
    _1956 = _1924;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1961 = (float)((uint)_1535);
    if (!(_1961 < _viewDir.w)) {
      if (!(_1961 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1970 = _1954;
        _1971 = _1955;
        _1972 = _1956;
      } else {
        _1970 = 0.0f;
        _1971 = 0.0f;
        _1972 = 0.0f;
      }
    } else {
      _1970 = 0.0f;
      _1971 = 0.0f;
      _1972 = 0.0f;
    }
  } else {
    _1970 = _1954;
    _1971 = _1955;
    _1972 = _1956;
  }
  _1982 = exp2(log2(_1970 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1983 = exp2(log2(_1971 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1984 = exp2(log2(_1972 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1982 * 18.6875f) + 1.0f)) * ((_1982 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1983 * 18.6875f) + 1.0f)) * ((_1983 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1984 * 18.6875f) + 1.0f)) * ((_1984 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1548;
  return SV_Target;
}
