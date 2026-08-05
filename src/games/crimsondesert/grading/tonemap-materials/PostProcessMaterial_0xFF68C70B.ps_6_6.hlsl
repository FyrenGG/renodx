struct PostProcessLensFlareForGimmick_CDStruct {
  uint _lensDirtTexture;
  uint _lensColorTableTexture;
  uint _noiseTex;
  uint _noiseTex2;
  float _lensflareRatio;
  float _sunFlareScale;
  float _sunFlareIntensity;
  float _sunFlareAnimSpeed;
  float _sunFlareWeightThreshold;
  float _sunFlareWeightIntensity;
  float _lensDirtIntensity;
  float _lensDirtThreshold;
  float _chromaticShiftValue;
  float _useFishUV;
  float _fishEyeIntensity;
};

struct BindlessParameters_PostProcessLensFlareForGimmick_CD {
  PostProcessLensFlareForGimmick_CDStruct BindlessParameters_PostProcessLensFlareForGimmick_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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

typedef BindlessParameters_PostProcessLensFlareForGimmick_CD BindlessParameters_PostProcessLensFlareForGimmick_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLensFlareForGimmick_CD_t> BindlessParameters_PostProcessLensFlareForGimmick_CD[] : register(b0, space100);

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
  int _26;
  float _34;
  float _35;
  float _36;
  float _44;
  float _45;
  float _46;
  float4 _49;
  float _55;
  float _58;
  float _61;
  float _70;
  float _79;
  float _88;
  float _92;
  int _95;
  float _103;
  float _107;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  float _154;
  float _155;
  float _1201;
  float _1202;
  float _1203;
  float _1217;
  float _1422;
  float _1423;
  float _1424;
  float _1517;
  float _1518;
  float _1519;
  float _1573;
  float _1574;
  float _1575;
  float _1594;
  float _1595;
  float _1596;
  float _1626;
  float _1627;
  float _1628;
  float _1642;
  float _1643;
  float _1644;
  float _120;
  float _124;
  float _129;
  float _131;
  float _140;
  float _144;
  float _146;
  int _158;
  float _166;
  bool _167;
  float _169;
  float _172;
  float _173;
  float _189;
  float _198;
  float _208;
  float _227;
  float _249;
  float _250;
  float _252;
  bool _253;
  bool _254;
  bool _255;
  bool _256;
  bool _257;
  float _262;
  bool _263;
  bool _264;
  float _266;
  float _270;
  int _273;
  int _281;
  int _284;
  float _292;
  int _295;
  float _303;
  float _304;
  float _305;
  int _308;
  float _316;
  float _323;
  float _324;
  int _327;
  float _335;
  float _338;
  int _341;
  int _349;
  float4 _365;
  float _373;
  float _376;
  float _383;
  float _387;
  float _388;
  float _389;
  float _408;
  int _411;
  int _419;
  float _423;
  float _425;
  bool _426;
  bool _427;
  float4 _448;
  float _455;
  bool _456;
  bool _457;
  bool _458;
  bool _459;
  float4 _476;
  float _486;
  float _494;
  float _503;
  float _517;
  int _520;
  int _528;
  float4 _535;
  int _541;
  float _549;
  int _552;
  float _560;
  float _567;
  float _571;
  int _574;
  float _582;
  float4 _595;
  float _598;
  float _733;
  float _734;
  float _736;
  bool _737;
  bool _738;
  bool _739;
  bool _740;
  bool _741;
  float _746;
  bool _747;
  bool _748;
  float _750;
  float _754;
  int _757;
  int _765;
  int _768;
  float _776;
  int _779;
  float _787;
  float _788;
  float _789;
  int _792;
  float _800;
  float _807;
  float _808;
  int _811;
  float _819;
  float _822;
  int _825;
  int _833;
  float4 _849;
  float _857;
  float _860;
  float _867;
  float _871;
  float _872;
  float _873;
  float _892;
  int _895;
  int _903;
  float _907;
  float _909;
  bool _910;
  bool _911;
  float4 _932;
  float _939;
  bool _940;
  bool _941;
  bool _942;
  bool _943;
  float4 _960;
  float _970;
  float _978;
  float _987;
  float _1001;
  int _1004;
  int _1012;
  float4 _1019;
  int _1025;
  float _1033;
  int _1036;
  float _1044;
  float _1051;
  float _1055;
  int _1058;
  float _1066;
  float4 _1079;
  float _1082;
  uint _1204;
  bool _1220;
  float _1226;
  float _1245;
  float _1261;
  float _1277;
  float _1278;
  float _1282;
  float _1285;
  float _1288;
  float _1295;
  float _1302;
  float _1309;
  float _1310;
  float _1311;
  float _1312;
  float _1313;
  float _1314;
  float _1315;
  float _1331;
  float _1347;
  float _1363;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1384;
  float _1385;
  float _1386;
  float _1387;
  float _1390;
  float _1393;
  float _1397;
  float _1401;
  float _1405;
  float _1425;
  float _1437;
  float _1449;
  float _1461;
  float _1468;
  float _1475;
  float _1482;
  float _1488;
  float _1489;
  float _1491;
  float _1493;
  float _1495;
  float _1500;
  float _1521;
  float _1523;
  float _1526;
  float _1529;
  float _1532;
  float _1538;
  float _1580;
  float _1583;
  float _1589;
  float _1631;
  float _1648;
  float _1652;
  float _1656;
  _26 = WaveReadLaneFirst(_materialIndex);
  _34 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_26 < (uint)170000), _26, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
  _35 = TEXCOORD.x + -0.5f;
  _36 = TEXCOORD.y + -0.5f;
  _44 = (rsqrt(dot(float2(_35, _36), float2(_35, _36))) * _34) * sqrt((_36 * _36) + (_35 * _35));
  _45 = _44 * _35;
  _46 = _44 * _36;
  _49 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _55 = (pow(_49.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _58 = (pow(_49.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _61 = (pow(_49.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _70 = exp2(log2(max(0.0f, (_55 + -0.8359375f)) / (18.851562f - (_55 * 18.6875f))) * 6.277395f) * 10000.0f;
  _79 = exp2(log2(max(0.0f, (_58 + -0.8359375f)) / (18.851562f - (_58 * 18.6875f))) * 6.277395f) * 10000.0f;
  _88 = exp2(log2(max(0.0f, (_61 + -0.8359375f)) / (18.851562f - (_61 * 18.6875f))) * 6.277395f) * 10000.0f;
  _92 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
  _107 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _110 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
  _111 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _112 = 0.5f / _111;
  _113 = _107 + -0.5f;
  _114 = _110 - _112;
  _115 = dot(float2(_113, _114), float2(_113, _114));
  _116 = sqrt(_115);
  if (_103 > 0.0f) {
    _124 = sqrt(dot(float2(0.5f, _112), float2(0.5f, _112)));
    _129 = tan(_124 * _103);
    _131 = tan(_116 * _103) * (rsqrt(_115) * _124);
    _154 = (((_131 * _114) / _129) + _112);
    _155 = (((_131 * _113) / _129) + 0.5f);
  } else {
    _120 = select((_111 < 1.0f), 0.5f, _112);
    if (_103 < 0.0f) {
      _140 = _103 * -10.0f;
      _144 = atan(_120 * _140);
      _146 = atan(_116 * _140) * (rsqrt(_115) * _120);
      _154 = (((_146 * _114) / _144) + _112);
      _155 = (((_146 * _113) / _144) + 0.5f);
    } else {
      _154 = _110;
      _155 = _107;
    }
  }
  _158 = WaveReadLaneFirst(_materialIndex);
  _166 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _167 = (_166 == 1.0f);
  _169 = select(_167, _155, TEXCOORD.x) + -0.5f;
  _172 = select(_167, (_154 * _111), TEXCOORD.y) + -0.5f;
  _173 = _169 * _92;
  _189 = (_viewProj[3].w) + mad((_viewProj[3].z), _questGuideWorldPosition.z, mad((_viewProj[3].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[3].x))));
  _198 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[2].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[2].x)))) + (_viewProj[2].w)) / _189;
  _208 = ((mad((_viewProj[1].z), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[1].x)))) + (_viewProj[1].w)) / _189) * -0.5f;
  _227 = (_92 * 0.5f) * (((_viewProj[0].w) + mad((_viewProj[0].z), _questGuideWorldPosition.z, mad((_viewProj[0].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[0].x))))) / _189);
  if ((!(abs(_questGuideWorldPosition.x) <= 1e-05f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 1e-05f))) && (!(abs(_questGuideWorldPosition.y) <= 1e-05f)))) {
    if (!((_227 <= -1.5f) || ((_198 < 0.0f) || ((_227 <= -1.6f) || (((_208 >= 1.05f) || (_208 <= -1.5f)) || (_227 >= 1.6f)))))) {
      _249 = _173 - _227;
      _250 = _172 - _208;
      _252 = atan(_249 / _250);
      _253 = (_250 < 0.0f);
      _254 = (_250 == 0.0f);
      _255 = (_249 >= 0.0f);
      _256 = (_249 < 0.0f);
      _257 = _253 && _256;
      _262 = select(_257, (_252 + -3.1415927f), select((_253 && _255), (_252 + 3.1415927f), _252));
      _263 = _254 && _256;
      _264 = _254 && _255;
      _266 = select(_264, 1.5707964f, select(_263, -1.5707964f, _262));
      _270 = sqrt((_249 * _249) + (_250 * _250));
      _273 = WaveReadLaneFirst(_materialIndex);
      _281 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_273 < (uint)170000), _273, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _284 = WaveReadLaneFirst(_materialIndex);
      _292 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_284 < (uint)170000), _284, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
      _295 = WaveReadLaneFirst(_materialIndex);
      _303 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_295 < (uint)170000), _295, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
      _304 = _227 - _173;
      _305 = _208 - _172;
      _308 = WaveReadLaneFirst(_materialIndex);
      _316 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_308 < (uint)170000), _308, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
      _323 = max((0.02f / (sqrt((_304 * _304) + (_305 * _305)) * _316)), 0.0f);
      _324 = _323 * _323;
      _327 = WaveReadLaneFirst(_materialIndex);
      _335 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_327 < (uint)170000), _327, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
      _338 = _time.x * _335;
      _341 = WaveReadLaneFirst(_materialIndex);
      _349 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_341 < (uint)170000), _341, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _365 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_349 < (uint)65000), _349, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_338 - cos((_266 * 3.0f) + _208)) + (sin((_266 * 2.0f) + _227) * 4.0f)), _338));
      _373 = 1.0f / exp2((_270 * 1.442695f) * ((frac(_365.x) * 0.66f) + 0.33f));
      _376 = frac((_373 * 20.0f) + 1.003125f);
      _383 = exp2(log2(1.0f - abs((_373 * 2.0f) + -1.0f)) * 0.3f);
      _387 = sin(select(_264, 6.2831855f, select(_263, -6.2831855f, (_262 * 4.0f))));
      _388 = _387 * _249;
      _389 = _387 * _250;
      _408 = (_373 * 0.49999997f) * exp2(log2((exp2(log2(1.0f - saturate(sqrt((_388 * _388) + (_389 * _389)))) * 8.0f) + (saturate(_373 + -0.9f) * 3.0f)) * _373) * 12.95f);
      _411 = WaveReadLaneFirst(_materialIndex);
      _419 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_411 < (uint)170000), _411, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _423 = exp2(log2(_270 * 16.0f) * 0.5f);
      _425 = atan(_250 / _249);
      _426 = (_249 == 0.0f);
      _427 = (_250 >= 0.0f);
      _448 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_419 < (uint)65000), _419, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_427 && _426), 2.3561945f, select((_253 && _426), -2.3561945f, (select(_257, (_425 + -3.1415927f), select((_427 && _256), (_425 + 3.1415927f), _425)) * 1.5f))), ((_time.x * 0.2f) - _423)));
      _455 = atan((-0.0f - _250) / (-0.0f - _249));
      _456 = (_249 > -0.0f);
      _457 = (_249 == -0.0f);
      _458 = (_250 <= -0.0f);
      _459 = (_250 > -0.0f);
      _476 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_419 < (uint)65000), _419, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_458 && _457), 2.3561945f, select((_459 && _457), -2.3561945f, (select((_459 && _456), (_455 + -3.1415927f), select((_458 && _456), (_455 + 3.1415927f), _455)) * 1.5f))), ((_time.x * 0.2f) - (_423 * 0.5f))));
      _486 = exp2(log2(min(max((1.0f - (_270 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
      _494 = exp2(log2(min(max((1.1f - (_270 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
      _503 = (((pow(_270, 0.1f)) * 0.1f) + 0.8f) + (sin(_365.x * 8.0f) * 0.2f);
      _517 = (exp2(log2(saturate(1.0f - (sqrt((_172 * _172) + (_169 * _169)) * _292))) * _303) * 150.0f) * _exposure2.x;
      _520 = WaveReadLaneFirst(_materialIndex);
      _528 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_520 < (uint)170000), _520, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
      _535 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_528 < (uint)65000), _528, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _541 = WaveReadLaneFirst(_materialIndex);
      _549 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_541 < (uint)170000), _541, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
      _552 = WaveReadLaneFirst(_materialIndex);
      _560 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_552 < (uint)170000), _552, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
      _567 = ((_viewDir.x + _viewDir.y) * 33.600002f) + (TEXCOORD.x * 0.1f);
      _571 = frac(sin(floor(_567)) * 43758.547f);
      _574 = WaveReadLaneFirst(_materialIndex);
      _582 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_574 < (uint)170000), _574, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _595 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _598 = ((((((frac(sin(ceil(_567)) * 43758.547f) - _571) * frac(_567)) + _571) * 0.65f) + 0.35f) * _582) * _595.w;
      _1201 = (((saturate(((saturate(pow(_535.z, _549)) + -1.0f) * _560) + 1.0f) * _598) * (((((((((min(max((abs((frac(_376 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _383) + 1.0f) * _408) + (((exp2(log2(saturate(max(_448.z, _476.z))) * 4.0f) * _486) + _494) * 7.0f)) * _503) + _324) * _517) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_45 + TEXCOORD.x), (_46 + TEXCOORD.y))))).z))) + _88);
      _1202 = (((saturate(((saturate(pow(_535.y, _549)) + -1.0f) * _560) + 1.0f) * _598) * (((((((((min(max((abs((frac(_376 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _383) + 1.0f) * _408) + (((exp2(log2(saturate(max(_448.y, _476.y))) * 4.0f) * _486) + _494) * 5.6f)) * _503) + _324) * _517) + _595.y)) + _79);
      _1203 = (((saturate(((saturate(pow(_535.x, _549)) + -1.0f) * _560) + 1.0f) * _598) * (((((((((min(max((abs((frac(_376 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _383) + 1.0f) * _408) + (((exp2(log2(saturate(max(_448.x, _476.x))) * 4.0f) * _486) + _494) * 5.6f)) * _503) + _324) * _517) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _45), (TEXCOORD.y - _46))))).x))) + _70);
    } else {
      _1201 = _88;
      _1202 = _79;
      _1203 = _70;
    }
  } else {
    if (!((_198 < 0.0f) || ((_227 <= -1.5f) || ((_227 <= -1.6f) || (((_208 >= 1.05f) || (_208 <= -1.5f)) || (_227 >= 1.6f)))))) {
      if (!(abs(_questGuideWorldPosition.z) <= 1e-05f)) {
        _733 = _173 - _227;
        _734 = _172 - _208;
        _736 = atan(_733 / _734);
        _737 = (_734 < 0.0f);
        _738 = (_734 == 0.0f);
        _739 = (_733 >= 0.0f);
        _740 = (_733 < 0.0f);
        _741 = _737 && _740;
        _746 = select(_741, (_736 + -3.1415927f), select((_737 && _739), (_736 + 3.1415927f), _736));
        _747 = _738 && _740;
        _748 = _738 && _739;
        _750 = select(_748, 1.5707964f, select(_747, -1.5707964f, _746));
        _754 = sqrt((_733 * _733) + (_734 * _734));
        _757 = WaveReadLaneFirst(_materialIndex);
        _765 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_757 < (uint)170000), _757, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _768 = WaveReadLaneFirst(_materialIndex);
        _776 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_768 < (uint)170000), _768, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
        _779 = WaveReadLaneFirst(_materialIndex);
        _787 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_779 < (uint)170000), _779, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
        _788 = _227 - _173;
        _789 = _208 - _172;
        _792 = WaveReadLaneFirst(_materialIndex);
        _800 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_792 < (uint)170000), _792, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareScale);
        _807 = max((0.02f / (sqrt((_788 * _788) + (_789 * _789)) * _800)), 0.0f);
        _808 = _807 * _807;
        _811 = WaveReadLaneFirst(_materialIndex);
        _819 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_811 < (uint)170000), _811, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
        _822 = _time.x * _819;
        _825 = WaveReadLaneFirst(_materialIndex);
        _833 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_825 < (uint)170000), _825, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _849 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_833 < (uint)65000), _833, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_822 - cos((_750 * 3.0f) + _208)) + (sin((_750 * 2.0f) + _227) * 4.0f)), _822));
        _857 = 1.0f / exp2((_754 * 1.442695f) * ((frac(_849.x) * 0.66f) + 0.33f));
        _860 = frac((_857 * 20.0f) + 1.003125f);
        _867 = exp2(log2(1.0f - abs((_857 * 2.0f) + -1.0f)) * 0.3f);
        _871 = sin(select(_748, 6.2831855f, select(_747, -6.2831855f, (_746 * 4.0f))));
        _872 = _871 * _733;
        _873 = _871 * _734;
        _892 = (_857 * 0.49999997f) * exp2(log2((exp2(log2(1.0f - saturate(sqrt((_872 * _872) + (_873 * _873)))) * 8.0f) + (saturate(_857 + -0.9f) * 3.0f)) * _857) * 12.95f);
        _895 = WaveReadLaneFirst(_materialIndex);
        _903 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_895 < (uint)170000), _895, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _907 = exp2(log2(_754 * 16.0f) * 0.5f);
        _909 = atan(_734 / _733);
        _910 = (_733 == 0.0f);
        _911 = (_734 >= 0.0f);
        _932 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_903 < (uint)65000), _903, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_911 && _910), 2.3561945f, select((_737 && _910), -2.3561945f, (select(_741, (_909 + -3.1415927f), select((_911 && _740), (_909 + 3.1415927f), _909)) * 1.5f))), ((_time.x * 0.2f) - _907)));
        _939 = atan((-0.0f - _734) / (-0.0f - _733));
        _940 = (_733 > -0.0f);
        _941 = (_733 == -0.0f);
        _942 = (_734 <= -0.0f);
        _943 = (_734 > -0.0f);
        _960 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_903 < (uint)65000), _903, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_942 && _941), 2.3561945f, select((_943 && _941), -2.3561945f, (select((_943 && _940), (_939 + -3.1415927f), select((_942 && _940), (_939 + 3.1415927f), _939)) * 1.5f))), ((_time.x * 0.2f) - (_907 * 0.5f))));
        _970 = exp2(log2(min(max((1.0f - (_754 * 2.0f)), 0.0f), 1.0f)) * 5.2f);
        _978 = exp2(log2(min(max((1.1f - (_754 * 4.0f)), 0.0f), 1.0f)) * 4.2f) * 0.1f;
        _987 = (((pow(_754, 0.1f)) * 0.1f) + 0.8f) + (sin(_849.x * 8.0f) * 0.2f);
        _1001 = (exp2(log2(saturate(1.0f - (sqrt((_172 * _172) + (_169 * _169)) * _776))) * _787) * 150.0f) * _exposure2.x;
        _1004 = WaveReadLaneFirst(_materialIndex);
        _1012 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1004 < (uint)170000), _1004, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtTexture);
        _1019 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1012 < (uint)65000), _1012, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
        _1025 = WaveReadLaneFirst(_materialIndex);
        _1033 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1025 < (uint)170000), _1025, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtThreshold);
        _1036 = WaveReadLaneFirst(_materialIndex);
        _1044 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1036 < (uint)170000), _1036, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensDirtIntensity);
        _1051 = ((_viewDir.x + _viewDir.y) * 33.600002f) + (TEXCOORD.x * 0.1f);
        _1055 = frac(sin(floor(_1051)) * 43758.547f);
        _1058 = WaveReadLaneFirst(_materialIndex);
        _1066 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1058 < (uint)170000), _1058, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensflareRatio);
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1079 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _1082 = ((((((frac(sin(ceil(_1051)) * 43758.547f) - _1055) * frac(_1051)) + _1055) * 0.65f) + 0.35f) * _1066) * _1079.w;
        _1201 = (((saturate(((saturate(pow(_1019.z, _1033)) + -1.0f) * _1044) + 1.0f) * _1082) * (((((((((min(max((abs((frac(_860 + 0.33333334f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _867) + 1.0f) * _892) + (((exp2(log2(saturate(max(_932.z, _960.z))) * 4.0f) * _970) + _978) * 7.0f)) * _987) + _808) * _1001) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_45 + TEXCOORD.x), (_46 + TEXCOORD.y))))).z))) + _88);
        _1202 = (((saturate(((saturate(pow(_1019.y, _1033)) + -1.0f) * _1044) + 1.0f) * _1082) * (((((((((min(max((abs((frac(_860 + 0.6666667f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _867) + 1.0f) * _892) + (((exp2(log2(saturate(max(_932.y, _960.y))) * 4.0f) * _970) + _978) * 5.6f)) * _987) + _808) * _1001) + _1079.y)) + _79);
        _1203 = (((saturate(((saturate(pow(_1019.x, _1033)) + -1.0f) * _1044) + 1.0f) * _1082) * (((((((((min(max((abs((frac(_860 + 1.0f) * 6.0f) + -3.0f) + -1.0f), 0.0f), 1.0f) + -1.0f) * _867) + 1.0f) * _892) + (((exp2(log2(saturate(max(_932.x, _960.x))) * 4.0f) * _970) + _978) * 5.6f)) * _987) + _808) * _1001) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _45), (TEXCOORD.y - _46))))).x))) + _70);
      } else {
        _1201 = _88;
        _1202 = _79;
        _1203 = _70;
      }
    } else {
      _1201 = _88;
      _1202 = _79;
      _1203 = _70;
    }
  }
  _1204 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1217 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1204, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1217 = 1.0f;
  }
  _1220 = (_localToneMappingParams.w > 0.0f);
  if (_1220) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1203, _1202, _1201));
    _1468 = _rndx_tonemapped_color.x;
    _1475 = _rndx_tonemapped_color.y;
    _1482 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1488 = 1.0f - abs(_etcParams.w);
      _1489 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1491 = (_1488 * _1468) + _1489;
      _1493 = (_1488 * _1475) + _1489;
      _1495 = (_1488 * _1482) + _1489;
      if (_colorGradingParams.w > 0.0f) {
        _1500 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1517 = (((max(0.0f, (1.0f - _1495)) - _1495) * _1500) + _1495);
        _1518 = (((max(0.0f, (1.0f - _1493)) - _1493) * _1500) + _1493);
        _1519 = (((max(0.0f, (1.0f - _1491)) - _1491) * _1500) + _1491);
      } else {
        _1517 = _1495;
        _1518 = _1493;
        _1519 = _1491;
      }
      _1521 = _userImageAdjust.y + 1.0f;
      _1523 = _userImageAdjust.x + 0.5f;
      _1526 = ((_1519 + -0.5f) * _1521) + _1523;
      _1529 = ((_1518 + -0.5f) * _1521) + _1523;
      _1532 = ((_1517 + -0.5f) * _1521) + _1523;
      _1538 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1573 = exp2(log2(saturate(mad(_colorBlind2.z, _1532, mad(_colorBlind2.y, _1529, (_colorBlind2.x * _1526))))) * _1538);
      _1574 = exp2(log2(saturate(mad(_colorBlind1.z, _1532, mad(_colorBlind1.y, _1529, (_colorBlind1.x * _1526))))) * _1538);
      _1575 = exp2(log2(saturate(mad(_colorBlind0.z, _1532, mad(_colorBlind0.y, _1529, (_colorBlind0.x * _1526))))) * _1538);
    } else {
      _1573 = _1482;
      _1574 = _1475;
      _1575 = _1468;
    }
  } else {
    _1573 = _1201;
    _1574 = _1202;
    _1575 = _1203;
  }
  if (_etcParams.y > 1.0f) {
    _1580 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1583 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1589 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1580, _1583), float2(_1580, _1583))));  // [sem: expr_sat]
    _1594 = (_1589 * _1573);
    _1595 = (_1589 * _1574);
    _1596 = (_1589 * _1575);
  } else {
    _1594 = _1573;
    _1595 = _1574;
    _1596 = _1575;
  }
  if (_1220 && (_etcParams.z > 0.0f)) {
    _1626 = select((_1594 <= 0.0031308f), (_1594 * 12.92f), (((pow(_1594, 0.41666666f)) * 1.055f) + -0.055f));
    _1627 = select((_1595 <= 0.0031308f), (_1595 * 12.92f), (((pow(_1595, 0.41666666f)) * 1.055f) + -0.055f));
    _1628 = select((_1596 <= 0.0031308f), (_1596 * 12.92f), (((pow(_1596, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1626 = _1594;
    _1627 = _1595;
    _1628 = _1596;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1631 = (float)((uint)((uint)(_1204)));
    if (!(_1631 < _viewDir.w)) {
      if (!(!(_1631 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1642 = 0.0f;
        _1643 = 0.0f;
        _1644 = 0.0f;
      } else {
        _1642 = _1626;
        _1643 = _1627;
        _1644 = _1628;
      }
    } else {
      _1642 = 0.0f;
      _1643 = 0.0f;
      _1644 = 0.0f;
    }
  } else {
    _1642 = _1626;
    _1643 = _1627;
    _1644 = _1628;
  }
  _1648 = exp2(log2(_1644 * 0.0001f) * 0.15930176f);
  _1652 = exp2(log2(_1643 * 0.0001f) * 0.15930176f);
  _1656 = exp2(log2(_1642 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1648 * 18.6875f) + 1.0f)) * ((_1648 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1652 * 18.6875f) + 1.0f)) * ((_1652 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1656 * 18.6875f) + 1.0f)) * ((_1656 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1217;
  return SV_Target;
}
