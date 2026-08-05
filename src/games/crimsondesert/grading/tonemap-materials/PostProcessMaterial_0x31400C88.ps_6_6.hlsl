struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
};

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[11] = { 0.048393868f, 0.05793798f, 0.066644534f, 0.0736536f, 0.07820809f, 0.079788f, 0.07820809f, 0.0736536f, 0.066644534f, 0.05793798f, 0.048393868f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _31;
  int _34;
  float _42;
  int _45;
  float _53;
  int _57;
  float _58;
  float _59;
  float _60;
  int _61;
  int _131;
  int _132;
  float _186;
  float _187;
  float _188;
  float _322;
  float _354;
  float _368;
  float _573;
  float _574;
  float _575;
  float _668;
  float _669;
  float _670;
  float _724;
  float _725;
  float _726;
  float _745;
  float _746;
  float _747;
  float _777;
  float _778;
  float _779;
  float _793;
  float _794;
  float _795;
  float4 _75;
  float _81;
  float _84;
  float _87;
  float _97;
  float _107;
  float _117;
  float _127;
  int _128;
  int _134;
  float4 _145;
  float _151;
  float _154;
  float _157;
  int _193;
  float _201;
  float _205;
  int _208;
  float _216;
  float _220;
  int _223;
  int _231;
  int _234;
  float _242;
  int _245;
  float _253;
  float _255;
  float _259;
  float _263;
  float _272;
  int _275;
  float _283;
  int _288;
  float _296;
  float _300;
  int _303;
  float _311;
  int _325;
  float _333;
  uint _355;
  bool _371;
  float _377;
  float _396;
  float _412;
  float _428;
  float _429;
  float _433;
  float _436;
  float _439;
  float _446;
  float _453;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _482;
  float _498;
  float _514;
  float _515;
  float _516;
  float _517;
  float _518;
  float _535;
  float _536;
  float _537;
  float _538;
  float _541;
  float _544;
  float _548;
  float _552;
  float _556;
  float _576;
  float _588;
  float _600;
  float _612;
  float _619;
  float _626;
  float _633;
  float _639;
  float _640;
  float _642;
  float _644;
  float _646;
  float _651;
  float _672;
  float _674;
  float _677;
  float _680;
  float _683;
  float _689;
  float _731;
  float _734;
  float _740;
  float _782;
  float _799;
  float _803;
  float _807;
  int __loop_jump_target = -1;
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  if (_31 > 0.0f) {
    _57 = -5;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = -5;
    while(true) {
      _132 = _61;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _75 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_61))) * _31) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_57))) * _31) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _81 = (pow(_75.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _84 = (pow(_75.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _87 = (pow(_75.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _97 = ((_global_0[((int)min((uint)(((int)(_61) + (int)(5))), (uint)(10)))]) * 10000.0f) * (_global_0[((int)min((uint)(((int)(_57) + (int)(5))), (uint)(10)))]);
      _107 = (exp2(log2(max(0.0f, (_81 + -0.8359375f)) / (18.851562f - (_81 * 18.6875f))) * 6.277395f) * _97) + _60;
      _117 = (exp2(log2(max(0.0f, (_84 + -0.8359375f)) / (18.851562f - (_84 * 18.6875f))) * 6.277395f) * _97) + _59;
      _127 = (exp2(log2(max(0.0f, (_87 + -0.8359375f)) / (18.851562f - (_87 * 18.6875f))) * 6.277395f) * _97) + _58;
      _128 = (int)(_57) + (int)(1);
      if (!(_128 == 6)) {
        _131 = _128;
        _132 = _61;
        while(true) {
          _57 = _131;
          _58 = _127;
          _59 = _117;
          _60 = _107;
          _61 = _132;
          __loop_jump_target = 56;
          break;
          break;
        }
        if (__loop_jump_target == 56) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _134 = (int)(_61) + (int)(1);
      if (!(_134 == 6)) {
        _131 = -5;
        _132 = _134;
        while(true) {
          _57 = _131;
          _58 = _127;
          _59 = _117;
          _60 = _107;
          _61 = _132;
          __loop_jump_target = 56;
          break;
          break;
        }
        if (__loop_jump_target == 56) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _186 = (_127 * 1.8792827f);
      _187 = (_117 * 1.8792827f);
      _188 = (_107 * 1.8792827f);
      break;
    }
  } else {
    if (_42 > 0.0f) {
      _145 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _151 = (pow(_145.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _154 = (pow(_145.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _157 = (pow(_145.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _186 = (exp2(log2(max(0.0f, (_157 + -0.8359375f)) / (18.851562f - (_157 * 18.6875f))) * 6.277395f) * 10000.0f);
      _187 = (exp2(log2(max(0.0f, (_154 + -0.8359375f)) / (18.851562f - (_154 * 18.6875f))) * 6.277395f) * 10000.0f);
      _188 = (exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.851562f - (_151 * 18.6875f))) * 6.277395f) * 10000.0f);
    } else {
      _186 = 0.0f;
      _187 = 0.0f;
      _188 = 0.0f;
    }
  }
  if (_53 > 0.0f) {
    _193 = WaveReadLaneFirst(_materialIndex);
    _201 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.x);
    _205 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.y);
    _208 = WaveReadLaneFirst(_materialIndex);
    _216 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_208 < (uint)170000), _208, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.x);
    _220 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_208 < (uint)170000), _208, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.y);
    _223 = WaveReadLaneFirst(_materialIndex);
    _231 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTexture);
    _234 = WaveReadLaneFirst(_materialIndex);
    _242 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_234 < (uint)170000), _234, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderSmoothness);
    _245 = WaveReadLaneFirst(_materialIndex);
    _253 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_245 < (uint)170000), _245, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderWidth);
    _255 = (1.0f - _253) * 0.5f;
    _259 = max((abs(TEXCOORD.x + -0.5f) - _255), 0.0f);
    _263 = max((abs(TEXCOORD.y + -0.5f) - _255), 0.0f);
    _272 = 1.0f - ((1.0f - saturate(sqrt((_263 * _263) + (_259 * _259)) / _242)) * 2.0f);
    _275 = WaveReadLaneFirst(_materialIndex);
    _283 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_275 < (uint)170000), _275, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerSpeed);
    if (_283 > 0.0f) {
      _288 = WaveReadLaneFirst(_materialIndex);
      _296 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_288 < (uint)170000), _288, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.x);
      _300 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_288 < (uint)170000), _288, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.y);
      _303 = WaveReadLaneFirst(_materialIndex);
      _311 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_303 < (uint)170000), _303, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerIntensity);
      _322 = ((_311 * _272) * min(max(sin((_283 * 3.1415927f) * _time.x), _296), _300));
    } else {
      _322 = _272;
    }
    _325 = WaveReadLaneFirst(_materialIndex);
    _333 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_325 < (uint)170000), _325, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseRatio);
    _354 = (saturate(saturate(_322) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_231 < (uint)65000), _231, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_216 + (_201 * TEXCOORD.x)), (_220 + (_205 * TEXCOORD.y)))))).x) * _333)) * min(max(_53, 0.0f), 1.0f));
  } else {
    _354 = 1.0f;
  }
  _355 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _368 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _355, 0)))).x) & 127)))) + 0.5f);
  } else {
    _368 = _354;
  }
  _371 = (_localToneMappingParams.w > 0.0f);
  if (_371) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_188, _187, _186));
    _619 = _rndx_tonemapped_color.x;
    _626 = _rndx_tonemapped_color.y;
    _633 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _639 = 1.0f - abs(_etcParams.w);
      _640 = saturate(_etcParams.w);  // [sem: expr_sat]
      _642 = (_639 * _619) + _640;
      _644 = (_639 * _626) + _640;
      _646 = (_639 * _633) + _640;
      if (_colorGradingParams.w > 0.0f) {
        _651 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _668 = (((max(0.0f, (1.0f - _646)) - _646) * _651) + _646);
        _669 = (((max(0.0f, (1.0f - _644)) - _644) * _651) + _644);
        _670 = (((max(0.0f, (1.0f - _642)) - _642) * _651) + _642);
      } else {
        _668 = _646;
        _669 = _644;
        _670 = _642;
      }
      _672 = _userImageAdjust.y + 1.0f;
      _674 = _userImageAdjust.x + 0.5f;
      _677 = ((_670 + -0.5f) * _672) + _674;
      _680 = ((_669 + -0.5f) * _672) + _674;
      _683 = ((_668 + -0.5f) * _672) + _674;
      _689 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _724 = exp2(log2(saturate(mad(_colorBlind2.z, _683, mad(_colorBlind2.y, _680, (_colorBlind2.x * _677))))) * _689);
      _725 = exp2(log2(saturate(mad(_colorBlind1.z, _683, mad(_colorBlind1.y, _680, (_colorBlind1.x * _677))))) * _689);
      _726 = exp2(log2(saturate(mad(_colorBlind0.z, _683, mad(_colorBlind0.y, _680, (_colorBlind0.x * _677))))) * _689);
    } else {
      _724 = _633;
      _725 = _626;
      _726 = _619;
    }
  } else {
    _724 = _186;
    _725 = _187;
    _726 = _188;
  }
  if (_etcParams.y > 1.0f) {
    _731 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _734 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _740 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_731, _734), float2(_731, _734))));  // [sem: expr_sat]
    _745 = (_740 * _725);
    _746 = (_740 * _726);
    _747 = (_740 * _724);
  } else {
    _745 = _725;
    _746 = _726;
    _747 = _724;
  }
  if (_371 && (_etcParams.z > 0.0f)) {
    _777 = select((_746 <= 0.0031308f), (_746 * 12.92f), (((pow(_746, 0.41666666f)) * 1.055f) + -0.055f));
    _778 = select((_745 <= 0.0031308f), (_745 * 12.92f), (((pow(_745, 0.41666666f)) * 1.055f) + -0.055f));
    _779 = select((_747 <= 0.0031308f), (_747 * 12.92f), (((pow(_747, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _777 = _746;
    _778 = _745;
    _779 = _747;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _782 = (float)((uint)((uint)(_355)));
    if (!(_782 < _viewDir.w)) {
      if (!(!(_782 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _793 = 0.0f;
        _794 = 0.0f;
        _795 = 0.0f;
      } else {
        _793 = _777;
        _794 = _778;
        _795 = _779;
      }
    } else {
      _793 = 0.0f;
      _794 = 0.0f;
      _795 = 0.0f;
    }
  } else {
    _793 = _777;
    _794 = _778;
    _795 = _779;
  }
  _799 = exp2(log2(_793 * 0.0001f) * 0.15930176f);
  _803 = exp2(log2(_794 * 0.0001f) * 0.15930176f);
  _807 = exp2(log2(_795 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_799 * 18.6875f) + 1.0f)) * ((_799 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_803 * 18.6875f) + 1.0f)) * ((_803 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_807 * 18.6875f) + 1.0f)) * ((_807 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _368;
  return SV_Target;
}
