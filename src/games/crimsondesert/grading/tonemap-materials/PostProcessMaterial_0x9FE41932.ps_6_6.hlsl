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


Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};

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
  int _28;
  float _36;
  float _37;
  int _38;
  float _46;
  float _47;
  int _48;
  float _56;
  float _57;
  float _134;
  float _177;
  float _207;
  float _208;
  float _209;
  float _223;
  float _428;
  float _429;
  float _430;
  float _523;
  float _524;
  float _525;
  float _579;
  float _580;
  float _581;
  float _600;
  float _601;
  float _602;
  float _632;
  float _633;
  float _634;
  float _648;
  float _649;
  float _650;
  float _77;
  float _78;
  float _80;
  float _88;
  float _97;
  float _98;
  float _100;
  float _108;
  float _119;
  float _120;
  float _127;
  int _137;
  float _145;
  int _147;
  float _155;
  float _165;
  float _168;
  float _169;
  float _187;
  float _194;
  float _197;
  float _198;
  float _204;
  uint _210;
  bool _226;
  float _232;
  float _281;
  float _282;
  float _283;
  float _285;
  float _292;
  float _293;
  float _294;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _372;
  float _373;
  float _390;
  float _391;
  float _392;
  float _393;
  float _399;
  float _402;
  float _409;
  float _410;
  float _411;
  float _440;
  float _465;
  float _466;
  float _467;
  float _486;
  float _487;
  float _488;
  float _494;
  float _498;
  float _499;
  float _500;
  float _501;
  float _506;
  float _531;
  float _535;
  float _536;
  float _537;
  float _538;
  float _568;
  float _590;
  float _591;
  float _595;
  float _639;
  float _660;
  float _661;
  float _662;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _27 = saturate(_26);  // [sem: _26_sat]
  _28 = WaveReadLaneFirst(_materialIndex);
  _36 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_28 < (uint)170000), _28, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
  _37 = saturate(_36);  // [sem: _36_sat]
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
  _47 = saturate(_46);  // [sem: _46_sat]
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
  _57 = saturate(_56);  // [sem: _56_sat]
  if (!((((_27 < 0.0001f) && (_37 < 0.0001f)) && (_47 < 0.0001f)) && (_57 < 0.0001f))) {
    [branch]
    if (!(!(_37 >= 0.001f))) {
      _77 = (frac(sin(dot(float2(floor(_time.x * 0.37f), 41.0f), float2(127.1f, 311.7f))) * 437.545f) + 3.0f) * _time.x;
      _78 = floor(_77);
      _80 = frac(_77);
      _88 = frac(sin(dot(float2(53.0f, _78), float2(127.1f, 311.7f))) * 437.545f);
      _97 = (((((_80 * _80) * (3.0f - (_80 * 2.0f))) * (frac(sin(dot(float2(53.0f, (_78 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _88)) + _88) * 3.17f) + _77;
      _98 = floor(_97);
      _100 = frac(_97);
      _108 = frac(sin(dot(float2(97.0f, _98), float2(127.1f, 311.7f))) * 437.545f);
      _119 = TEXCOORD.x + -0.5f;
      _120 = TEXCOORD.y + -0.5f;
      _127 = saturate((sqrt((_120 * _120) + (_119 * _119)) + -0.075f) * 2.0f);  // [sem: expr_sat]
      _134 = (((_127 * _127) * saturate(((_108 + -0.3f) + (((_100 * _100) * (3.0f - (_100 * 2.0f))) * (frac(sin(dot(float2(97.0f, (_98 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _108))) * 1.4285715f)) * (3.0f - (_127 * 2.0f)));
    } else {
      _134 = 0.0f;
    }
    [branch]
    if (!(!(_47 >= 0.001f))) {
      _137 = WaveReadLaneFirst(_materialIndex);
      _145 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_137 < (uint)170000), _137, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteShape);
      _147 = WaveReadLaneFirst(_materialIndex);
      _155 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteWidth);
      _165 = (5.0f - ((_155 + 4.0f) * _27)) * 0.5f;
      _168 = max((abs(TEXCOORD.x + -0.5f) - _165), 0.0f);
      _169 = max((abs((TEXCOORD.y + -0.5f) / max(0.0001f, (_145 * 3.1415927f))) - _165), 0.0f);
      _177 = saturate(sqrt((_169 * _169) + (_168 * _168)) * 0.5f);  // [sem: expr_sat]
    } else {
      _177 = 0.0f;  // [sem: expr_sat]
    }
    [branch]
    if (!(!(_57 >= 0.0001f))) {
      _187 = saturate(1.0f / max(0.001f, abs(_exposure0.x)));  // [sem: expr_sat]
      _194 = -0.25f - (_187 * 0.25f);
      _197 = max((abs(TEXCOORD.x + -0.5f) - _194), 0.0f);
      _198 = max((abs((TEXCOORD.y + -0.5f) * 1.5303359f) - _194), 0.0f);
      _204 = saturate(sqrt((_198 * _198) + (_197 * _197)) / ((_187 * 0.70000005f) + 1.3f));  // [sem: expr_sat]
      _207 = _134;
      _208 = _177;
      _209 = (_204 * _204);
    } else {
      _207 = _134;
      _208 = _177;
      _209 = 0.0f;
    }
  } else {
    _207 = 0.0f;
    _208 = 0.0f;
    _209 = 0.0f;
  }
  _210 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _223 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _210, 0)))).x) & 127)))) + 0.5f);
  } else {
    _223 = 1.0f;
  }
  _226 = (_localToneMappingParams.w > 0.0f);
  if (_226) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_207, _208, _209));
    _486 = _rndx_tonemapped_color.x;
    _487 = _rndx_tonemapped_color.y;
    _488 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _494 = 1.0f - abs(_etcParams.w);
      _498 = saturate(_etcParams.w);  // [sem: expr_sat]
      _499 = (_494 * _486) + _498;
      _500 = (_494 * _487) + _498;
      _501 = (_494 * _488) + _498;
      if (_colorGradingParams.w > 0.0f) {
        _506 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _523 = (((max(0.0f, (1.0f - _499)) - _499) * _506) + _499);
        _524 = (((max(0.0f, (1.0f - _500)) - _500) * _506) + _500);
        _525 = (((max(0.0f, (1.0f - _501)) - _501) * _506) + _501);
      } else {
        _523 = _499;
        _524 = _500;
        _525 = _501;
      }
      _531 = _userImageAdjust.y + 1.0f;
      _535 = _userImageAdjust.x + 0.5f;
      _536 = ((_523 + -0.5f) * _531) + _535;
      _537 = ((_524 + -0.5f) * _531) + _535;
      _538 = ((_525 + -0.5f) * _531) + _535;
      _568 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _579 = exp2(log2(saturate(mad(_colorBlind0.z, _538, mad(_colorBlind0.y, _537, (_colorBlind0.x * _536))))) * _568);
      _580 = exp2(log2(saturate(mad(_colorBlind1.z, _538, mad(_colorBlind1.y, _537, (_colorBlind1.x * _536))))) * _568);
      _581 = exp2(log2(saturate(mad(_colorBlind2.z, _538, mad(_colorBlind2.y, _537, (_colorBlind2.x * _536))))) * _568);
    } else {
      _579 = _486;
      _580 = _487;
      _581 = _488;
    }
  } else {
    _579 = _207;
    _580 = _208;
    _581 = _209;
  }
  if (_etcParams.y > 1.0f) {
    _590 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _591 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _595 = saturate(1.0f - (dot(float2(_590, _591), float2(_590, _591)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _600 = (_595 * _579);
    _601 = (_595 * _580);
    _602 = (_595 * _581);
  } else {
    _600 = _579;
    _601 = _580;
    _602 = _581;
  }
  if (_226 && (_etcParams.z > 0.0f)) {
    _632 = select((_600 <= 0.0031308f), (_600 * 12.92f), (((pow(_600, 0.41666666f)) * 1.055f) + -0.055f));
    _633 = select((_601 <= 0.0031308f), (_601 * 12.92f), (((pow(_601, 0.41666666f)) * 1.055f) + -0.055f));
    _634 = select((_602 <= 0.0031308f), (_602 * 12.92f), (((pow(_602, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _632 = _600;
    _633 = _601;
    _634 = _602;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _639 = (float)((uint)((uint)(_210)));
    if (!(_639 < _viewDir.w)) {
      if (!(_639 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _648 = _632;
        _649 = _633;
        _650 = _634;
      } else {
        _648 = 0.0f;
        _649 = 0.0f;
        _650 = 0.0f;
      }
    } else {
      _648 = 0.0f;
      _649 = 0.0f;
      _650 = 0.0f;
    }
  } else {
    _648 = _632;
    _649 = _633;
    _650 = _634;
  }
  _660 = exp2(log2(_648 * 0.0001f) * 0.15930176f);
  _661 = exp2(log2(_649 * 0.0001f) * 0.15930176f);
  _662 = exp2(log2(_650 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_660 * 18.6875f) + 1.0f)) * ((_660 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_661 * 18.6875f) + 1.0f)) * ((_661 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_662 * 18.6875f) + 1.0f)) * ((_662 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _223;
  return SV_Target;
}
