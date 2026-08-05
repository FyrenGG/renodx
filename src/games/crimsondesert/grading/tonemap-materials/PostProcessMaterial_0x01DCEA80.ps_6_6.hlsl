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
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
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
  float _763;
  float _764;
  float _765;
  float _766;
  float _780;
  float _985;
  float _986;
  float _987;
  float _1080;
  float _1081;
  float _1082;
  float _1136;
  float _1137;
  float _1138;
  float _1157;
  float _1158;
  float _1159;
  float _1189;
  float _1190;
  float _1191;
  float _1205;
  float _1206;
  float _1207;
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
  float4 _365;
  float _372;
  float _373;
  float4 _375;
  float4 _381;
  float _386;
  float4 _388;
  float4 _394;
  float4 _432;
  float _439;
  float _440;
  float4 _442;
  float4 _448;
  float _453;
  float4 _455;
  float4 _461;
  float4 _499;
  float _506;
  float _507;
  float4 _509;
  float4 _515;
  float _520;
  float4 _522;
  float4 _528;
  float4 _566;
  float _573;
  float _574;
  float4 _576;
  float4 _582;
  float _587;
  float4 _589;
  float4 _595;
  float4 _633;
  float _640;
  float _641;
  float4 _643;
  float4 _649;
  float _654;
  float4 _656;
  float4 _662;
  float4 _700;
  float _707;
  float _708;
  float4 _710;
  float4 _716;
  float _721;
  float4 _723;
  float4 _729;
  uint _767;
  bool _783;
  float _789;
  float _808;
  float _824;
  float _840;
  float _841;
  float _845;
  float _848;
  float _851;
  float _858;
  float _865;
  float _872;
  float _873;
  float _874;
  float _875;
  float _876;
  float _877;
  float _878;
  float _894;
  float _910;
  float _926;
  float _927;
  float _928;
  float _929;
  float _930;
  float _947;
  float _948;
  float _949;
  float _950;
  float _953;
  float _956;
  float _960;
  float _964;
  float _968;
  float _988;
  float _1000;
  float _1012;
  float _1024;
  float _1031;
  float _1038;
  float _1045;
  float _1051;
  float _1052;
  float _1054;
  float _1056;
  float _1058;
  float _1063;
  float _1084;
  float _1086;
  float _1089;
  float _1092;
  float _1095;
  float _1101;
  float _1143;
  float _1146;
  float _1152;
  float _1194;
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
    if (((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))) < 0.1f) {
      _763 = select((((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_310.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_310.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == _renderPassTargetFocus), 1.0f, 0.0f);
      _764 = _313.z;
      _765 = _313.y;
      _766 = _313.x;
    } else {
      _763 = 0.0f;
      _764 = _313.z;
      _765 = _313.y;
      _766 = _313.x;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _365 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _372 = _screenSizeAndInvSize.z * _299;
      _373 = _372 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _375 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_373 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _381 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _373), TEXCOORD.y));
      _386 = _372 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _388 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_386 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _394 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _386), TEXCOORD.y));
      _763 = ((((_381.w + _375.w) * 0.31621623f) + (_365.w * 0.22702703f)) + ((_394.w + _388.w) * 0.07027027f));
      _764 = ((((_381.z + _375.z) * 0.31621623f) + (_365.z * 0.22702703f)) + ((_394.z + _388.z) * 0.07027027f));
      _765 = ((((_381.y + _375.y) * 0.31621623f) + (_365.y * 0.22702703f)) + ((_394.y + _388.y) * 0.07027027f));
      _766 = ((((_381.x + _375.x) * 0.31621623f) + (_365.x * 0.22702703f)) + ((_394.x + _388.x) * 0.07027027f));
    } else {
      if (_passIndex == 2) {
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _432 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _439 = _screenSizeAndInvSize.w * _304;
        _440 = _439 * 1.3846154f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _442 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_440 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _448 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _440)));
        _453 = _439 * 3.2307692f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _455 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_453 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _461 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _453)));
        _763 = ((((_448.w + _442.w) * 0.31621623f) + (_432.w * 0.22702703f)) + ((_461.w + _455.w) * 0.07027027f));
        _764 = ((((_448.z + _442.z) * 0.31621623f) + (_432.z * 0.22702703f)) + ((_461.z + _455.z) * 0.07027027f));
        _765 = ((((_448.y + _442.y) * 0.31621623f) + (_432.y * 0.22702703f)) + ((_461.y + _455.y) * 0.07027027f));
        _766 = ((((_448.x + _442.x) * 0.31621623f) + (_432.x * 0.22702703f)) + ((_461.x + _455.x) * 0.07027027f));
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _499 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _506 = _screenSizeAndInvSize.z * _299;
          _507 = _506 * 2.7692308f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _509 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_507 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _515 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _507), TEXCOORD.y));
          _520 = _506 * 6.4615383f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _522 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_520 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _528 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _520), TEXCOORD.y));
          _763 = ((((_515.w + _509.w) * 0.31621623f) + (_499.w * 0.22702703f)) + ((_528.w + _522.w) * 0.07027027f));
          _764 = ((((_515.z + _509.z) * 0.31621623f) + (_499.z * 0.22702703f)) + ((_528.z + _522.z) * 0.07027027f));
          _765 = ((((_515.y + _509.y) * 0.31621623f) + (_499.y * 0.22702703f)) + ((_528.y + _522.y) * 0.07027027f));
          _766 = ((((_515.x + _509.x) * 0.31621623f) + (_499.x * 0.22702703f)) + ((_528.x + _522.x) * 0.07027027f));
        } else {
          if (_passIndex == 4) {
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _566 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _573 = _screenSizeAndInvSize.w * _304;
            _574 = _573 * 2.7692308f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _576 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_574 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _582 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _574)));
            _587 = _573 * 6.4615383f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _589 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_587 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _595 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _587)));
            _763 = ((((_582.w + _576.w) * 0.31621623f) + (_566.w * 0.22702703f)) + ((_595.w + _589.w) * 0.07027027f));
            _764 = ((((_582.z + _576.z) * 0.31621623f) + (_566.z * 0.22702703f)) + ((_595.z + _589.z) * 0.07027027f));
            _765 = ((((_582.y + _576.y) * 0.31621623f) + (_566.y * 0.22702703f)) + ((_595.y + _589.y) * 0.07027027f));
            _766 = ((((_582.x + _576.x) * 0.31621623f) + (_566.x * 0.22702703f)) + ((_595.x + _589.x) * 0.07027027f));
          } else {
            if (_passIndex == 5) {
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _633 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
              _640 = _screenSizeAndInvSize.z * _299;
              _641 = _640 * 5.5384617f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _643 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_641 + TEXCOORD.x), TEXCOORD.y));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _649 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _641), TEXCOORD.y));
              _654 = _640 * 12.923077f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _656 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_654 + TEXCOORD.x), TEXCOORD.y));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _662 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _654), TEXCOORD.y));
              _763 = ((((_649.w + _643.w) * 0.31621623f) + (_633.w * 0.22702703f)) + ((_662.w + _656.w) * 0.07027027f));
              _764 = ((((_649.z + _643.z) * 0.31621623f) + (_633.z * 0.22702703f)) + ((_662.z + _656.z) * 0.07027027f));
              _765 = ((((_649.y + _643.y) * 0.31621623f) + (_633.y * 0.22702703f)) + ((_662.y + _656.y) * 0.07027027f));
              _766 = ((((_649.x + _643.x) * 0.31621623f) + (_633.x * 0.22702703f)) + ((_662.x + _656.x) * 0.07027027f));
            } else {
              if (_passIndex == 6) {
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _700 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
                _707 = _screenSizeAndInvSize.w * _304;
                _708 = _707 * 5.5384617f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _710 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_708 + TEXCOORD.y)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _716 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _708)));
                _721 = _707 * 12.923077f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _723 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_721 + TEXCOORD.y)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _729 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _721)));
                _763 = ((((_716.w + _710.w) * 0.31621623f) + (_700.w * 0.22702703f)) + ((_729.w + _723.w) * 0.07027027f));
                _764 = ((((_716.z + _710.z) * 0.31621623f) + (_700.z * 0.22702703f)) + ((_729.z + _723.z) * 0.07027027f));
                _765 = ((((_716.y + _710.y) * 0.31621623f) + (_700.y * 0.22702703f)) + ((_729.y + _723.y) * 0.07027027f));
                _766 = ((((_716.x + _710.x) * 0.31621623f) + (_700.x * 0.22702703f)) + ((_729.x + _723.x) * 0.07027027f));
              } else {
                _763 = 0.0f;
                _764 = 0.0f;
                _765 = 0.0f;
                _766 = 0.0f;
              }
            }
          }
        }
      }
    }
  }
  _767 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _780 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _767, 0)))).x) & 127)))) + 0.5f);
  } else {
    _780 = _763;
  }
  _783 = (_localToneMappingParams.w > 0.0f);
  if (_783) {
    _789 = _exposure0.x * _userImageAdjust.z;
    _808 = exp2(_powerParams.x * log2(max(0.0f, (((_789 * max(0.0f, (((_765 * -0.62179f) - (_764 * 0.08326f)) + (_766 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _824 = exp2(log2(max(0.0f, (((_slopeParams.y * _789) * max(0.0f, (((_765 * 1.1408f) - (_764 * 0.01055f)) - (_766 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _840 = exp2(log2(max(0.0f, (((_slopeParams.z * _789) * max(0.0f, (((_764 * 1.15297f) - (_765 * 0.12897f)) - (_766 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _841 = dot(float3(_808, _824, _840), float3(0.212671f, 0.71516f, 0.072169f));
    _845 = ((_808 - _841) * _powerParams.w) + _841;
    _848 = ((_824 - _841) * _powerParams.w) + _841;
    _851 = ((_840 - _841) * _powerParams.w) + _841;
    _858 = min(max(log2(mad(_851, 0.079223745f, mad(_848, 0.0784336f, (_845 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _865 = min(max(log2(mad(_851, 0.07916613f, mad(_848, 0.87846863f, (_845 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _872 = min(max(log2(mad(_851, 0.879143f, mad(_848, 0.0784336f, (_845 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _873 = _858 * 0.060606062f;
    _874 = _865 * 0.060606062f;
    _875 = _872 * 0.060606062f;
    _876 = _873 * _873;
    _877 = _874 * _874;
    _878 = _875 * _875;
    _894 = min(0.0f, (-0.0f - (((_858 * 0.0072181816f) + ((_876 * 0.4298f) + (((_876 * _876) * ((31.96f - (_858 * 2.4327273f)) + (_876 * 15.5f))) - ((_858 * 0.41624245f) * _876)))) + -0.00232f)));
    _910 = min(0.0f, (-0.0f - (((_865 * 0.0072181816f) + ((_877 * 0.4298f) + (((_877 * _877) * ((31.96f - (_865 * 2.4327273f)) + (_877 * 15.5f))) - ((_865 * 0.41624245f) * _877)))) + -0.00232f)));
    _926 = min(0.0f, (-0.0f - (((_872 * 0.0072181816f) + ((_878 * 0.4298f) + (((_878 * _878) * ((31.96f - (_872 * 2.4327273f)) + (_878 * 15.5f))) - ((_872 * 0.41624245f) * _878)))) + -0.00232f)));
    _927 = -0.0f - _894;
    _928 = -0.0f - _910;
    _929 = -0.0f - _926;
    _930 = dot(float3(_927, _928, _929), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _947 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _948 = -0.79999995f / _947;
      _949 = -1.2f / _947;
      _950 = 0.20000005f / _947;
      _953 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _956 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _960 = (_948 + 1.4f) + (_956 * (-0.39999998f - _948));
      _964 = (_949 + 1.6f) + (_956 * (-0.6f - _949));
      _968 = (_950 + 0.9f) + (_956 * (0.5f - _950));
      _985 = (lerp(_968, 1.4f, _953));  // [sem: blended]
      _986 = (lerp(_960, 1.0f, _953));  // [sem: blended]
      _987 = (lerp(_964, 1.2f, _953));  // [sem: blended]
    } else {
      _985 = 1.4f;  // [sem: blended]
      _986 = 1.0f;  // [sem: blended]
      _987 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _988 = 1.0f - _987;
    _1000 = ((exp2(log2(((saturate((_894 * _894) * _927) * _988) + _987) * _927) * _986) - _930) * _985) + _930;
    _1012 = ((exp2(log2(((saturate((_910 * _910) * _928) * _988) + _987) * _928) * _986) - _930) * _985) + _930;
    _1024 = ((exp2(log2(((saturate((_926 * _926) * _929) * _988) + _987) * _929) * _986) - _930) * _985) + _930;
    _1031 = saturate(exp2(log2(mad(_1024, -0.09902974f, mad(_1012, -0.09802088f, (_1000 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1038 = saturate(exp2(log2(mad(_1024, -0.098961174f, mad(_1012, 1.1519032f, (_1000 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1045 = saturate(exp2(log2(mad(_1024, 1.1510737f, mad(_1012, -0.09804345f, (_1000 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1051 = 1.0f - abs(_etcParams.w);
      _1052 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1054 = (_1051 * _1031) + _1052;
      _1056 = (_1051 * _1038) + _1052;
      _1058 = (_1051 * _1045) + _1052;
      if (_colorGradingParams.w > 0.0f) {
        _1063 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1080 = (((max(0.0f, (1.0f - _1058)) - _1058) * _1063) + _1058);
        _1081 = (((max(0.0f, (1.0f - _1056)) - _1056) * _1063) + _1056);
        _1082 = (((max(0.0f, (1.0f - _1054)) - _1054) * _1063) + _1054);
      } else {
        _1080 = _1058;
        _1081 = _1056;
        _1082 = _1054;
      }
      _1084 = _userImageAdjust.y + 1.0f;
      _1086 = _userImageAdjust.x + 0.5f;
      _1089 = ((_1082 + -0.5f) * _1084) + _1086;
      _1092 = ((_1081 + -0.5f) * _1084) + _1086;
      _1095 = ((_1080 + -0.5f) * _1084) + _1086;
      _1101 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1136 = exp2(log2(saturate(mad(_colorBlind2.z, _1095, mad(_colorBlind2.y, _1092, (_colorBlind2.x * _1089))))) * _1101);
      _1137 = exp2(log2(saturate(mad(_colorBlind1.z, _1095, mad(_colorBlind1.y, _1092, (_colorBlind1.x * _1089))))) * _1101);
      _1138 = exp2(log2(saturate(mad(_colorBlind0.z, _1095, mad(_colorBlind0.y, _1092, (_colorBlind0.x * _1089))))) * _1101);
    } else {
      _1136 = _1045;
      _1137 = _1038;
      _1138 = _1031;
    }
  } else {
    _1136 = _764;
    _1137 = _765;
    _1138 = _766;
  }
  if (_etcParams.y > 1.0f) {
    _1143 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1146 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1152 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1143, _1146), float2(_1143, _1146))));  // [sem: expr_sat]
    _1157 = (_1152 * _1136);
    _1158 = (_1152 * _1137);
    _1159 = (_1152 * _1138);
  } else {
    _1157 = _1136;
    _1158 = _1137;
    _1159 = _1138;
  }
  if (_783 && (_etcParams.z > 0.0f)) {
    _1189 = select((_1159 <= 0.0031308f), (_1159 * 12.92f), (((pow(_1159, 0.41666666f)) * 1.055f) + -0.055f));
    _1190 = select((_1158 <= 0.0031308f), (_1158 * 12.92f), (((pow(_1158, 0.41666666f)) * 1.055f) + -0.055f));
    _1191 = select((_1157 <= 0.0031308f), (_1157 * 12.92f), (((pow(_1157, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1189 = _1159;
    _1190 = _1158;
    _1191 = _1157;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1194 = (float)((uint)((uint)(_767)));
    if (!(_1194 < _viewDir.w)) {
      if (!(!(_1194 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1205 = 0.0f;
        _1206 = 0.0f;
        _1207 = 0.0f;
      } else {
        _1205 = _1189;
        _1206 = _1190;
        _1207 = _1191;
      }
    } else {
      _1205 = 0.0f;
      _1206 = 0.0f;
      _1207 = 0.0f;
    }
  } else {
    _1205 = _1189;
    _1206 = _1190;
    _1207 = _1191;
  }
  SV_Target.x = _1205;
  SV_Target.y = _1206;
  SV_Target.z = _1207;
  SV_Target.w = _780;
  return SV_Target;
}
