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

struct BindlessParameters_PostProcessEdgeBlur_CD {
  PostProcessEdgeBlur_CDStruct BindlessParameters_PostProcessEdgeBlur_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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
  int _27;
  float _35;
  float _39;
  int _42;
  float _50;
  float _218;
  float _219;
  float _1789;
  float _1790;
  float _1791;
  float _1792;
  float _1806;
  float _2011;
  float _2012;
  float _2013;
  float _2106;
  float _2107;
  float _2108;
  float _2162;
  float _2163;
  float _2164;
  float _2183;
  float _2184;
  float _2185;
  float _2215;
  float _2216;
  float _2217;
  float _2231;
  float _2232;
  float _2233;
  int _55;
  float _63;
  float _67;
  float _71;
  float _77;
  float _81;
  float _85;
  float _87;
  float _88;
  float _89;
  float _91;
  float _94;
  float _106;
  float _115;
  float _124;
  float _133;
  float _135;
  float _136;
  float _137;
  float _138;
  float _139;
  float _142;
  float _143;
  float _144;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _155;
  float _159;
  float _166;
  float _168;
  float _169;
  float _170;
  float _172;
  bool _173;
  bool _174;
  bool _175;
  bool _176;
  int _179;
  float _187;
  float _191;
  int _222;
  float _230;
  float _234;
  int _237;
  int _245;
  float4 _258;
  int _263;
  float _271;
  float _272;
  int _275;
  float _283;
  int _286;
  float _294;
  float _299;
  float _304;
  uint2 _310;
  float4 _313;
  float _319;
  float _322;
  float _325;
  float _334;
  float _343;
  float _352;
  float4 _401;
  float _408;
  float _411;
  float _414;
  float _417;
  float _418;
  float4 _420;
  float _427;
  float _430;
  float _433;
  float4 _435;
  float _442;
  float _445;
  float _448;
  float _449;
  float4 _451;
  float _458;
  float _461;
  float _464;
  float4 _466;
  float _473;
  float _476;
  float _479;
  float4 _633;
  float _640;
  float _643;
  float _646;
  float _649;
  float _650;
  float4 _652;
  float _659;
  float _662;
  float _665;
  float4 _667;
  float _674;
  float _677;
  float _680;
  float _681;
  float4 _683;
  float _690;
  float _693;
  float _696;
  float4 _698;
  float _705;
  float _708;
  float _711;
  float4 _865;
  float _872;
  float _875;
  float _878;
  float _881;
  float _882;
  float4 _884;
  float _891;
  float _894;
  float _897;
  float4 _899;
  float _906;
  float _909;
  float _912;
  float _913;
  float4 _915;
  float _922;
  float _925;
  float _928;
  float4 _930;
  float _937;
  float _940;
  float _943;
  float4 _1097;
  float _1104;
  float _1107;
  float _1110;
  float _1113;
  float _1114;
  float4 _1116;
  float _1123;
  float _1126;
  float _1129;
  float4 _1131;
  float _1138;
  float _1141;
  float _1144;
  float _1145;
  float4 _1147;
  float _1154;
  float _1157;
  float _1160;
  float4 _1162;
  float _1169;
  float _1172;
  float _1175;
  float4 _1329;
  float _1336;
  float _1339;
  float _1342;
  float _1345;
  float _1346;
  float4 _1348;
  float _1355;
  float _1358;
  float _1361;
  float4 _1363;
  float _1370;
  float _1373;
  float _1376;
  float _1377;
  float4 _1379;
  float _1386;
  float _1389;
  float _1392;
  float4 _1394;
  float _1401;
  float _1404;
  float _1407;
  float4 _1561;
  float _1568;
  float _1571;
  float _1574;
  float _1577;
  float _1578;
  float4 _1580;
  float _1587;
  float _1590;
  float _1593;
  float4 _1595;
  float _1602;
  float _1605;
  float _1608;
  float _1609;
  float4 _1611;
  float _1618;
  float _1621;
  float _1624;
  float4 _1626;
  float _1633;
  float _1636;
  float _1639;
  uint _1793;
  bool _1809;
  float _1815;
  float _1834;
  float _1850;
  float _1866;
  float _1867;
  float _1871;
  float _1874;
  float _1877;
  float _1884;
  float _1891;
  float _1898;
  float _1899;
  float _1900;
  float _1901;
  float _1902;
  float _1903;
  float _1904;
  float _1920;
  float _1936;
  float _1952;
  float _1953;
  float _1954;
  float _1955;
  float _1956;
  float _1973;
  float _1974;
  float _1975;
  float _1976;
  float _1979;
  float _1982;
  float _1986;
  float _1990;
  float _1994;
  float _2014;
  float _2026;
  float _2038;
  float _2050;
  float _2057;
  float _2064;
  float _2071;
  float _2077;
  float _2078;
  float _2080;
  float _2082;
  float _2084;
  float _2089;
  float _2110;
  float _2112;
  float _2115;
  float _2118;
  float _2121;
  float _2127;
  float _2169;
  float _2172;
  float _2178;
  float _2220;
  float _2237;
  float _2241;
  float _2245;
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
  if (_50 > 0.001f) {
    _55 = WaveReadLaneFirst(_materialIndex);
    _63 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _67 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _71 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _77 = (_targetFocusPosition.x + _63) - _viewPos.x;
    _81 = (_targetFocusPosition.y + _67) - _viewPos.y;
    _85 = (_targetFocusPosition.z + _71) - _viewPos.z;
    _87 = rsqrt(dot(float3(_77, _81, _85), float3(_77, _81, _85)));  // [sem: invLength]
    _88 = _87 * _77;
    _89 = _85 * _87;
    _91 = (TEXCOORD.x * 2.0f) + -1.0f;
    _94 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _106 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _94, ((_invViewProjRelative[3].x) * _91));
    _115 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _94, ((_invViewProjRelative[0].x) * _91))) / _106;
    _124 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _94, ((_invViewProjRelative[1].x) * _91))) / _106;
    _133 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _94, ((_invViewProjRelative[2].x) * _91))) / _106;
    _135 = rsqrt(dot(float3(_115, _124, _133), float3(_115, _124, _133)));  // [sem: invLength]
    _136 = _135 * _115;
    _137 = _135 * _124;
    _138 = _135 * _133;
    _139 = -0.0f - _88;
    _142 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_88, (_87 * _81), _89)));
    _143 = sin(_142);
    _144 = cos(_142);
    _145 = 1.0f - _144;
    _146 = _145 * _89;
    _147 = _145 * _139;
    _148 = _143 * _89;
    _149 = _143 * _139;
    _155 = mad((_147 * _89), _138, mad(_149, _137, (((_146 * _89) + _144) * _136)));
    _159 = mad(_148, _138, mad(_144, _137, (-0.0f - (_136 * _149))));
    _166 = mad(((_147 * _139) + _144), _138, mad((-0.0f - _148), _137, ((_136 * _139) * _146)));
    _168 = rsqrt(dot(float3(_155, _159, _166), float3(_155, _159, _166)));  // [sem: invLength]
    _169 = _168 * _155;
    _170 = _168 * _166;
    _172 = atan(_170 / _169);
    _173 = (_169 < 0.0f);
    _174 = (_169 == 0.0f);
    _175 = (_170 >= 0.0f);
    _176 = (_170 < 0.0f);
    _179 = WaveReadLaneFirst(_materialIndex);
    _187 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _191 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _218 = ((_191 * 0.31830987f) * acos(_168 * _159));
    _219 = (select((_174 && _175), 0.75f, select((_174 && _176), 0.25f, ((select((_173 && _176), (_172 + -3.1415927f), select((_173 && _175), (_172 + 3.1415927f), _172)) * 0.15915494f) + 0.5f))) * _187);
  } else {
    _218 = (_39 * TEXCOORD.y);
    _219 = ((_35 * TEXCOORD.x) * (_screenSizeAndInvSize.x / _screenSizeAndInvSize.y));
  }
  _222 = WaveReadLaneFirst(_materialIndex);
  _230 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_222 < (uint)170000), _222, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
  _234 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_222 < (uint)170000), _222, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
  _237 = WaveReadLaneFirst(_materialIndex);
  _245 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_237 < (uint)170000), _237, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
  _258 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_245 < (uint)65000), _245, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * _230) + _219), ((_time.x * _234) + _218)));
  _263 = WaveReadLaneFirst(_materialIndex);
  _271 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_263 < (uint)170000), _263, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseOffset);
  _272 = _271 + -0.99607843f;
  _275 = WaveReadLaneFirst(_materialIndex);
  _283 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_275 < (uint)170000), _275, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  _286 = WaveReadLaneFirst(_materialIndex);
  _294 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_286 < (uint)170000), _286, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseIntensity);
  _299 = ((_294 * (_272 + (_258.x * 2.0f))) + 1.0f) * _283;
  _304 = ((_294 * (_272 + (_258.y * 2.0f))) + 1.0f) * _283;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_310.x, _310.y);
    _313 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _319 = (pow(_313.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _322 = (pow(_313.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _325 = (pow(_313.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _334 = exp2(log2(max(0.0f, (_319 + -0.8359375f)) / (18.851562f - (_319 * 18.6875f))) * 6.277395f) * 10000.0f;
    _343 = exp2(log2(max(0.0f, (_322 + -0.8359375f)) / (18.851562f - (_322 * 18.6875f))) * 6.277395f) * 10000.0f;
    _352 = exp2(log2(max(0.0f, (_325 + -0.8359375f)) / (18.851562f - (_325 * 18.6875f))) * 6.277395f) * 10000.0f;
    if (((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))) < 0.1f) {
      _1789 = select((((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_310.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_310.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == _renderPassTargetFocus), 1.0f, 0.0f);
      _1790 = _352;
      _1791 = _343;
      _1792 = _334;
    } else {
      _1789 = 0.0f;
      _1790 = _352;
      _1791 = _343;
      _1792 = _334;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _401 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _408 = (pow(_401.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _411 = (pow(_401.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _414 = (pow(_401.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _417 = _screenSizeAndInvSize.z * _299;
      _418 = _417 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _420 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_418 + TEXCOORD.x), TEXCOORD.y));
      _427 = (pow(_420.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _430 = (pow(_420.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _433 = (pow(_420.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _435 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _418), TEXCOORD.y));
      _442 = (pow(_435.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _445 = (pow(_435.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _448 = (pow(_435.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _449 = _417 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _451 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_449 + TEXCOORD.x), TEXCOORD.y));
      _458 = (pow(_451.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _461 = (pow(_451.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _464 = (pow(_451.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _466 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _449), TEXCOORD.y));
      _473 = (pow(_466.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _476 = (pow(_466.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _479 = (pow(_466.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _1789 = ((((_435.w + _420.w) * 0.31621623f) + (_401.w * 0.22702703f)) + ((_466.w + _451.w) * 0.07027027f));
      _1790 = (((exp2(log2(max(0.0f, (_414 + -0.8359375f)) / (18.851562f - (_414 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_433 + -0.8359375f)) / (18.851562f - (_433 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_448 + -0.8359375f)) / (18.851562f - (_448 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_464 + -0.8359375f)) / (18.851562f - (_464 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_479 + -0.8359375f)) / (18.851562f - (_479 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _1791 = (((exp2(log2(max(0.0f, (_411 + -0.8359375f)) / (18.851562f - (_411 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_430 + -0.8359375f)) / (18.851562f - (_430 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_445 + -0.8359375f)) / (18.851562f - (_445 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_461 + -0.8359375f)) / (18.851562f - (_461 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_476 + -0.8359375f)) / (18.851562f - (_476 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _1792 = (((exp2(log2(max(0.0f, (_408 + -0.8359375f)) / (18.851562f - (_408 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_427 + -0.8359375f)) / (18.851562f - (_427 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_442 + -0.8359375f)) / (18.851562f - (_442 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_458 + -0.8359375f)) / (18.851562f - (_458 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_473 + -0.8359375f)) / (18.851562f - (_473 * 18.6875f))) * 6.277395f)) * 702.7027f));
    } else {
      if (_passIndex == 2) {
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _633 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _640 = (pow(_633.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _643 = (pow(_633.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _646 = (pow(_633.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _649 = _screenSizeAndInvSize.w * _304;
        _650 = _649 * 1.3846154f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _652 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_650 + TEXCOORD.y)));
        _659 = (pow(_652.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _662 = (pow(_652.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _665 = (pow(_652.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _667 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _650)));
        _674 = (pow(_667.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _677 = (pow(_667.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _680 = (pow(_667.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _681 = _649 * 3.2307692f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _683 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_681 + TEXCOORD.y)));
        _690 = (pow(_683.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _693 = (pow(_683.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _696 = (pow(_683.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _698 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _681)));
        _705 = (pow(_698.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _708 = (pow(_698.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _711 = (pow(_698.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1789 = ((((_667.w + _652.w) * 0.31621623f) + (_633.w * 0.22702703f)) + ((_698.w + _683.w) * 0.07027027f));
        _1790 = (((exp2(log2(max(0.0f, (_646 + -0.8359375f)) / (18.851562f - (_646 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_665 + -0.8359375f)) / (18.851562f - (_665 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_680 + -0.8359375f)) / (18.851562f - (_680 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_696 + -0.8359375f)) / (18.851562f - (_696 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_711 + -0.8359375f)) / (18.851562f - (_711 * 18.6875f))) * 6.277395f)) * 702.7027f));
        _1791 = (((exp2(log2(max(0.0f, (_643 + -0.8359375f)) / (18.851562f - (_643 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_662 + -0.8359375f)) / (18.851562f - (_662 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_677 + -0.8359375f)) / (18.851562f - (_677 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_693 + -0.8359375f)) / (18.851562f - (_693 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_708 + -0.8359375f)) / (18.851562f - (_708 * 18.6875f))) * 6.277395f)) * 702.7027f));
        _1792 = (((exp2(log2(max(0.0f, (_640 + -0.8359375f)) / (18.851562f - (_640 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_659 + -0.8359375f)) / (18.851562f - (_659 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_674 + -0.8359375f)) / (18.851562f - (_674 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_690 + -0.8359375f)) / (18.851562f - (_690 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_705 + -0.8359375f)) / (18.851562f - (_705 * 18.6875f))) * 6.277395f)) * 702.7027f));
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _865 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _872 = (pow(_865.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _875 = (pow(_865.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _878 = (pow(_865.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _881 = _screenSizeAndInvSize.z * _299;
          _882 = _881 * 2.7692308f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _884 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_882 + TEXCOORD.x), TEXCOORD.y));
          _891 = (pow(_884.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _894 = (pow(_884.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _897 = (pow(_884.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _899 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _882), TEXCOORD.y));
          _906 = (pow(_899.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _909 = (pow(_899.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _912 = (pow(_899.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _913 = _881 * 6.4615383f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _915 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_913 + TEXCOORD.x), TEXCOORD.y));
          _922 = (pow(_915.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _925 = (pow(_915.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _928 = (pow(_915.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _930 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _913), TEXCOORD.y));
          _937 = (pow(_930.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _940 = (pow(_930.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _943 = (pow(_930.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1789 = ((((_899.w + _884.w) * 0.31621623f) + (_865.w * 0.22702703f)) + ((_930.w + _915.w) * 0.07027027f));
          _1790 = (((exp2(log2(max(0.0f, (_878 + -0.8359375f)) / (18.851562f - (_878 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_897 + -0.8359375f)) / (18.851562f - (_897 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_912 + -0.8359375f)) / (18.851562f - (_912 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_928 + -0.8359375f)) / (18.851562f - (_928 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_943 + -0.8359375f)) / (18.851562f - (_943 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _1791 = (((exp2(log2(max(0.0f, (_875 + -0.8359375f)) / (18.851562f - (_875 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_894 + -0.8359375f)) / (18.851562f - (_894 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_909 + -0.8359375f)) / (18.851562f - (_909 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_925 + -0.8359375f)) / (18.851562f - (_925 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_940 + -0.8359375f)) / (18.851562f - (_940 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _1792 = (((exp2(log2(max(0.0f, (_872 + -0.8359375f)) / (18.851562f - (_872 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_891 + -0.8359375f)) / (18.851562f - (_891 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_906 + -0.8359375f)) / (18.851562f - (_906 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_922 + -0.8359375f)) / (18.851562f - (_922 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_937 + -0.8359375f)) / (18.851562f - (_937 * 18.6875f))) * 6.277395f)) * 702.7027f));
        } else {
          if (_passIndex == 4) {
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1097 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _1104 = (pow(_1097.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1107 = (pow(_1097.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1110 = (pow(_1097.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1113 = _screenSizeAndInvSize.w * _304;
            _1114 = _1113 * 2.7692308f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1116 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1114 + TEXCOORD.y)));
            _1123 = (pow(_1116.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1126 = (pow(_1116.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1129 = (pow(_1116.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1131 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1114)));
            _1138 = (pow(_1131.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1141 = (pow(_1131.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1144 = (pow(_1131.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1145 = _1113 * 6.4615383f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1147 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1145 + TEXCOORD.y)));
            _1154 = (pow(_1147.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1157 = (pow(_1147.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1160 = (pow(_1147.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1162 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1145)));
            _1169 = (pow(_1162.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1172 = (pow(_1162.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1175 = (pow(_1162.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1789 = ((((_1131.w + _1116.w) * 0.31621623f) + (_1097.w * 0.22702703f)) + ((_1162.w + _1147.w) * 0.07027027f));
            _1790 = (((exp2(log2(max(0.0f, (_1110 + -0.8359375f)) / (18.851562f - (_1110 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1129 + -0.8359375f)) / (18.851562f - (_1129 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1144 + -0.8359375f)) / (18.851562f - (_1144 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1160 + -0.8359375f)) / (18.851562f - (_1160 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1175 + -0.8359375f)) / (18.851562f - (_1175 * 18.6875f))) * 6.277395f)) * 702.7027f));
            _1791 = (((exp2(log2(max(0.0f, (_1107 + -0.8359375f)) / (18.851562f - (_1107 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1126 + -0.8359375f)) / (18.851562f - (_1126 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1141 + -0.8359375f)) / (18.851562f - (_1141 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1157 + -0.8359375f)) / (18.851562f - (_1157 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1172 + -0.8359375f)) / (18.851562f - (_1172 * 18.6875f))) * 6.277395f)) * 702.7027f));
            _1792 = (((exp2(log2(max(0.0f, (_1104 + -0.8359375f)) / (18.851562f - (_1104 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1123 + -0.8359375f)) / (18.851562f - (_1123 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1138 + -0.8359375f)) / (18.851562f - (_1138 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1154 + -0.8359375f)) / (18.851562f - (_1154 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1169 + -0.8359375f)) / (18.851562f - (_1169 * 18.6875f))) * 6.277395f)) * 702.7027f));
          } else {
            if (_passIndex == 5) {
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1329 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
              _1336 = (pow(_1329.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1339 = (pow(_1329.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1342 = (pow(_1329.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1345 = _screenSizeAndInvSize.z * _299;
              _1346 = _1345 * 5.5384617f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1348 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1346 + TEXCOORD.x), TEXCOORD.y));
              _1355 = (pow(_1348.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1358 = (pow(_1348.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1361 = (pow(_1348.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1363 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1346), TEXCOORD.y));
              _1370 = (pow(_1363.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1373 = (pow(_1363.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1376 = (pow(_1363.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1377 = _1345 * 12.923077f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1379 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1377 + TEXCOORD.x), TEXCOORD.y));
              _1386 = (pow(_1379.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1389 = (pow(_1379.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1392 = (pow(_1379.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1394 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1377), TEXCOORD.y));
              _1401 = (pow(_1394.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1404 = (pow(_1394.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1407 = (pow(_1394.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1789 = ((((_1363.w + _1348.w) * 0.31621623f) + (_1329.w * 0.22702703f)) + ((_1394.w + _1379.w) * 0.07027027f));
              _1790 = (((exp2(log2(max(0.0f, (_1342 + -0.8359375f)) / (18.851562f - (_1342 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1361 + -0.8359375f)) / (18.851562f - (_1361 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1376 + -0.8359375f)) / (18.851562f - (_1376 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1392 + -0.8359375f)) / (18.851562f - (_1392 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1407 + -0.8359375f)) / (18.851562f - (_1407 * 18.6875f))) * 6.277395f)) * 702.7027f));
              _1791 = (((exp2(log2(max(0.0f, (_1339 + -0.8359375f)) / (18.851562f - (_1339 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1358 + -0.8359375f)) / (18.851562f - (_1358 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1373 + -0.8359375f)) / (18.851562f - (_1373 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1389 + -0.8359375f)) / (18.851562f - (_1389 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1404 + -0.8359375f)) / (18.851562f - (_1404 * 18.6875f))) * 6.277395f)) * 702.7027f));
              _1792 = (((exp2(log2(max(0.0f, (_1336 + -0.8359375f)) / (18.851562f - (_1336 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1355 + -0.8359375f)) / (18.851562f - (_1355 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1370 + -0.8359375f)) / (18.851562f - (_1370 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1386 + -0.8359375f)) / (18.851562f - (_1386 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1401 + -0.8359375f)) / (18.851562f - (_1401 * 18.6875f))) * 6.277395f)) * 702.7027f));
            } else {
              if (_passIndex == 6) {
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1561 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
                _1568 = (pow(_1561.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1571 = (pow(_1561.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1574 = (pow(_1561.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1577 = _screenSizeAndInvSize.w * _304;
                _1578 = _1577 * 5.5384617f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1580 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1578 + TEXCOORD.y)));
                _1587 = (pow(_1580.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1590 = (pow(_1580.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1593 = (pow(_1580.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1595 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1578)));
                _1602 = (pow(_1595.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1605 = (pow(_1595.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1608 = (pow(_1595.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1609 = _1577 * 12.923077f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1611 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1609 + TEXCOORD.y)));
                _1618 = (pow(_1611.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1621 = (pow(_1611.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1624 = (pow(_1611.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1626 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1609)));
                _1633 = (pow(_1626.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1636 = (pow(_1626.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1639 = (pow(_1626.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1789 = ((((_1595.w + _1580.w) * 0.31621623f) + (_1561.w * 0.22702703f)) + ((_1626.w + _1611.w) * 0.07027027f));
                _1790 = (((exp2(log2(max(0.0f, (_1574 + -0.8359375f)) / (18.851562f - (_1574 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1593 + -0.8359375f)) / (18.851562f - (_1593 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1608 + -0.8359375f)) / (18.851562f - (_1608 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1624 + -0.8359375f)) / (18.851562f - (_1624 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1639 + -0.8359375f)) / (18.851562f - (_1639 * 18.6875f))) * 6.277395f)) * 702.7027f));
                _1791 = (((exp2(log2(max(0.0f, (_1571 + -0.8359375f)) / (18.851562f - (_1571 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1590 + -0.8359375f)) / (18.851562f - (_1590 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1605 + -0.8359375f)) / (18.851562f - (_1605 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1621 + -0.8359375f)) / (18.851562f - (_1621 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1636 + -0.8359375f)) / (18.851562f - (_1636 * 18.6875f))) * 6.277395f)) * 702.7027f));
                _1792 = (((exp2(log2(max(0.0f, (_1568 + -0.8359375f)) / (18.851562f - (_1568 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1587 + -0.8359375f)) / (18.851562f - (_1587 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1602 + -0.8359375f)) / (18.851562f - (_1602 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1618 + -0.8359375f)) / (18.851562f - (_1618 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1633 + -0.8359375f)) / (18.851562f - (_1633 * 18.6875f))) * 6.277395f)) * 702.7027f));
              } else {
                _1789 = 0.0f;
                _1790 = 0.0f;
                _1791 = 0.0f;
                _1792 = 0.0f;
              }
            }
          }
        }
      }
    }
  }
  _1793 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1806 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1793, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1806 = _1789;
  }
  _1809 = (_localToneMappingParams.w > 0.0f);
  if (_1809) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1792, _1791, _1790));
    _2057 = _rndx_tonemapped_color.x;
    _2064 = _rndx_tonemapped_color.y;
    _2071 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2077 = 1.0f - abs(_etcParams.w);
      _2078 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2080 = (_2077 * _2057) + _2078;
      _2082 = (_2077 * _2064) + _2078;
      _2084 = (_2077 * _2071) + _2078;
      if (_colorGradingParams.w > 0.0f) {
        _2089 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2106 = (((max(0.0f, (1.0f - _2084)) - _2084) * _2089) + _2084);
        _2107 = (((max(0.0f, (1.0f - _2082)) - _2082) * _2089) + _2082);
        _2108 = (((max(0.0f, (1.0f - _2080)) - _2080) * _2089) + _2080);
      } else {
        _2106 = _2084;
        _2107 = _2082;
        _2108 = _2080;
      }
      _2110 = _userImageAdjust.y + 1.0f;
      _2112 = _userImageAdjust.x + 0.5f;
      _2115 = ((_2108 + -0.5f) * _2110) + _2112;
      _2118 = ((_2107 + -0.5f) * _2110) + _2112;
      _2121 = ((_2106 + -0.5f) * _2110) + _2112;
      _2127 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2162 = exp2(log2(saturate(mad(_colorBlind2.z, _2121, mad(_colorBlind2.y, _2118, (_colorBlind2.x * _2115))))) * _2127);
      _2163 = exp2(log2(saturate(mad(_colorBlind1.z, _2121, mad(_colorBlind1.y, _2118, (_colorBlind1.x * _2115))))) * _2127);
      _2164 = exp2(log2(saturate(mad(_colorBlind0.z, _2121, mad(_colorBlind0.y, _2118, (_colorBlind0.x * _2115))))) * _2127);
    } else {
      _2162 = _2071;
      _2163 = _2064;
      _2164 = _2057;
    }
  } else {
    _2162 = _1790;
    _2163 = _1791;
    _2164 = _1792;
  }
  if (_etcParams.y > 1.0f) {
    _2169 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2172 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2178 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2169, _2172), float2(_2169, _2172))));  // [sem: expr_sat]
    _2183 = (_2178 * _2162);
    _2184 = (_2178 * _2163);
    _2185 = (_2178 * _2164);
  } else {
    _2183 = _2162;
    _2184 = _2163;
    _2185 = _2164;
  }
  if (_1809 && (_etcParams.z > 0.0f)) {
    _2215 = select((_2185 <= 0.0031308f), (_2185 * 12.92f), (((pow(_2185, 0.41666666f)) * 1.055f) + -0.055f));
    _2216 = select((_2184 <= 0.0031308f), (_2184 * 12.92f), (((pow(_2184, 0.41666666f)) * 1.055f) + -0.055f));
    _2217 = select((_2183 <= 0.0031308f), (_2183 * 12.92f), (((pow(_2183, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2215 = _2185;
    _2216 = _2184;
    _2217 = _2183;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2220 = (float)((uint)((uint)(_1793)));
    if (!(_2220 < _viewDir.w)) {
      if (!(!(_2220 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2231 = 0.0f;
        _2232 = 0.0f;
        _2233 = 0.0f;
      } else {
        _2231 = _2215;
        _2232 = _2216;
        _2233 = _2217;
      }
    } else {
      _2231 = 0.0f;
      _2232 = 0.0f;
      _2233 = 0.0f;
    }
  } else {
    _2231 = _2215;
    _2232 = _2216;
    _2233 = _2217;
  }
  _2237 = exp2(log2(_2231 * 0.0001f) * 0.15930176f);
  _2241 = exp2(log2(_2232 * 0.0001f) * 0.15930176f);
  _2245 = exp2(log2(_2233 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2237 * 18.6875f) + 1.0f)) * ((_2237 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2241 * 18.6875f) + 1.0f)) * ((_2241 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2245 * 18.6875f) + 1.0f)) * ((_2245 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1806;
  return SV_Target;
}
