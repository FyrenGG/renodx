struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _267;
  float _268;
  float _269;
  float _283;
  float _488;
  float _489;
  float _490;
  float _583;
  float _584;
  float _585;
  float _639;
  float _640;
  float _641;
  float _660;
  float _661;
  float _662;
  float _692;
  float _693;
  float _694;
  float _708;
  float _709;
  float _710;
  uint2 _27;
  bool _45;
  float _56;
  int _62;
  float _70;
  float4 _73;
  float _79;
  float _80;
  float4 _82;
  float4 _86;
  float _89;
  float4 _91;
  float4 _95;
  int _114;
  float _122;
  float4 _125;
  float _131;
  float _132;
  float4 _134;
  float4 _138;
  float _141;
  float4 _143;
  float4 _147;
  int _166;
  float _174;
  float4 _177;
  float _183;
  float _184;
  float4 _186;
  float4 _190;
  float _193;
  float4 _195;
  float4 _199;
  int _218;
  float _226;
  float4 _229;
  float _235;
  float _236;
  float4 _238;
  float4 _242;
  float _245;
  float4 _247;
  float4 _251;
  uint _270;
  bool _286;
  float _292;
  float _311;
  float _327;
  float _343;
  float _344;
  float _348;
  float _351;
  float _354;
  float _361;
  float _368;
  float _375;
  float _376;
  float _377;
  float _378;
  float _379;
  float _380;
  float _381;
  float _397;
  float _413;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _450;
  float _451;
  float _452;
  float _453;
  float _456;
  float _459;
  float _463;
  float _467;
  float _471;
  float _491;
  float _503;
  float _515;
  float _527;
  float _534;
  float _541;
  float _548;
  float _554;
  float _555;
  float _557;
  float _559;
  float _561;
  float _566;
  float _587;
  float _589;
  float _592;
  float _595;
  float _598;
  float _604;
  float _646;
  float _649;
  float _655;
  float _697;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_27.x, _27.y);
    _45 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_27.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_27.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30);
    _56 = select(_45, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x), 0.0f);
    _267 = _56;
    _268 = _56;
    _269 = select(_45, 1.0f, 0.0f);
  } else {
    if (_passIndex == 1) {
      _62 = WaveReadLaneFirst(_materialIndex);
      _70 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _73 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _79 = (1.0f / _destTargetSizAndInv.x) * _70;
      _80 = _79 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _82 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_80 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _86 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _80), TEXCOORD.y));
      _89 = _79 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _91 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_89 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _95 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _89), TEXCOORD.y));
      _267 = 0.0f;
      _268 = max(max(max(max(max(0.0f, _73.y), _82.y), _86.y), _91.y), _95.y);
      _269 = ((((_86.x + _82.x) * 0.31621623f) + (_73.x * 0.22702703f)) + ((_95.x + _91.x) * 0.07027027f));
    } else {
      if (_passIndex == 2) {
        _114 = WaveReadLaneFirst(_materialIndex);
        _122 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _125 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _131 = (1.0f / _destTargetSizAndInv.y) * _122;
        _132 = _131 * 1.3846154f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _134 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_132 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _138 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _132)));
        _141 = _131 * 3.2307692f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _143 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_141 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _147 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _141)));
        _267 = 0.0f;
        _268 = max(max(max(max(max(0.0f, _125.y), _134.y), _138.y), _143.y), _147.y);
        _269 = ((((_138.x + _134.x) * 0.31621623f) + (_125.x * 0.22702703f)) + ((_147.x + _143.x) * 0.07027027f));
      } else {
        if (_passIndex == 3) {
          _166 = WaveReadLaneFirst(_materialIndex);
          _174 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_166 < (uint)170000), _166, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _177 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _183 = (1.0f / _destTargetSizAndInv.x) * _174;
          _184 = _183 * 1.3846154f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _186 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_184 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _190 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _184), TEXCOORD.y));
          _193 = _183 * 3.2307692f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _195 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_193 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _199 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _193), TEXCOORD.y));
          _267 = 0.0f;
          _268 = max(max(max(max(max(0.0f, _177.y), _186.y), _190.y), _195.y), _199.y);
          _269 = ((((_190.x + _186.x) * 0.31621623f) + (_177.x * 0.22702703f)) + ((_199.x + _195.x) * 0.07027027f));
        } else {
          if (_passIndex == 4) {
            _218 = WaveReadLaneFirst(_materialIndex);
            _226 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _229 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _235 = (1.0f / _destTargetSizAndInv.y) * _226;
            _236 = _235 * 1.3846154f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _238 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_236 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _242 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _236)));
            _245 = _235 * 3.2307692f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _247 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_245 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _251 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _245)));
            _267 = 0.0f;
            _268 = max(max(max(max(max(0.0f, _229.y), _238.y), _242.y), _247.y), _251.y);
            _269 = ((((_242.x + _238.x) * 0.31621623f) + (_229.x * 0.22702703f)) + ((_251.x + _247.x) * 0.07027027f));
          } else {
            _267 = 0.0f;
            _268 = 0.0f;
            _269 = 0.0f;
          }
        }
      }
    }
  }
  _270 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _283 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _270, 0)))).x) & 127)))) + 0.5f);
  } else {
    _283 = 1.0f;
  }
  _286 = (_localToneMappingParams.w > 0.0f);
  if (_286) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_269, _268, _267));
    _534 = _rndx_tonemapped_color.x;
    _541 = _rndx_tonemapped_color.y;
    _548 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _554 = 1.0f - abs(_etcParams.w);
      _555 = saturate(_etcParams.w);  // [sem: expr_sat]
      _557 = (_554 * _534) + _555;
      _559 = (_554 * _541) + _555;
      _561 = (_554 * _548) + _555;
      if (_colorGradingParams.w > 0.0f) {
        _566 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _583 = (((max(0.0f, (1.0f - _561)) - _561) * _566) + _561);
        _584 = (((max(0.0f, (1.0f - _559)) - _559) * _566) + _559);
        _585 = (((max(0.0f, (1.0f - _557)) - _557) * _566) + _557);
      } else {
        _583 = _561;
        _584 = _559;
        _585 = _557;
      }
      _587 = _userImageAdjust.y + 1.0f;
      _589 = _userImageAdjust.x + 0.5f;
      _592 = ((_585 + -0.5f) * _587) + _589;
      _595 = ((_584 + -0.5f) * _587) + _589;
      _598 = ((_583 + -0.5f) * _587) + _589;
      _604 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _639 = exp2(log2(saturate(mad(_colorBlind2.z, _598, mad(_colorBlind2.y, _595, (_colorBlind2.x * _592))))) * _604);
      _640 = exp2(log2(saturate(mad(_colorBlind1.z, _598, mad(_colorBlind1.y, _595, (_colorBlind1.x * _592))))) * _604);
      _641 = exp2(log2(saturate(mad(_colorBlind0.z, _598, mad(_colorBlind0.y, _595, (_colorBlind0.x * _592))))) * _604);
    } else {
      _639 = _548;
      _640 = _541;
      _641 = _534;
    }
  } else {
    _639 = _267;
    _640 = _268;
    _641 = _269;
  }
  if (_etcParams.y > 1.0f) {
    _646 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _649 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _655 = saturate(1.0f - (dot(float2(_646, _649), float2(_646, _649)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _660 = (_655 * _639);
    _661 = (_655 * _640);
    _662 = (_655 * _641);
  } else {
    _660 = _639;
    _661 = _640;
    _662 = _641;
  }
  if (_286 && (_etcParams.z > 0.0f)) {
    _692 = select((_660 <= 0.0031308f), (_660 * 12.92f), (((pow(_660, 0.41666666f)) * 1.055f) + -0.055f));
    _693 = select((_661 <= 0.0031308f), (_661 * 12.92f), (((pow(_661, 0.41666666f)) * 1.055f) + -0.055f));
    _694 = select((_662 <= 0.0031308f), (_662 * 12.92f), (((pow(_662, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _692 = _660;
    _693 = _661;
    _694 = _662;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _697 = (float)((uint)((uint)(_270)));
    if (!(_697 < _viewDir.w)) {
      if (!(!(_697 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _708 = 0.0f;
        _709 = 0.0f;
        _710 = 0.0f;
      } else {
        _708 = _693;
        _709 = _694;
        _710 = _692;
      }
    } else {
      _708 = 0.0f;
      _709 = 0.0f;
      _710 = 0.0f;
    }
  } else {
    _708 = _693;
    _709 = _694;
    _710 = _692;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_709, _708, _710), _sunDirection.y, _moonDirection.y);
    _709 = _rndx_final_color.x;
    _708 = _rndx_final_color.y;
    _710 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _709;
  SV_Target.y = _708;
  SV_Target.z = _710;
  SV_Target.w = _283;
  return SV_Target;
}
