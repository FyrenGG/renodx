struct PostProcessEdgeBlur_CDStruct {
  float _edgeBlurRatio;
  float _edgeBlurShiftValue;
  float _edgeBlurBrightness;
  float _fishEyeMaxPower;
  uint _edgeBlurNoiseTex;
  float _edgeBlurNoiseIntensity;
  float _edgeBlurNoiseOffset;
  float2 _edgeBlurNoiseScale;
  float2 _edgeBlurNoiseSpeed;
  float _edgeBlurNoiseDissolve;
  float _useTargetFocusDir;
  float3 _targetFocusPositionOffset;
  uint _debugMode;
  float _targetFocusCenterMask;
  float _targetFocusCenterMaskEdgeThickness;
  float _targetFocusCenterMaskPower;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

struct BindlessParameters_PostProcessEdgeBlur_CD {
  PostProcessEdgeBlur_CDStruct BindlessParameters_PostProcessEdgeBlur_CD;
};

typedef BindlessParameters_PostProcessEdgeBlur_CD BindlessParameters_PostProcessEdgeBlur_CD_t;
ConstantBuffer<BindlessParameters_PostProcessEdgeBlur_CD_t> BindlessParameters_PostProcessEdgeBlur_CD[] : register(b0, space100);

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
  int _34;
  float _43;
  float _44;
  int _48;
  float _56;
  float _206;
  float _207;
  float _1751;
  float _1752;
  float _1753;
  float _1754;
  float _1768;
  float _1973;
  float _1974;
  float _1975;
  float _2068;
  float _2069;
  float _2070;
  float _2124;
  float _2125;
  float _2126;
  float _2145;
  float _2146;
  float _2147;
  float _2177;
  float _2178;
  float _2179;
  float _2193;
  float _2194;
  float _2195;
  int _63;
  float _73;
  float _74;
  float _75;
  float _83;
  float _84;
  float _85;
  float _87;
  float _88;
  float _90;
  float _92;
  float _95;
  float _131;
  float _132;
  float _133;
  float _134;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _142;
  float _143;
  float _144;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _158;
  float _162;
  float _166;
  float _168;
  float _169;
  float _171;
  float _173;
  bool _176;
  bool _177;
  bool _178;
  bool _179;
  int _192;
  float _201;
  float _202;
  int _210;
  float _219;
  float _220;
  int _225;
  int _233;
  float4 _240;
  int _245;
  float _253;
  float _254;
  int _257;
  float _265;
  int _266;
  float _274;
  float _279;
  float _280;
  uint2 _284;
  float4 _325;
  float _335;
  float _336;
  float _337;
  float4 _375;
  float _386;
  float _387;
  float _388;
  float _413;
  float _414;
  float4 _416;
  float _427;
  float _428;
  float _429;
  float4 _455;
  float _466;
  float _467;
  float _468;
  float _493;
  float4 _495;
  float _506;
  float _507;
  float _508;
  float4 _534;
  float _545;
  float _546;
  float _547;
  float4 _605;
  float _616;
  float _617;
  float _618;
  float _643;
  float _644;
  float4 _646;
  float _657;
  float _658;
  float _659;
  float4 _685;
  float _696;
  float _697;
  float _698;
  float _723;
  float4 _725;
  float _736;
  float _737;
  float _738;
  float4 _764;
  float _775;
  float _776;
  float _777;
  float4 _835;
  float _846;
  float _847;
  float _848;
  float _873;
  float _874;
  float4 _876;
  float _887;
  float _888;
  float _889;
  float4 _915;
  float _926;
  float _927;
  float _928;
  float _953;
  float4 _955;
  float _966;
  float _967;
  float _968;
  float4 _994;
  float _1005;
  float _1006;
  float _1007;
  float4 _1065;
  float _1076;
  float _1077;
  float _1078;
  float _1103;
  float _1104;
  float4 _1106;
  float _1117;
  float _1118;
  float _1119;
  float4 _1145;
  float _1156;
  float _1157;
  float _1158;
  float _1183;
  float4 _1185;
  float _1196;
  float _1197;
  float _1198;
  float4 _1224;
  float _1235;
  float _1236;
  float _1237;
  float4 _1295;
  float _1306;
  float _1307;
  float _1308;
  float _1333;
  float _1334;
  float4 _1336;
  float _1347;
  float _1348;
  float _1349;
  float4 _1375;
  float _1386;
  float _1387;
  float _1388;
  float _1413;
  float4 _1415;
  float _1426;
  float _1427;
  float _1428;
  float4 _1454;
  float _1465;
  float _1466;
  float _1467;
  float4 _1525;
  float _1536;
  float _1537;
  float _1538;
  float _1563;
  float _1564;
  float4 _1566;
  float _1577;
  float _1578;
  float _1579;
  float4 _1605;
  float _1616;
  float _1617;
  float _1618;
  float _1643;
  float4 _1645;
  float _1656;
  float _1657;
  float _1658;
  float4 _1684;
  float _1695;
  float _1696;
  float _1697;
  uint _1755;
  bool _1771;
  float _1777;
  float _1826;
  float _1827;
  float _1828;
  float _1830;
  float _1837;
  float _1838;
  float _1839;
  float _1858;
  float _1859;
  float _1860;
  float _1861;
  float _1862;
  float _1863;
  float _1864;
  float _1865;
  float _1866;
  float _1912;
  float _1913;
  float _1914;
  float _1915;
  float _1916;
  float _1917;
  float _1918;
  float _1935;
  float _1936;
  float _1937;
  float _1938;
  float _1944;
  float _1947;
  float _1954;
  float _1955;
  float _1956;
  float _1985;
  float _2010;
  float _2011;
  float _2012;
  float _2031;
  float _2032;
  float _2033;
  float _2039;
  float _2043;
  float _2044;
  float _2045;
  float _2046;
  float _2051;
  float _2076;
  float _2080;
  float _2081;
  float _2082;
  float _2083;
  float _2113;
  float _2135;
  float _2136;
  float _2140;
  float _2184;
  float _2205;
  float _2206;
  float _2207;
  _34 = WaveReadLaneFirst(_materialIndex);
  _43 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_34 < (uint)170000), _34, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
  _44 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_34 < (uint)170000), _34, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_48 < (uint)170000), _48, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
  if (_56 > 0.0010000000474974513f) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _73 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_63 < (uint)170000), _63, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _74 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_63 < (uint)170000), _63, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _75 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_63 < (uint)170000), _63, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _83 = (_73 + _targetFocusPosition.x) - _viewPos.x;
    _84 = (_74 + _targetFocusPosition.y) - _viewPos.y;
    _85 = (_75 + _targetFocusPosition.z) - _viewPos.z;
    _87 = rsqrt(dot(float3(_83, _84, _85), float3(_83, _84, _85)));  // [sem: invLength]
    _88 = _83 * _87;
    _90 = _85 * _87;
    _92 = (TEXCOORD.x * 2.0f) + -1.0f;
    _95 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _131 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _95, ((_invViewProjRelative[0].w) * _92));
    _132 = ((mad((_invViewProjRelative[1].x), _95, ((_invViewProjRelative[0].x) * _92)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _131;
    _133 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _95, ((_invViewProjRelative[0].y) * _92))) / _131;
    _134 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _95, ((_invViewProjRelative[0].z) * _92))) / _131;
    _136 = rsqrt(dot(float3(_132, _133, _134), float3(_132, _133, _134)));  // [sem: invLength]
    _137 = _136 * _132;
    _138 = _136 * _133;
    _139 = _136 * _134;
    _140 = -0.0f - _88;
    _142 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_88, (_84 * _87), _90)));
    _143 = sin(_142);
    _144 = cos(_142);
    _145 = 1.0f - _144;
    _146 = _145 * _90;
    _147 = _145 * _140;
    _148 = _143 * _90;
    _149 = _143 * _140;
    _158 = mad((_147 * _90), _139, mad(_149, _138, (((_146 * _90) + _144) * _137)));
    _162 = mad(_148, _139, mad(_144, _138, (-0.0f - (_137 * _149))));
    _166 = mad(((_147 * _140) + _144), _139, mad((-0.0f - _148), _138, ((_137 * _140) * _146)));
    _168 = rsqrt(dot(float3(_158, _162, _166), float3(_158, _162, _166)));  // [sem: invLength]
    _169 = _168 * _158;
    _171 = _168 * _166;
    _173 = atan(_171 / _169);
    _176 = (_169 < 0.0f);
    _177 = (_169 == 0.0f);
    _178 = (_171 >= 0.0f);
    _179 = (_171 < 0.0f);
    _192 = WaveReadLaneFirst(_materialIndex);
    _201 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_192 < (uint)170000), _192, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _202 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_192 < (uint)170000), _192, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _206 = (select((_177 && _178), 0.75f, select((_177 && _179), 0.25f, ((select((_176 && _179), (_173 + -3.1415927410125732f), select((_176 && _178), (_173 + 3.1415927410125732f), _173)) * 0.15915493667125702f) + 0.5f))) * _201);
    _207 = ((acos(_168 * _162) * 0.31830987334251404f) * _202);
  } else {
    _206 = (((_screenSizeAndInvSize.x / _screenSizeAndInvSize.y) * TEXCOORD.x) * _43);
    _207 = (_44 * TEXCOORD.y);
  }
  _210 = WaveReadLaneFirst(_materialIndex);
  _219 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_210 < (uint)170000), _210, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
  _220 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_210 < (uint)170000), _210, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
  _225 = WaveReadLaneFirst(_materialIndex);
  _233 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_225 < (uint)170000), _225, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
  _240 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_233 < (uint)65000), _233, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_219 * _time.x) + _206), ((_220 * _time.x) + _207)));
  _245 = WaveReadLaneFirst(_materialIndex);
  _253 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_245 < (uint)170000), _245, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseOffset);
  _254 = _253 + -0.9960784316062927f;
  _257 = WaveReadLaneFirst(_materialIndex);
  _265 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_257 < (uint)170000), _257, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_266 < (uint)170000), _266, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseIntensity);
  _279 = ((_274 * (_254 + (_240.x * 2.0f))) + 1.0f) * _265;
  _280 = ((_274 * (_254 + (_240.y * 2.0f))) + 1.0f) * _265;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_284.x, _284.y);
    _325 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _335 = (pow(_325.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _336 = (pow(_325.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _337 = (pow(_325.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1751 = (exp2(log2(max(0.0f, (_335 + -0.8359375f)) / (18.8515625f - (_335 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _1752 = (exp2(log2(max(0.0f, (_336 + -0.8359375f)) / (18.8515625f - (_336 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _1753 = (exp2(log2(max(0.0f, (_337 + -0.8359375f)) / (18.8515625f - (_337 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _1754 = select(((((_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * TEXCOORD.x), int(_customRenderPassSizeInvSize.y * TEXCOORD.y), 0)))).x))) - (_nearFarProj.x / max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))) < 0.10000000149011612f) && (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_284.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_284.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255) == _renderPassTargetFocus)), 1.0f, 0.0f);
  } else {
    if (_passIndex == 1) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _375 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _386 = (pow(_375.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _387 = (pow(_375.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _388 = (pow(_375.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _413 = _279 * _screenSizeAndInvSize.z;
      _414 = _413 * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _416 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_414 + TEXCOORD.x), TEXCOORD.y));
      _427 = (pow(_416.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _428 = (pow(_416.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _429 = (pow(_416.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _455 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _414), TEXCOORD.y));
      _466 = (pow(_455.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _467 = (pow(_455.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _468 = (pow(_455.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _493 = _413 * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _495 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_493 + TEXCOORD.x), TEXCOORD.y));
      _506 = (pow(_495.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _507 = (pow(_495.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _508 = (pow(_495.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _534 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _493), TEXCOORD.y));
      _545 = (pow(_534.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _546 = (pow(_534.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _547 = (pow(_534.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _1751 = ((((exp2(log2(max(0.0f, (_466 + -0.8359375f)) / (18.8515625f - (_466 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_427 + -0.8359375f)) / (18.8515625f - (_427 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_386 + -0.8359375f)) / (18.8515625f - (_386 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_545 + -0.8359375f)) / (18.8515625f - (_545 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_506 + -0.8359375f)) / (18.8515625f - (_506 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
      _1752 = ((((exp2(log2(max(0.0f, (_467 + -0.8359375f)) / (18.8515625f - (_467 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_428 + -0.8359375f)) / (18.8515625f - (_428 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_387 + -0.8359375f)) / (18.8515625f - (_387 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_546 + -0.8359375f)) / (18.8515625f - (_546 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_507 + -0.8359375f)) / (18.8515625f - (_507 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
      _1753 = ((((exp2(log2(max(0.0f, (_468 + -0.8359375f)) / (18.8515625f - (_468 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_429 + -0.8359375f)) / (18.8515625f - (_429 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_388 + -0.8359375f)) / (18.8515625f - (_388 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_547 + -0.8359375f)) / (18.8515625f - (_547 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_508 + -0.8359375f)) / (18.8515625f - (_508 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
      _1754 = ((((_455.w + _416.w) * 0.31621623039245605f) + (_375.w * 0.227027028799057f)) + ((_534.w + _495.w) * 0.07027027010917664f));
    } else {
      if (_passIndex == 2) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _605 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _616 = (pow(_605.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _617 = (pow(_605.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _618 = (pow(_605.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _643 = _280 * _screenSizeAndInvSize.w;
        _644 = _643 * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _646 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_644 + TEXCOORD.y)));
        _657 = (pow(_646.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _658 = (pow(_646.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _659 = (pow(_646.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _685 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _644)));
        _696 = (pow(_685.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _697 = (pow(_685.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _698 = (pow(_685.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _723 = _643 * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _725 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_723 + TEXCOORD.y)));
        _736 = (pow(_725.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _737 = (pow(_725.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _738 = (pow(_725.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _764 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _723)));
        _775 = (pow(_764.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _776 = (pow(_764.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _777 = (pow(_764.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1751 = ((((exp2(log2(max(0.0f, (_696 + -0.8359375f)) / (18.8515625f - (_696 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_657 + -0.8359375f)) / (18.8515625f - (_657 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_616 + -0.8359375f)) / (18.8515625f - (_616 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_775 + -0.8359375f)) / (18.8515625f - (_775 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_736 + -0.8359375f)) / (18.8515625f - (_736 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
        _1752 = ((((exp2(log2(max(0.0f, (_697 + -0.8359375f)) / (18.8515625f - (_697 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_658 + -0.8359375f)) / (18.8515625f - (_658 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_617 + -0.8359375f)) / (18.8515625f - (_617 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_776 + -0.8359375f)) / (18.8515625f - (_776 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_737 + -0.8359375f)) / (18.8515625f - (_737 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
        _1753 = ((((exp2(log2(max(0.0f, (_698 + -0.8359375f)) / (18.8515625f - (_698 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_659 + -0.8359375f)) / (18.8515625f - (_659 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_618 + -0.8359375f)) / (18.8515625f - (_618 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_777 + -0.8359375f)) / (18.8515625f - (_777 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_738 + -0.8359375f)) / (18.8515625f - (_738 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
        _1754 = ((((_685.w + _646.w) * 0.31621623039245605f) + (_605.w * 0.227027028799057f)) + ((_764.w + _725.w) * 0.07027027010917664f));
      } else {
        if (_passIndex == 3) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _835 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _846 = (pow(_835.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _847 = (pow(_835.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _848 = (pow(_835.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _873 = _279 * _screenSizeAndInvSize.z;
          _874 = _873 * 2.769230842590332f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _876 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_874 + TEXCOORD.x), TEXCOORD.y));
          _887 = (pow(_876.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _888 = (pow(_876.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _889 = (pow(_876.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _915 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _874), TEXCOORD.y));
          _926 = (pow(_915.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _927 = (pow(_915.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _928 = (pow(_915.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _953 = _873 * 6.461538314819336f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _955 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_953 + TEXCOORD.x), TEXCOORD.y));
          _966 = (pow(_955.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _967 = (pow(_955.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _968 = (pow(_955.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _994 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _953), TEXCOORD.y));
          _1005 = (pow(_994.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1006 = (pow(_994.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1007 = (pow(_994.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1751 = ((((exp2(log2(max(0.0f, (_926 + -0.8359375f)) / (18.8515625f - (_926 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_887 + -0.8359375f)) / (18.8515625f - (_887 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_846 + -0.8359375f)) / (18.8515625f - (_846 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1005 + -0.8359375f)) / (18.8515625f - (_1005 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_966 + -0.8359375f)) / (18.8515625f - (_966 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
          _1752 = ((((exp2(log2(max(0.0f, (_927 + -0.8359375f)) / (18.8515625f - (_927 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_888 + -0.8359375f)) / (18.8515625f - (_888 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_847 + -0.8359375f)) / (18.8515625f - (_847 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1006 + -0.8359375f)) / (18.8515625f - (_1006 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_967 + -0.8359375f)) / (18.8515625f - (_967 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
          _1753 = ((((exp2(log2(max(0.0f, (_928 + -0.8359375f)) / (18.8515625f - (_928 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_889 + -0.8359375f)) / (18.8515625f - (_889 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_848 + -0.8359375f)) / (18.8515625f - (_848 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1007 + -0.8359375f)) / (18.8515625f - (_1007 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_968 + -0.8359375f)) / (18.8515625f - (_968 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
          _1754 = ((((_915.w + _876.w) * 0.31621623039245605f) + (_835.w * 0.227027028799057f)) + ((_994.w + _955.w) * 0.07027027010917664f));
        } else {
          if (_passIndex == 4) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1065 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _1076 = (pow(_1065.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1077 = (pow(_1065.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1078 = (pow(_1065.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1103 = _280 * _screenSizeAndInvSize.w;
            _1104 = _1103 * 2.769230842590332f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1106 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1104 + TEXCOORD.y)));
            _1117 = (pow(_1106.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1118 = (pow(_1106.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1119 = (pow(_1106.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1145 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1104)));
            _1156 = (pow(_1145.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1157 = (pow(_1145.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1158 = (pow(_1145.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1183 = _1103 * 6.461538314819336f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1185 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1183 + TEXCOORD.y)));
            _1196 = (pow(_1185.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1197 = (pow(_1185.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1198 = (pow(_1185.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1224 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1183)));
            _1235 = (pow(_1224.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1236 = (pow(_1224.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1237 = (pow(_1224.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1751 = ((((exp2(log2(max(0.0f, (_1156 + -0.8359375f)) / (18.8515625f - (_1156 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1117 + -0.8359375f)) / (18.8515625f - (_1117 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1076 + -0.8359375f)) / (18.8515625f - (_1076 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1235 + -0.8359375f)) / (18.8515625f - (_1235 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1196 + -0.8359375f)) / (18.8515625f - (_1196 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
            _1752 = ((((exp2(log2(max(0.0f, (_1157 + -0.8359375f)) / (18.8515625f - (_1157 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1118 + -0.8359375f)) / (18.8515625f - (_1118 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1077 + -0.8359375f)) / (18.8515625f - (_1077 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1236 + -0.8359375f)) / (18.8515625f - (_1236 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1197 + -0.8359375f)) / (18.8515625f - (_1197 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
            _1753 = ((((exp2(log2(max(0.0f, (_1158 + -0.8359375f)) / (18.8515625f - (_1158 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1119 + -0.8359375f)) / (18.8515625f - (_1119 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1078 + -0.8359375f)) / (18.8515625f - (_1078 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1237 + -0.8359375f)) / (18.8515625f - (_1237 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1198 + -0.8359375f)) / (18.8515625f - (_1198 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
            _1754 = ((((_1145.w + _1106.w) * 0.31621623039245605f) + (_1065.w * 0.227027028799057f)) + ((_1224.w + _1185.w) * 0.07027027010917664f));
          } else {
            if (_passIndex == 5) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1295 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
              _1306 = (pow(_1295.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1307 = (pow(_1295.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1308 = (pow(_1295.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1333 = _279 * _screenSizeAndInvSize.z;
              _1334 = _1333 * 5.538461685180664f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1336 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1334 + TEXCOORD.x), TEXCOORD.y));
              _1347 = (pow(_1336.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1348 = (pow(_1336.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1349 = (pow(_1336.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1375 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1334), TEXCOORD.y));
              _1386 = (pow(_1375.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1387 = (pow(_1375.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1388 = (pow(_1375.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1413 = _1333 * 12.923076629638672f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1415 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1413 + TEXCOORD.x), TEXCOORD.y));
              _1426 = (pow(_1415.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1427 = (pow(_1415.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1428 = (pow(_1415.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1454 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1413), TEXCOORD.y));
              _1465 = (pow(_1454.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1466 = (pow(_1454.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1467 = (pow(_1454.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1751 = ((((exp2(log2(max(0.0f, (_1386 + -0.8359375f)) / (18.8515625f - (_1386 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1347 + -0.8359375f)) / (18.8515625f - (_1347 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1306 + -0.8359375f)) / (18.8515625f - (_1306 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1465 + -0.8359375f)) / (18.8515625f - (_1465 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1426 + -0.8359375f)) / (18.8515625f - (_1426 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
              _1752 = ((((exp2(log2(max(0.0f, (_1387 + -0.8359375f)) / (18.8515625f - (_1387 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1348 + -0.8359375f)) / (18.8515625f - (_1348 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1307 + -0.8359375f)) / (18.8515625f - (_1307 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1466 + -0.8359375f)) / (18.8515625f - (_1466 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1427 + -0.8359375f)) / (18.8515625f - (_1427 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
              _1753 = ((((exp2(log2(max(0.0f, (_1388 + -0.8359375f)) / (18.8515625f - (_1388 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1349 + -0.8359375f)) / (18.8515625f - (_1349 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1308 + -0.8359375f)) / (18.8515625f - (_1308 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1467 + -0.8359375f)) / (18.8515625f - (_1467 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1428 + -0.8359375f)) / (18.8515625f - (_1428 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
              _1754 = ((((_1375.w + _1336.w) * 0.31621623039245605f) + (_1295.w * 0.227027028799057f)) + ((_1454.w + _1415.w) * 0.07027027010917664f));
            } else {
              if (_passIndex == 6) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1525 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
                _1536 = (pow(_1525.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1537 = (pow(_1525.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1538 = (pow(_1525.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1563 = _280 * _screenSizeAndInvSize.w;
                _1564 = _1563 * 5.538461685180664f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1566 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1564 + TEXCOORD.y)));
                _1577 = (pow(_1566.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1578 = (pow(_1566.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1579 = (pow(_1566.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1605 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1564)));
                _1616 = (pow(_1605.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1617 = (pow(_1605.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1618 = (pow(_1605.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1643 = _1563 * 12.923076629638672f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1645 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1643 + TEXCOORD.y)));
                _1656 = (pow(_1645.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1657 = (pow(_1645.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1658 = (pow(_1645.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1684 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1643)));
                _1695 = (pow(_1684.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1696 = (pow(_1684.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1697 = (pow(_1684.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1751 = ((((exp2(log2(max(0.0f, (_1616 + -0.8359375f)) / (18.8515625f - (_1616 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1577 + -0.8359375f)) / (18.8515625f - (_1577 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1536 + -0.8359375f)) / (18.8515625f - (_1536 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1695 + -0.8359375f)) / (18.8515625f - (_1695 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1656 + -0.8359375f)) / (18.8515625f - (_1656 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
                _1752 = ((((exp2(log2(max(0.0f, (_1617 + -0.8359375f)) / (18.8515625f - (_1617 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1578 + -0.8359375f)) / (18.8515625f - (_1578 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1537 + -0.8359375f)) / (18.8515625f - (_1537 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1696 + -0.8359375f)) / (18.8515625f - (_1696 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1657 + -0.8359375f)) / (18.8515625f - (_1657 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
                _1753 = ((((exp2(log2(max(0.0f, (_1618 + -0.8359375f)) / (18.8515625f - (_1618 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1579 + -0.8359375f)) / (18.8515625f - (_1579 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_1538 + -0.8359375f)) / (18.8515625f - (_1538 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_1697 + -0.8359375f)) / (18.8515625f - (_1697 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_1658 + -0.8359375f)) / (18.8515625f - (_1658 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
                _1754 = ((((_1605.w + _1566.w) * 0.31621623039245605f) + (_1525.w * 0.227027028799057f)) + ((_1684.w + _1645.w) * 0.07027027010917664f));
              } else {
                _1751 = 0.0f;
                _1752 = 0.0f;
                _1753 = 0.0f;
                _1754 = 0.0f;
              }
            }
          }
        }
      }
    }
  }
  _1755 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1768 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _1755, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1768 = _1754;
  }
  _1771 = (_localToneMappingParams.w > 0.0f);
  if (_1771) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1751, _1752, _1753));
    _2031 = _rndx_tonemapped_color.x;
    _2032 = _rndx_tonemapped_color.y;
    _2033 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2039 = 1.0f - abs(_etcParams.w);
      _2043 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2044 = (_2039 * _2031) + _2043;
      _2045 = (_2039 * _2032) + _2043;
      _2046 = (_2039 * _2033) + _2043;
      if (_colorGradingParams.w > 0.0f) {
        _2051 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2068 = (((max(0.0f, (1.0f - _2044)) - _2044) * _2051) + _2044);
        _2069 = (((max(0.0f, (1.0f - _2045)) - _2045) * _2051) + _2045);
        _2070 = (((max(0.0f, (1.0f - _2046)) - _2046) * _2051) + _2046);
      } else {
        _2068 = _2044;
        _2069 = _2045;
        _2070 = _2046;
      }
      _2076 = _userImageAdjust.y + 1.0f;
      _2080 = _userImageAdjust.x + 0.5f;
      _2081 = ((_2068 + -0.5f) * _2076) + _2080;
      _2082 = ((_2069 + -0.5f) * _2076) + _2080;
      _2083 = ((_2070 + -0.5f) * _2076) + _2080;
      _2113 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _2124 = exp2(log2(saturate(mad(_colorBlind0.z, _2083, mad(_colorBlind0.y, _2082, (_colorBlind0.x * _2081))))) * _2113);
      _2125 = exp2(log2(saturate(mad(_colorBlind1.z, _2083, mad(_colorBlind1.y, _2082, (_colorBlind1.x * _2081))))) * _2113);
      _2126 = exp2(log2(saturate(mad(_colorBlind2.z, _2083, mad(_colorBlind2.y, _2082, (_colorBlind2.x * _2081))))) * _2113);
    } else {
      _2124 = _2031;
      _2125 = _2032;
      _2126 = _2033;
    }
  } else {
    _2124 = _1751;
    _2125 = _1752;
    _2126 = _1753;
  }
  if (_etcParams.y > 1.0f) {
    _2135 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2136 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2140 = saturate(1.0f - (dot(float2(_2135, _2136), float2(_2135, _2136)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2145 = (_2140 * _2124);
    _2146 = (_2140 * _2125);
    _2147 = (_2140 * _2126);
  } else {
    _2145 = _2124;
    _2146 = _2125;
    _2147 = _2126;
  }
  if (_1771 && (_etcParams.z > 0.0f)) {
    _2177 = select((_2145 <= 0.0031308000907301903f), (_2145 * 12.920000076293945f), (((pow(_2145, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2178 = select((_2146 <= 0.0031308000907301903f), (_2146 * 12.920000076293945f), (((pow(_2146, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2179 = select((_2147 <= 0.0031308000907301903f), (_2147 * 12.920000076293945f), (((pow(_2147, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _2177 = _2145;
    _2178 = _2146;
    _2179 = _2147;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2184 = (float)((uint)_1755);
    if (!(_2184 < _viewDir.w)) {
      if (!(_2184 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2193 = _2177;
        _2194 = _2178;
        _2195 = _2179;
      } else {
        _2193 = 0.0f;
        _2194 = 0.0f;
        _2195 = 0.0f;
      }
    } else {
      _2193 = 0.0f;
      _2194 = 0.0f;
      _2195 = 0.0f;
    }
  } else {
    _2193 = _2177;
    _2194 = _2178;
    _2195 = _2179;
  }
  _2205 = exp2(log2(_2193 * 9.999999747378752e-05f) * 0.1593017578125f);
  _2206 = exp2(log2(_2194 * 9.999999747378752e-05f) * 0.1593017578125f);
  _2207 = exp2(log2(_2195 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_2205 * 18.6875f) + 1.0f)) * ((_2205 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2206 * 18.6875f) + 1.0f)) * ((_2206 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2207 * 18.6875f) + 1.0f)) * ((_2207 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1768;
  return SV_Target;
}
