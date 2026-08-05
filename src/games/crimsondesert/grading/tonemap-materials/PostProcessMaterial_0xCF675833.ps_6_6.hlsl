struct PostProcessDrugStruct {
  float _panningSpeed;
  float _changeSpeed;
  float _panningWidth;
  float _distortionScale;
  float _distortionSpeed;
  float _distortionDensity;
  float _blendBias;
  float3 _colorTint;
  float _drugPPIntensity;
  float _centerMaskRadius;
  float _centerMaskHardness;
};

struct BindlessParameters_PostProcessDrug {
  PostProcessDrugStruct BindlessParameters_PostProcessDrug;
};


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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
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

typedef BindlessParameters_PostProcessDrug BindlessParameters_PostProcessDrug_t;
ConstantBuffer<BindlessParameters_PostProcessDrug_t> BindlessParameters_PostProcessDrug[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _20;
  float _21;
  float _33;
  float4 _36;
  float _42;
  float _45;
  float _48;
  float _57;
  float _66;
  float _75;
  int _78;
  float _86;
  int _89;
  float _97;
  float _98;
  float _104;
  int _107;
  float _115;
  int _118;
  float _126;
  int _129;
  float _137;
  int _140;
  float _148;
  float _151;
  float _152;
  float4 _159;
  float4 _170;
  int _176;
  float _184;
  float _191;
  float _192;
  float _195;
  float _198;
  float _201;
  float4 _219;
  float _225;
  float _228;
  float _231;
  float _235;
  int _238;
  float _246;
  float _250;
  float _254;
  int _257;
  float _265;
  int _268;
  float _276;
  int _279;
  float _287;
  int _290;
  float _298;
  float _310;
  float _334;
  float _358;
  float _382;
  uint _383;
  float _400;
  float _605;
  float _606;
  float _607;
  float _700;
  float _701;
  float _702;
  float _756;
  float _757;
  float _758;
  float _777;
  float _778;
  float _779;
  float _809;
  float _810;
  float _811;
  float _825;
  float _826;
  float _827;
  bool _403;
  float _409;
  float _428;
  float _444;
  float _460;
  float _461;
  float _465;
  float _468;
  float _471;
  float _478;
  float _485;
  float _492;
  float _493;
  float _494;
  float _495;
  float _496;
  float _497;
  float _498;
  float _514;
  float _530;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _567;
  float _568;
  float _569;
  float _570;
  float _573;
  float _576;
  float _580;
  float _584;
  float _588;
  float _608;
  float _620;
  float _632;
  float _644;
  float _651;
  float _658;
  float _665;
  float _671;
  float _672;
  float _674;
  float _676;
  float _678;
  float _683;
  float _704;
  float _706;
  float _709;
  float _712;
  float _715;
  float _721;
  float _763;
  float _766;
  float _772;
  float _814;
  float _831;
  float _835;
  float _839;
  _20 = TEXCOORD.x + -0.5f;
  _21 = TEXCOORD.y + -0.5f;
  // [sem: expr_sat]
  _33 = saturate(min(((0.5f - abs(_20)) * _srcTargetSizeAndInv.x), (_srcTargetSizeAndInv.y * (0.5f - abs(_21)))) * 0.05f);
  _36 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _42 = (pow(_36.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_36.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _48 = (pow(_36.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _57 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f) * 10000.0f;
  _66 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f) * 10000.0f;
  _75 = exp2(log2(max(0.0f, (_48 + -0.8359375f)) / (18.851562f - (_48 * 18.6875f))) * 6.277395f) * 10000.0f;
  _78 = WaveReadLaneFirst(_materialIndex);
  _86 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionDensity);
  _89 = WaveReadLaneFirst(_materialIndex);
  _97 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_89 < (uint)170000), _89, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionScale);
  _98 = _97 * 0.01f;
  _104 = cos(_time.x + (_86 * TEXCOORD.x)) * _98;
  _107 = WaveReadLaneFirst(_materialIndex);
  _115 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_107 < (uint)170000), _107, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionSpeed);
  _118 = WaveReadLaneFirst(_materialIndex);
  _126 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._panningWidth);
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._blendBias);
  _140 = WaveReadLaneFirst(_materialIndex);
  _148 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._panningSpeed);
  _151 = _time.x * _148;
  _152 = _126 * -0.01f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _159 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((sin(_151 * 0.8975979f) * _152) + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _170 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (((_126 * 0.01f) * sin(_151 * 2.0943952f)) + TEXCOORD.y)));
  _176 = WaveReadLaneFirst(_materialIndex);
  _184 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_176 < (uint)170000), _176, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._changeSpeed);
  _191 = min(max((sin(_time.x * _184) * 2.0f), 0.0f), 1.0f);
  _192 = _191 * _137;
  _195 = (_192 * (_170.x - _159.x)) + _159.x;
  _198 = (_192 * (_170.y - _159.y)) + _159.y;
  _201 = (_192 * (_170.z - _159.z)) + _159.z;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _219 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_104 * _33) + TEXCOORD.x) + (sin(_151 * 1.2566371f) * _152)), (((_98 * _33) * sin((_time.x * _115) + (((TEXCOORD.y + TEXCOORD.x) + _104) * _86))) + TEXCOORD.y)));
  _225 = (pow(_219.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _228 = (pow(_219.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _231 = (pow(_219.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _235 = min(max((1.0f - _191), 0.0f), 1.0f) * _137;
  _238 = WaveReadLaneFirst(_materialIndex);
  _246 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_238 < (uint)170000), _238, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.x);
  _250 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_238 < (uint)170000), _238, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.y);
  _254 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_238 < (uint)170000), _238, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.z);
  _257 = WaveReadLaneFirst(_materialIndex);
  _265 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_257 < (uint)170000), _257, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._drugPPIntensity);
  _268 = WaveReadLaneFirst(_materialIndex);
  _276 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_268 < (uint)170000), _268, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _279 = WaveReadLaneFirst(_materialIndex);
  _287 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_279 < (uint)170000), _279, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskHardness);
  _290 = WaveReadLaneFirst(_materialIndex);
  _298 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_290 < (uint)170000), _290, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _310 = saturate((sqrt((_21 * _21) + (_20 * _20)) - _276) / max(0.001f, (saturate(_298 * 2.0f) * _287))) * _33;
  _334 = (((((((exp2(log2(max(0.0f, (_225 + -0.8359375f)) / (18.851562f - (_225 * 18.6875f))) * 6.277395f) * 10000.0f) - _195) * _235) + _195) * select((_246 < 0.04045f), (_246 * 0.07739938f), exp2(log2((_246 + 0.055f) * 0.94786733f) * 2.4f))) - _57) * _310) + _57;
  _358 = (((((((exp2(log2(max(0.0f, (_228 + -0.8359375f)) / (18.851562f - (_228 * 18.6875f))) * 6.277395f) * 10000.0f) - _198) * _235) + _198) * select((_250 < 0.04045f), (_250 * 0.07739938f), exp2(log2((_250 + 0.055f) * 0.94786733f) * 2.4f))) - _66) * _310) + _66;
  _382 = (((((((exp2(log2(max(0.0f, (_231 + -0.8359375f)) / (18.851562f - (_231 * 18.6875f))) * 6.277395f) * 10000.0f) - _201) * _235) + _201) * select((_254 < 0.04045f), (_254 * 0.07739938f), exp2(log2((_254 + 0.055f) * 0.94786733f) * 2.4f))) - _75) * _310) + _75;
  _383 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _400 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _383, 0)))).x) & 127)))) + 0.5f);
  } else {
    _400 = _postProcessParams.x;
  }
  _403 = (_localToneMappingParams.w > 0.0f);
  if (_403) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_334, _358, _382));
    _651 = _rndx_tonemapped_color.x;
    _658 = _rndx_tonemapped_color.y;
    _665 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _671 = 1.0f - abs(_etcParams.w);
      _672 = saturate(_etcParams.w);  // [sem: expr_sat]
      _674 = (_671 * _651) + _672;
      _676 = (_671 * _658) + _672;
      _678 = (_671 * _665) + _672;
      if (_colorGradingParams.w > 0.0f) {
        _683 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _700 = (((max(0.0f, (1.0f - _674)) - _674) * _683) + _674);
        _701 = (((max(0.0f, (1.0f - _676)) - _676) * _683) + _676);
        _702 = (((max(0.0f, (1.0f - _678)) - _678) * _683) + _678);
      } else {
        _700 = _674;
        _701 = _676;
        _702 = _678;
      }
      _704 = _userImageAdjust.y + 1.0f;
      _706 = _userImageAdjust.x + 0.5f;
      _709 = ((_700 + -0.5f) * _704) + _706;
      _712 = ((_701 + -0.5f) * _704) + _706;
      _715 = ((_702 + -0.5f) * _704) + _706;
      _721 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _756 = exp2(log2(saturate(mad(_colorBlind0.z, _715, mad(_colorBlind0.y, _712, (_colorBlind0.x * _709))))) * _721);
      _757 = exp2(log2(saturate(mad(_colorBlind1.z, _715, mad(_colorBlind1.y, _712, (_colorBlind1.x * _709))))) * _721);
      _758 = exp2(log2(saturate(mad(_colorBlind2.z, _715, mad(_colorBlind2.y, _712, (_colorBlind2.x * _709))))) * _721);
    } else {
      _756 = _651;
      _757 = _658;
      _758 = _665;
    }
  } else {
    _756 = _334;
    _757 = _358;
    _758 = _382;
  }
  if (_etcParams.y > 1.0f) {
    _763 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _766 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _772 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_763, _766), float2(_763, _766))));  // [sem: expr_sat]
    _777 = (_772 * _756);
    _778 = (_772 * _757);
    _779 = (_772 * _758);
  } else {
    _777 = _756;
    _778 = _757;
    _779 = _758;
  }
  if (_403 && (_etcParams.z > 0.0f)) {
    _809 = select((_777 <= 0.0031308f), (_777 * 12.92f), (((pow(_777, 0.41666666f)) * 1.055f) + -0.055f));
    _810 = select((_778 <= 0.0031308f), (_778 * 12.92f), (((pow(_778, 0.41666666f)) * 1.055f) + -0.055f));
    _811 = select((_779 <= 0.0031308f), (_779 * 12.92f), (((pow(_779, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _809 = _777;
    _810 = _778;
    _811 = _779;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _814 = (float)((uint)((uint)(_383)));
    if (!(_814 < _viewDir.w)) {
      if (!(!(_814 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _825 = 0.0f;
        _826 = 0.0f;
        _827 = 0.0f;
      } else {
        _825 = _809;
        _826 = _810;
        _827 = _811;
      }
    } else {
      _825 = 0.0f;
      _826 = 0.0f;
      _827 = 0.0f;
    }
  } else {
    _825 = _809;
    _826 = _810;
    _827 = _811;
  }
  _831 = exp2(log2(_825 * 0.0001f) * 0.15930176f);
  _835 = exp2(log2(_826 * 0.0001f) * 0.15930176f);
  _839 = exp2(log2(_827 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_831 * 18.6875f) + 1.0f)) * ((_831 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_835 * 18.6875f) + 1.0f)) * ((_835 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_839 * 18.6875f) + 1.0f)) * ((_839 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _400;
  return SV_Target;
}
