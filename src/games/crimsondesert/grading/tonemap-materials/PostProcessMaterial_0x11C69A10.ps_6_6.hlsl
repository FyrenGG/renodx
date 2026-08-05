struct PostProcessFlashbackStruct {
  float _blendingRatio;
  float _flickeringIntensity;
  float _contrastRatio;
  float _depthFadingContrast;
  float _depthFadingDistance;
  float _vignetteRatio;
  float _vignetteWidth;
  float _vignetteShape;
  float _lensDirtIntensity;
  float _lensDirtTexScale;
  uint _lensDirtTex;
};

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};


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

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _18;
  float _26;
  float _27;
  int _30;
  float _38;
  float _39;
  int _42;
  float _50;
  float _51;
  int _54;
  float _62;
  float _63;
  float _140;
  float _187;
  float _217;
  float _218;
  float _219;
  float _233;
  float _438;
  float _439;
  float _440;
  float _533;
  float _534;
  float _535;
  float _589;
  float _590;
  float _591;
  float _610;
  float _611;
  float _612;
  float _642;
  float _643;
  float _644;
  float _658;
  float _659;
  float _660;
  float _83;
  float _84;
  float _85;
  float _89;
  float _103;
  float _104;
  float _105;
  float _109;
  float _110;
  float _111;
  float _118;
  int _145;
  float _153;
  int _156;
  float _164;
  float _168;
  float _172;
  float _179;
  float _195;
  float _197;
  float _201;
  float _206;
  float _214;
  uint _220;
  bool _236;
  float _242;
  float _261;
  float _277;
  float _293;
  float _294;
  float _298;
  float _301;
  float _304;
  float _311;
  float _318;
  float _325;
  float _326;
  float _327;
  float _328;
  float _329;
  float _330;
  float _331;
  float _347;
  float _363;
  float _379;
  float _380;
  float _381;
  float _382;
  float _383;
  float _400;
  float _401;
  float _402;
  float _403;
  float _406;
  float _409;
  float _413;
  float _417;
  float _421;
  float _441;
  float _453;
  float _465;
  float _477;
  float _484;
  float _491;
  float _498;
  float _504;
  float _505;
  float _507;
  float _509;
  float _511;
  float _516;
  float _537;
  float _539;
  float _542;
  float _545;
  float _548;
  float _554;
  float _596;
  float _599;
  float _605;
  float _647;
  float _664;
  float _668;
  float _672;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _27 = saturate(_26);  // [sem: _26_sat]
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
  _39 = saturate(_38);  // [sem: _38_sat]
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
  _51 = saturate(_50);  // [sem: _50_sat]
  _54 = WaveReadLaneFirst(_materialIndex);
  _62 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_54 < (uint)170000), _54, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
  _63 = saturate(_62);  // [sem: _62_sat]
  if (!((((_27 < 0.0001f) && (_39 < 0.0001f)) && (_51 < 0.0001f)) && (_63 < 0.0001f))) {
    [branch]
    if (!(!(_39 >= 0.001f))) {
      _83 = (frac(sin(dot(float2(floor(_time.x * 0.37f), 41.0f), float2(127.1f, 311.7f))) * 437.545f) + 3.0f) * _time.x;
      _84 = floor(_83);
      _85 = frac(_83);
      _89 = frac(sin(dot(float2(53.0f, _84), float2(127.1f, 311.7f))) * 437.545f);
      _103 = (((((_85 * _85) * (3.0f - (_85 * 2.0f))) * (frac(sin(dot(float2(53.0f, (_84 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _89)) + _89) * 3.17f) + _83;
      _104 = floor(_103);
      _105 = frac(_103);
      _109 = frac(sin(dot(float2(97.0f, _104), float2(127.1f, 311.7f))) * 437.545f);
      _110 = TEXCOORD.x + -0.5f;
      _111 = TEXCOORD.y + -0.5f;
      _118 = saturate((sqrt((_111 * _111) + (_110 * _110)) + -0.075f) * 2.0f);  // [sem: expr_sat]
      _140 = (((_118 * _118) * (3.0f - (_118 * 2.0f))) * saturate(((_109 + -0.3f) + (((_105 * _105) * (3.0f - (_105 * 2.0f))) * (frac(sin(dot(float2(97.0f, (_104 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _109))) * 1.4285715f));
    } else {
      _140 = 0.0f;
    }
    [branch]
    if (!(!(_51 >= 0.001f))) {
      _145 = WaveReadLaneFirst(_materialIndex);
      _153 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteShape);
      _156 = WaveReadLaneFirst(_materialIndex);
      _164 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_156 < (uint)170000), _156, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteWidth);
      _168 = (5.0f - ((_164 + 4.0f) * _27)) * 0.5f;
      _172 = max((abs(TEXCOORD.x + -0.5f) - _168), 0.0f);
      _179 = max((abs((TEXCOORD.y + -0.5f) / max(0.0001f, (_153 * 3.1415927f))) - _168), 0.0f);
      _187 = saturate(sqrt((_179 * _179) + (_172 * _172)) * 0.5f);  // [sem: expr_sat]
    } else {
      _187 = 0.0f;  // [sem: expr_sat]
    }
    [branch]
    if (!(!(_63 >= 0.0001f))) {
      _195 = saturate(1.0f / max(0.001f, abs(_exposure0.x)));  // [sem: expr_sat]
      _197 = -0.25f - (_195 * 0.25f);
      _201 = max((abs(TEXCOORD.x + -0.5f) - _197), 0.0f);
      _206 = max((abs((TEXCOORD.y + -0.5f) * 1.5303359f) - _197), 0.0f);
      _214 = saturate(sqrt((_206 * _206) + (_201 * _201)) / ((_195 * 0.70000005f) + 1.3f));  // [sem: expr_sat]
      _217 = (_214 * _214);
      _218 = _187;
      _219 = _140;
    } else {
      _217 = 0.0f;
      _218 = _187;
      _219 = _140;
    }
  } else {
    _217 = 0.0f;
    _218 = 0.0f;
    _219 = 0.0f;
  }
  _220 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _233 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _220, 0)))).x) & 127)))) + 0.5f);
  } else {
    _233 = 1.0f;
  }
  _236 = (_localToneMappingParams.w > 0.0f);
  if (_236) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_219, _218, _217));
    _484 = _rndx_tonemapped_color.x;
    _491 = _rndx_tonemapped_color.y;
    _498 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _504 = 1.0f - abs(_etcParams.w);
      _505 = saturate(_etcParams.w);  // [sem: expr_sat]
      _507 = (_504 * _484) + _505;
      _509 = (_504 * _491) + _505;
      _511 = (_504 * _498) + _505;
      if (_colorGradingParams.w > 0.0f) {
        _516 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _533 = (((max(0.0f, (1.0f - _507)) - _507) * _516) + _507);
        _534 = (((max(0.0f, (1.0f - _509)) - _509) * _516) + _509);
        _535 = (((max(0.0f, (1.0f - _511)) - _511) * _516) + _511);
      } else {
        _533 = _507;
        _534 = _509;
        _535 = _511;
      }
      _537 = _userImageAdjust.y + 1.0f;
      _539 = _userImageAdjust.x + 0.5f;
      _542 = ((_533 + -0.5f) * _537) + _539;
      _545 = ((_534 + -0.5f) * _537) + _539;
      _548 = ((_535 + -0.5f) * _537) + _539;
      _554 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _589 = exp2(log2(saturate(mad(_colorBlind0.z, _548, mad(_colorBlind0.y, _545, (_colorBlind0.x * _542))))) * _554);
      _590 = exp2(log2(saturate(mad(_colorBlind1.z, _548, mad(_colorBlind1.y, _545, (_colorBlind1.x * _542))))) * _554);
      _591 = exp2(log2(saturate(mad(_colorBlind2.z, _548, mad(_colorBlind2.y, _545, (_colorBlind2.x * _542))))) * _554);
    } else {
      _589 = _484;
      _590 = _491;
      _591 = _498;
    }
  } else {
    _589 = _219;
    _590 = _218;
    _591 = _217;
  }
  if (_etcParams.y > 1.0f) {
    _596 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _599 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _605 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_596, _599), float2(_596, _599))));  // [sem: expr_sat]
    _610 = (_605 * _589);
    _611 = (_605 * _590);
    _612 = (_605 * _591);
  } else {
    _610 = _589;
    _611 = _590;
    _612 = _591;
  }
  if (_236 && (_etcParams.z > 0.0f)) {
    _642 = select((_610 <= 0.0031308f), (_610 * 12.92f), (((pow(_610, 0.41666666f)) * 1.055f) + -0.055f));
    _643 = select((_611 <= 0.0031308f), (_611 * 12.92f), (((pow(_611, 0.41666666f)) * 1.055f) + -0.055f));
    _644 = select((_612 <= 0.0031308f), (_612 * 12.92f), (((pow(_612, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _642 = _610;
    _643 = _611;
    _644 = _612;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _647 = (float)((uint)((uint)(_220)));
    if (!(_647 < _viewDir.w)) {
      if (!(!(_647 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _658 = 0.0f;
        _659 = 0.0f;
        _660 = 0.0f;
      } else {
        _658 = _642;
        _659 = _643;
        _660 = _644;
      }
    } else {
      _658 = 0.0f;
      _659 = 0.0f;
      _660 = 0.0f;
    }
  } else {
    _658 = _642;
    _659 = _643;
    _660 = _644;
  }
  _664 = exp2(log2(_658 * 0.0001f) * 0.15930176f);
  _668 = exp2(log2(_659 * 0.0001f) * 0.15930176f);
  _672 = exp2(log2(_660 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_664 * 18.6875f) + 1.0f)) * ((_664 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_668 * 18.6875f) + 1.0f)) * ((_668 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_672 * 18.6875f) + 1.0f)) * ((_672 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _233;
  return SV_Target;
}
