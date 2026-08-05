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
  float _26;
  int _29;
  float _37;
  float _92;
  float _93;
  float _96;
  float _97;
  float _384;
  float _385;
  float _477;
  float _484;
  float _503;
  float _508;
  float _509;
  float _544;
  float _587;
  float _588;
  float _589;
  float _590;
  float _591;
  float _592;
  float _616;
  float _821;
  float _822;
  float _823;
  float _916;
  float _917;
  float _918;
  float _972;
  float _973;
  float _974;
  float _993;
  float _994;
  float _995;
  float _1025;
  float _1026;
  float _1027;
  float _1041;
  float _1042;
  float _1043;
  float _43;
  float _48;
  float _52;
  float _53;
  float _54;
  float _58;
  float _63;
  float _65;
  float _76;
  float _77;
  float _82;
  float _84;
  float4 _100;
  float _106;
  float _109;
  float _112;
  float _120;
  float _128;
  float _136;
  float _137;
  float _138;
  float _139;
  int _142;
  float _150;
  int _153;
  float _161;
  float4 _168;
  float _175;
  float _178;
  float _181;
  int _184;
  float _192;
  float _194;
  int _197;
  float _205;
  float _209;
  float _213;
  float _219;
  float _223;
  float _227;
  float _229;
  float _230;
  float _231;
  float _233;
  float _236;
  float _248;
  float _257;
  float _266;
  float _275;
  float _277;
  float _278;
  float _279;
  float _280;
  float _281;
  float _284;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _297;
  float _301;
  float _308;
  float _310;
  float _311;
  float _312;
  float _314;
  bool _315;
  bool _316;
  bool _317;
  bool _318;
  float _320;
  int _323;
  float _331;
  float _335;
  int _338;
  float _346;
  int _351;
  float _359;
  float _363;
  int _388;
  float _396;
  float _400;
  int _403;
  int _411;
  float4 _424;
  float _428;
  float _430;
  int _433;
  float _441;
  int _444;
  float _452;
  float _453;
  int _456;
  float _464;
  bool _478;
  int _487;
  int _495;
  int _512;
  float _520;
  int _525;
  float _533;
  float _593;
  float _596;
  float _599;
  float _602;
  uint _603;
  bool _619;
  float _625;
  float _644;
  float _660;
  float _676;
  float _677;
  float _681;
  float _684;
  float _687;
  float _694;
  float _701;
  float _708;
  float _709;
  float _710;
  float _711;
  float _712;
  float _713;
  float _714;
  float _730;
  float _746;
  float _762;
  float _763;
  float _764;
  float _765;
  float _766;
  float _783;
  float _784;
  float _785;
  float _786;
  float _789;
  float _792;
  float _796;
  float _800;
  float _804;
  float _824;
  float _836;
  float _848;
  float _860;
  float _867;
  float _874;
  float _881;
  float _887;
  float _888;
  float _890;
  float _892;
  float _894;
  float _899;
  float _920;
  float _922;
  float _925;
  float _928;
  float _931;
  float _937;
  float _979;
  float _982;
  float _988;
  float _1030;
  float _1047;
  float _1051;
  float _1055;
  _26 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._fishEyeMaxPower);
  if ((_37 > 0.001f) || (_37 < -0.001f)) {
    _43 = 0.5f / _26;
    _48 = ((_destTargetSizAndInv.x * TEXCOORD.x) / _destTargetSizAndInv.x) + -0.5f;
    _52 = ((_destTargetSizAndInv.y * TEXCOORD.y) / _destTargetSizAndInv.x) - _43;
    _53 = dot(float2(_48, _52), float2(_48, _52));
    _54 = sqrt(_53);
    if (_37 > 0.0f) {
      _58 = sqrt(dot(float2(0.5f, _43), float2(0.5f, _43)));
      _63 = (tan(_54 * _37) * _58) * rsqrt(_53);
      _65 = tan(_58 * _37);
      _92 = (((_63 * _52) / _65) + _43);
      _93 = (((_63 * _48) / _65) + 0.5f);
    } else {
      if (_37 < 0.0f) {
        _76 = select((_26 < 1.0f), 0.5f, _43);
        _77 = _37 * -10.0f;
        _82 = (atan(_54 * _77) * _76) * rsqrt(_53);
        _84 = atan(_76 * _77);
        _92 = (((_82 * _52) / _84) + _43);
        _93 = (((_82 * _48) / _84) + 0.5f);
      } else {
        _92 = 0.0f;
        _93 = 0.0f;
      }
    }
    _96 = (_92 * _26);
    _97 = _93;
  } else {
    _96 = TEXCOORD.y;
    _97 = TEXCOORD.x;
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_97, _96));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _106 = (pow(_100.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _109 = (pow(_100.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _112 = (pow(_100.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _120 = exp2(log2(max(0.0f, (_106 + -0.8359375f)) / (18.851562f - (_106 * 18.6875f))) * 6.277395f);
  _128 = exp2(log2(max(0.0f, (_109 + -0.8359375f)) / (18.851562f - (_109 * 18.6875f))) * 6.277395f);
  _136 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.851562f - (_112 * 18.6875f))) * 6.277395f);
  _137 = _120 * 10000.0f;
  _138 = _128 * 10000.0f;
  _139 = _136 * 10000.0f;
  _142 = WaveReadLaneFirst(_materialIndex);
  _150 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_142 < (uint)170000), _142, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurRatio);
  _153 = WaveReadLaneFirst(_materialIndex);
  _161 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  if ((_150 > 0.0f) && (_161 > 0.0f)) {
    _168 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_97, _96));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _175 = (pow(_168.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _178 = (pow(_168.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _181 = (pow(_168.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _184 = WaveReadLaneFirst(_materialIndex);
    _192 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_184 < (uint)170000), _184, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurBrightness);
    _194 = _192 * (1.0f - _168.w);
    _197 = WaveReadLaneFirst(_materialIndex);
    _205 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_197 < (uint)170000), _197, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _209 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_197 < (uint)170000), _197, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _213 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_197 < (uint)170000), _197, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _219 = (_targetFocusPosition.x + _205) - _viewPos.x;
    _223 = (_targetFocusPosition.y + _209) - _viewPos.y;
    _227 = (_targetFocusPosition.z + _213) - _viewPos.z;
    _229 = rsqrt(dot(float3(_219, _223, _227), float3(_219, _223, _227)));  // [sem: invLength]
    _230 = _229 * _219;
    _231 = _227 * _229;
    _233 = (TEXCOORD.x * 2.0f) + -1.0f;
    _236 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _248 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _236, ((_invViewProjRelative[3].x) * _233));
    _257 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _236, ((_invViewProjRelative[0].x) * _233))) / _248;
    _266 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _236, ((_invViewProjRelative[1].x) * _233))) / _248;
    _275 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _236, ((_invViewProjRelative[2].x) * _233))) / _248;
    _277 = rsqrt(dot(float3(_257, _266, _275), float3(_257, _266, _275)));  // [sem: invLength]
    _278 = _277 * _257;
    _279 = _277 * _266;
    _280 = _277 * _275;
    _281 = -0.0f - _230;
    _284 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_230, (_229 * _223), _231)));
    _285 = sin(_284);
    _286 = cos(_284);
    _287 = 1.0f - _286;
    _288 = _287 * _231;
    _289 = _287 * _281;
    _290 = _285 * _231;
    _291 = _285 * _281;
    _297 = mad((_289 * _231), _280, mad(_291, _279, (((_288 * _231) + _286) * _278)));
    _301 = mad(_290, _280, mad(_286, _279, (-0.0f - (_278 * _291))));
    _308 = mad(((_289 * _281) + _286), _280, mad((-0.0f - _290), _279, ((_278 * _281) * _288)));
    _310 = rsqrt(dot(float3(_297, _301, _308), float3(_297, _301, _308)));  // [sem: invLength]
    _311 = _310 * _297;
    _312 = _310 * _308;
    _314 = atan(_312 / _311);
    _315 = (_311 < 0.0f);
    _316 = (_311 == 0.0f);
    _317 = (_312 >= 0.0f);
    _318 = (_312 < 0.0f);
    _320 = acos(_310 * _301);
    _323 = WaveReadLaneFirst(_materialIndex);
    _331 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _335 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _338 = WaveReadLaneFirst(_materialIndex);
    _346 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_338 < (uint)170000), _338, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
    if (_346 > 0.001f) {
      _351 = WaveReadLaneFirst(_materialIndex);
      _359 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_351 < (uint)170000), _351, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
      _363 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_351 < (uint)170000), _351, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
      _384 = ((_320 * 0.31830987f) * _363);
      _385 = (_359 * select((_316 && _317), 0.75f, select((_316 && _318), 0.25f, ((select((_315 && _318), (_314 + -3.1415927f), select((_315 && _317), (_314 + 3.1415927f), _314)) * 0.15915494f) + 0.5f))));
    } else {
      _384 = (_335 * _96);
      _385 = ((_97 * _26) * _331);
    }
    _388 = WaveReadLaneFirst(_materialIndex);
    _396 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
    _400 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
    _403 = WaveReadLaneFirst(_materialIndex);
    _411 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_403 < (uint)170000), _403, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
    _424 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_411 < (uint)65000), _411, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * _396) + _385), ((_time.x * _400) + _384)));
    _428 = (_424.x * 2.0f) + -0.99607843f;
    _430 = (_424.y * 2.0f) + -0.99607843f;
    _433 = WaveReadLaneFirst(_materialIndex);
    _441 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_433 < (uint)170000), _433, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMask);
    _444 = WaveReadLaneFirst(_materialIndex);
    _452 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_444 < (uint)170000), _444, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskEdgeThickness);
    _453 = _452 * _441;
    _456 = WaveReadLaneFirst(_materialIndex);
    _464 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_456 < (uint)170000), _456, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskPower);
    if (!(_441 < 0.001f)) {
      _477 = saturate((((1.0f - _441) + _453) - abs((_320 * 0.63661975f) + -1.0f)) / max(0.001f, _453));  // [sem: expr_sat]
    } else {
      _477 = 1.0f;  // [sem: expr_sat]
    }
    _478 = (_464 < 0.001f);
    if (!_478) {
      _484 = (pow(_477, _464));
    } else {
      _484 = 1.0f;
    }
    _487 = WaveReadLaneFirst(_materialIndex);
    _495 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_487 < (uint)170000), _487, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._debugMode);
    if (_495 == 1) {
      if (!_478) {
        _503 = (pow(_477, _464));
      } else {
        _503 = 1.0f;
      }
      _508 = floor(1.0f - _477);
      _509 = (_503 * _477);
    } else {
      _508 = _138;
      _509 = _137;
    }
    _512 = WaveReadLaneFirst(_materialIndex);
    _520 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_512 < (uint)170000), _512, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
    if (_520 > 0.001f) {
      _525 = WaveReadLaneFirst(_materialIndex);
      _533 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_525 < (uint)170000), _525, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
      // [sem: expr_sat]
      _544 = saturate(((sqrt(saturate(1.0f - dot(float2(_428, _430), float2(_428, _430)))) - (_533 * 0.75f)) * 2.0f) + -0.5f);
    } else {
      _544 = 1.0f;  // [sem: expr_sat]
    }
    _587 = ((_544 * _484) * saturate((1.0f - abs((_168.w * 2.0f) + -1.0f)) * 4.0f));
    _588 = ((exp2(log2(max(0.0f, (_181 + -0.8359375f)) / (18.851562f - (_181 * 18.6875f))) * 6.277395f) + (_194 * _136)) * 10000.0f);
    _589 = ((exp2(log2(max(0.0f, (_178 + -0.8359375f)) / (18.851562f - (_178 * 18.6875f))) * 6.277395f) + (_194 * _128)) * 10000.0f);
    _590 = ((exp2(log2(max(0.0f, (_175 + -0.8359375f)) / (18.851562f - (_175 * 18.6875f))) * 6.277395f) + (_194 * _120)) * 10000.0f);
    _591 = _508;
    _592 = _509;
  } else {
    _587 = 0.0f;
    _588 = _139;
    _589 = _138;
    _590 = _137;
    _591 = _138;
    _592 = _137;
  }
  _593 = _587 * _150;
  _596 = ((_590 - _592) * _593) + _592;
  _599 = ((_589 - _591) * _593) + _591;
  _602 = ((_588 - _139) * _593) + _139;
  _603 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _616 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _603, 0)))).x) & 127)))) + 0.5f);
  } else {
    _616 = 1.0f;
  }
  _619 = (_localToneMappingParams.w > 0.0f);
  if (_619) {
    _625 = _exposure0.x * _userImageAdjust.z;
    _644 = exp2(_powerParams.x * log2(max(0.0f, (((_625 * max(0.0f, (((_599 * -0.62179f) - (_602 * 0.08326f)) + (_596 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _660 = exp2(log2(max(0.0f, (((_slopeParams.y * _625) * max(0.0f, (((_599 * 1.1408f) - (_602 * 0.01055f)) - (_596 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _676 = exp2(log2(max(0.0f, (((_slopeParams.z * _625) * max(0.0f, (((_602 * 1.15297f) - (_599 * 0.12897f)) - (_596 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _677 = dot(float3(_644, _660, _676), float3(0.212671f, 0.71516f, 0.072169f));
    _681 = ((_644 - _677) * _powerParams.w) + _677;
    _684 = ((_660 - _677) * _powerParams.w) + _677;
    _687 = ((_676 - _677) * _powerParams.w) + _677;
    _694 = min(max(log2(mad(_687, 0.079223745f, mad(_684, 0.0784336f, (_681 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _701 = min(max(log2(mad(_687, 0.07916613f, mad(_684, 0.87846863f, (_681 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _708 = min(max(log2(mad(_687, 0.879143f, mad(_684, 0.0784336f, (_681 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _709 = _694 * 0.060606062f;
    _710 = _701 * 0.060606062f;
    _711 = _708 * 0.060606062f;
    _712 = _709 * _709;
    _713 = _710 * _710;
    _714 = _711 * _711;
    _730 = min(0.0f, (-0.0f - (((_694 * 0.0072181816f) + ((_712 * 0.4298f) + (((_712 * _712) * ((31.96f - (_694 * 2.4327273f)) + (_712 * 15.5f))) - ((_694 * 0.41624245f) * _712)))) + -0.00232f)));
    _746 = min(0.0f, (-0.0f - (((_701 * 0.0072181816f) + ((_713 * 0.4298f) + (((_713 * _713) * ((31.96f - (_701 * 2.4327273f)) + (_713 * 15.5f))) - ((_701 * 0.41624245f) * _713)))) + -0.00232f)));
    _762 = min(0.0f, (-0.0f - (((_708 * 0.0072181816f) + ((_714 * 0.4298f) + (((_714 * _714) * ((31.96f - (_708 * 2.4327273f)) + (_714 * 15.5f))) - ((_708 * 0.41624245f) * _714)))) + -0.00232f)));
    _763 = -0.0f - _730;
    _764 = -0.0f - _746;
    _765 = -0.0f - _762;
    _766 = dot(float3(_763, _764, _765), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _783 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _784 = -0.79999995f / _783;
      _785 = -1.2f / _783;
      _786 = 0.20000005f / _783;
      _789 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _792 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _796 = (_784 + 1.4f) + (_792 * (-0.39999998f - _784));
      _800 = (_785 + 1.6f) + (_792 * (-0.6f - _785));
      _804 = (_786 + 0.9f) + (_792 * (0.5f - _786));
      _821 = (lerp(_804, 1.4f, _789));  // [sem: blended]
      _822 = (lerp(_796, 1.0f, _789));  // [sem: blended]
      _823 = (lerp(_800, 1.2f, _789));  // [sem: blended]
    } else {
      _821 = 1.4f;  // [sem: blended]
      _822 = 1.0f;  // [sem: blended]
      _823 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _824 = 1.0f - _823;
    _836 = ((exp2(log2(((saturate((_730 * _730) * _763) * _824) + _823) * _763) * _822) - _766) * _821) + _766;
    _848 = ((exp2(log2(((saturate((_746 * _746) * _764) * _824) + _823) * _764) * _822) - _766) * _821) + _766;
    _860 = ((exp2(log2(((saturate((_762 * _762) * _765) * _824) + _823) * _765) * _822) - _766) * _821) + _766;
    _867 = saturate(exp2(log2(mad(_860, -0.09902974f, mad(_848, -0.09802088f, (_836 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _874 = saturate(exp2(log2(mad(_860, -0.098961174f, mad(_848, 1.1519032f, (_836 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _881 = saturate(exp2(log2(mad(_860, 1.1510737f, mad(_848, -0.09804345f, (_836 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _887 = 1.0f - abs(_etcParams.w);
      _888 = saturate(_etcParams.w);  // [sem: expr_sat]
      _890 = (_887 * _867) + _888;
      _892 = (_887 * _874) + _888;
      _894 = (_887 * _881) + _888;
      if (_colorGradingParams.w > 0.0f) {
        _899 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _916 = (((max(0.0f, (1.0f - _894)) - _894) * _899) + _894);
        _917 = (((max(0.0f, (1.0f - _892)) - _892) * _899) + _892);
        _918 = (((max(0.0f, (1.0f - _890)) - _890) * _899) + _890);
      } else {
        _916 = _894;
        _917 = _892;
        _918 = _890;
      }
      _920 = _userImageAdjust.y + 1.0f;
      _922 = _userImageAdjust.x + 0.5f;
      _925 = ((_918 + -0.5f) * _920) + _922;
      _928 = ((_917 + -0.5f) * _920) + _922;
      _931 = ((_916 + -0.5f) * _920) + _922;
      _937 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _972 = exp2(log2(saturate(mad(_colorBlind2.z, _931, mad(_colorBlind2.y, _928, (_colorBlind2.x * _925))))) * _937);
      _973 = exp2(log2(saturate(mad(_colorBlind1.z, _931, mad(_colorBlind1.y, _928, (_colorBlind1.x * _925))))) * _937);
      _974 = exp2(log2(saturate(mad(_colorBlind0.z, _931, mad(_colorBlind0.y, _928, (_colorBlind0.x * _925))))) * _937);
    } else {
      _972 = _881;
      _973 = _874;
      _974 = _867;
    }
  } else {
    _972 = _602;
    _973 = _599;
    _974 = _596;
  }
  if (_etcParams.y > 1.0f) {
    _979 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _982 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _988 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_979, _982), float2(_979, _982))));  // [sem: expr_sat]
    _993 = (_988 * _972);
    _994 = (_988 * _973);
    _995 = (_988 * _974);
  } else {
    _993 = _972;
    _994 = _973;
    _995 = _974;
  }
  if (_619 && (_etcParams.z > 0.0f)) {
    _1025 = select((_995 <= 0.0031308f), (_995 * 12.92f), (((pow(_995, 0.41666666f)) * 1.055f) + -0.055f));
    _1026 = select((_994 <= 0.0031308f), (_994 * 12.92f), (((pow(_994, 0.41666666f)) * 1.055f) + -0.055f));
    _1027 = select((_993 <= 0.0031308f), (_993 * 12.92f), (((pow(_993, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1025 = _995;
    _1026 = _994;
    _1027 = _993;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1030 = (float)((uint)((uint)(_603)));
    if (!(_1030 < _viewDir.w)) {
      if (!(!(_1030 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1041 = 0.0f;
        _1042 = 0.0f;
        _1043 = 0.0f;
      } else {
        _1041 = _1025;
        _1042 = _1026;
        _1043 = _1027;
      }
    } else {
      _1041 = 0.0f;
      _1042 = 0.0f;
      _1043 = 0.0f;
    }
  } else {
    _1041 = _1025;
    _1042 = _1026;
    _1043 = _1027;
  }
  _1047 = exp2(log2(_1041 * 0.0001f) * 0.15930176f);
  _1051 = exp2(log2(_1042 * 0.0001f) * 0.15930176f);
  _1055 = exp2(log2(_1043 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1047 * 18.6875f) + 1.0f)) * ((_1047 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1051 * 18.6875f) + 1.0f)) * ((_1051 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1055 * 18.6875f) + 1.0f)) * ((_1055 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _616;
  return SV_Target;
}
