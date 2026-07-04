struct PostProcessFocusStruct {
  float _focusRatio;
  float _focusSceneDepthFade;
  float _focusBackgroundSaturation;
  float _focus3DBlend;
  float _focusCharacterMaterialMask;
  float _focusColorBrightness;
  uint _focusColor;
  float _focusColorRemap;
  float _maskRatio;
  float _maskNoiseIntensity;
  float _maskBlurThickness;
  float _maskBlurPower;
  uint _maskNoiseTexture;
  float _playerFocusRadius;
  float _playerFocusCenterRadius;
  float _playerFocusPower;
  float3 _playerFocusPositionOffset;
  float _targetFocusRadius;
  float _targetFocusCenterRadius;
  float _targetFocusPower;
  float3 _targetFocusPositionOffset;
  float _connectPlayerTargetDistance;
  float _connectPlayerTargetPower;
  float _worldFocusRadius;
  float _worldFocusCenterRadius;
  float _worldFocusPower;
  float3 _worldFocusPosition;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

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

struct BindlessParameters_PostProcessFocus {
  PostProcessFocusStruct BindlessParameters_PostProcessFocus;
};

typedef BindlessParameters_PostProcessFocus BindlessParameters_PostProcessFocus_t;
ConstantBuffer<BindlessParameters_PostProcessFocus_t> BindlessParameters_PostProcessFocus[] : register(b0, space100);

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
  float _40;
  int _43;
  int _51;
  int _61;
  float _69;
  int _75;
  float _83;
  float _87;
  float _325;
  float _326;
  float _327;
  float _341;
  float _546;
  float _547;
  float _548;
  float _641;
  float _642;
  float _643;
  float _697;
  float _698;
  float _699;
  float _718;
  float _719;
  float _720;
  float _750;
  float _751;
  float _752;
  float _766;
  float _767;
  float _768;
  uint2 _91;
  int _108;
  float4 _117;
  float4 _135;
  float _142;
  float _143;
  float _160;
  float _161;
  float _167;
  float _181;
  float _190;
  float _196;
  float _210;
  float4 _232;
  float _239;
  float _240;
  float _257;
  float _258;
  float _264;
  float _278;
  float _287;
  float _293;
  float _307;
  uint _328;
  bool _344;
  float _350;
  float _399;
  float _400;
  float _401;
  float _403;
  float _410;
  float _411;
  float _412;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _438;
  float _439;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _508;
  float _509;
  float _510;
  float _511;
  float _517;
  float _520;
  float _527;
  float _528;
  float _529;
  float _558;
  float _583;
  float _584;
  float _585;
  float _604;
  float _605;
  float _606;
  float _612;
  float _616;
  float _617;
  float _618;
  float _619;
  float _624;
  float _649;
  float _653;
  float _654;
  float _655;
  float _656;
  float _686;
  float _708;
  float _709;
  float _713;
  float _757;
  float _778;
  float _779;
  float _780;
  _40 = _time.x * 0.05000000074505806f;
  _43 = WaveReadLaneFirst(_materialIndex);
  _51 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)(select(((uint)_43 < (uint)170000), _43, 0)) + 0u))].BindlessParameters_PostProcessFocus._maskNoiseTexture);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)(select(((uint)_61 < (uint)170000), _61, 0)) + 0u))].BindlessParameters_PostProcessFocus._maskNoiseIntensity);
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)(select(((uint)_75 < (uint)170000), _75, 0)) + 0u))].BindlessParameters_PostProcessFocus._maskBlurThickness);
  _87 = ((((_69 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_51 < (uint)65000), _51, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_40 + (TEXCOORD.x * 16.0f)), (_40 + (TEXCOORD.y * 16.0f)))))).z) + -0.5f)) + 1.0f) * 50.0f) * ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _83;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_91.x, _91.y);
    _108 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_91.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_91.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255;
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _117 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * TEXCOORD.x), int(_customRenderPassSizeInvSize.y * TEXCOORD.y), 0));
    if ((_108 == _renderPassTargetFocus) | ((_108 == _renderPassSelfPlayer) || (_108 == _renderPassTest))) {
      _325 = 1.0f;
      _326 = _117.x;
      _327 = _117.x;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    } else {
      _325 = 0.0f;
      _326 = 0.0f;
      _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    }
  } else {
    if (_passIndex == 1) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _135 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _142 = (pow(_135.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _143 = (pow(_135.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _160 = _87 * (1.0f / max(0.0010000000474974513f, _destTargetSizAndInv.x));
      _161 = _160 * 1.384615421295166f;
      _167 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_161 + TEXCOORD.x), TEXCOORD.y)))).x) * 0.012683313339948654f);
      _181 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _161), TEXCOORD.y)))).x) * 0.012683313339948654f);
      _190 = _160 * 3.230769157409668f;
      _196 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_190 + TEXCOORD.x), TEXCOORD.y)))).x) * 0.012683313339948654f);
      _210 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _190), TEXCOORD.y)))).x) * 0.012683313339948654f);
      _325 = ((((exp2(log2(max(0.0f, (_181 + -0.8359375f)) / (18.8515625f - (_181 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_167 + -0.8359375f)) / (18.8515625f - (_167 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_142 + -0.8359375f)) / (18.8515625f - (_142 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_210 + -0.8359375f)) / (18.8515625f - (_210 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_196 + -0.8359375f)) / (18.8515625f - (_196 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
      _326 = (exp2(log2(max(0.0f, (_143 + -0.8359375f)) / (18.8515625f - (_143 * 18.6875f))) * 6.277394771575928f) * 250000.0f);
      _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    } else {
      if (_passIndex == 2) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _232 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _239 = (pow(_232.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _240 = (pow(_232.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _257 = _87 * (1.0f / max(0.0010000000474974513f, _destTargetSizAndInv.y));
        _258 = _257 * 1.384615421295166f;
        _264 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_258 + TEXCOORD.y))))).x) * 0.012683313339948654f);
        _278 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _258))))).x) * 0.012683313339948654f);
        _287 = _257 * 3.230769157409668f;
        _293 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_287 + TEXCOORD.y))))).x) * 0.012683313339948654f);
        _307 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _287))))).x) * 0.012683313339948654f);
        _325 = ((((exp2(log2(max(0.0f, (_278 + -0.8359375f)) / (18.8515625f - (_278 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_264 + -0.8359375f)) / (18.8515625f - (_264 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_239 + -0.8359375f)) / (18.8515625f - (_239 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_307 + -0.8359375f)) / (18.8515625f - (_307 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_293 + -0.8359375f)) / (18.8515625f - (_293 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
        _326 = (exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.8515625f - (_240 * 18.6875f))) * 6.277394771575928f) * 250000.0f);
        _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      } else {
        _325 = 0.0f;
        _326 = 0.0f;
        _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      }
    }
  }
  _328 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _341 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _328, 0)))).x) & 127)))) + 0.5f);
  } else {
    _341 = 1.0f;
  }
  _344 = (_localToneMappingParams.w > 0.0f);
  if (_344) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_325, _326, _327));
    _604 = _rndx_tonemapped_color.x;
    _605 = _rndx_tonemapped_color.y;
    _606 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _612 = 1.0f - abs(_etcParams.w);
      _616 = saturate(_etcParams.w);  // [sem: expr_sat]
      _617 = (_612 * _604) + _616;
      _618 = (_612 * _605) + _616;
      _619 = (_612 * _606) + _616;
      if (_colorGradingParams.w > 0.0f) {
        _624 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _641 = (((max(0.0f, (1.0f - _617)) - _617) * _624) + _617);
        _642 = (((max(0.0f, (1.0f - _618)) - _618) * _624) + _618);
        _643 = (((max(0.0f, (1.0f - _619)) - _619) * _624) + _619);
      } else {
        _641 = _617;
        _642 = _618;
        _643 = _619;
      }
      _649 = _userImageAdjust.y + 1.0f;
      _653 = _userImageAdjust.x + 0.5f;
      _654 = ((_641 + -0.5f) * _649) + _653;
      _655 = ((_642 + -0.5f) * _649) + _653;
      _656 = ((_643 + -0.5f) * _649) + _653;
      _686 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _697 = exp2(log2(saturate(mad(_colorBlind0.z, _656, mad(_colorBlind0.y, _655, (_colorBlind0.x * _654))))) * _686);
      _698 = exp2(log2(saturate(mad(_colorBlind1.z, _656, mad(_colorBlind1.y, _655, (_colorBlind1.x * _654))))) * _686);
      _699 = exp2(log2(saturate(mad(_colorBlind2.z, _656, mad(_colorBlind2.y, _655, (_colorBlind2.x * _654))))) * _686);
    } else {
      _697 = _604;
      _698 = _605;
      _699 = _606;
    }
  } else {
    _697 = _325;
    _698 = _326;
    _699 = _327;
  }
  if (_etcParams.y > 1.0f) {
    _708 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _709 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _713 = saturate(1.0f - (dot(float2(_708, _709), float2(_708, _709)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _718 = (_713 * _697);
    _719 = (_713 * _698);
    _720 = (_713 * _699);
  } else {
    _718 = _697;
    _719 = _698;
    _720 = _699;
  }
  if (_344 && (_etcParams.z > 0.0f)) {
    _750 = select((_718 <= 0.0031308000907301903f), (_718 * 12.920000076293945f), (((pow(_718, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _751 = select((_719 <= 0.0031308000907301903f), (_719 * 12.920000076293945f), (((pow(_719, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _752 = select((_720 <= 0.0031308000907301903f), (_720 * 12.920000076293945f), (((pow(_720, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _750 = _718;
    _751 = _719;
    _752 = _720;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _757 = (float)((uint)_328);
    if (!(_757 < _viewDir.w)) {
      if (!(_757 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _766 = _750;
        _767 = _751;
        _768 = _752;
      } else {
        _766 = 0.0f;
        _767 = 0.0f;
        _768 = 0.0f;
      }
    } else {
      _766 = 0.0f;
      _767 = 0.0f;
      _768 = 0.0f;
    }
  } else {
    _766 = _750;
    _767 = _751;
    _768 = _752;
  }
  _778 = exp2(log2(_766 * 9.999999747378752e-05f) * 0.1593017578125f);
  _779 = exp2(log2(_767 * 9.999999747378752e-05f) * 0.1593017578125f);
  _780 = exp2(log2(_768 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_778 * 18.6875f) + 1.0f)) * ((_778 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_779 * 18.6875f) + 1.0f)) * ((_779 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_780 * 18.6875f) + 1.0f)) * ((_780 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _341;
  return SV_Target;
}
