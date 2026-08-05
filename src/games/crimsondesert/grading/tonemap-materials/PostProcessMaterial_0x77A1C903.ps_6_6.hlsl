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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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
  float4 _25;
  float _31;
  float _34;
  float _37;
  float _45;
  float _53;
  float _61;
  float _62;
  float _63;
  float _64;
  int _67;
  float _75;
  float _235;
  float _236;
  float _237;
  float _251;
  float _456;
  float _457;
  float _458;
  float _551;
  float _552;
  float _553;
  float _607;
  float _608;
  float _609;
  float _628;
  float _629;
  float _630;
  float _660;
  float _661;
  float _662;
  float _676;
  float _677;
  float _678;
  float _83;
  int _86;
  int _94;
  int _97;
  float _105;
  int _108;
  float _116;
  float _133;
  float _135;
  float _137;
  int _140;
  float _148;
  float4 _151;
  float _157;
  float _160;
  float _163;
  float _200;
  uint _238;
  bool _254;
  float _260;
  float _279;
  float _295;
  float _311;
  float _312;
  float _316;
  float _319;
  float _322;
  float _329;
  float _336;
  float _343;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _349;
  float _365;
  float _381;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _418;
  float _419;
  float _420;
  float _421;
  float _424;
  float _427;
  float _431;
  float _435;
  float _439;
  float _459;
  float _471;
  float _483;
  float _495;
  float _502;
  float _509;
  float _516;
  float _522;
  float _523;
  float _525;
  float _527;
  float _529;
  float _534;
  float _555;
  float _557;
  float _560;
  float _563;
  float _566;
  float _572;
  float _614;
  float _617;
  float _623;
  float _665;
  float _682;
  float _686;
  float _690;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f);
  _53 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f);
  _61 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f);
  _62 = _45 * 10000.0f;
  _63 = _53 * 10000.0f;
  _64 = _61 * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_75 >= 0.001f))) {
    _83 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _86 = WaveReadLaneFirst(_materialIndex);
    _94 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _97 = WaveReadLaneFirst(_materialIndex);
    _105 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _108 = WaveReadLaneFirst(_materialIndex);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _133 = (_116 * _105) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_94 < (uint)65000), _94, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _83), ((_time.x * 0.3f) + (_83 * TEXCOORD.y)))))).y);
    _135 = (_133 * 0.01f) + TEXCOORD.x;
    _137 = (_133 * 0.05f) + TEXCOORD.y;
    _140 = WaveReadLaneFirst(_materialIndex);
    _148 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _151 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _157 = (pow(_151.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _160 = (pow(_151.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _163 = (pow(_151.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _200 = (_148 * 10000.0f) * saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _135) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _137) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _135)), ((int)(_customRenderPassSizeInvSize.y * _137)), 0)))).x)))));
    _235 = (((exp2(log2(max(0.0f, (_163 + -0.8359375f)) / (18.851562f - (_163 * 18.6875f))) * 6.277395f) - _61) * _200) + _64);
    _236 = (((exp2(log2(max(0.0f, (_160 + -0.8359375f)) / (18.851562f - (_160 * 18.6875f))) * 6.277395f) - _53) * _200) + _63);
    _237 = (((exp2(log2(max(0.0f, (_157 + -0.8359375f)) / (18.851562f - (_157 * 18.6875f))) * 6.277395f) - _45) * _200) + _62);
  } else {
    _235 = _64;
    _236 = _63;
    _237 = _62;
  }
  _238 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _251 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _238, 0)))).x) & 127)))) + 0.5f);
  } else {
    _251 = 1.0f;
  }
  _254 = (_localToneMappingParams.w > 0.0f);
  if (_254) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_237, _236, _235));
    _502 = _rndx_tonemapped_color.x;
    _509 = _rndx_tonemapped_color.y;
    _516 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _522 = 1.0f - abs(_etcParams.w);
      _523 = saturate(_etcParams.w);  // [sem: expr_sat]
      _525 = (_522 * _502) + _523;
      _527 = (_522 * _509) + _523;
      _529 = (_522 * _516) + _523;
      if (_colorGradingParams.w > 0.0f) {
        _534 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _551 = (((max(0.0f, (1.0f - _525)) - _525) * _534) + _525);
        _552 = (((max(0.0f, (1.0f - _527)) - _527) * _534) + _527);
        _553 = (((max(0.0f, (1.0f - _529)) - _529) * _534) + _529);
      } else {
        _551 = _525;
        _552 = _527;
        _553 = _529;
      }
      _555 = _userImageAdjust.y + 1.0f;
      _557 = _userImageAdjust.x + 0.5f;
      _560 = ((_551 + -0.5f) * _555) + _557;
      _563 = ((_552 + -0.5f) * _555) + _557;
      _566 = ((_553 + -0.5f) * _555) + _557;
      _572 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _607 = exp2(log2(saturate(mad(_colorBlind0.z, _566, mad(_colorBlind0.y, _563, (_colorBlind0.x * _560))))) * _572);
      _608 = exp2(log2(saturate(mad(_colorBlind1.z, _566, mad(_colorBlind1.y, _563, (_colorBlind1.x * _560))))) * _572);
      _609 = exp2(log2(saturate(mad(_colorBlind2.z, _566, mad(_colorBlind2.y, _563, (_colorBlind2.x * _560))))) * _572);
    } else {
      _607 = _502;
      _608 = _509;
      _609 = _516;
    }
  } else {
    _607 = _237;
    _608 = _236;
    _609 = _235;
  }
  if (_etcParams.y > 1.0f) {
    _614 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _617 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _623 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_614, _617), float2(_614, _617))));  // [sem: expr_sat]
    _628 = (_623 * _607);
    _629 = (_623 * _608);
    _630 = (_623 * _609);
  } else {
    _628 = _607;
    _629 = _608;
    _630 = _609;
  }
  if (_254 && (_etcParams.z > 0.0f)) {
    _660 = select((_628 <= 0.0031308f), (_628 * 12.92f), (((pow(_628, 0.41666666f)) * 1.055f) + -0.055f));
    _661 = select((_629 <= 0.0031308f), (_629 * 12.92f), (((pow(_629, 0.41666666f)) * 1.055f) + -0.055f));
    _662 = select((_630 <= 0.0031308f), (_630 * 12.92f), (((pow(_630, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _660 = _628;
    _661 = _629;
    _662 = _630;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _665 = (float)((uint)((uint)(_238)));
    if (!(_665 < _viewDir.w)) {
      if (!(!(_665 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _676 = 0.0f;
        _677 = 0.0f;
        _678 = 0.0f;
      } else {
        _676 = _660;
        _677 = _661;
        _678 = _662;
      }
    } else {
      _676 = 0.0f;
      _677 = 0.0f;
      _678 = 0.0f;
    }
  } else {
    _676 = _660;
    _677 = _661;
    _678 = _662;
  }
  _682 = exp2(log2(_676 * 0.0001f) * 0.15930176f);
  _686 = exp2(log2(_677 * 0.0001f) * 0.15930176f);
  _690 = exp2(log2(_678 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_682 * 18.6875f) + 1.0f)) * ((_682 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_686 * 18.6875f) + 1.0f)) * ((_686 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_690 * 18.6875f) + 1.0f)) * ((_690 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _251;
  return SV_Target;
}
