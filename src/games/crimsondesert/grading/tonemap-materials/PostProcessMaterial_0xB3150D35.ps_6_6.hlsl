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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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
  int _31;
  float _39;
  float _121;
  float _122;
  float _123;
  float _334;
  float _335;
  float _336;
  float _350;
  float _555;
  float _556;
  float _557;
  float _650;
  float _651;
  float _652;
  float _706;
  float _707;
  float _708;
  float _727;
  float _728;
  float _729;
  float _759;
  float _760;
  float _761;
  float _775;
  float _776;
  float _777;
  int _43;
  float _51;
  float4 _56;
  float _62;
  float _65;
  float4 _67;
  int _71;
  float _79;
  float _80;
  float _87;
  float _88;
  float _96;
  float _97;
  float _99;
  int _128;
  int _136;
  float _148;
  float _155;
  int _169;
  float _177;
  float _178;
  int _179;
  float _187;
  float _194;
  float _204;
  float _205;
  float _206;
  int _207;
  float _217;
  float _218;
  float _219;
  float _229;
  float _230;
  float _231;
  int _232;
  float _240;
  float _241;
  float _257;
  float _258;
  float _259;
  int _266;
  int _274;
  int _282;
  float _290;
  float _292;
  int _293;
  float _301;
  float _310;
  float _313;
  float _314;
  float _326;
  uint _337;
  bool _353;
  float _359;
  float _408;
  float _409;
  float _410;
  float _412;
  float _419;
  float _420;
  float _421;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _494;
  float _495;
  float _496;
  float _497;
  float _498;
  float _499;
  float _500;
  float _517;
  float _518;
  float _519;
  float _520;
  float _526;
  float _529;
  float _536;
  float _537;
  float _538;
  float _567;
  float _592;
  float _593;
  float _594;
  float _613;
  float _614;
  float _615;
  float _621;
  float _625;
  float _626;
  float _627;
  float _628;
  float _633;
  float _658;
  float _662;
  float _663;
  float _664;
  float _665;
  float _695;
  float _717;
  float _718;
  float _722;
  float _766;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_39 < 0.001f)) {
    _43 = WaveReadLaneFirst(_materialIndex);
    _51 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._timeSpeed);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _56 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _62 = (_56.x + _56.y) + _56.z;
    _65 = TEXCOORD.x - ((_62 * _62) * 0.01f);
    _67 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_65, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _71 = WaveReadLaneFirst(_materialIndex);
    _79 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._chromaticAberrationRatio);
    _80 = saturate(_79);  // [sem: _79_sat]
    if (!(!(_80 >= 0.001f))) {
      [branch]
      if (!(_enableChromaticAberration == 0)) {
        _87 = _65 + -0.5f;
        _88 = TEXCOORD.y + -0.5f;
        _96 = rsqrt(dot(float2(_87, _88), float2(_87, _88))) * (sqrt((_87 * _87) + (_88 * _88)) * 0.01f);  // [sem: invLength]
        _97 = _96 * _87;
        _99 = _96 * _88;
        _121 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_65 - _97), (TEXCOORD.y - _99))))).x) - _67.x) * _80) + _67.x);
        _122 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_65, TEXCOORD.y)))).y) - _67.y) * _80) + _67.y);
        _123 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_97 + _65), (_99 + TEXCOORD.y))))).z) - _67.z) * _80) + _67.z);
      } else {
        _121 = _67.x;
        _122 = _67.y;
        _123 = _67.z;
      }
    } else {
      _121 = _67.x;
      _122 = _67.y;
      _123 = _67.z;
    }
    _128 = WaveReadLaneFirst(_materialIndex);
    _136 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _148 = _time.x * 0.02f;
    _155 = ((sin(_148) * (sin(_148 + 7.13f) + 0.5f)) + TEXCOORD.y) * _srcTargetSizeAndInv.y;
    _169 = WaveReadLaneFirst(_materialIndex);
    _177 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_169 < (uint)170000), _169, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._scanlineDarkness);
    _178 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_136 < (uint)65000), _136, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, (TEXCOORD.y - (_time.x * 0.025f)))))).x) * 0.5f) * _177;
    _179 = WaveReadLaneFirst(_materialIndex);
    _187 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._largeNoiseDarkness);
    _194 = 1.0f - (((saturate(_56.x * _56.w) * (_187 - _178)) + _178) * (1.0f - abs(sin((_155 * 3.1415927f) * ((frac(sin(dot(float2(floor(_155 * 0.06f), 17.0f), float2(127.1f, 311.7f))) * 437.545f) * 0.072f) + 0.048f)))));
    _204 = (((_194 * _121) - _27.x) * _39) + _27.x;
    _205 = (((_194 * _122) - _27.y) * _39) + _27.y;
    _206 = (((_194 * _123) - _27.z) * _39) + _27.z;
    _207 = WaveReadLaneFirst(_materialIndex);
    _217 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.x);
    _218 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.y);
    _219 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._slopeRGB.z);
    _229 = (((_204 * _217) - _204) * _39) + _204;
    _230 = (((_205 * _218) - _205) * _39) + _205;
    _231 = (((_206 * _219) - _206) * _39) + _206;
    _232 = WaveReadLaneFirst(_materialIndex);
    _240 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_232 < (uint)170000), _232, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._saturationRatio);
    _241 = dot(float3(_229, _230, _231), float3(0.2126f, 0.7152f, 0.0722f));
    _257 = (((_241 - _229) + ((_229 - _241) * _240)) * _39) + _229;
    _258 = (((_241 - _230) + ((_230 - _241) * _240)) * _39) + _230;
    _259 = (((_241 - _231) + ((_231 - _241) * _240)) * _39) + _231;
    _266 = WaveReadLaneFirst(_materialIndex);
    _274 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_266 < (uint)170000), _266, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._noiseTexture);
    _282 = WaveReadLaneFirst(_materialIndex);
    _290 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_282 < (uint)170000), _282, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteRatio);
    _292 = saturate(_290 * _39);  // [sem: expr_sat]
    _293 = WaveReadLaneFirst(_materialIndex);
    _301 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_293 < (uint)170000), _293, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._vignetteWidth);
    [branch]
    if (!(!(_292 >= 0.001f))) {
      _310 = (1.0f - _301) * 0.5f;
      _313 = max((abs(TEXCOORD.x + -0.5f) - _310), 0.0f);
      _314 = max((abs(TEXCOORD.y + -0.5f) - _310), 0.0f);
      _326 = saturate(saturate(saturate(sqrt((_314 * _314) + (_313 * _313)) * 1.25f) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_274 < (uint)65000), _274, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((_time.x * 0.02f) + (TEXCOORD.y * 4.0f)))))).x) * 0.1f)) * _292;
      _334 = (_257 - (_326 * _257));
      _335 = (_258 - (_326 * _258));
      _336 = (_259 - (_326 * _259));
    } else {
      _334 = _257;
      _335 = _258;
      _336 = _259;
    }
  } else {
    _334 = _27.x;
    _335 = _27.y;
    _336 = _27.z;
  }
  _337 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _350 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _337, 0)))).x) & 127)))) + 0.5f);
  } else {
    _350 = 1.0f;
  }
  _353 = (_localToneMappingParams.w > 0.0f);
  if (_353) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_334, _335, _336));
    _613 = _rndx_tonemapped_color.x;
    _614 = _rndx_tonemapped_color.y;
    _615 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _621 = 1.0f - abs(_etcParams.w);
      _625 = saturate(_etcParams.w);  // [sem: expr_sat]
      _626 = (_621 * _613) + _625;
      _627 = (_621 * _614) + _625;
      _628 = (_621 * _615) + _625;
      if (_colorGradingParams.w > 0.0f) {
        _633 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _650 = (((max(0.0f, (1.0f - _626)) - _626) * _633) + _626);
        _651 = (((max(0.0f, (1.0f - _627)) - _627) * _633) + _627);
        _652 = (((max(0.0f, (1.0f - _628)) - _628) * _633) + _628);
      } else {
        _650 = _626;
        _651 = _627;
        _652 = _628;
      }
      _658 = _userImageAdjust.y + 1.0f;
      _662 = _userImageAdjust.x + 0.5f;
      _663 = ((_650 + -0.5f) * _658) + _662;
      _664 = ((_651 + -0.5f) * _658) + _662;
      _665 = ((_652 + -0.5f) * _658) + _662;
      _695 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _706 = exp2(log2(saturate(mad(_colorBlind0.z, _665, mad(_colorBlind0.y, _664, (_colorBlind0.x * _663))))) * _695);
      _707 = exp2(log2(saturate(mad(_colorBlind1.z, _665, mad(_colorBlind1.y, _664, (_colorBlind1.x * _663))))) * _695);
      _708 = exp2(log2(saturate(mad(_colorBlind2.z, _665, mad(_colorBlind2.y, _664, (_colorBlind2.x * _663))))) * _695);
    } else {
      _706 = _613;
      _707 = _614;
      _708 = _615;
    }
  } else {
    _706 = _334;
    _707 = _335;
    _708 = _336;
  }
  if (_etcParams.y > 1.0f) {
    _717 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _718 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _722 = saturate(1.0f - (dot(float2(_717, _718), float2(_717, _718)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _727 = (_722 * _706);
    _728 = (_722 * _707);
    _729 = (_722 * _708);
  } else {
    _727 = _706;
    _728 = _707;
    _729 = _708;
  }
  if (_353 && (_etcParams.z > 0.0f)) {
    _759 = select((_727 <= 0.0031308f), (_727 * 12.92f), (((pow(_727, 0.41666666f)) * 1.055f) + -0.055f));
    _760 = select((_728 <= 0.0031308f), (_728 * 12.92f), (((pow(_728, 0.41666666f)) * 1.055f) + -0.055f));
    _761 = select((_729 <= 0.0031308f), (_729 * 12.92f), (((pow(_729, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _759 = _727;
    _760 = _728;
    _761 = _729;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _766 = (float)((uint)((uint)(_337)));
    if (!(_766 < _viewDir.w)) {
      if (!(_766 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _775 = _759;
        _776 = _760;
        _777 = _761;
      } else {
        _775 = 0.0f;
        _776 = 0.0f;
        _777 = 0.0f;
      }
    } else {
      _775 = 0.0f;
      _776 = 0.0f;
      _777 = 0.0f;
    }
  } else {
    _775 = _759;
    _776 = _760;
    _777 = _761;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_775, _776, _777), _sunDirection.y, _moonDirection.y);
    _775 = _rndx_final_color.x;
    _776 = _rndx_final_color.y;
    _777 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _775;
  SV_Target.y = _776;
  SV_Target.z = _777;
  SV_Target.w = _350;
  return SV_Target;
}
