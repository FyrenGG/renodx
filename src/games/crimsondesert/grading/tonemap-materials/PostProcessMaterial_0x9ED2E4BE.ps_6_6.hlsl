struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
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
  float4 _34;
  int _38;
  float _46;
  float _142;
  float _143;
  float _386;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _392;
  float _413;
  float _414;
  float _415;
  float _429;
  float _634;
  float _635;
  float _636;
  float _729;
  float _730;
  float _731;
  float _785;
  float _786;
  float _787;
  float _806;
  float _807;
  float _808;
  float _838;
  float _839;
  float _840;
  float _854;
  float _855;
  float _856;
  float _50;
  int _57;
  int _65;
  float4 _72;
  int _76;
  float _84;
  int _85;
  float _93;
  float _95;
  float _98;
  float _99;
  uint2 _101;
  uint _116;
  float _126;
  float _127;
  float _129;
  float _130;
  float _131;
  float _145;
  float _146;
  float _147;
  float _148;
  float _150;
  float _151;
  float _152;
  float _153;
  uint _165;
  uint _166;
  uint4 _168;
  float4 _171;
  float _189;
  float _190;
  float _191;
  float _193;
  float _194;
  float _195;
  float _196;
  float _199;
  float _200;
  float _203;
  float _204;
  float _208;
  float _210;
  float _211;
  float _212;
  float _213;
  float _215;
  float _218;
  float _219;
  float _220;
  float _221;
  float _230;
  float _234;
  float _238;
  float _240;
  float _262;
  float _263;
  float _266;
  int _267;
  float _275;
  float _276;
  int _277;
  float _285;
  float _295;
  float _296;
  float _297;
  float _299;
  float _305;
  int _306;
  int _314;
  float _323;
  float _324;
  float _325;
  float _337;
  int _341;
  int _349;
  float _363;
  float _364;
  float _365;
  float _366;
  float _373;
  float _374;
  float _375;
  int _393;
  float _401;
  float _402;
  uint _416;
  bool _432;
  float _438;
  float _487;
  float _488;
  float _489;
  float _491;
  float _498;
  float _499;
  float _500;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  float _596;
  float _597;
  float _598;
  float _599;
  float _605;
  float _608;
  float _615;
  float _616;
  float _617;
  float _646;
  float _671;
  float _672;
  float _673;
  float _692;
  float _693;
  float _694;
  float _700;
  float _704;
  float _705;
  float _706;
  float _707;
  float _712;
  float _737;
  float _741;
  float _742;
  float _743;
  float _744;
  float _774;
  float _796;
  float _797;
  float _801;
  float _845;
  _34 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_46 >= 0.001f))) {
    _50 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _57 = WaveReadLaneFirst(_materialIndex);
    _65 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _72 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_65 < (uint)65000), _65, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _50), ((_time.x * 0.3f) + (_50 * TEXCOORD.y))));
    _76 = WaveReadLaneFirst(_materialIndex);
    _84 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_76 < (uint)170000), _76, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _85 = WaveReadLaneFirst(_materialIndex);
    _93 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _95 = _93 * (_84 * _72.y);
    _98 = (_95 * 0.01f) + TEXCOORD.x;
    _99 = (_95 * 0.05f) + TEXCOORD.y;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_101.x, _101.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _116 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_101.x))))))) + 0.5f) * _98)), ((int)((((float)((int)((int)((float)((int)((int)(_101.y))))))) + 0.5f) * _99)), 0));
    _126 = (((float)((uint)((uint)((uint)((uint)(_116.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _127 = (((float)((uint)((uint)(((uint)((uint)(_116.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _129 = 1.0f - abs(_126);
    _130 = abs(_127);
    _131 = _129 - _130;
    if (!(_131 >= 0.0f)) {
      _142 = (select((_126 >= 0.0f), 1.0f, -1.0f) * (1.0f - _130));
      _143 = (select((_127 >= 0.0f), 1.0f, -1.0f) * _129);
    } else {
      _142 = _126;
      _143 = _127;
    }
    _145 = rsqrt(dot(float3(_142, _143, _131), float3(_142, _143, _131)));  // [sem: invLength]
    _146 = _145 * _142;
    _147 = _145 * _143;
    _148 = _145 * _131;
    _150 = rsqrt(dot(float3(_146, _147, _148), float3(_146, _147, _148)));  // [sem: invLength]
    _151 = _150 * _146;
    _152 = _150 * _147;
    _153 = _150 * _148;
    if ((_116.x & 255) == _renderPassNPCGhost) {
      _165 = (uint)((_bufferSizeAndInvSize.x * _98) + -0.5f);
      _166 = (uint)((_bufferSizeAndInvSize.y * _99) + -0.5f);
      _168 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_165, _166, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _171 = __3__36__0__0__g_gbufferNormal.Load(int3(_165, _166, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _189 = (saturate(_171.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _190 = (saturate(_171.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _191 = (saturate(_171.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _193 = rsqrt(dot(float3(_189, _190, _191), float3(_189, _190, _191)));  // [sem: invLength]
      _194 = _193 * _189;
      _195 = _193 * _190;
      _196 = _191 * _193;
      _199 = (((float)((uint)((uint)(((uint)((uint)(_168.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _200 = (((float)((uint)((uint)(_168.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _203 = (_199 + _200) * 0.5f;
      _204 = (_199 - _200) * 0.5f;
      _208 = (1.0f - abs(_203)) - abs(_204);
      _210 = rsqrt(dot(float3(_203, _204, _208), float3(_203, _204, _208)));  // [sem: invLength]
      _211 = _210 * _203;
      _212 = _210 * _204;
      _213 = _210 * _208;
      _215 = select((_196 >= 0.0f), 1.0f, -1.0f);
      _218 = -0.0f - (1.0f / (_215 + _196));
      _219 = _195 * _218;
      _220 = _219 * _194;
      _221 = _215 * _194;
      _230 = mad(_213, _194, mad(_212, _220, ((((_221 * _194) * _218) + 1.0f) * _211)));
      _234 = mad(_213, _195, mad(_212, (_215 + (_219 * _195)), ((_211 * _215) * _220)));
      _238 = mad(_213, _196, mad(_212, (-0.0f - _195), (-0.0f - (_221 * _211))));
      _240 = rsqrt(dot(float3(_230, _234, _238), float3(_230, _234, _238)));  // [sem: invLength]
      // [sem: expr_sat]
      _262 = saturate(1.0f - dot(float3(((((_240 * _230) - _151) * 0.2f) + _151), ((((_240 * _234) - _152) * 0.2f) + _152), ((((_240 * _238) - _153) * 0.2f) + _153)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _263 = _262 * 2.0f;
      _266 = 1.0f - saturate(_263 * _262);
      _267 = WaveReadLaneFirst(_materialIndex);
      _275 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_267 < (uint)170000), _267, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
      _276 = _275 * _266;
      _277 = WaveReadLaneFirst(_materialIndex);
      _285 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_277 < (uint)170000), _277, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColorInnerBrightness);
      _295 = (((_285 * _34.x) - _34.x) * _276) + _34.x;
      _296 = (((_285 * _34.y) - _34.y) * _276) + _34.y;
      _297 = (((_285 * _34.z) - _34.z) * _276) + _34.z;
      _299 = _262 * _266;
      _305 = saturate(_72.x * 40.0f) * saturate((_299 * _299) * 30.0f);  // [sem: expr_sat]
      _306 = WaveReadLaneFirst(_materialIndex);
      _314 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_306 < (uint)170000), _306, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor1);
      _323 = ((float)((uint)((uint)(((uint)((uint)(_314)) >> 16) & 255)))) * 0.003921569f;
      _324 = ((float)((uint)((uint)(((uint)((uint)(_314)) >> 8) & 255)))) * 0.003921569f;
      _325 = ((float)((uint)((uint)(_314 & 255)))) * 0.003921569f;
      _337 = max(0.001f, _exposure0.x);
      _341 = WaveReadLaneFirst(_materialIndex);
      _349 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_341 < (uint)170000), _341, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXColor2);
      _363 = max(0.001f, _exposure0.x);
      _364 = (((float)((uint)((uint)(((uint)((uint)(_349)) >> 16) & 255)))) * 0.003921569f) / _363;
      _365 = (((float)((uint)((uint)(((uint)((uint)(_349)) >> 8) & 255)))) * 0.003921569f) / _363;
      _366 = (((float)((uint)((uint)(_349 & 255)))) * 0.003921569f) / _363;
      _373 = ((_295 - _364) * 0.1f) + _364;
      _374 = ((_296 - _365) * 0.1f) + _365;
      _375 = ((_297 - _366) * 0.1f) + _366;
      _386 = _295;
      _387 = _296;
      _388 = _297;
      _389 = saturate(_263);  // [sem: _263_sat]
      _390 = (((((lerp(_323, _72.x, 0.1f)) / _337) - _373) * _305) + _373);
      _391 = (((((lerp(_324, _72.y, 0.1f)) / _337) - _374) * _305) + _374);
      _392 = (((((lerp(_325, _72.z, 0.1f)) / _337) - _375) * _305) + _375);
    } else {
      _386 = _34.x;
      _387 = _34.y;
      _388 = _34.z;
      _389 = 0.0f;  // [sem: _263_sat]
      _390 = _34.x;
      _391 = _34.y;
      _392 = _34.z;
    }
    _393 = WaveReadLaneFirst(_materialIndex);
    _401 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_393 < (uint)170000), _393, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _402 = _401 * _389;
    _413 = ((_402 * (_390 - _386)) + _386);
    _414 = ((_402 * (_391 - _387)) + _387);
    _415 = ((_402 * (_392 - _388)) + _388);
  } else {
    _413 = _34.x;
    _414 = _34.y;
    _415 = _34.z;
  }
  _416 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _429 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _416, 0)))).x) & 127)))) + 0.5f);
  } else {
    _429 = 0.0f;
  }
  _432 = (_localToneMappingParams.w > 0.0f);
  if (_432) {
    _438 = _userImageAdjust.z * _exposure0.x;
    _487 = exp2(log2(max(0.0f, (((_438 * max(0.0f, (((_413 * 1.70505f) - (_414 * 0.62179f)) - (_415 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _488 = exp2(log2(max(0.0f, (((max(0.0f, (((_414 * 1.1408f) - (_413 * 0.13026f)) - (_415 * 0.01055f))) * _438) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _489 = exp2(log2(max(0.0f, (((max(0.0f, (((_413 * -0.024f) - (_414 * 0.12897f)) + (_415 * 1.15297f))) * _438) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _491 = dot(float3(_487, _488, _489), float3(0.212671f, 0.71516f, 0.072169f));
    _498 = ((_487 - _491) * _powerParams.w) + _491;
    _499 = ((_488 - _491) * _powerParams.w) + _491;
    _500 = ((_489 - _491) * _powerParams.w) + _491;
    _519 = min(max(log2(mad(_500, 0.079223745f, mad(_499, 0.0784336f, (_498 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _520 = min(max(log2(mad(_500, 0.07916613f, mad(_499, 0.87846863f, (_498 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _521 = min(max(log2(mad(_500, 0.879143f, mad(_499, 0.0784336f, (_498 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _522 = _519 * 0.060606062f;
    _523 = _520 * 0.060606062f;
    _524 = _521 * 0.060606062f;
    _525 = _522 * _522;
    _526 = _523 * _523;
    _527 = _524 * _524;
    _573 = min(0.0f, (-0.0f - (((_519 * 0.0072181816f) + ((_525 * 0.4298f) + (((_525 * _525) * ((31.96f - (_519 * 2.4327273f)) + (_525 * 15.5f))) - ((_519 * 0.41624245f) * _525)))) + -0.00232f)));
    _574 = min(0.0f, (-0.0f - (((_520 * 0.0072181816f) + ((_526 * 0.4298f) + (((_526 * _526) * ((31.96f - (_520 * 2.4327273f)) + (_526 * 15.5f))) - ((_520 * 0.41624245f) * _526)))) + -0.00232f)));
    _575 = min(0.0f, (-0.0f - (((_521 * 0.0072181816f) + ((_527 * 0.4298f) + (((_527 * _527) * ((31.96f - (_521 * 2.4327273f)) + (_527 * 15.5f))) - ((_521 * 0.41624245f) * _527)))) + -0.00232f)));
    _576 = -0.0f - _573;
    _577 = -0.0f - _574;
    _578 = -0.0f - _575;
    _579 = dot(float3(_576, _577, _578), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _596 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _597 = -0.79999995f / _596;
      _598 = -1.2f / _596;
      _599 = 0.20000005f / _596;
      _605 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _608 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _615 = (_597 + 1.4f) + (_608 * (-0.39999998f - _597));
      _616 = (_598 + 1.6f) + (_608 * (-0.6f - _598));
      _617 = (_599 + 0.9f) + (_608 * (0.5f - _599));
      _634 = (lerp(_616, 1.2f, _605));  // [sem: blended]
      _635 = (lerp(_615, 1.0f, _605));  // [sem: blended]
      _636 = (lerp(_617, 1.4f, _605));  // [sem: blended]
    } else {
      _634 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _635 = 1.0f;  // [sem: blended]
      _636 = 1.4f;  // [sem: blended]
    }
    _646 = 1.0f - _634;
    _671 = ((exp2(log2(((saturate((_573 * _573) * _576) * _646) + _634) * _576) * _635) - _579) * _636) + _579;
    _672 = ((exp2(log2(((saturate((_574 * _574) * _577) * _646) + _634) * _577) * _635) - _579) * _636) + _579;
    _673 = ((exp2(log2(((saturate((_575 * _575) * _578) * _646) + _634) * _578) * _635) - _579) * _636) + _579;
    _692 = saturate(exp2(log2(mad(_673, -0.09902974f, mad(_672, -0.09802088f, (_671 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _693 = saturate(exp2(log2(mad(_673, -0.098961174f, mad(_672, 1.1519032f, (_671 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _694 = saturate(exp2(log2(mad(_673, 1.1510737f, mad(_672, -0.09804345f, (_671 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _700 = 1.0f - abs(_etcParams.w);
      _704 = saturate(_etcParams.w);  // [sem: expr_sat]
      _705 = (_700 * _692) + _704;
      _706 = (_700 * _693) + _704;
      _707 = (_700 * _694) + _704;
      if (_colorGradingParams.w > 0.0f) {
        _712 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _729 = (((max(0.0f, (1.0f - _705)) - _705) * _712) + _705);
        _730 = (((max(0.0f, (1.0f - _706)) - _706) * _712) + _706);
        _731 = (((max(0.0f, (1.0f - _707)) - _707) * _712) + _707);
      } else {
        _729 = _705;
        _730 = _706;
        _731 = _707;
      }
      _737 = _userImageAdjust.y + 1.0f;
      _741 = _userImageAdjust.x + 0.5f;
      _742 = ((_729 + -0.5f) * _737) + _741;
      _743 = ((_730 + -0.5f) * _737) + _741;
      _744 = ((_731 + -0.5f) * _737) + _741;
      _774 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _785 = exp2(log2(saturate(mad(_colorBlind0.z, _744, mad(_colorBlind0.y, _743, (_colorBlind0.x * _742))))) * _774);
      _786 = exp2(log2(saturate(mad(_colorBlind1.z, _744, mad(_colorBlind1.y, _743, (_colorBlind1.x * _742))))) * _774);
      _787 = exp2(log2(saturate(mad(_colorBlind2.z, _744, mad(_colorBlind2.y, _743, (_colorBlind2.x * _742))))) * _774);
    } else {
      _785 = _692;
      _786 = _693;
      _787 = _694;
    }
  } else {
    _785 = _413;
    _786 = _414;
    _787 = _415;
  }
  if (_etcParams.y > 1.0f) {
    _796 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _797 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _801 = saturate(1.0f - (dot(float2(_796, _797), float2(_796, _797)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _806 = (_801 * _785);
    _807 = (_801 * _786);
    _808 = (_801 * _787);
  } else {
    _806 = _785;
    _807 = _786;
    _808 = _787;
  }
  if (_432 && (_etcParams.z > 0.0f)) {
    _838 = select((_806 <= 0.0031308f), (_806 * 12.92f), (((pow(_806, 0.41666666f)) * 1.055f) + -0.055f));
    _839 = select((_807 <= 0.0031308f), (_807 * 12.92f), (((pow(_807, 0.41666666f)) * 1.055f) + -0.055f));
    _840 = select((_808 <= 0.0031308f), (_808 * 12.92f), (((pow(_808, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _838 = _806;
    _839 = _807;
    _840 = _808;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _845 = (float)((uint)((uint)(_416)));
    if (!(_845 < _viewDir.w)) {
      if (!(_845 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _854 = _838;
        _855 = _839;
        _856 = _840;
      } else {
        _854 = 0.0f;
        _855 = 0.0f;
        _856 = 0.0f;
      }
    } else {
      _854 = 0.0f;
      _855 = 0.0f;
      _856 = 0.0f;
    }
  } else {
    _854 = _838;
    _855 = _839;
    _856 = _840;
  }
  SV_Target.x = _854;
  SV_Target.y = _855;
  SV_Target.z = _856;
  SV_Target.w = _429;
  return SV_Target;
}
