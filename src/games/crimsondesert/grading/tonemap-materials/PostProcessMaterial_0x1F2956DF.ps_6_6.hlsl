struct PostProcessBerserk_CDStruct {
  float _scanRadius;
  float _fishEyeIntensity;
  float _bloodLineIntensity;
  float _auraIntensity;
  float _centerMaskWidth;
  float _fireIntensity;
  float _sphereMaskRatio;
  float _fogIntensity;
  float _scanRadiusEnd;
  float _ringMaskRadius;
  float _ringMaskIntensity;
  float _radialBlurIntensity;
  uint _noiseTex;
  uint _noiseTex2;
  uint _distortionTex;
  uint _marbleCrackTex;
  float _sphereMaskEndRatio;
  float _sphereMaskEndNoiseIntensity;
  float _sceneColorDistortionIntensity;
  float _characterMaskIntensity;
  uint _enemyGradientTex;
  uint _enemyMaskColor;
  float _flashRatio;
  uint _paperTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
};

typedef BindlessParameters_PostProcessBerserk_CD BindlessParameters_PostProcessBerserk_CD_t;
ConstantBuffer<BindlessParameters_PostProcessBerserk_CD_t> BindlessParameters_PostProcessBerserk_CD[] : register(b0, space100);

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
  float _38;
  float _39;
  int _40;
  float _48;
  float _69;
  float _106;
  float _107;
  float _110;
  float _111;
  float _367;
  float _368;
  float _369;
  float _414;
  float _522;
  float _523;
  float _524;
  float _545;
  float _546;
  float _547;
  float _1054;
  float _1055;
  float _1056;
  float _1057;
  float _1058;
  float _1076;
  float _1077;
  float _1078;
  float _1079;
  float _1080;
  float _1081;
  float _1082;
  float _1083;
  float _1084;
  float _1149;
  float _1354;
  float _1355;
  float _1356;
  float _1449;
  float _1450;
  float _1451;
  float _1505;
  float _1506;
  float _1507;
  float _1526;
  float _1527;
  float _1528;
  float _1558;
  float _1559;
  float _1560;
  float _1574;
  float _1575;
  float _1576;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  bool _61;
  float _71;
  float _73;
  float _81;
  float _89;
  float _90;
  float _92;
  float _100;
  float _113;
  float _115;
  float _120;
  float _156;
  float _157;
  float _158;
  float _159;
  float _195;
  float _212;
  float _213;
  float _214;
  float _216;
  float _217;
  float _218;
  float _219;
  float4 _221;
  int _230;
  float _238;
  float _239;
  float _250;
  float _253;
  float _254;
  float _255;
  float _256;
  float _260;
  float _261;
  float _268;
  float _271;
  float _274;
  float _281;
  float _282;
  int _285;
  int _293;
  float4 _300;
  int _305;
  int _313;
  float4 _320;
  float _323;
  float _324;
  float _326;
  float _328;
  float _329;
  float _330;
  float _335;
  int _341;
  float _349;
  float4 _352;
  float4 _362;
  float _386;
  int _392;
  float _400;
  float _404;
  float _420;
  float _431;
  int _433;
  int _441;
  float4 _448;
  float _451;
  float _452;
  int _456;
  int _464;
  int _476;
  int _484;
  int _496;
  float _504;
  float _507;
  float _513;
  float _517;
  int _525;
  float _533;
  float _537;
  float _541;
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
  int _633;
  int _641;
  float _647;
  float _648;
  float _649;
  float _656;
  float4 _659;
  float _665;
  float _666;
  float _669;
  int _674;
  int _682;
  float _690;
  float _691;
  float _692;
  float _699;
  float4 _702;
  float _710;
  float _714;
  float _715;
  float _724;
  float _725;
  float _726;
  float _735;
  float _738;
  int _741;
  float _749;
  float _754;
  float _755;
  float _756;
  int _765;
  float _773;
  int _778;
  float _786;
  float _791;
  float _792;
  float _793;
  int _801;
  float _809;
  int _812;
  float _820;
  float _824;
  float _833;
  int _836;
  int _844;
  float _853;
  uint2 _856;
  float _877;
  uint _887;
  uint _888;
  uint4 _890;
  float4 _893;
  float _911;
  float _912;
  float _913;
  float _915;
  float _916;
  float _917;
  float _918;
  float _921;
  float _922;
  float _925;
  float _926;
  float _930;
  float _932;
  float _933;
  float _934;
  float _935;
  float _937;
  float _940;
  float _941;
  float _942;
  float _943;
  float _952;
  float _956;
  float _960;
  float _962;
  float _963;
  float _964;
  float _965;
  float _970;
  float _971;
  float _972;
  float _977;
  int _988;
  int _996;
  float _999;
  float _1002;
  float _1004;
  float _1051;
  float _1070;
  int _1085;
  float _1093;
  float _1113;
  float _1133;
  float _1134;
  float _1135;
  uint _1136;
  bool _1152;
  float _1158;
  float _1207;
  float _1208;
  float _1209;
  float _1211;
  float _1218;
  float _1219;
  float _1220;
  float _1239;
  float _1240;
  float _1241;
  float _1242;
  float _1243;
  float _1244;
  float _1245;
  float _1246;
  float _1247;
  float _1293;
  float _1294;
  float _1295;
  float _1296;
  float _1297;
  float _1298;
  float _1299;
  float _1316;
  float _1317;
  float _1318;
  float _1319;
  float _1325;
  float _1328;
  float _1335;
  float _1336;
  float _1337;
  float _1366;
  float _1391;
  float _1392;
  float _1393;
  float _1412;
  float _1413;
  float _1414;
  float _1420;
  float _1424;
  float _1425;
  float _1426;
  float _1427;
  float _1432;
  float _1457;
  float _1461;
  float _1462;
  float _1463;
  float _1464;
  float _1494;
  float _1516;
  float _1517;
  float _1521;
  float _1565;
  _38 = 1.0f / max(9.999999747378752e-05f, _exposure0.x);
  _39 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _40 = WaveReadLaneFirst(_materialIndex);
  _48 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_40 < (uint)170000), _40, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._fishEyeIntensity);
  if (!(!(abs(_48) >= 0.0010000000474974513f))) {
    _54 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _55 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
    _56 = 0.5f / _39;
    _57 = _54 + -0.5f;
    _58 = _55 - _56;
    _59 = dot(float2(_57, _58), float2(_57, _58));
    _60 = sqrt(_59);
    _61 = (_48 > 0.0f);
    if (_61) {
      _69 = sqrt(dot(float2(0.5f, _56), float2(0.5f, _56)));
    } else {
      if (!(_39 < 1.0f)) {
        _69 = _56;
      } else {
        _69 = 0.5f;
      }
    }
    if (_61) {
      _71 = rsqrt(_59);  // [sem: rsqrt_val]
      _73 = tan(_60 * _48);
      _81 = tan(_69 * _48);
      _106 = (((((_69 * _57) * _71) * _73) / _81) + 0.5f);
      _107 = (((((_69 * _58) * _71) * _73) / _81) + _56);
    } else {
      if (_48 < 0.0f) {
        _89 = rsqrt(_59);  // [sem: rsqrt_val]
        _90 = _48 * -10.0f;
        _92 = atan(_60 * _90);
        _100 = atan(_69 * _90);
        _106 = (((((_69 * _57) * _89) * _92) / _100) + 0.5f);
        _107 = (((((_69 * _58) * _89) * _92) / _100) + _56);
      } else {
        _106 = _54;
        _107 = _55;
      }
    }
    _110 = _106;
    _111 = (_107 * _39);
  } else {
    _110 = TEXCOORD.x;
    _111 = TEXCOORD.y;
  }
  _113 = (_110 * 2.0f) + -1.0f;
  _115 = 1.0f - (_111 * 2.0f);
  _120 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111))).x));
  _156 = mad((_invViewProj[2].w), _120, mad((_invViewProj[1].w), _115, ((_invViewProj[0].w) * _113))) + (_invViewProj[3].w);
  _157 = (mad((_invViewProj[2].x), _120, mad((_invViewProj[1].x), _115, ((_invViewProj[0].x) * _113))) + (_invViewProj[3].x)) / _156;
  _158 = (mad((_invViewProj[2].y), _120, mad((_invViewProj[1].y), _115, ((_invViewProj[0].y) * _113))) + (_invViewProj[3].y)) / _156;
  _159 = (mad((_invViewProj[2].z), _120, mad((_invViewProj[1].z), _115, ((_invViewProj[0].z) * _113))) + (_invViewProj[3].z)) / _156;
  _195 = mad((_invViewProjRelative[2].w), _120, mad((_invViewProjRelative[1].w), _115, ((_invViewProjRelative[0].w) * _113))) + (_invViewProjRelative[3].w);
  _212 = -0.0f - ((mad((_invViewProjRelative[2].x), _120, mad((_invViewProjRelative[1].x), _115, ((_invViewProjRelative[0].x) * _113))) + (_invViewProjRelative[3].x)) / _195);
  _213 = -0.0f - ((mad((_invViewProjRelative[2].y), _120, mad((_invViewProjRelative[1].y), _115, ((_invViewProjRelative[0].y) * _113))) + (_invViewProjRelative[3].y)) / _195);
  _214 = -0.0f - ((mad((_invViewProjRelative[2].z), _120, mad((_invViewProjRelative[1].z), _115, ((_invViewProjRelative[0].z) * _113))) + (_invViewProjRelative[3].z)) / _195);
  _216 = rsqrt(dot(float3(_212, _213, _214), float3(_212, _213, _214)));  // [sem: invLength]
  _217 = _216 * _212;
  _218 = _216 * _213;
  _219 = _216 * _214;
  _221 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _230 = WaveReadLaneFirst(_materialIndex);
  _238 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_230 < (uint)170000), _230, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._centerMaskWidth);
  _239 = ((((1.0f - TEXCOORD.x) * TEXCOORD.x) * TEXCOORD.y) * (1.0f - TEXCOORD.y)) * _238;
  _250 = _239 * 25.0f;
  _253 = TEXCOORD.x + -0.5f;
  _254 = TEXCOORD.y + -0.5f;
  _255 = abs(_253);
  _256 = abs(_254);
  _260 = min(_255, _256) / max(max(_255, _256), 9.99999993922529e-09f);
  _261 = _260 * _260;
  _268 = ((_261 * _260) * (((0.15931421518325806f - (_261 * 0.046496473252773285f)) * _261) + -0.32762277126312256f)) + _260;
  _271 = select((_256 > _255), (1.5707963705062866f - _268), _268);
  _274 = select((_253 < 0.0f), (3.1415927410125732f - _271), _271);
  _281 = sqrt((_254 * _254) + (_253 * _253));
  _282 = select((_254 < 0.0f), (-0.0f - _274), _274) * 0.9549295902252197f;
  _285 = WaveReadLaneFirst(_materialIndex);
  _293 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_285 < (uint)170000), _285, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _300 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_293 < (uint)65000), _293, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_219, (_218 + (_time.x * 0.05000000074505806f))));
  _305 = WaveReadLaneFirst(_materialIndex);
  _313 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_305 < (uint)170000), _305, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _320 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_313 < (uint)65000), _313, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_218 + (_time.x * 0.15000000596046448f)), _217));
  _323 = _320.x + _300.x;
  _324 = _320.y + _300.y;
  _326 = abs(dot(float3(_217, _218, _219), float3(0.0f, 1.0f, 0.0f)));
  _328 = abs(dot(float3(_217, _218, _219), float3(0.0f, 0.0f, 1.0f)));
  _329 = _323 * _326;
  _330 = _324 * _326;
  _335 = (_329 * _328) + (_323 - _329);
  _341 = WaveReadLaneFirst(_materialIndex);
  _349 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_341 < (uint)170000), _341, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._sceneColorDistortionIntensity);
  _352 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_349 > 9.999999747378752e-05f) {
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _362 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_349 * ((_335 * 2.0f) + -0.9960784316062927f)) + _110), ((_349 * ((((_330 * _328) + (_324 - _330)) * 2.0f) + -0.9960784316062927f)) + _111)));
    _367 = _362.x;
    _368 = _362.y;
    _369 = _362.z;
  } else {
    _367 = _352.x;
    _368 = _352.y;
    _369 = _352.z;
  }
  _386 = frac(frac(dot(float2(float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(_110)))), float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(_111))))), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f);
  _392 = WaveReadLaneFirst(_materialIndex);
  _400 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_392 < (uint)170000), _392, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._fireIntensity);
  if (_400 > 9.999999747378752e-05f) {
    _404 = _400 * ((((_335 + -0.4000000059604645f) * 6.6666669845581055f) + -1.0f) * 0.20000000298023224f);
    _414 = (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_404 * (_386 + -0.5f)) + _110), ((_404 * (0.5f - _386)) + _111))))).x);
  } else {
    _414 = _221.x;
  }
  _420 = ((dot(float3(_367, _368, _369), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) - _221.y) * saturate(_250 * _250)) + _221.y;
  _431 = _time.x * 0.125f;
  _433 = WaveReadLaneFirst(_materialIndex);
  _441 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_433 < (uint)170000), _433, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._distortionTex);
  _448 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_441 < (uint)65000), _441, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_282, (_281 + _431)));
  _451 = _448.x * 0.20000000298023224f;
  _452 = _448.y * 0.20000000298023224f;
  _456 = WaveReadLaneFirst(_materialIndex);
  _464 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_456 < (uint)170000), _456, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _476 = WaveReadLaneFirst(_materialIndex);
  _484 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_476 < (uint)170000), _476, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _496 = WaveReadLaneFirst(_materialIndex);
  _504 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_496 < (uint)170000), _496, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._auraIntensity);
  _507 = saturate((_221.w + -0.10000000149011612f) * 1.1111111640930176f);  // [sem: expr_sat]
  _513 = ((_507 * _507) * (1.0f - saturate(exp2(log2(_239 * 15.0f) * 0.07000000029802322f)))) * (3.0f - (_507 * 2.0f));
  if (_504 > 9.999999747378752e-05f) {
    _517 = _513 * (_504 * _38);
    _522 = (_517 * 0.3185468018054962f);
    _523 = (_517 * 0.033104754984378815f);
    _524 = (_517 * 0.010022826492786407f);
  } else {
    _522 = 0.0f;
    _523 = 0.0f;
    _524 = 0.0f;
  }
  _525 = WaveReadLaneFirst(_materialIndex);
  _533 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_525 < (uint)170000), _525, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._bloodLineIntensity);
  _537 = saturate(saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_484 < (uint)65000), _484, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_452 + _282), ((_281 - _431) + _452))))).y) * 1.2000000476837158f) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_464 < (uint)65000), _464, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_451 + _282), ((_281 - (_time.x * 0.25f)) + _451))))).x)) - (_239 * 14.0f)) * _513;
  if (_533 > 9.999999747378752e-05f) {
    _541 = _537 * (_533 * _38);
    _545 = (_541 * 2.5371556282043457f);
    _546 = (_541 * 0.4479884207248688f);
    _547 = 0.0f;
  } else {
    _545 = _537;
    _546 = _537;
    _547 = _537;
  }
  _555 = uint((_bufferSizeAndInvSize.x * _110) + -0.5f);
  _556 = uint((_bufferSizeAndInvSize.y * _111) + -0.5f);
  _558 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_555, _556, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _561 = __3__36__0__0__g_gbufferNormal.Load(int3(_555, _556, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _579 = (saturate(_561.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _580 = (saturate(_561.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _581 = (saturate(_561.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _583 = rsqrt(dot(float3(_579, _580, _581), float3(_579, _580, _581)));  // [sem: invLength]
  _584 = _583 * _579;
  _585 = _583 * _580;
  _586 = _581 * _583;
  _589 = (((float)((uint)((uint)(((uint)((uint)(_558.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _590 = (((float)((uint)((uint)(_558.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
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
  _633 = WaveReadLaneFirst(_materialIndex);
  _641 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_633 < (uint)170000), _633, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _647 = _time.x * -0.009999999776482582f;
  _648 = (_157 * 0.019999999552965164f) + _647;
  _649 = (_159 * 0.019999999552965164f) + _647;
  _656 = (_158 * 0.019999999552965164f) + _647;
  _659 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_641 < (uint)65000), _641, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_649, _656));
  _665 = abs(_630 * _624);
  _666 = abs(_630 * _628);
  _669 = (_665 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_641 < (uint)65000), _641, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_648, _649)))).x) - _659.x)) + _659.x;
  _674 = WaveReadLaneFirst(_materialIndex);
  _682 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_674 < (uint)170000), _674, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _690 = (saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_641 < (uint)65000), _641, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_656, _648)))).x) - _669) * _666) + _669) * 0.30000001192092896f) + (_time.x * 0.10000000149011612f);
  _691 = _690 + (_157 * 0.10000000149011612f);
  _692 = _690 + (_159 * 0.10000000149011612f);
  _699 = _690 + (_158 * 0.10000000149011612f);
  _702 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_682 < (uint)65000), _682, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_692, _699));
  _710 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_682 < (uint)65000), _682, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_691, _692)))).w) - _702.w) * _665) + _702.w;
  // [sem: expr_sat]
  _714 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_682 < (uint)65000), _682, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_699, _691)))).w) - _710) * _666) + _710);
  _715 = _714 * 3.0f;
  _724 = _157 - _mainPosition.x;
  _725 = _158 - _mainPosition.y;
  _726 = _159 - _mainPosition.z;
  _735 = 1.0f - saturate(sqrt(((_724 * _724) + (_725 * _725)) + (_726 * _726)) * 0.0020000000949949026f);
  _738 = (_735 * _735) * (exp2(log2(saturate(_715)) * 5.400000095367432f) * _38);
  _741 = WaveReadLaneFirst(_materialIndex);
  _749 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_741 < (uint)170000), _741, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._scanRadius);
  _754 = _mainPosition.x - _157;
  _755 = _mainPosition.y - _158;
  _756 = _mainPosition.z - _159;
  _765 = WaveReadLaneFirst(_materialIndex);
  _773 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_765 < (uint)170000), _765, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._sphereMaskRatio);
  _778 = WaveReadLaneFirst(_materialIndex);
  _786 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_778 < (uint)170000), _778, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._scanRadiusEnd);
  _791 = _mainPosition.x - _157;
  _792 = _mainPosition.y - _158;
  _793 = _mainPosition.z - _159;
  _801 = WaveReadLaneFirst(_materialIndex);
  _809 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_801 < (uint)170000), _801, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndNoiseIntensity);
  _812 = WaveReadLaneFirst(_materialIndex);
  _820 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_812 < (uint)170000), _812, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndRatio);
  // [sem: expr_sat]
  _824 = saturate((_820 * (((saturate(((1.0f - ((1.0f / max(9.999999747378752e-06f, _749)) * sqrt(dot(float3(_754, _755, _756), float3(_754, _755, _756))))) * 2.500000238418579f) - _715) + -1.0f) * _773) + 1.0f)) * saturate((_809 * _714) - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _786)) * sqrt(dot(float3(_791, _792, _793), float3(_791, _792, _793))))) * 1.4285714626312256f)));
  if ((uint)(((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _110) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _111) + -0.5f)), 0)))).x) & 127) + -53) < (uint)15) {
    _833 = _221.w * 0.5f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _836 = WaveReadLaneFirst(_materialIndex);
    _844 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_836 < (uint)170000), _836, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
    _853 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_844 < (uint)65000), _844, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_833 + ((TEXCOORD.x * 2.0f) * _39)), (_833 + (((_time.x * 0.20000000298023224f) + TEXCOORD.y) * 2.0f)))))).x) + -0.20000000298023224f;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_856.x, _856.y);
    _877 = _853 * 0.01874999888241291f;
    _887 = uint((_bufferSizeAndInvSize.x * (_877 + _110)) + -0.5f);
    _888 = uint((_bufferSizeAndInvSize.y * (_877 + _111)) + -0.5f);
    _890 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_887, _888, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _893 = __3__36__0__0__g_gbufferNormal.Load(int3(_887, _888, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _911 = (saturate(_893.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _912 = (saturate(_893.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _913 = (saturate(_893.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _915 = rsqrt(dot(float3(_911, _912, _913), float3(_911, _912, _913)));  // [sem: invLength]
    _916 = _915 * _911;
    _917 = _915 * _912;
    _918 = _913 * _915;
    _921 = (((float)((uint)((uint)(((uint)((uint)(_890.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _922 = (((float)((uint)((uint)(_890.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _925 = (_921 + _922) * 0.5f;
    _926 = (_921 - _922) * 0.5f;
    _930 = (1.0f - abs(_925)) - abs(_926);
    _932 = rsqrt(dot(float3(_925, _926, _930), float3(_925, _926, _930)));  // [sem: invLength]
    _933 = _932 * _925;
    _934 = _932 * _926;
    _935 = _932 * _930;
    _937 = select((_918 >= 0.0f), 1.0f, -1.0f);
    _940 = -0.0f - (1.0f / (_937 + _918));
    _941 = _917 * _940;
    _942 = _941 * _916;
    _943 = _937 * _916;
    _952 = mad(_935, _916, mad(_934, _942, ((((_943 * _916) * _940) + 1.0f) * _933)));
    _956 = mad(_935, _917, mad(_934, (_937 + (_941 * _917)), ((_933 * _937) * _942)));
    _960 = mad(_935, _918, mad(_934, (-0.0f - _917), (-0.0f - (_943 * _933))));
    _962 = rsqrt(dot(float3(_952, _956, _960), float3(_952, _956, _960)));  // [sem: invLength]
    _963 = _962 * _952;
    _964 = _962 * _956;
    _965 = _962 * _960;
    _970 = _mainPosition.x - _157;
    _971 = _mainPosition.y - _158;
    _972 = _mainPosition.z - _159;
  // [sem: expr_sat]
    _977 = saturate(5.000000476837158f - (sqrt(dot(float3(_970, _971, _972), float3(_970, _971, _972))) * 0.1250000149011612f));
    if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_856.x)))))) + 0.5f) * _110), int((float((int)(int(float((int)((int)(_856.y)))))) + 0.5f) * _111), 0)))).x) & 255) == _renderPassEnemy) {
      _988 = WaveReadLaneFirst(_materialIndex);
      _996 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_988 < (uint)170000), _988, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._enemyMaskColor);
      _999 = (float)((uint)((uint)(((uint)(_996) >> 16) & 255)));
      _1002 = (float)((uint)((uint)(((uint)(_996) >> 8) & 255)));
      _1004 = (float)((uint)((uint)(_996 & 255)));
      _1051 = exp2(log2(saturate(_335 * 0.5f)) * 2.4000000953674316f) * (((((_853 * 3.25f) + 1.2999999523162842f) * _38) * _977) * exp2(log2(abs(dot(float3(_963, _964, _965), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f));
      _1054 = (((select(((_999 * 0.003921568859368563f) < 0.040449999272823334f), (_999 * 0.0003035269910469651f), exp2(log2((_999 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) + -1.0f) * _977) + 1.0f);
      _1055 = (((select(((_1002 * 0.003921568859368563f) < 0.040449999272823334f), (_1002 * 0.0003035269910469651f), exp2(log2((_1002 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) + -1.0f) * _977) + 1.0f);
      _1056 = (((select(((_1004 * 0.003921568859368563f) < 0.040449999272823334f), (_1004 * 0.0003035269910469651f), exp2(log2((_1004 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) + -1.0f) * _977) + 1.0f);
      _1057 = _1051;
      _1058 = (_1051 * 0.15000000596046448f);
    } else {
      _1054 = 1.0f;
      _1055 = 1.0f;
      _1056 = 1.0f;
      _1057 = 0.0f;
      _1058 = 0.0f;
    }
    _1070 = ((_853 * 1.25f) * exp2(log2(1.0f - abs(dot(float3(_963, _964, _965), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f)) * _38;
    _1076 = 0.0f;
    _1077 = 0.0f;
    _1078 = 0.0f;
    _1079 = 0.0f;
    _1080 = _1054;
    _1081 = _1055;
    _1082 = _1056;
    _1083 = (_1057 + (_1070 * 0.3185468018054962f));
    _1084 = (_1058 + (_1070 * 0.033104754984378815f));
  } else {
    _1076 = (_414 * 0.2632734179496765f);
    _1077 = (_414 * 0.05087609216570854f);
    _1078 = (_738 * 0.07323896884918213f);
    _1079 = (_738 * 0.003935939632356167f);
    _1080 = 1.0f;
    _1081 = 1.0f;
    _1082 = 1.0f;
    _1083 = 0.0f;
    _1084 = 0.0f;
  }
  _1085 = WaveReadLaneFirst(_materialIndex);
  _1093 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_1085 < (uint)170000), _1085, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._fogIntensity);
  _1113 = saturate(saturate(exp2(log2(_239 * 20.0f) * 0.5f)));  // [sem: expr_sat]
  _1133 = ((((((_522 - _367) + _545) + _1078) + _1083) + ((((_1093 * (((lerp(_367, _420, 0.5f)) * 0.800000011920929f) - _1076)) + _1076) * saturate(_1080 + 0.20000000298023224f)) * _1113)) * _824) + _367;
  _1134 = ((((((_523 - _368) + _546) + _1079) + _1084) + ((((_1093 * (((lerp(_368, _420, 0.5f)) * 0.800000011920929f) - _1077)) + _1077) * saturate(_1081 + 0.20000000298023224f)) * _1113)) * _824) + _368;
  _1135 = ((((_524 - _369) + _547) + (((((lerp(_369, _420, 0.5f)) * 0.800000011920929f) * _1093) * saturate(_1082 + 0.20000000298023224f)) * _1113)) * _824) + _369;
  _1136 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1149 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _1136, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1149 = 0.0f;
  }
  _1152 = (_localToneMappingParams.w > 0.0f);
  if (_1152) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1133, _1134, _1135));
    _1412 = _rndx_tonemapped_color.x;
    _1413 = _rndx_tonemapped_color.y;
    _1414 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1420 = 1.0f - abs(_etcParams.w);
      _1424 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1425 = (_1420 * _1412) + _1424;
      _1426 = (_1420 * _1413) + _1424;
      _1427 = (_1420 * _1414) + _1424;
      if (_colorGradingParams.w > 0.0f) {
        _1432 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1449 = (((max(0.0f, (1.0f - _1425)) - _1425) * _1432) + _1425);
        _1450 = (((max(0.0f, (1.0f - _1426)) - _1426) * _1432) + _1426);
        _1451 = (((max(0.0f, (1.0f - _1427)) - _1427) * _1432) + _1427);
      } else {
        _1449 = _1425;
        _1450 = _1426;
        _1451 = _1427;
      }
      _1457 = _userImageAdjust.y + 1.0f;
      _1461 = _userImageAdjust.x + 0.5f;
      _1462 = ((_1449 + -0.5f) * _1457) + _1461;
      _1463 = ((_1450 + -0.5f) * _1457) + _1461;
      _1464 = ((_1451 + -0.5f) * _1457) + _1461;
      _1494 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _1505 = exp2(log2(saturate(mad(_colorBlind0.z, _1464, mad(_colorBlind0.y, _1463, (_colorBlind0.x * _1462))))) * _1494);
      _1506 = exp2(log2(saturate(mad(_colorBlind1.z, _1464, mad(_colorBlind1.y, _1463, (_colorBlind1.x * _1462))))) * _1494);
      _1507 = exp2(log2(saturate(mad(_colorBlind2.z, _1464, mad(_colorBlind2.y, _1463, (_colorBlind2.x * _1462))))) * _1494);
    } else {
      _1505 = _1412;
      _1506 = _1413;
      _1507 = _1414;
    }
  } else {
    _1505 = _1133;
    _1506 = _1134;
    _1507 = _1135;
  }
  if (_etcParams.y > 1.0f) {
    _1516 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1517 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1521 = saturate(1.0f - (dot(float2(_1516, _1517), float2(_1516, _1517)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1526 = (_1521 * _1505);
    _1527 = (_1521 * _1506);
    _1528 = (_1521 * _1507);
  } else {
    _1526 = _1505;
    _1527 = _1506;
    _1528 = _1507;
  }
  if (_1152 && (_etcParams.z > 0.0f)) {
    _1558 = select((_1526 <= 0.0031308000907301903f), (_1526 * 12.920000076293945f), (((pow(_1526, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1559 = select((_1527 <= 0.0031308000907301903f), (_1527 * 12.920000076293945f), (((pow(_1527, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1560 = select((_1528 <= 0.0031308000907301903f), (_1528 * 12.920000076293945f), (((pow(_1528, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1558 = _1526;
    _1559 = _1527;
    _1560 = _1528;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1565 = (float)((uint)_1136);
    if (!(_1565 < _viewDir.w)) {
      if (!(_1565 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1574 = _1558;
        _1575 = _1559;
        _1576 = _1560;
      } else {
        _1574 = 0.0f;
        _1575 = 0.0f;
        _1576 = 0.0f;
      }
    } else {
      _1574 = 0.0f;
      _1575 = 0.0f;
      _1576 = 0.0f;
    }
  } else {
    _1574 = _1558;
    _1575 = _1559;
    _1576 = _1560;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1574, _1575, _1576), _sunDirection.y, _moonDirection.y);
    _1574 = _rndx_final_color.x;
    _1575 = _rndx_final_color.y;
    _1576 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1574;
  SV_Target.y = _1575;
  SV_Target.z = _1576;
  SV_Target.w = _1149;
  return SV_Target;
}
