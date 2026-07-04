struct PostProcessVHSNoiseStruct {
  float _VHSNoiseProgress;
  float _timeSpeed;
  float _largeNoiseThreshold;
  float _largeNoiseDarkness;
  float _smallNoiseAmplitude;
  float _randomJitterThreshold;
  float _scanlineDarkness;
  float _vignetteRatio;
  float _vignetteWidth;
  float3 _slopeRGB;
  float _saturationRatio;
  float _chromaticAberrationRatio;
  uint _noiseTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

struct BindlessParameters_PostProcessVHSNoise {
  PostProcessVHSNoiseStruct BindlessParameters_PostProcessVHSNoise;
};

typedef BindlessParameters_PostProcessVHSNoise BindlessParameters_PostProcessVHSNoise_t;
ConstantBuffer<BindlessParameters_PostProcessVHSNoise_t> BindlessParameters_PostProcessVHSNoise[] : register(b0, space100);

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
  float _37;
  float _38;
  float _39;
  float _64;
  float _65;
  float _66;
  int _67;
  float _75;
  float _260;
  float _261;
  float _262;
  float _474;
  float _475;
  float _476;
  float _490;
  float _695;
  float _696;
  float _697;
  float _790;
  float _791;
  float _792;
  float _846;
  float _847;
  float _848;
  float _867;
  float _868;
  float _869;
  float _899;
  float _900;
  float _901;
  float _915;
  float _916;
  float _917;
  float4 _92;
  float _103;
  float _104;
  float _105;
  float _127;
  float _131;
  float _134;
  float4 _136;
  float _146;
  float _147;
  float _148;
  float _170;
  float _171;
  float _172;
  float _173;
  float _174;
  float _175;
  int _176;
  float _184;
  float _185;
  float _192;
  float _193;
  float _201;
  float _202;
  float _204;
  float _214;
  float _227;
  float _240;
  float _252;
  int _267;
  int _275;
  float _287;
  float _294;
  int _308;
  float _316;
  float _317;
  int _318;
  float _326;
  float _334;
  float _344;
  float _345;
  float _346;
  int _347;
  float _357;
  float _358;
  float _359;
  float _369;
  float _370;
  float _371;
  int _372;
  float _380;
  float _381;
  float _397;
  float _398;
  float _399;
  int _406;
  int _414;
  int _422;
  float _430;
  float _432;
  int _433;
  float _441;
  float _450;
  float _453;
  float _454;
  float _466;
  uint _477;
  bool _493;
  float _499;
  float _548;
  float _549;
  float _550;
  float _552;
  float _559;
  float _560;
  float _561;
  float _580;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _657;
  float _658;
  float _659;
  float _660;
  float _666;
  float _669;
  float _676;
  float _677;
  float _678;
  float _707;
  float _732;
  float _733;
  float _734;
  float _753;
  float _754;
  float _755;
  float _761;
  float _765;
  float _766;
  float _767;
  float _768;
  float _773;
  float _798;
  float _802;
  float _803;
  float _804;
  float _805;
  float _835;
  float _857;
  float _858;
  float _862;
  float _906;
  float _927;
  float _928;
  float _929;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_27.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_27.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.8515625f - (_37 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _65 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.8515625f - (_38 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.8515625f - (_39 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_67 < (uint)170000), _67, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_75 < 0.0010000000474974513f)) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _92 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _103 = (pow(_92.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _104 = (pow(_92.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _105 = (pow(_92.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _127 = exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.8515625f - (_103 * 18.6875f))) * 6.277394771575928f);
    _131 = (exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.8515625f - (_104 * 18.6875f))) * 6.277394771575928f) + _127) + exp2(log2(max(0.0f, (_105 + -0.8359375f)) / (18.8515625f - (_105 * 18.6875f))) * 6.277394771575928f);
    _134 = TEXCOORD.x - ((_131 * _131) * 1e+06f);
    _136 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_134, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _146 = (pow(_136.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _147 = (pow(_136.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _148 = (pow(_136.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _170 = exp2(log2(max(0.0f, (_146 + -0.8359375f)) / (18.8515625f - (_146 * 18.6875f))) * 6.277394771575928f);
    _171 = exp2(log2(max(0.0f, (_147 + -0.8359375f)) / (18.8515625f - (_147 * 18.6875f))) * 6.277394771575928f);
    _172 = exp2(log2(max(0.0f, (_148 + -0.8359375f)) / (18.8515625f - (_148 * 18.6875f))) * 6.277394771575928f);
    _173 = _170 * 10000.0f;
    _174 = _171 * 10000.0f;
    _175 = _172 * 10000.0f;
    _176 = WaveReadLaneFirst(_materialIndex);
    _184 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_176 < (uint)170000), _176, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._chromaticAberrationRatio);
    _185 = saturate(_184);  // [sem: _184_sat]
    if (!(!(_185 >= 0.0010000000474974513f))) {
      [branch]
      if (!(_enableChromaticAberration == 0)) {
        _192 = _134 + -0.5f;
        _193 = TEXCOORD.y + -0.5f;
  // [sem: invLength]
        _201 = rsqrt(dot(float2(_192, _193), float2(_192, _193))) * (sqrt((_192 * _192) + (_193 * _193)) * 0.009999999776482582f);
        _202 = _201 * _192;
        _204 = _201 * _193;
        _214 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_134 - _202), (TEXCOORD.y - _204))))).x) * 0.012683313339948654f);
        _227 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_134, TEXCOORD.y)))).y) * 0.012683313339948654f);
        _240 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_202 + _134), (_204 + TEXCOORD.y))))).z) * 0.012683313339948654f);
        _252 = _185 * 10000.0f;
        _260 = (((exp2(log2(max(0.0f, (_214 + -0.8359375f)) / (18.8515625f - (_214 * 18.6875f))) * 6.277394771575928f) - _170) * _252) + _173);
        _261 = (((exp2(log2(max(0.0f, (_227 + -0.8359375f)) / (18.8515625f - (_227 * 18.6875f))) * 6.277394771575928f) - _171) * _252) + _174);
        _262 = (((exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.8515625f - (_240 * 18.6875f))) * 6.277394771575928f) - _172) * _252) + _175);
      } else {
        _260 = _173;
        _261 = _174;
        _262 = _175;
      }
    } else {
      _260 = _173;
      _261 = _174;
      _262 = _175;
    }
    _267 = WaveReadLaneFirst(_materialIndex);
    _275 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_267 < (uint)170000), _267, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _287 = _time.x * 0.019999999552965164f;
    _294 = ((sin(_287) * (sin(_287 + 7.130000114440918f) + 0.5f)) + TEXCOORD.y) * _srcTargetSizeAndInv.y;
    _308 = WaveReadLaneFirst(_materialIndex);
    _316 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_308 < (uint)170000), _308, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._scanlineDarkness);
    _317 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_275 < (uint)65000), _275, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, (TEXCOORD.y - (_time.x * 0.02500000037252903f)))))).x) * 0.5f) * _316;
    _318 = WaveReadLaneFirst(_materialIndex);
    _326 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_318 < (uint)170000), _318, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._largeNoiseDarkness);
    _334 = 1.0f - (((saturate((_92.w * 10000.0f) * _127) * (_326 - _317)) + _317) * (1.0f - abs(sin((_294 * 3.1415927410125732f) * ((frac(sin(dot(float2(floor(_294 * 0.05999999865889549f), 17.0f), float2(127.0999984741211f, 311.70001220703125f))) * 437.5450134277344f) * 0.07199999690055847f) + 0.04800000041723251f)))));
    _344 = (((_334 * _260) - _64) * _75) + _64;
    _345 = (((_334 * _261) - _65) * _75) + _65;
    _346 = (((_334 * _262) - _66) * _75) + _66;
    _347 = WaveReadLaneFirst(_materialIndex);
    _357 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_347 < (uint)170000), _347, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._slopeRGB.x);
    _358 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_347 < (uint)170000), _347, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._slopeRGB.y);
    _359 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_347 < (uint)170000), _347, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._slopeRGB.z);
    _369 = (((_344 * _357) - _344) * _75) + _344;
    _370 = (((_345 * _358) - _345) * _75) + _345;
    _371 = (((_346 * _359) - _346) * _75) + _346;
    _372 = WaveReadLaneFirst(_materialIndex);
    _380 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_372 < (uint)170000), _372, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._saturationRatio);
    _381 = dot(float3(_369, _370, _371), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
    _397 = (((_381 - _369) + ((_369 - _381) * _380)) * _75) + _369;
    _398 = (((_381 - _370) + ((_370 - _381) * _380)) * _75) + _370;
    _399 = (((_381 - _371) + ((_371 - _381) * _380)) * _75) + _371;
    _406 = WaveReadLaneFirst(_materialIndex);
    _414 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_406 < (uint)170000), _406, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _422 = WaveReadLaneFirst(_materialIndex);
    _430 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_422 < (uint)170000), _422, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._vignetteRatio);
    _432 = saturate(_430 * _75);  // [sem: expr_sat]
    _433 = WaveReadLaneFirst(_materialIndex);
    _441 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)(select(((uint)_433 < (uint)170000), _433, 0)) + 0u))].BindlessParameters_PostProcessVHSNoise._vignetteWidth);
    [branch]
    if (!(!(_432 >= 0.0010000000474974513f))) {
      _450 = (1.0f - _441) * 0.5f;
      _453 = max((abs(TEXCOORD.x + -0.5f) - _450), 0.0f);
      _454 = max((abs(TEXCOORD.y + -0.5f) - _450), 0.0f);
      _466 = saturate(saturate(saturate(sqrt((_454 * _454) + (_453 * _453)) * 1.25f) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_414 < (uint)65000), _414, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((_time.x * 0.019999999552965164f) + (TEXCOORD.y * 4.0f)))))).x) * 0.10000000149011612f)) * _432;
      _474 = (_397 - (_466 * _397));
      _475 = (_398 - (_466 * _398));
      _476 = (_399 - (_466 * _399));
    } else {
      _474 = _397;
      _475 = _398;
      _476 = _399;
    }
  } else {
    _474 = _64;
    _475 = _65;
    _476 = _66;
  }
  _477 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _490 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _477, 0)))).x) & 127)))) + 0.5f);
  } else {
    _490 = 1.0f;
  }
  _493 = (_localToneMappingParams.w > 0.0f);
  if (_493) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_474, _475, _476));
    _753 = _rndx_tonemapped_color.x;
    _754 = _rndx_tonemapped_color.y;
    _755 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _761 = 1.0f - abs(_etcParams.w);
      _765 = saturate(_etcParams.w);  // [sem: expr_sat]
      _766 = (_761 * _753) + _765;
      _767 = (_761 * _754) + _765;
      _768 = (_761 * _755) + _765;
      if (_colorGradingParams.w > 0.0f) {
        _773 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _790 = (((max(0.0f, (1.0f - _766)) - _766) * _773) + _766);
        _791 = (((max(0.0f, (1.0f - _767)) - _767) * _773) + _767);
        _792 = (((max(0.0f, (1.0f - _768)) - _768) * _773) + _768);
      } else {
        _790 = _766;
        _791 = _767;
        _792 = _768;
      }
      _798 = _userImageAdjust.y + 1.0f;
      _802 = _userImageAdjust.x + 0.5f;
      _803 = ((_790 + -0.5f) * _798) + _802;
      _804 = ((_791 + -0.5f) * _798) + _802;
      _805 = ((_792 + -0.5f) * _798) + _802;
      _835 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _846 = exp2(log2(saturate(mad(_colorBlind0.z, _805, mad(_colorBlind0.y, _804, (_colorBlind0.x * _803))))) * _835);
      _847 = exp2(log2(saturate(mad(_colorBlind1.z, _805, mad(_colorBlind1.y, _804, (_colorBlind1.x * _803))))) * _835);
      _848 = exp2(log2(saturate(mad(_colorBlind2.z, _805, mad(_colorBlind2.y, _804, (_colorBlind2.x * _803))))) * _835);
    } else {
      _846 = _753;
      _847 = _754;
      _848 = _755;
    }
  } else {
    _846 = _474;
    _847 = _475;
    _848 = _476;
  }
  if (_etcParams.y > 1.0f) {
    _857 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _858 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _862 = saturate(1.0f - (dot(float2(_857, _858), float2(_857, _858)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _867 = (_862 * _846);
    _868 = (_862 * _847);
    _869 = (_862 * _848);
  } else {
    _867 = _846;
    _868 = _847;
    _869 = _848;
  }
  if (_493 && (_etcParams.z > 0.0f)) {
    _899 = select((_867 <= 0.0031308000907301903f), (_867 * 12.920000076293945f), (((pow(_867, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _900 = select((_868 <= 0.0031308000907301903f), (_868 * 12.920000076293945f), (((pow(_868, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _901 = select((_869 <= 0.0031308000907301903f), (_869 * 12.920000076293945f), (((pow(_869, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _899 = _867;
    _900 = _868;
    _901 = _869;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _906 = (float)((uint)_477);
    if (!(_906 < _viewDir.w)) {
      if (!(_906 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _915 = _899;
        _916 = _900;
        _917 = _901;
      } else {
        _915 = 0.0f;
        _916 = 0.0f;
        _917 = 0.0f;
      }
    } else {
      _915 = 0.0f;
      _916 = 0.0f;
      _917 = 0.0f;
    }
  } else {
    _915 = _899;
    _916 = _900;
    _917 = _901;
  }
  _927 = exp2(log2(_915 * 9.999999747378752e-05f) * 0.1593017578125f);
  _928 = exp2(log2(_916 * 9.999999747378752e-05f) * 0.1593017578125f);
  _929 = exp2(log2(_917 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_927 * 18.6875f) + 1.0f)) * ((_927 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_928 * 18.6875f) + 1.0f)) * ((_928 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_929 * 18.6875f) + 1.0f)) * ((_929 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _490;
  return SV_Target;
}
