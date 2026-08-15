struct PostProcessAxiom_CDStruct {
  float _axiomEyeProgress;
  float _axiomEyeRadius;
  uint _axiomEyeTargetColor;
  uint _axiomPlayerColor;
  uint _axiomBackgroundColor;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessAxiom_CD {
  PostProcessAxiom_CDStruct BindlessParameters_PostProcessAxiom_CD;
};

typedef BindlessParameters_PostProcessAxiom_CD BindlessParameters_PostProcessAxiom_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAxiom_CD_t> BindlessParameters_PostProcessAxiom_CD[] : register(b0, space100);

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
  float _32;
  float4 _35;
  float _40;
  float _41;
  float _42;
  float _46;
  float _82;
  float _86;
  int _93;
  int _101;
  float4 _108;
  float _111;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  uint2 _118;
  uint _133;
  int _135;
  float _143;
  float _144;
  float _146;
  float _147;
  float _148;
  float _159;
  float _160;
  float _548;
  float _549;
  float _550;
  float _576;
  float _577;
  float _578;
  float _604;
  float _809;
  float _810;
  float _811;
  float _904;
  float _905;
  float _906;
  float _960;
  float _961;
  float _962;
  float _978;
  float _979;
  float _980;
  float _1010;
  float _1011;
  float _1012;
  float _1026;
  float _1027;
  float _1028;
  float _162;
  float _163;
  float _164;
  float _165;
  float _167;
  float _168;
  float _169;
  float _170;
  int _180;
  float _188;
  float _193;
  float _194;
  float _195;
  float _208;
  float _214;
  int _218;
  int _226;
  float _229;
  float _232;
  float _234;
  float4 _266;
  float _268;
  float _269;
  float _270;
  float _271;
  float _307;
  float _315;
  float _316;
  float _317;
  int _324;
  float _332;
  float _337;
  float _354;
  int _365;
  int _373;
  float4 _380;
  float _393;
  float _396;
  float _398;
  int _407;
  int _415;
  float _418;
  float _421;
  float _423;
  int _459;
  int _467;
  float _470;
  float _473;
  float _475;
  float _500;
  float _501;
  float _502;
  float _520;
  float _522;
  float _525;
  float4 _532;
  float _554;
  float _555;
  float _556;
  float _588;
  float _589;
  float _590;
  uint _591;
  bool _607;
  float _613;
  float _662;
  float _663;
  float _664;
  float _666;
  float _673;
  float _674;
  float _675;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  float _699;
  float _700;
  float _701;
  float _702;
  float _748;
  float _749;
  float _750;
  float _751;
  float _752;
  float _753;
  float _754;
  float _771;
  float _772;
  float _773;
  float _774;
  float _780;
  float _783;
  float _790;
  float _791;
  float _792;
  float _821;
  float _846;
  float _847;
  float _848;
  float _867;
  float _868;
  float _869;
  float _875;
  float _879;
  float _880;
  float _881;
  float _882;
  float _887;
  float _912;
  float _916;
  float _917;
  float _918;
  float _919;
  float _949;
  float _968;
  float _969;
  float _973;
  float _1017;
  _32 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _35 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _40 = (TEXCOORD.x * 2.0f) + -1.0f;
  _41 = TEXCOORD.y * 2.0f;
  _42 = 1.0f - _41;
  _46 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _82 = mad((_invViewProj[3].z), _46, mad((_invViewProj[3].y), _42, ((_invViewProj[3].x) * _40))) + (_invViewProj[3].w);
  _86 = 6.0f / _32;
  _93 = WaveReadLaneFirst(_materialIndex);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
  _108 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_101 < (uint)65000), _101, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_86 * TEXCOORD.x), ((_time.x * 0.01f) + (_86 * TEXCOORD.y))));
  _111 = _108.x + -0.5f;
  _112 = _108.y + -0.5f;
  _113 = _111 * 0.005f;
  _114 = _112 * 0.005f;
  _115 = _113 + TEXCOORD.x;
  _116 = _114 + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_118.x, _118.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _133 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_118.x))))))) + 0.5f) * _115)), ((int)((((float)((int)((int)((float)((int)((int)(_118.y))))))) + 0.5f) * _116)), 0));
  _135 = _133.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _143 = (((float)((uint)((uint)((uint)((uint)(_133.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _144 = (((float)((uint)((uint)(((uint)((uint)(_133.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _146 = 1.0f - abs(_143);
  _147 = abs(_144);
  _148 = _146 - _147;
  if (!(_148 >= 0.0f)) {
    _159 = (select((_143 >= 0.0f), 1.0f, -1.0f) * (1.0f - _147));
    _160 = (select((_144 >= 0.0f), 1.0f, -1.0f) * _146);
  } else {
    _159 = _143;
    _160 = _144;
  }
  _162 = rsqrt(dot(float3(_159, _160, _148), float3(_159, _160, _148)));  // [sem: invLength]
  _163 = _162 * _159;
  _164 = _162 * _160;
  _165 = _162 * _148;
  _167 = rsqrt(dot(float3(_163, _164, _165), float3(_163, _164, _165)));  // [sem: invLength]
  _168 = _167 * _163;
  _169 = _167 * _164;
  _170 = _167 * _165;
  _180 = WaveReadLaneFirst(_materialIndex);
  _188 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_180 < (uint)170000), _180, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeProgress);
  _193 = ((mad((_invViewProj[0].z), _46, mad((_invViewProj[0].y), _42, ((_invViewProj[0].x) * _40))) + (_invViewProj[0].w)) / _82) - _mainPosition.x;
  _194 = ((mad((_invViewProj[1].z), _46, mad((_invViewProj[1].y), _42, ((_invViewProj[1].x) * _40))) + (_invViewProj[1].w)) / _82) - _mainPosition.y;
  _195 = ((mad((_invViewProj[2].z), _46, mad((_invViewProj[2].y), _42, ((_invViewProj[2].x) * _40))) + (_invViewProj[2].w)) / _82) - _mainPosition.z;
  // [sem: expr_sat]
  _208 = saturate((1.0f - saturate(sqrt(((_193 * _193) + (_194 * _194)) + (_195 * _195)) / max(0.001f, (_188 * 50.0f)))) * 1.25f);
  _214 = (saturate((_188 * 4.0f) + -3.0f) * (1.0f - _208)) + _208;
  if (_208 > 0.0f) {
    _218 = WaveReadLaneFirst(_materialIndex);
    _226 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomBackgroundColor);
    _229 = (float)((uint)((uint)(((uint)((uint)(_226)) >> 16) & 255)));
    _232 = (float)((uint)((uint)(((uint)((uint)(_226)) >> 8) & 255)));
    _234 = (float)((uint)((uint)(_226 & 255)));
    // [sem: _3__36__0__0__g_specularAO_sampleLod]
    _266 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _113), (TEXCOORD.y - _114)), 0.0f);
    _268 = _266.w * select(((_229 * 0.003921569f) < 0.04045f), (_229 * 0.000303527f), exp2(log2((_229 * 0.003717127f) + 0.052132703f) * 2.4f));
    _269 = _266.w * select(((_232 * 0.003921569f) < 0.04045f), (_232 * 0.000303527f), exp2(log2((_232 * 0.003717127f) + 0.052132703f) * 2.4f));
    _270 = _266.w * select(((_234 * 0.003921569f) < 0.04045f), (_234 * 0.000303527f), exp2(log2((_234 * 0.003717127f) + 0.052132703f) * 2.4f));
    _271 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _115)), ((int)(_customRenderPassSizeInvSize.y * _116)), 0)))).x));
    _307 = mad((_invViewProj[3].z), _271, mad((_invViewProj[3].y), _42, ((_invViewProj[3].x) * _40))) + (_invViewProj[3].w);
    _315 = ((mad((_invViewProj[0].z), _271, mad((_invViewProj[0].y), _42, ((_invViewProj[0].x) * _40))) + (_invViewProj[0].w)) / _307) - _mainPosition.x;
    _316 = ((mad((_invViewProj[1].z), _271, mad((_invViewProj[1].y), _42, ((_invViewProj[1].x) * _40))) + (_invViewProj[1].w)) / _307) - _mainPosition.y;
    _317 = ((mad((_invViewProj[2].z), _271, mad((_invViewProj[2].y), _42, ((_invViewProj[2].x) * _40))) + (_invViewProj[2].w)) / _307) - _mainPosition.z;
    _324 = WaveReadLaneFirst(_materialIndex);
    _332 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_324 < (uint)170000), _324, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeRadius);
    _337 = 1.0f - saturate(sqrt(((_315 * _315) + (_316 * _316)) + (_317 * _317)) / max(0.001f, (_332 * _214)));
    if ((_135 == _renderPassSelfPlayer) || ((!(_135 == _renderPassSelfPlayer)) && (_135 == _renderPassTest))) {
      if (_337 > 0.0f) {
        _354 = 2.0f / _32;
        _365 = WaveReadLaneFirst(_materialIndex);
        _373 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_365 < (uint)170000), _365, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
        _380 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_373 < (uint)65000), _373, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_354 * TEXCOORD.x) - (_108.x * 0.25f)) + (_time.x * 0.1f)), ((_354 * TEXCOORD.y) - (_108.y * 0.25f))));
        // [sem: expr_sat]
        _393 = saturate(1.0f - dot(float3(_168, _169, _170), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _396 = _380.z + -0.5f;
        _398 = saturate(((_393 * _393) * _393) + _396);  // [sem: expr_sat]
        if ((_135 == _renderPassSelfPlayer) || ((!(_135 == _renderPassSelfPlayer)) && (_135 == _renderPassTest))) {
          _407 = WaveReadLaneFirst(_materialIndex);
          _415 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_407 < (uint)170000), _407, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
          _418 = (float)((uint)((uint)(((uint)((uint)(_415)) >> 16) & 255)));
          _421 = (float)((uint)((uint)(((uint)((uint)(_415)) >> 8) & 255)));
          _423 = (float)((uint)((uint)(_415 & 255)));
          _576 = (select(((_418 * 0.003921569f) < 0.04045f), (_418 * 0.000303527f), exp2(log2((_418 * 0.003717127f) + 0.052132703f) * 2.4f)) * _398);
          _577 = (select(((_421 * 0.003921569f) < 0.04045f), (_421 * 0.000303527f), exp2(log2((_421 * 0.003717127f) + 0.052132703f) * 2.4f)) * _398);
          _578 = (select(((_423 * 0.003921569f) < 0.04045f), (_423 * 0.000303527f), exp2(log2((_423 * 0.003717127f) + 0.052132703f) * 2.4f)) * _398);
        } else {
          if (_135 == _renderPassDetectItem) {
            _459 = WaveReadLaneFirst(_materialIndex);
            _467 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_459 < (uint)170000), _459, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
            _470 = (float)((uint)((uint)(((uint)((uint)(_467)) >> 16) & 255)));
            _473 = (float)((uint)((uint)(((uint)((uint)(_467)) >> 8) & 255)));
            _475 = (float)((uint)((uint)(_467 & 255)));
            _500 = select(((_470 * 0.003921569f) < 0.04045f), (_470 * 0.000303527f), exp2(log2((_470 * 0.003717127f) + 0.052132703f) * 2.4f));
            _501 = select(((_473 * 0.003921569f) < 0.04045f), (_473 * 0.000303527f), exp2(log2((_473 * 0.003717127f) + 0.052132703f) * 2.4f));
            _502 = select(((_475 * 0.003921569f) < 0.04045f), (_475 * 0.000303527f), exp2(log2((_475 * 0.003717127f) + 0.052132703f) * 2.4f));
            // [sem: expr_sat]
            _520 = saturate(1.0f - dot(float3((((_380.x + -0.5f) * 4.0f) + _168), (((_380.y + -0.5f) * 4.0f) + _169), ((_396 * 4.0f) + _170)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
            _522 = saturate(_520 * _520);  // [sem: expr_sat]
            _525 = saturate((_337 * 2.0f) + -1.0f);  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_specularAO_sampleLod]
            _532 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_111 * 0.049999997f)), (TEXCOORD.y - (_112 * 0.049999997f))), 0.0f);
            if (!(_532.w < 0.1f)) {
              if (_532.w < 0.14f) {
                _548 = (_500 + 1.0f);
                _549 = _501;
                _550 = _502;
              } else {
                if (_532.w < 0.17f) {
                  _548 = _500;
                  _549 = (_501 + 1.0f);
                  _550 = _502;
                } else {
                  if (_532.w < 0.3f) {
                    _548 = _500;
                    _549 = _501;
                    _550 = (_502 + 1.0f);
                  } else {
                    _548 = _500;
                    _549 = _501;
                    _550 = _502;
                  }
                }
              }
            } else {
              _548 = _500;
              _549 = _501;
              _550 = _502;
            }
            _554 = _500 * _398;
            _555 = _501 * _398;
            _556 = _502 * _398;
            _576 = ((((_554 - _268) + (((_548 * _522) - _554) * _525)) * _337) + _268);
            _577 = ((((_555 - _269) + (((_549 * _522) - _555) * _525)) * _337) + _269);
            _578 = ((((_556 - _270) + (((_550 * _522) - _556) * _525)) * _337) + _270);
          } else {
            _576 = _268;
            _577 = _269;
            _578 = _270;
          }
        }
      } else {
        _576 = _268;
        _577 = _269;
        _578 = _270;
      }
    } else {
      if ((_337 > 0.0f) && (_135 == _renderPassDetectItem)) {
        _354 = 2.0f / _32;
        _365 = WaveReadLaneFirst(_materialIndex);
        _373 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_365 < (uint)170000), _365, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._noiseTex);
        _380 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_373 < (uint)65000), _373, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_354 * TEXCOORD.x) - (_108.x * 0.25f)) + (_time.x * 0.1f)), ((_354 * TEXCOORD.y) - (_108.y * 0.25f))));
        // [sem: expr_sat]
        _393 = saturate(1.0f - dot(float3(_168, _169, _170), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _396 = _380.z + -0.5f;
        _398 = saturate(((_393 * _393) * _393) + _396);  // [sem: expr_sat]
        if ((_135 == _renderPassSelfPlayer) || ((!(_135 == _renderPassSelfPlayer)) && (_135 == _renderPassTest))) {
          _407 = WaveReadLaneFirst(_materialIndex);
          _415 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_407 < (uint)170000), _407, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomPlayerColor);
          _418 = (float)((uint)((uint)(((uint)((uint)(_415)) >> 16) & 255)));
          _421 = (float)((uint)((uint)(((uint)((uint)(_415)) >> 8) & 255)));
          _423 = (float)((uint)((uint)(_415 & 255)));
          _576 = (select(((_418 * 0.003921569f) < 0.04045f), (_418 * 0.000303527f), exp2(log2((_418 * 0.003717127f) + 0.052132703f) * 2.4f)) * _398);
          _577 = (select(((_421 * 0.003921569f) < 0.04045f), (_421 * 0.000303527f), exp2(log2((_421 * 0.003717127f) + 0.052132703f) * 2.4f)) * _398);
          _578 = (select(((_423 * 0.003921569f) < 0.04045f), (_423 * 0.000303527f), exp2(log2((_423 * 0.003717127f) + 0.052132703f) * 2.4f)) * _398);
        } else {
          if (_135 == _renderPassDetectItem) {
            _459 = WaveReadLaneFirst(_materialIndex);
            _467 = WaveReadLaneFirst(BindlessParameters_PostProcessAxiom_CD[((int)((uint)((uint)(select(((uint)_459 < (uint)170000), _459, 0))) + (uint)(0)))].BindlessParameters_PostProcessAxiom_CD._axiomEyeTargetColor);
            _470 = (float)((uint)((uint)(((uint)((uint)(_467)) >> 16) & 255)));
            _473 = (float)((uint)((uint)(((uint)((uint)(_467)) >> 8) & 255)));
            _475 = (float)((uint)((uint)(_467 & 255)));
            _500 = select(((_470 * 0.003921569f) < 0.04045f), (_470 * 0.000303527f), exp2(log2((_470 * 0.003717127f) + 0.052132703f) * 2.4f));
            _501 = select(((_473 * 0.003921569f) < 0.04045f), (_473 * 0.000303527f), exp2(log2((_473 * 0.003717127f) + 0.052132703f) * 2.4f));
            _502 = select(((_475 * 0.003921569f) < 0.04045f), (_475 * 0.000303527f), exp2(log2((_475 * 0.003717127f) + 0.052132703f) * 2.4f));
            // [sem: expr_sat]
            _520 = saturate(1.0f - dot(float3((((_380.x + -0.5f) * 4.0f) + _168), (((_380.y + -0.5f) * 4.0f) + _169), ((_396 * 4.0f) + _170)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
            _522 = saturate(_520 * _520);  // [sem: expr_sat]
            _525 = saturate((_337 * 2.0f) + -1.0f);  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_specularAO_sampleLod]
            _532 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_111 * 0.049999997f)), (TEXCOORD.y - (_112 * 0.049999997f))), 0.0f);
            if (!(_532.w < 0.1f)) {
              if (_532.w < 0.14f) {
                _548 = (_500 + 1.0f);
                _549 = _501;
                _550 = _502;
              } else {
                if (_532.w < 0.17f) {
                  _548 = _500;
                  _549 = (_501 + 1.0f);
                  _550 = _502;
                } else {
                  if (_532.w < 0.3f) {
                    _548 = _500;
                    _549 = _501;
                    _550 = (_502 + 1.0f);
                  } else {
                    _548 = _500;
                    _549 = _501;
                    _550 = _502;
                  }
                }
              }
            } else {
              _548 = _500;
              _549 = _501;
              _550 = _502;
            }
            _554 = _500 * _398;
            _555 = _501 * _398;
            _556 = _502 * _398;
            _576 = ((((_554 - _268) + (((_548 * _522) - _554) * _525)) * _337) + _268);
            _577 = ((((_555 - _269) + (((_549 * _522) - _555) * _525)) * _337) + _269);
            _578 = ((((_556 - _270) + (((_550 * _522) - _556) * _525)) * _337) + _270);
          } else {
            _576 = _268;
            _577 = _269;
            _578 = _270;
          }
        }
      } else {
        _576 = _268;
        _577 = _269;
        _578 = _270;
      }
    }
  } else {
    _576 = _35.x;
    _577 = _35.y;
    _578 = _35.z;
  }
  _588 = (((_576 * _208) - _35.x) * _214) + _35.x;
  _589 = (((_577 * _208) - _35.y) * _214) + _35.y;
  _590 = (((_578 * _208) - _35.z) * _214) + _35.z;
  _591 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _604 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _591, 0)))).x) & 127)))) + 0.5f);
  } else {
    _604 = 1.0f;
  }
  _607 = (_localToneMappingParams.w > 0.0f);
  if (_607) {
    _613 = _userImageAdjust.z * _exposure0.x;
    _662 = exp2(log2(max(0.0f, (((_613 * max(0.0f, (((_588 * 1.70505f) - (_589 * 0.62179f)) - (_590 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _663 = exp2(log2(max(0.0f, (((max(0.0f, (((_589 * 1.1408f) - (_588 * 0.13026f)) - (_590 * 0.01055f))) * _613) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _664 = exp2(log2(max(0.0f, (((max(0.0f, (((_588 * -0.024f) - (_589 * 0.12897f)) + (_590 * 1.15297f))) * _613) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _666 = dot(float3(_662, _663, _664), float3(0.212671f, 0.71516f, 0.072169f));
    _673 = ((_662 - _666) * _powerParams.w) + _666;
    _674 = ((_663 - _666) * _powerParams.w) + _666;
    _675 = ((_664 - _666) * _powerParams.w) + _666;
    _694 = min(max(log2(mad(_675, 0.079223745f, mad(_674, 0.0784336f, (_673 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _695 = min(max(log2(mad(_675, 0.07916613f, mad(_674, 0.87846863f, (_673 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _696 = min(max(log2(mad(_675, 0.879143f, mad(_674, 0.0784336f, (_673 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _697 = _694 * 0.060606062f;
    _698 = _695 * 0.060606062f;
    _699 = _696 * 0.060606062f;
    _700 = _697 * _697;
    _701 = _698 * _698;
    _702 = _699 * _699;
    _748 = min(0.0f, (-0.0f - (((_694 * 0.0072181816f) + ((_700 * 0.4298f) + (((_700 * _700) * ((31.96f - (_694 * 2.4327273f)) + (_700 * 15.5f))) - ((_694 * 0.41624245f) * _700)))) + -0.00232f)));
    _749 = min(0.0f, (-0.0f - (((_695 * 0.0072181816f) + ((_701 * 0.4298f) + (((_701 * _701) * ((31.96f - (_695 * 2.4327273f)) + (_701 * 15.5f))) - ((_695 * 0.41624245f) * _701)))) + -0.00232f)));
    _750 = min(0.0f, (-0.0f - (((_696 * 0.0072181816f) + ((_702 * 0.4298f) + (((_702 * _702) * ((31.96f - (_696 * 2.4327273f)) + (_702 * 15.5f))) - ((_696 * 0.41624245f) * _702)))) + -0.00232f)));
    _751 = -0.0f - _748;
    _752 = -0.0f - _749;
    _753 = -0.0f - _750;
    _754 = dot(float3(_751, _752, _753), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _771 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _772 = -0.79999995f / _771;
      _773 = -1.2f / _771;
      _774 = 0.20000005f / _771;
      _780 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _783 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _790 = (_772 + 1.4f) + (_783 * (-0.39999998f - _772));
      _791 = (_773 + 1.6f) + (_783 * (-0.6f - _773));
      _792 = (_774 + 0.9f) + (_783 * (0.5f - _774));
      _809 = (lerp(_791, 1.2f, _780));  // [sem: blended]
      _810 = (lerp(_790, 1.0f, _780));  // [sem: blended]
      _811 = (lerp(_792, 1.4f, _780));  // [sem: blended]
    } else {
      _809 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _810 = 1.0f;  // [sem: blended]
      _811 = 1.4f;  // [sem: blended]
    }
    _821 = 1.0f - _809;
    _846 = ((exp2(log2(((saturate((_748 * _748) * _751) * _821) + _809) * _751) * _810) - _754) * _811) + _754;
    _847 = ((exp2(log2(((saturate((_749 * _749) * _752) * _821) + _809) * _752) * _810) - _754) * _811) + _754;
    _848 = ((exp2(log2(((saturate((_750 * _750) * _753) * _821) + _809) * _753) * _810) - _754) * _811) + _754;
    _867 = saturate(exp2(log2(mad(_848, -0.09902974f, mad(_847, -0.09802088f, (_846 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _868 = saturate(exp2(log2(mad(_848, -0.098961174f, mad(_847, 1.1519032f, (_846 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _869 = saturate(exp2(log2(mad(_848, 1.1510737f, mad(_847, -0.09804345f, (_846 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _875 = 1.0f - abs(_etcParams.w);
      _879 = saturate(_etcParams.w);  // [sem: expr_sat]
      _880 = (_875 * _867) + _879;
      _881 = (_875 * _868) + _879;
      _882 = (_875 * _869) + _879;
      if (_colorGradingParams.w > 0.0f) {
        _887 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _904 = (((max(0.0f, (1.0f - _880)) - _880) * _887) + _880);
        _905 = (((max(0.0f, (1.0f - _881)) - _881) * _887) + _881);
        _906 = (((max(0.0f, (1.0f - _882)) - _882) * _887) + _882);
      } else {
        _904 = _880;
        _905 = _881;
        _906 = _882;
      }
      _912 = _userImageAdjust.y + 1.0f;
      _916 = _userImageAdjust.x + 0.5f;
      _917 = ((_904 + -0.5f) * _912) + _916;
      _918 = ((_905 + -0.5f) * _912) + _916;
      _919 = ((_906 + -0.5f) * _912) + _916;
      _949 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _960 = exp2(log2(saturate(mad(_colorBlind0.z, _919, mad(_colorBlind0.y, _918, (_colorBlind0.x * _917))))) * _949);
      _961 = exp2(log2(saturate(mad(_colorBlind1.z, _919, mad(_colorBlind1.y, _918, (_colorBlind1.x * _917))))) * _949);
      _962 = exp2(log2(saturate(mad(_colorBlind2.z, _919, mad(_colorBlind2.y, _918, (_colorBlind2.x * _917))))) * _949);
    } else {
      _960 = _867;
      _961 = _868;
      _962 = _869;
    }
  } else {
    _960 = _588;
    _961 = _589;
    _962 = _590;
  }
  if (_etcParams.y > 1.0f) {
    _968 = abs(_40);
    _969 = abs(_41 + -1.0f);
    _973 = saturate(1.0f - (dot(float2(_968, _969), float2(_968, _969)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _978 = (_973 * _960);
    _979 = (_973 * _961);
    _980 = (_973 * _962);
  } else {
    _978 = _960;
    _979 = _961;
    _980 = _962;
  }
  if (_607 && (_etcParams.z > 0.0f)) {
    _1010 = select((_978 <= 0.0031308f), (_978 * 12.92f), (((pow(_978, 0.41666666f)) * 1.055f) + -0.055f));
    _1011 = select((_979 <= 0.0031308f), (_979 * 12.92f), (((pow(_979, 0.41666666f)) * 1.055f) + -0.055f));
    _1012 = select((_980 <= 0.0031308f), (_980 * 12.92f), (((pow(_980, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1010 = _978;
    _1011 = _979;
    _1012 = _980;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1017 = (float)((uint)((uint)(_591)));
    if (!(_1017 < _viewDir.w)) {
      if (!(_1017 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1026 = _1010;
        _1027 = _1011;
        _1028 = _1012;
      } else {
        _1026 = 0.0f;
        _1027 = 0.0f;
        _1028 = 0.0f;
      }
    } else {
      _1026 = 0.0f;
      _1027 = 0.0f;
      _1028 = 0.0f;
    }
  } else {
    _1026 = _1010;
    _1027 = _1011;
    _1028 = _1012;
  }
  SV_Target.x = _1026;
  SV_Target.y = _1027;
  SV_Target.z = _1028;
  SV_Target.w = _604;
  return SV_Target;
}
