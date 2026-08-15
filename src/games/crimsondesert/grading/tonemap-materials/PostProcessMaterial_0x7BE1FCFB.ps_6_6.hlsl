struct PostProcessMemoryRead_CDStruct {
  float _memoryReadProgress;
  float _memoryReadBackgroundOpacity;
  float _memoryOpacity;
  float _enemyBossOpacity;
  uint _noiseTex;
  uint _auraTex;
  uint _glitchTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float3 _cubeSpaceSkyColor;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _cubeSpaceSpeedRatio;
  float _tempCubeSpaceRatio;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
};

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

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
  float4 _33;
  float _42;
  float _43;
  float _44;
  float _45;
  float _57;
  int _58;
  float _66;
  int _67;
  float _75;
  float _78;
  float _124;
  float _125;
  float _126;
  float _127;
  int _128;
  float _133;
  float _134;
  float _135;
  float _136;
  int _137;
  float _142;
  float _143;
  float _144;
  float _145;
  int _146;
  float _223;
  float _309;
  float _310;
  float _483;
  float _534;
  float _739;
  float _740;
  float _741;
  float _834;
  float _835;
  float _836;
  float _890;
  float _891;
  float _892;
  float _908;
  float _909;
  float _910;
  float _940;
  float _941;
  float _942;
  float _955;
  float _956;
  float _957;
  int _108;
  float _116;
  float _117;
  float _118;
  float _119;
  float _120;
  float _121;
  float _122;
  int _130;
  int _139;
  float _147;
  float _148;
  float _149;
  float _153;
  float _154;
  float _155;
  float _170;
  float _177;
  float _178;
  float _179;
  float _190;
  bool _191;
  float _192;
  float _193;
  float _194;
  float _195;
  int _196;
  float _209;
  float _210;
  float _211;
  float _228;
  int _235;
  int _243;
  int _253;
  float _261;
  float _262;
  uint2 _268;
  uint _283;
  int _285;
  float _293;
  float _294;
  float _296;
  float _297;
  float _298;
  float _312;
  float _313;
  float _314;
  float _315;
  float _317;
  float _318;
  float _319;
  float _320;
  float _323;
  float _324;
  float _359;
  uint _368;
  uint _369;
  uint4 _371;
  float4 _374;
  float _392;
  float _393;
  float _394;
  float _396;
  float _397;
  float _398;
  float _399;
  float _402;
  float _403;
  float _406;
  float _407;
  float _411;
  float _413;
  float _414;
  float _415;
  float _416;
  float _418;
  float _421;
  float _422;
  float _423;
  float _424;
  float _433;
  float _437;
  float _441;
  float _443;
  int _460;
  float _468;
  int _473;
  float _481;
  int _484;
  float _492;
  float _507;
  float _511;
  float _518;
  float _519;
  float _520;
  uint _521;
  bool _537;
  float _543;
  float _592;
  float _593;
  float _594;
  float _596;
  float _603;
  float _604;
  float _605;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _629;
  float _630;
  float _631;
  float _632;
  float _678;
  float _679;
  float _680;
  float _681;
  float _682;
  float _683;
  float _684;
  float _701;
  float _702;
  float _703;
  float _704;
  float _710;
  float _713;
  float _720;
  float _721;
  float _722;
  float _751;
  float _776;
  float _777;
  float _778;
  float _797;
  float _798;
  float _799;
  float _805;
  float _809;
  float _810;
  float _811;
  float _812;
  float _817;
  float _842;
  float _846;
  float _847;
  float _848;
  float _849;
  float _879;
  float _898;
  float _899;
  float _903;
  float _946;
  int __loop_jump_target = -1;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _42 = (TEXCOORD.x * 2.0f) + -1.0f;
  _43 = TEXCOORD.y * 2.0f;
  _44 = 1.0f - _43;
  _45 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _57 = mad((_invViewProj[3].z), _45, mad((_invViewProj[3].y), _44, ((_invViewProj[3].x) * _42))) + (_invViewProj[3].w);
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _78 = saturate(1.0f - _75) * _66;
  if (!(!(_78 >= 0.001f))) {
    _108 = WaveReadLaneFirst(_materialIndex);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _117 = _116 * ((mad((_invViewProj[0].z), _45, mad((_invViewProj[0].y), _44, ((_invViewProj[0].x) * _42))) + (_invViewProj[0].w)) / _57);
    _118 = _116 * ((mad((_invViewProj[1].z), _45, mad((_invViewProj[1].y), _44, ((_invViewProj[1].x) * _42))) + (_invViewProj[1].w)) / _57);
    _119 = _116 * ((mad((_invViewProj[2].z), _45, mad((_invViewProj[2].y), _44, ((_invViewProj[2].x) * _42))) + (_invViewProj[2].w)) / _57);
    _120 = floor(_117);
    _121 = floor(_118);
    _122 = floor(_119);
    _124 = 10.0f;
    _125 = 0.0f;
    _126 = 0.0f;
    _127 = 0.0f;
    _128 = -1;
    while(true) {
      _133 = _124;
      _134 = _125;
      _135 = _126;
      _136 = _127;
      _137 = -1;
      while(true) {
        _142 = _133;
        _143 = _134;
        _144 = _135;
        _145 = _136;
        _146 = -1;
        while(true) {
          _147 = (float)((int)(_146));
          _148 = (float)((int)(_137));
          _149 = (float)((int)(_128));
          _153 = sin(_147 + _120);
          _154 = sin(_148 + _121);
          _155 = sin(_149 + _122);
          _170 = _time.x * 0.2f;
          _177 = sin(_170 * frac(sin(dot(float3(_153, _154, _155), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _147;
          _178 = sin(_170 * frac(sin(dot(float3(_153, _154, _155), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _148;
          _179 = sin(_170 * frac(sin(dot(float3(_153, _154, _155), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _149;
          _190 = max(abs((_120 - _117) + _177), max(abs((_121 - _118) + _178), abs((_122 - _119) + _179)));
          _191 = (_190 < _142);
          _192 = select(_191, _190, _142);
          _193 = select(_191, _177, _143);
          _194 = select(_191, _178, _144);
          _195 = select(_191, _179, _145);
          _196 = (int)(_146) + (int)(1);
          if (!(_196 == 2)) {
            _142 = _192;
            _143 = _193;
            _144 = _194;
            _145 = _195;
            _146 = _196;
            continue;
          }
          while(true) {
            _139 = (int)(_137) + (int)(1);
            if (!(_139 == 2)) {
              _133 = _192;
              _134 = _193;
              _135 = _194;
              _136 = _195;
              _137 = _139;
              __loop_jump_target = 132;
              break;
            }
            while(true) {
              _130 = (int)(_128) + (int)(1);
              if (!(_130 == 2)) {
                _124 = _192;
                _125 = _193;
                _126 = _194;
                _127 = _195;
                _128 = _130;
                __loop_jump_target = 123;
                break;
              }
              _209 = ((_193 + _120) / _116) - _mainPosition.x;
              _210 = ((_194 + _121) / _116) - _mainPosition.y;
              _211 = ((_195 + _122) / _116) - _mainPosition.z;
              // [sem: expr_sat]
              _223 = saturate((_192 + 1.0f) - ((1.0f - ((1.0f / max(1e-05f, _78)) * sqrt(dot(float3(_209, _210, _211), float3(_209, _210, _211))))) * 1.4705882f));
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
        if (__loop_jump_target == 132) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 123) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _223 = 1.0f;  // [sem: expr_sat]
  }
  _228 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
  _235 = WaveReadLaneFirst(_materialIndex);
  _243 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_235 < (uint)170000), _235, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _253 = WaveReadLaneFirst(_materialIndex);
  _261 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_253 < (uint)170000), _253, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _262 = _261 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_228 * TEXCOORD.x), ((_time.x * 0.15f) + (_228 * TEXCOORD.y)))))).y) + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_268.x, _268.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _283 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_268.x))))))) + 0.5f) * ((_262 * 0.001f) + TEXCOORD.x))), ((int)((((float)((int)((int)((float)((int)((int)(_268.y))))))) + 0.5f) * ((_262 * 0.01f) + TEXCOORD.y))), 0));
  _285 = _283.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _293 = (((float)((uint)((uint)((uint)((uint)(_283.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _294 = (((float)((uint)((uint)(((uint)((uint)(_283.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _296 = 1.0f - abs(_293);
  _297 = abs(_294);
  _298 = _296 - _297;
  if (!(_298 >= 0.0f)) {
    _309 = (select((_293 >= 0.0f), 1.0f, -1.0f) * (1.0f - _297));
    _310 = (select((_294 >= 0.0f), 1.0f, -1.0f) * _296);
  } else {
    _309 = _293;
    _310 = _294;
  }
  _312 = rsqrt(dot(float3(_309, _310, _298), float3(_309, _310, _298)));  // [sem: invLength]
  _313 = _312 * _309;
  _314 = _312 * _310;
  _315 = _312 * _298;
  _317 = rsqrt(dot(float3(_313, _314, _315), float3(_313, _314, _315)));  // [sem: invLength]
  _318 = _317 * _313;
  _319 = _317 * _314;
  _320 = _317 * _315;
  _323 = (_262 * 0.0005f) + TEXCOORD.x;
  _324 = (_262 * 0.005f) + TEXCOORD.y;
  // [sem: expr_sat]
  _359 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _323) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _324) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.1f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _323)), ((int)(_customRenderPassSizeInvSize.y * _324)), 0)))).x)))));
  _368 = (uint)((_bufferSizeAndInvSize.x * ((_262 * 0.00025f) + TEXCOORD.x)) + -0.5f);
  _369 = (uint)((_bufferSizeAndInvSize.y * ((_262 * 0.0025f) + TEXCOORD.y)) + -0.5f);
  _371 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_368, _369, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _374 = __3__36__0__0__g_gbufferNormal.Load(int3(_368, _369, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _392 = (saturate(_374.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _393 = (saturate(_374.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _394 = (saturate(_374.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _396 = rsqrt(dot(float3(_392, _393, _394), float3(_392, _393, _394)));  // [sem: invLength]
  _397 = _396 * _392;
  _398 = _396 * _393;
  _399 = _394 * _396;
  _402 = (((float)((uint)((uint)(((uint)((uint)(_371.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _403 = (((float)((uint)((uint)(_371.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _406 = (_402 + _403) * 0.5f;
  _407 = (_402 - _403) * 0.5f;
  _411 = (1.0f - abs(_406)) - abs(_407);
  _413 = rsqrt(dot(float3(_406, _407, _411), float3(_406, _407, _411)));  // [sem: invLength]
  _414 = _413 * _406;
  _415 = _413 * _407;
  _416 = _413 * _411;
  _418 = select((_399 >= 0.0f), 1.0f, -1.0f);
  _421 = -0.0f - (1.0f / (_418 + _399));
  _422 = _398 * _421;
  _423 = _422 * _397;
  _424 = _418 * _397;
  _433 = mad(_416, _397, mad(_415, _423, ((((_424 * _397) * _421) + 1.0f) * _414)));
  _437 = mad(_416, _398, mad(_415, (_418 + (_422 * _398)), ((_414 * _418) * _423)));
  _441 = mad(_416, _399, mad(_415, (-0.0f - _398), (-0.0f - (_424 * _414))));
  _443 = rsqrt(dot(float3(_433, _437, _441), float3(_433, _437, _441)));  // [sem: invLength]
  [branch]
  if (_285 == _renderPassMemory) {
    _460 = WaveReadLaneFirst(_materialIndex);
    _468 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_460 < (uint)170000), _460, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _483 = _468;
  } else {
    if (_285 == _renderPassEnemyBoss) {
      _473 = WaveReadLaneFirst(_materialIndex);
      _481 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_473 < (uint)170000), _473, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _483 = _481;
    } else {
      _483 = 1.0f;
    }
  }
  _484 = WaveReadLaneFirst(_materialIndex);
  _492 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_484 < (uint)170000), _484, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _507 = (saturate((_492 * 100.0f) + -99.0f) * _483) * exp2(log2(1.0f - abs(dot(float3(((((_443 * _433) - _318) * _359) + _318), ((((_443 * _437) - _319) * _359) + _319), ((((_443 * _441) - _320) * _359) + _320)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f);
  _511 = select((!(_359 == 0.0f)), _507, ((_507 * 0.06f) + 0.007f));
  _518 = ((_511 - _33.x) * _223) + _33.x;
  _519 = ((_511 - _33.y) * _223) + _33.y;
  _520 = ((_511 - _33.z) * _223) + _33.z;
  _521 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _534 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _521, 0)))).x) & 127)))) + 0.5f);
  } else {
    _534 = _223;
  }
  _537 = (_localToneMappingParams.w > 0.0f);
  if (_537) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_518, _519, _520));
    _797 = _rndx_tonemapped_color.x;
    _798 = _rndx_tonemapped_color.y;
    _799 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _805 = 1.0f - abs(_etcParams.w);
      _809 = saturate(_etcParams.w);  // [sem: expr_sat]
      _810 = (_805 * _797) + _809;
      _811 = (_805 * _798) + _809;
      _812 = (_805 * _799) + _809;
      if (_colorGradingParams.w > 0.0f) {
        _817 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _834 = (((max(0.0f, (1.0f - _810)) - _810) * _817) + _810);
        _835 = (((max(0.0f, (1.0f - _811)) - _811) * _817) + _811);
        _836 = (((max(0.0f, (1.0f - _812)) - _812) * _817) + _812);
      } else {
        _834 = _810;
        _835 = _811;
        _836 = _812;
      }
      _842 = _userImageAdjust.y + 1.0f;
      _846 = _userImageAdjust.x + 0.5f;
      _847 = ((_834 + -0.5f) * _842) + _846;
      _848 = ((_835 + -0.5f) * _842) + _846;
      _849 = ((_836 + -0.5f) * _842) + _846;
      _879 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _890 = exp2(log2(saturate(mad(_colorBlind0.z, _849, mad(_colorBlind0.y, _848, (_colorBlind0.x * _847))))) * _879);
      _891 = exp2(log2(saturate(mad(_colorBlind1.z, _849, mad(_colorBlind1.y, _848, (_colorBlind1.x * _847))))) * _879);
      _892 = exp2(log2(saturate(mad(_colorBlind2.z, _849, mad(_colorBlind2.y, _848, (_colorBlind2.x * _847))))) * _879);
    } else {
      _890 = _797;
      _891 = _798;
      _892 = _799;
    }
  } else {
    _890 = _518;
    _891 = _519;
    _892 = _520;
  }
  if (_etcParams.y > 1.0f) {
    _898 = abs(_42);
    _899 = abs(_43 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _903 = saturate(1.0f - (dot(float2(_898, _899), float2(_898, _899)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _908 = (_903 * _890);
    _909 = (_903 * _891);
    _910 = (_903 * _892);
  } else {
    _908 = _890;
    _909 = _891;
    _910 = _892;
  }
  if (_537 && (_etcParams.z > 0.0f)) {
    _940 = select((_908 <= 0.0031308f), (_908 * 12.92f), (((pow(_908, 0.41666666f)) * 1.055f) + -0.055f));
    _941 = select((_909 <= 0.0031308f), (_909 * 12.92f), (((pow(_909, 0.41666666f)) * 1.055f) + -0.055f));
    _942 = select((_910 <= 0.0031308f), (_910 * 12.92f), (((pow(_910, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _940 = _908;
    _941 = _909;
    _942 = _910;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _946 = (float)((uint)((uint)(_521)));
    if (!(_946 < _viewDir.w)) {
      if (!(_946 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _955 = _940;
        _956 = _941;
        _957 = _942;
      } else {
        _955 = 0.0f;
        _956 = 0.0f;
        _957 = 0.0f;
      }
    } else {
      _955 = 0.0f;
      _956 = 0.0f;
      _957 = 0.0f;
    }
  } else {
    _955 = _940;
    _956 = _941;
    _957 = _942;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_955, _956, _957), _sunDirection.y, _moonDirection.y);
    _955 = _rndx_final_color.x;
    _956 = _rndx_final_color.y;
    _957 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _955;
  SV_Target.y = _956;
  SV_Target.z = _957;
  SV_Target.w = _534;
  return SV_Target;
}
