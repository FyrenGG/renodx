struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessGhost_CD BindlessParameters_PostProcessGhost_CD_t;
ConstantBuffer<BindlessParameters_PostProcessGhost_CD_t> BindlessParameters_PostProcessGhost_CD[] : register(b0, space100);

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
  float4 _27;
  int _33;
  float _41;
  float _147;
  float _148;
  float _400;
  float _401;
  float _402;
  float _403;
  float _404;
  float _405;
  float _406;
  float _429;
  float _430;
  float _431;
  float _445;
  float _650;
  float _651;
  float _652;
  float _745;
  float _746;
  float _747;
  float _801;
  float _802;
  float _803;
  float _822;
  float _823;
  float _824;
  float _854;
  float _855;
  float _856;
  float _870;
  float _871;
  float _872;
  float _49;
  int _52;
  int _60;
  float4 _74;
  int _80;
  float _88;
  int _91;
  float _99;
  float _101;
  float _103;
  float _105;
  uint2 _107;
  uint _122;
  float _127;
  float _132;
  float _134;
  float _135;
  float _136;
  float _150;
  float _151;
  float _152;
  float _153;
  float _155;
  float _156;
  float _157;
  float _158;
  uint _168;
  uint _172;
  uint4 _174;
  float4 _177;
  float _184;
  float _188;
  float _192;
  float _194;
  float _195;
  float _196;
  float _197;
  float _202;
  float _206;
  float _208;
  float _210;
  float _214;
  float _216;
  float _217;
  float _218;
  float _219;
  float _221;
  float _224;
  float _225;
  float _226;
  float _227;
  float _233;
  float _239;
  float _244;
  float _246;
  float _268;
  float _269;
  float _272;
  int _275;
  float _283;
  float _284;
  int _287;
  float _295;
  float _299;
  float _303;
  float _307;
  float _308;
  float _314;
  int _317;
  int _325;
  float _329;
  float _333;
  float _336;
  float _339;
  int _342;
  int _350;
  float _353;
  float _358;
  float _363;
  float _367;
  float _370;
  float _373;
  float _376;
  int _409;
  float _417;
  float _418;
  uint _432;
  bool _448;
  float _454;
  float _473;
  float _489;
  float _505;
  float _506;
  float _510;
  float _513;
  float _516;
  float _523;
  float _530;
  float _537;
  float _538;
  float _539;
  float _540;
  float _541;
  float _542;
  float _543;
  float _559;
  float _575;
  float _591;
  float _592;
  float _593;
  float _594;
  float _595;
  float _612;
  float _613;
  float _614;
  float _615;
  float _618;
  float _621;
  float _625;
  float _629;
  float _633;
  float _653;
  float _665;
  float _677;
  float _689;
  float _696;
  float _703;
  float _710;
  float _716;
  float _717;
  float _719;
  float _721;
  float _723;
  float _728;
  float _749;
  float _751;
  float _754;
  float _757;
  float _760;
  float _766;
  float _808;
  float _811;
  float _817;
  float _859;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_41 >= 0.001f))) {
    _49 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _52 = WaveReadLaneFirst(_materialIndex);
    _60 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_52 < (uint)170000), _52, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _74 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_60 < (uint)65000), _60, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _49), ((_time.x * 0.3f) + (_49 * TEXCOORD.y))));
    _80 = WaveReadLaneFirst(_materialIndex);
    _88 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _91 = WaveReadLaneFirst(_materialIndex);
    _99 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _101 = (_88 * _74.y) * _99;
    _103 = (_101 * 0.01f) + TEXCOORD.x;
    _105 = (_101 * 0.05f) + TEXCOORD.y;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_107.x, _107.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _122 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_107.x))))))) + 0.5f) * _103)), ((int)((((float)((int)((int)((float)((int)((int)(_107.y))))))) + 0.5f) * _105)), 0));
    _127 = (((float)((uint)((uint)((uint)((uint)(_122.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _132 = (((float)((uint)((uint)(((uint)((uint)(_122.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _134 = 1.0f - abs(_127);
    _135 = abs(_132);
    _136 = _134 - _135;
    if (!(_136 >= 0.0f)) {
      _147 = (select((_132 >= 0.0f), 1.0f, -1.0f) * _134);
      _148 = (select((_127 >= 0.0f), 1.0f, -1.0f) * (1.0f - _135));
    } else {
      _147 = _132;
      _148 = _127;
    }
    _150 = rsqrt(dot(float3(_148, _147, _136), float3(_148, _147, _136)));  // [sem: invLength]
    _151 = _150 * _148;
    _152 = _150 * _147;
    _153 = _150 * _136;
    _155 = rsqrt(dot(float3(_151, _152, _153), float3(_151, _152, _153)));  // [sem: invLength]
    _156 = _155 * _151;
    _157 = _155 * _152;
    _158 = _155 * _153;
    if ((_122.x & 255) == _renderPassNPCGhost) {
      _168 = (uint)((_bufferSizeAndInvSize.x * _103) + -0.5f);
      _172 = (uint)((_bufferSizeAndInvSize.y * _105) + -0.5f);
      _174 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_168, _172, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _177 = __3__36__0__0__g_gbufferNormal.Load(int3(_168, _172, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _184 = (saturate(_177.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _188 = (saturate(_177.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _192 = (saturate(_177.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _194 = rsqrt(dot(float3(_184, _188, _192), float3(_184, _188, _192)));  // [sem: invLength]
      _195 = _194 * _184;
      _196 = _194 * _188;
      _197 = _192 * _194;
      _202 = (((float)((uint)((uint)(((uint)((uint)(_174.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _206 = (((float)((uint)((uint)(_174.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _208 = (_202 + _206) * 0.5f;
      _210 = (_202 - _206) * 0.5f;
      _214 = (1.0f - abs(_208)) - abs(_210);
      _216 = rsqrt(dot(float3(_208, _210, _214), float3(_208, _210, _214)));  // [sem: invLength]
      _217 = _216 * _208;
      _218 = _216 * _210;
      _219 = _216 * _214;
      _221 = select((_197 >= 0.0f), 1.0f, -1.0f);
      _224 = -0.0f - (1.0f / (_221 + _197));
      _225 = _196 * _224;
      _226 = _225 * _195;
      _227 = _221 * _195;
      _233 = mad(_219, _195, mad(_218, _226, ((((_227 * _195) * _224) + 1.0f) * _217)));
      _239 = mad(_219, _196, mad(_218, ((_225 * _196) + _221), ((_217 * _221) * _226)));
      _244 = mad(_219, _197, mad(_218, (-0.0f - _196), (-0.0f - (_227 * _217))));
      _246 = rsqrt(dot(float3(_233, _239, _244), float3(_233, _239, _244)));  // [sem: invLength]
      // [sem: expr_sat]
      _268 = saturate(1.0f - dot(float3(((((_246 * _233) - _156) * 0.2f) + _156), ((((_246 * _239) - _157) * 0.2f) + _157), ((((_246 * _244) - _158) * 0.2f) + _158)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _269 = _268 * 2.0f;
      _272 = 1.0f - saturate(_269 * _268);
      _275 = WaveReadLaneFirst(_materialIndex);
      _283 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_275 < (uint)170000), _275, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
      _284 = _283 * _272;
      _287 = WaveReadLaneFirst(_materialIndex);
      _295 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_287 < (uint)170000), _287, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColorInnerBrightness);
      _299 = (((_295 * _27.x) - _27.x) * _284) + _27.x;
      _303 = (((_295 * _27.y) - _27.y) * _284) + _27.y;
      _307 = (((_295 * _27.z) - _27.z) * _284) + _27.z;
      _308 = _272 * _268;
      _314 = saturate((_308 * _308) * 30.0f) * saturate(_74.x * 40.0f);  // [sem: expr_sat]
      _317 = WaveReadLaneFirst(_materialIndex);
      _325 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_317 < (uint)170000), _317, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor1);
      _329 = ((float)((uint)((uint)(((uint)((uint)(_325)) >> 16) & 255)))) * 0.003921569f;
      _333 = ((float)((uint)((uint)(((uint)((uint)(_325)) >> 8) & 255)))) * 0.003921569f;
      _336 = ((float)((uint)((uint)(_325 & 255)))) * 0.003921569f;
      _339 = max(0.001f, _exposure0.x);
      _342 = WaveReadLaneFirst(_materialIndex);
      _350 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_342 < (uint)170000), _342, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor2);
      _353 = max(0.001f, _exposure0.x);
      _358 = (((float)((uint)((uint)(((uint)((uint)(_350)) >> 16) & 255)))) * 0.003921569f) / _353;
      _363 = (((float)((uint)((uint)(((uint)((uint)(_350)) >> 8) & 255)))) * 0.003921569f) / _353;
      _367 = (((float)((uint)((uint)(_350 & 255)))) * 0.003921569f) / _353;
      _370 = ((_299 - _358) * 0.1f) + _358;
      _373 = ((_303 - _363) * 0.1f) + _363;
      _376 = ((_307 - _367) * 0.1f) + _367;
      _400 = (((((lerp(_336, _74.z, 0.1f)) / _339) - _376) * _314) + _376);
      _401 = (((((lerp(_333, _74.y, 0.1f)) / _339) - _373) * _314) + _373);
      _402 = (((((lerp(_329, _74.x, 0.1f)) / _339) - _370) * _314) + _370);
      _403 = saturate(_269);  // [sem: _269_sat]
      _404 = _307;
      _405 = _303;
      _406 = _299;
    } else {
      _400 = _27.z;
      _401 = _27.y;
      _402 = _27.x;
      _403 = 0.0f;  // [sem: _269_sat]
      _404 = _27.z;
      _405 = _27.y;
      _406 = _27.x;
    }
    _409 = WaveReadLaneFirst(_materialIndex);
    _417 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _418 = _417 * _403;
    _429 = ((_418 * (_400 - _404)) + _404);
    _430 = ((_418 * (_401 - _405)) + _405);
    _431 = ((_418 * (_402 - _406)) + _406);
  } else {
    _429 = _27.z;
    _430 = _27.y;
    _431 = _27.x;
  }
  _432 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _445 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _432, 0)))).x) & 127)))) + 0.5f);
  } else {
    _445 = 0.0f;
  }
  _448 = (_localToneMappingParams.w > 0.0f);
  if (_448) {
    _454 = _exposure0.x * _userImageAdjust.z;
    _473 = exp2(_powerParams.x * log2(max(0.0f, (((_454 * max(0.0f, (((_430 * -0.62179f) - (_429 * 0.08326f)) + (_431 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _489 = exp2(log2(max(0.0f, (((_slopeParams.y * _454) * max(0.0f, (((_430 * 1.1408f) - (_429 * 0.01055f)) - (_431 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _505 = exp2(log2(max(0.0f, (((_slopeParams.z * _454) * max(0.0f, (((_429 * 1.15297f) - (_430 * 0.12897f)) - (_431 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _506 = dot(float3(_473, _489, _505), float3(0.212671f, 0.71516f, 0.072169f));
    _510 = ((_473 - _506) * _powerParams.w) + _506;
    _513 = ((_489 - _506) * _powerParams.w) + _506;
    _516 = ((_505 - _506) * _powerParams.w) + _506;
    _523 = min(max(log2(mad(_516, 0.079223745f, mad(_513, 0.0784336f, (_510 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _530 = min(max(log2(mad(_516, 0.07916613f, mad(_513, 0.87846863f, (_510 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _537 = min(max(log2(mad(_516, 0.879143f, mad(_513, 0.0784336f, (_510 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _538 = _523 * 0.060606062f;
    _539 = _530 * 0.060606062f;
    _540 = _537 * 0.060606062f;
    _541 = _538 * _538;
    _542 = _539 * _539;
    _543 = _540 * _540;
    _559 = min(0.0f, (-0.0f - (((_523 * 0.0072181816f) + ((_541 * 0.4298f) + (((_541 * _541) * ((31.96f - (_523 * 2.4327273f)) + (_541 * 15.5f))) - ((_523 * 0.41624245f) * _541)))) + -0.00232f)));
    _575 = min(0.0f, (-0.0f - (((_530 * 0.0072181816f) + ((_542 * 0.4298f) + (((_542 * _542) * ((31.96f - (_530 * 2.4327273f)) + (_542 * 15.5f))) - ((_530 * 0.41624245f) * _542)))) + -0.00232f)));
    _591 = min(0.0f, (-0.0f - (((_537 * 0.0072181816f) + ((_543 * 0.4298f) + (((_543 * _543) * ((31.96f - (_537 * 2.4327273f)) + (_543 * 15.5f))) - ((_537 * 0.41624245f) * _543)))) + -0.00232f)));
    _592 = -0.0f - _559;
    _593 = -0.0f - _575;
    _594 = -0.0f - _591;
    _595 = dot(float3(_592, _593, _594), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _612 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _613 = -0.79999995f / _612;
      _614 = -1.2f / _612;
      _615 = 0.20000005f / _612;
      _618 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _621 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _625 = (_613 + 1.4f) + (_621 * (-0.39999998f - _613));
      _629 = (_614 + 1.6f) + (_621 * (-0.6f - _614));
      _633 = (_615 + 0.9f) + (_621 * (0.5f - _615));
      _650 = (lerp(_633, 1.4f, _618));  // [sem: blended]
      _651 = (lerp(_625, 1.0f, _618));  // [sem: blended]
      _652 = (lerp(_629, 1.2f, _618));  // [sem: blended]
    } else {
      _650 = 1.4f;  // [sem: blended]
      _651 = 1.0f;  // [sem: blended]
      _652 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _653 = 1.0f - _652;
    _665 = ((exp2(log2(((saturate((_559 * _559) * _592) * _653) + _652) * _592) * _651) - _595) * _650) + _595;
    _677 = ((exp2(log2(((saturate((_575 * _575) * _593) * _653) + _652) * _593) * _651) - _595) * _650) + _595;
    _689 = ((exp2(log2(((saturate((_591 * _591) * _594) * _653) + _652) * _594) * _651) - _595) * _650) + _595;
    _696 = saturate(exp2(log2(mad(_689, -0.09902974f, mad(_677, -0.09802088f, (_665 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _703 = saturate(exp2(log2(mad(_689, -0.098961174f, mad(_677, 1.1519032f, (_665 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _710 = saturate(exp2(log2(mad(_689, 1.1510737f, mad(_677, -0.09804345f, (_665 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _716 = 1.0f - abs(_etcParams.w);
      _717 = saturate(_etcParams.w);  // [sem: expr_sat]
      _719 = (_716 * _696) + _717;
      _721 = (_716 * _703) + _717;
      _723 = (_716 * _710) + _717;
      if (_colorGradingParams.w > 0.0f) {
        _728 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _745 = (((max(0.0f, (1.0f - _723)) - _723) * _728) + _723);
        _746 = (((max(0.0f, (1.0f - _721)) - _721) * _728) + _721);
        _747 = (((max(0.0f, (1.0f - _719)) - _719) * _728) + _719);
      } else {
        _745 = _723;
        _746 = _721;
        _747 = _719;
      }
      _749 = _userImageAdjust.y + 1.0f;
      _751 = _userImageAdjust.x + 0.5f;
      _754 = ((_747 + -0.5f) * _749) + _751;
      _757 = ((_746 + -0.5f) * _749) + _751;
      _760 = ((_745 + -0.5f) * _749) + _751;
      _766 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _801 = exp2(log2(saturate(mad(_colorBlind2.z, _760, mad(_colorBlind2.y, _757, (_colorBlind2.x * _754))))) * _766);
      _802 = exp2(log2(saturate(mad(_colorBlind1.z, _760, mad(_colorBlind1.y, _757, (_colorBlind1.x * _754))))) * _766);
      _803 = exp2(log2(saturate(mad(_colorBlind0.z, _760, mad(_colorBlind0.y, _757, (_colorBlind0.x * _754))))) * _766);
    } else {
      _801 = _710;
      _802 = _703;
      _803 = _696;
    }
  } else {
    _801 = _429;
    _802 = _430;
    _803 = _431;
  }
  if (_etcParams.y > 1.0f) {
    _808 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _811 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _817 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_808, _811), float2(_808, _811))));  // [sem: expr_sat]
    _822 = (_817 * _801);
    _823 = (_817 * _802);
    _824 = (_817 * _803);
  } else {
    _822 = _801;
    _823 = _802;
    _824 = _803;
  }
  if (_448 && (_etcParams.z > 0.0f)) {
    _854 = select((_823 <= 0.0031308f), (_823 * 12.92f), (((pow(_823, 0.41666666f)) * 1.055f) + -0.055f));
    _855 = select((_824 <= 0.0031308f), (_824 * 12.92f), (((pow(_824, 0.41666666f)) * 1.055f) + -0.055f));
    _856 = select((_822 <= 0.0031308f), (_822 * 12.92f), (((pow(_822, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _854 = _823;
    _855 = _824;
    _856 = _822;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _859 = (float)((uint)((uint)(_432)));
    if (!(_859 < _viewDir.w)) {
      if (!(!(_859 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _870 = 0.0f;
        _871 = 0.0f;
        _872 = 0.0f;
      } else {
        _870 = _855;
        _871 = _854;
        _872 = _856;
      }
    } else {
      _870 = 0.0f;
      _871 = 0.0f;
      _872 = 0.0f;
    }
  } else {
    _870 = _855;
    _871 = _854;
    _872 = _856;
  }
  SV_Target.x = _870;
  SV_Target.y = _871;
  SV_Target.z = _872;
  SV_Target.w = _445;
  return SV_Target;
}
