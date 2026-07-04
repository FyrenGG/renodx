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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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

struct BindlessParameters_PostProcessEdgeBlur_CD {
  PostProcessEdgeBlur_CDStruct BindlessParameters_PostProcessEdgeBlur_CD;
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
  float _28;
  int _29;
  float _37;
  float _92;
  float _93;
  float _96;
  float _97;
  float _400;
  float _401;
  float _485;
  float _492;
  float _512;
  float _515;
  float _516;
  float _543;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _575;
  float _780;
  float _781;
  float _782;
  float _875;
  float _876;
  float _877;
  float _931;
  float _932;
  float _933;
  float _952;
  float _953;
  float _954;
  float _984;
  float _985;
  float _986;
  float _1000;
  float _1001;
  float _1002;
  float _48;
  float _51;
  float _52;
  float _53;
  float _54;
  float _58;
  float _63;
  float _67;
  float _76;
  float _78;
  float _82;
  float _86;
  float4 _100;
  float _110;
  float _111;
  float _112;
  float _134;
  float _135;
  float _136;
  float _137;
  float _138;
  float _139;
  int _140;
  float _148;
  int _149;
  float _157;
  float4 _164;
  float _175;
  float _176;
  float _177;
  int _203;
  float _211;
  float _212;
  int _232;
  float _242;
  float _243;
  float _244;
  float _252;
  float _253;
  float _254;
  float _256;
  float _257;
  float _259;
  float _261;
  float _264;
  float _300;
  float _301;
  float _302;
  float _303;
  float _305;
  float _306;
  float _307;
  float _308;
  float _309;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _327;
  float _331;
  float _335;
  float _337;
  float _338;
  float _340;
  float _342;
  bool _343;
  bool _344;
  bool _345;
  bool _346;
  float _347;
  int _348;
  float _357;
  float _358;
  int _362;
  float _370;
  int _386;
  float _395;
  float _396;
  int _404;
  float _413;
  float _414;
  int _419;
  int _427;
  float4 _434;
  float _439;
  float _440;
  int _445;
  float _453;
  int _454;
  float _462;
  float _463;
  int _464;
  float _472;
  bool _486;
  int _494;
  int _502;
  int _517;
  float _525;
  int _528;
  float _536;
  float _552;
  float _559;
  float _560;
  float _561;
  uint _562;
  bool _578;
  float _584;
  float _633;
  float _634;
  float _635;
  float _637;
  float _644;
  float _645;
  float _646;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _719;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _742;
  float _743;
  float _744;
  float _745;
  float _751;
  float _754;
  float _761;
  float _762;
  float _763;
  float _792;
  float _817;
  float _818;
  float _819;
  float _838;
  float _839;
  float _840;
  float _846;
  float _850;
  float _851;
  float _852;
  float _853;
  float _858;
  float _883;
  float _887;
  float _888;
  float _889;
  float _890;
  float _920;
  float _942;
  float _943;
  float _947;
  float _991;
  float _1012;
  float _1013;
  float _1014;
  _28 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_29 < (uint)170000), _29, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._fishEyeMaxPower);
  if ((_37 > 0.0010000000474974513f) || (_37 < -0.0010000000474974513f)) {
    _48 = 0.5f / _28;
    _51 = ((_destTargetSizAndInv.x * TEXCOORD.x) / _destTargetSizAndInv.x) + -0.5f;
    _52 = ((_destTargetSizAndInv.y * TEXCOORD.y) / _destTargetSizAndInv.x) - _48;
    _53 = dot(float2(_51, _52), float2(_51, _52));
    _54 = sqrt(_53);
    if (_37 > 0.0f) {
      _58 = sqrt(dot(float2(0.5f, _48), float2(0.5f, _48)));
      _63 = tan(_54 * _37) * (rsqrt(_53) * _58);
      _67 = tan(_58 * _37);
      _92 = (((_63 * _51) / _67) + 0.5f);
      _93 = (((_63 * _52) / _67) + _48);
    } else {
      if (_37 < 0.0f) {
        _76 = select((_28 < 1.0f), 0.5f, _48);
        _78 = _37 * -10.0f;
        _82 = atan(_54 * _78) * (rsqrt(_53) * _76);
        _86 = atan(_76 * _78);
        _92 = (((_82 * _51) / _86) + 0.5f);
        _93 = (((_82 * _52) / _86) + _48);
      } else {
        _92 = 0.0f;
        _93 = 0.0f;
      }
    }
    _96 = _92;
    _97 = (_93 * _28);
  } else {
    _96 = TEXCOORD.x;
    _97 = TEXCOORD.y;
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_96, _97));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _110 = (pow(_100.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _111 = (pow(_100.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _112 = (pow(_100.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _134 = exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.8515625f - (_110 * 18.6875f))) * 6.277394771575928f);
  _135 = exp2(log2(max(0.0f, (_111 + -0.8359375f)) / (18.8515625f - (_111 * 18.6875f))) * 6.277394771575928f);
  _136 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.8515625f - (_112 * 18.6875f))) * 6.277394771575928f);
  _137 = _134 * 10000.0f;
  _138 = _135 * 10000.0f;
  _139 = _136 * 10000.0f;
  _140 = WaveReadLaneFirst(_materialIndex);
  _148 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_140 < (uint)170000), _140, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurRatio);
  _149 = WaveReadLaneFirst(_materialIndex);
  _157 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_149 < (uint)170000), _149, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  if ((_148 > 0.0f) && (_157 > 0.0f)) {
    _164 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_96, _97));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _175 = (pow(_164.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _176 = (pow(_164.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _177 = (pow(_164.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _203 = WaveReadLaneFirst(_materialIndex);
    _211 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_203 < (uint)170000), _203, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurBrightness);
    _212 = _211 * (1.0f - _164.w);
    _232 = WaveReadLaneFirst(_materialIndex);
    _242 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_232 < (uint)170000), _232, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _243 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_232 < (uint)170000), _232, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _244 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_232 < (uint)170000), _232, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _252 = (_242 + _targetFocusPosition.x) - _viewPos.x;
    _253 = (_243 + _targetFocusPosition.y) - _viewPos.y;
    _254 = (_244 + _targetFocusPosition.z) - _viewPos.z;
    _256 = rsqrt(dot(float3(_252, _253, _254), float3(_252, _253, _254)));  // [sem: invLength]
    _257 = _252 * _256;
    _259 = _254 * _256;
    _261 = (TEXCOORD.x * 2.0f) + -1.0f;
    _264 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _300 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _264, ((_invViewProjRelative[0].w) * _261));
    _301 = ((mad((_invViewProjRelative[1].x), _264, ((_invViewProjRelative[0].x) * _261)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _300;
    _302 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _264, ((_invViewProjRelative[0].y) * _261))) / _300;
    _303 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _264, ((_invViewProjRelative[0].z) * _261))) / _300;
    _305 = rsqrt(dot(float3(_301, _302, _303), float3(_301, _302, _303)));  // [sem: invLength]
    _306 = _305 * _301;
    _307 = _305 * _302;
    _308 = _305 * _303;
    _309 = -0.0f - _257;
    _311 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_257, (_253 * _256), _259)));
    _312 = sin(_311);
    _313 = cos(_311);
    _314 = 1.0f - _313;
    _315 = _314 * _259;
    _316 = _314 * _309;
    _317 = _312 * _259;
    _318 = _312 * _309;
    _327 = mad((_316 * _259), _308, mad(_318, _307, (((_315 * _259) + _313) * _306)));
    _331 = mad(_317, _308, mad(_313, _307, (-0.0f - (_306 * _318))));
    _335 = mad(((_316 * _309) + _313), _308, mad((-0.0f - _317), _307, ((_306 * _309) * _315)));
    _337 = rsqrt(dot(float3(_327, _331, _335), float3(_327, _331, _335)));  // [sem: invLength]
    _338 = _337 * _327;
    _340 = _337 * _335;
    _342 = atan(_340 / _338);
    _343 = (_338 < 0.0f);
    _344 = (_338 == 0.0f);
    _345 = (_340 >= 0.0f);
    _346 = (_340 < 0.0f);
    _347 = acos(_337 * _331);
    _348 = WaveReadLaneFirst(_materialIndex);
    _357 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_348 < (uint)170000), _348, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _358 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_348 < (uint)170000), _348, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _362 = WaveReadLaneFirst(_materialIndex);
    _370 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_362 < (uint)170000), _362, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
    if (_370 > 0.0010000000474974513f) {
      _386 = WaveReadLaneFirst(_materialIndex);
      _395 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_386 < (uint)170000), _386, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
      _396 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_386 < (uint)170000), _386, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
      _400 = (_395 * select((_344 && _345), 0.75f, select((_344 && _346), 0.25f, ((select((_343 && _346), (_342 + -3.1415927410125732f), select((_343 && _345), (_342 + 3.1415927410125732f), _342)) * 0.15915493667125702f) + 0.5f))));
      _401 = ((_347 * 0.31830987334251404f) * _396);
    } else {
      _400 = ((_96 * _28) * _357);
      _401 = (_358 * _97);
    }
    _404 = WaveReadLaneFirst(_materialIndex);
    _413 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_404 < (uint)170000), _404, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
    _414 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_404 < (uint)170000), _404, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
    _419 = WaveReadLaneFirst(_materialIndex);
    _427 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_419 < (uint)170000), _419, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
    _434 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_427 < (uint)65000), _427, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_413 * _time.x) + _400), ((_414 * _time.x) + _401)));
    _439 = (_434.x * 2.0f) + -0.9960784316062927f;
    _440 = (_434.y * 2.0f) + -0.9960784316062927f;
    _445 = WaveReadLaneFirst(_materialIndex);
    _453 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_445 < (uint)170000), _445, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMask);
    _454 = WaveReadLaneFirst(_materialIndex);
    _462 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_454 < (uint)170000), _454, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskEdgeThickness);
    _463 = _462 * _453;
    _464 = WaveReadLaneFirst(_materialIndex);
    _472 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_464 < (uint)170000), _464, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusCenterMaskPower);
    if (!(_453 < 0.0010000000474974513f)) {
  // [sem: expr_sat]
      _485 = saturate((((1.0f - _453) + _463) - abs((_347 * 0.6366197466850281f) + -1.0f)) / max(0.0010000000474974513f, _463));
    } else {
      _485 = 1.0f;  // [sem: expr_sat]
    }
    _486 = (_472 < 0.0010000000474974513f);
    if (!_486) {
      _492 = (pow(_485, _472));
    } else {
      _492 = 1.0f;
    }
    _494 = WaveReadLaneFirst(_materialIndex);
    _502 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_494 < (uint)170000), _494, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._debugMode);
    if (_502 == 1) {
      if (!_486) {
        _512 = (pow(_485, _472));
      } else {
        _512 = 1.0f;
      }
      _515 = (_512 * _485);
      _516 = floor(1.0f - _485);
    } else {
      _515 = _137;
      _516 = _138;
    }
    _517 = WaveReadLaneFirst(_materialIndex);
    _525 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_517 < (uint)170000), _517, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
    if (_525 > 0.0010000000474974513f) {
      _528 = WaveReadLaneFirst(_materialIndex);
      _536 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)(select(((uint)_528 < (uint)170000), _528, 0)) + 0u))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseDissolve);
  // [sem: expr_sat]
      _543 = saturate(((sqrt(saturate(1.0f - dot(float2(_439, _440), float2(_439, _440)))) - (_536 * 0.75f)) * 2.0f) + -0.5f);
    } else {
      _543 = 1.0f;  // [sem: expr_sat]
    }
    _546 = _515;
    _547 = _516;
    _548 = (((_212 * _134) + exp2(log2(max(0.0f, (_175 + -0.8359375f)) / (18.8515625f - (_175 * 18.6875f))) * 6.277394771575928f)) * 10000.0f);
    _549 = (((_212 * _135) + exp2(log2(max(0.0f, (_176 + -0.8359375f)) / (18.8515625f - (_176 * 18.6875f))) * 6.277394771575928f)) * 10000.0f);
    _550 = (((_212 * _136) + exp2(log2(max(0.0f, (_177 + -0.8359375f)) / (18.8515625f - (_177 * 18.6875f))) * 6.277394771575928f)) * 10000.0f);
    _551 = ((_492 * saturate((1.0f - abs((_164.w * 2.0f) + -1.0f)) * 4.0f)) * _543);
  } else {
    _546 = _137;
    _547 = _138;
    _548 = _137;
    _549 = _138;
    _550 = _139;
    _551 = 0.0f;
  }
  _552 = _551 * _148;
  _559 = (_552 * (_548 - _546)) + _546;
  _560 = (_552 * (_549 - _547)) + _547;
  _561 = (_552 * (_550 - _139)) + _139;
  _562 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _575 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _562, 0)))).x) & 127)))) + 0.5f);
  } else {
    _575 = 1.0f;
  }
  _578 = (_localToneMappingParams.w > 0.0f);
  if (_578) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_559, _560, _561));
    _838 = _rndx_tonemapped_color.x;
    _839 = _rndx_tonemapped_color.y;
    _840 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _846 = 1.0f - abs(_etcParams.w);
      _850 = saturate(_etcParams.w);  // [sem: expr_sat]
      _851 = (_846 * _838) + _850;
      _852 = (_846 * _839) + _850;
      _853 = (_846 * _840) + _850;
      if (_colorGradingParams.w > 0.0f) {
        _858 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _875 = (((max(0.0f, (1.0f - _851)) - _851) * _858) + _851);
        _876 = (((max(0.0f, (1.0f - _852)) - _852) * _858) + _852);
        _877 = (((max(0.0f, (1.0f - _853)) - _853) * _858) + _853);
      } else {
        _875 = _851;
        _876 = _852;
        _877 = _853;
      }
      _883 = _userImageAdjust.y + 1.0f;
      _887 = _userImageAdjust.x + 0.5f;
      _888 = ((_875 + -0.5f) * _883) + _887;
      _889 = ((_876 + -0.5f) * _883) + _887;
      _890 = ((_877 + -0.5f) * _883) + _887;
      _920 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _931 = exp2(log2(saturate(mad(_colorBlind0.z, _890, mad(_colorBlind0.y, _889, (_colorBlind0.x * _888))))) * _920);
      _932 = exp2(log2(saturate(mad(_colorBlind1.z, _890, mad(_colorBlind1.y, _889, (_colorBlind1.x * _888))))) * _920);
      _933 = exp2(log2(saturate(mad(_colorBlind2.z, _890, mad(_colorBlind2.y, _889, (_colorBlind2.x * _888))))) * _920);
    } else {
      _931 = _838;
      _932 = _839;
      _933 = _840;
    }
  } else {
    _931 = _559;
    _932 = _560;
    _933 = _561;
  }
  if (_etcParams.y > 1.0f) {
    _942 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _943 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _947 = saturate(1.0f - (dot(float2(_942, _943), float2(_942, _943)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _952 = (_947 * _931);
    _953 = (_947 * _932);
    _954 = (_947 * _933);
  } else {
    _952 = _931;
    _953 = _932;
    _954 = _933;
  }
  if (_578 && (_etcParams.z > 0.0f)) {
    _984 = select((_952 <= 0.0031308000907301903f), (_952 * 12.920000076293945f), (((pow(_952, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _985 = select((_953 <= 0.0031308000907301903f), (_953 * 12.920000076293945f), (((pow(_953, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _986 = select((_954 <= 0.0031308000907301903f), (_954 * 12.920000076293945f), (((pow(_954, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _984 = _952;
    _985 = _953;
    _986 = _954;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _991 = (float)((uint)_562);
    if (!(_991 < _viewDir.w)) {
      if (!(_991 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1000 = _984;
        _1001 = _985;
        _1002 = _986;
      } else {
        _1000 = 0.0f;
        _1001 = 0.0f;
        _1002 = 0.0f;
      }
    } else {
      _1000 = 0.0f;
      _1001 = 0.0f;
      _1002 = 0.0f;
    }
  } else {
    _1000 = _984;
    _1001 = _985;
    _1002 = _986;
  }
  _1012 = exp2(log2(_1000 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1013 = exp2(log2(_1001 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1014 = exp2(log2(_1002 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1012 * 18.6875f) + 1.0f)) * ((_1012 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1013 * 18.6875f) + 1.0f)) * ((_1013 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1014 * 18.6875f) + 1.0f)) * ((_1014 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _575;
  return SV_Target;
}
