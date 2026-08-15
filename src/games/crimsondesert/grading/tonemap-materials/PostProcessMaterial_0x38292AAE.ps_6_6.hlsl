struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};

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
  float4 _32;
  float _42;
  float _43;
  float _44;
  float _66;
  float _67;
  float _68;
  float _69;
  float _70;
  float _71;
  int _72;
  float _80;
  float _227;
  float _228;
  float _229;
  float _243;
  float _448;
  float _449;
  float _450;
  float _543;
  float _544;
  float _545;
  float _599;
  float _600;
  float _601;
  float _620;
  float _621;
  float _622;
  float _652;
  float _653;
  float _654;
  float _668;
  float _669;
  float _670;
  float _84;
  int _91;
  int _99;
  int _108;
  float _116;
  int _117;
  float _125;
  float _127;
  float _130;
  float _131;
  int _167;
  float _175;
  float4 _178;
  float _188;
  float _189;
  float _190;
  float _219;
  uint _230;
  bool _246;
  float _252;
  float _301;
  float _302;
  float _303;
  float _305;
  float _312;
  float _313;
  float _314;
  float _333;
  float _334;
  float _335;
  float _336;
  float _337;
  float _338;
  float _339;
  float _340;
  float _341;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _392;
  float _393;
  float _410;
  float _411;
  float _412;
  float _413;
  float _419;
  float _422;
  float _429;
  float _430;
  float _431;
  float _460;
  float _485;
  float _486;
  float _487;
  float _506;
  float _507;
  float _508;
  float _514;
  float _518;
  float _519;
  float _520;
  float _521;
  float _526;
  float _551;
  float _555;
  float _556;
  float _557;
  float _558;
  float _588;
  float _610;
  float _611;
  float _615;
  float _659;
  float _680;
  float _681;
  float _682;
  _32 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _42 = (pow(_32.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_32.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = (pow(_32.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _66 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f);
  _67 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f);
  _68 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f);
  _69 = _66 * 10000.0f;
  _70 = _67 * 10000.0f;
  _71 = _68 * 10000.0f;
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_80 >= 0.001f))) {
    _84 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _91 = WaveReadLaneFirst(_materialIndex);
    _99 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _108 = WaveReadLaneFirst(_materialIndex);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _117 = WaveReadLaneFirst(_materialIndex);
    _125 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_117 < (uint)170000), _117, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _127 = _125 * (_116 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_99 < (uint)65000), _99, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _84), ((_time.x * 0.3f) + (_84 * TEXCOORD.y)))))).y));
    _130 = (_127 * 0.01f) + TEXCOORD.x;
    _131 = (_127 * 0.05f) + TEXCOORD.y;
    _167 = WaveReadLaneFirst(_materialIndex);
    _175 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _178 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _188 = (pow(_178.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _189 = (pow(_178.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _190 = (pow(_178.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _219 = (saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _130) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _131) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _130)), ((int)(_customRenderPassSizeInvSize.y * _131)), 0)))).x))))) * 10000.0f) * _175;
    _227 = (((exp2(log2(max(0.0f, (_188 + -0.8359375f)) / (18.851562f - (_188 * 18.6875f))) * 6.277395f) - _66) * _219) + _69);
    _228 = (((exp2(log2(max(0.0f, (_189 + -0.8359375f)) / (18.851562f - (_189 * 18.6875f))) * 6.277395f) - _67) * _219) + _70);
    _229 = (((exp2(log2(max(0.0f, (_190 + -0.8359375f)) / (18.851562f - (_190 * 18.6875f))) * 6.277395f) - _68) * _219) + _71);
  } else {
    _227 = _69;
    _228 = _70;
    _229 = _71;
  }
  _230 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _243 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _230, 0)))).x) & 127)))) + 0.5f);
  } else {
    _243 = 1.0f;
  }
  _246 = (_localToneMappingParams.w > 0.0f);
  if (_246) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_227, _228, _229));
    _506 = _rndx_tonemapped_color.x;
    _507 = _rndx_tonemapped_color.y;
    _508 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _514 = 1.0f - abs(_etcParams.w);
      _518 = saturate(_etcParams.w);  // [sem: expr_sat]
      _519 = (_514 * _506) + _518;
      _520 = (_514 * _507) + _518;
      _521 = (_514 * _508) + _518;
      if (_colorGradingParams.w > 0.0f) {
        _526 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _543 = (((max(0.0f, (1.0f - _519)) - _519) * _526) + _519);
        _544 = (((max(0.0f, (1.0f - _520)) - _520) * _526) + _520);
        _545 = (((max(0.0f, (1.0f - _521)) - _521) * _526) + _521);
      } else {
        _543 = _519;
        _544 = _520;
        _545 = _521;
      }
      _551 = _userImageAdjust.y + 1.0f;
      _555 = _userImageAdjust.x + 0.5f;
      _556 = ((_543 + -0.5f) * _551) + _555;
      _557 = ((_544 + -0.5f) * _551) + _555;
      _558 = ((_545 + -0.5f) * _551) + _555;
      _588 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _599 = exp2(log2(saturate(mad(_colorBlind0.z, _558, mad(_colorBlind0.y, _557, (_colorBlind0.x * _556))))) * _588);
      _600 = exp2(log2(saturate(mad(_colorBlind1.z, _558, mad(_colorBlind1.y, _557, (_colorBlind1.x * _556))))) * _588);
      _601 = exp2(log2(saturate(mad(_colorBlind2.z, _558, mad(_colorBlind2.y, _557, (_colorBlind2.x * _556))))) * _588);
    } else {
      _599 = _506;
      _600 = _507;
      _601 = _508;
    }
  } else {
    _599 = _227;
    _600 = _228;
    _601 = _229;
  }
  if (_etcParams.y > 1.0f) {
    _610 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _611 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _615 = saturate(1.0f - (dot(float2(_610, _611), float2(_610, _611)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _620 = (_615 * _599);
    _621 = (_615 * _600);
    _622 = (_615 * _601);
  } else {
    _620 = _599;
    _621 = _600;
    _622 = _601;
  }
  if (_246 && (_etcParams.z > 0.0f)) {
    _652 = select((_620 <= 0.0031308f), (_620 * 12.92f), (((pow(_620, 0.41666666f)) * 1.055f) + -0.055f));
    _653 = select((_621 <= 0.0031308f), (_621 * 12.92f), (((pow(_621, 0.41666666f)) * 1.055f) + -0.055f));
    _654 = select((_622 <= 0.0031308f), (_622 * 12.92f), (((pow(_622, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _652 = _620;
    _653 = _621;
    _654 = _622;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _659 = (float)((uint)((uint)(_230)));
    if (!(_659 < _viewDir.w)) {
      if (!(_659 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _668 = _652;
        _669 = _653;
        _670 = _654;
      } else {
        _668 = 0.0f;
        _669 = 0.0f;
        _670 = 0.0f;
      }
    } else {
      _668 = 0.0f;
      _669 = 0.0f;
      _670 = 0.0f;
    }
  } else {
    _668 = _652;
    _669 = _653;
    _670 = _654;
  }
  _680 = exp2(log2(_668 * 0.0001f) * 0.15930176f);
  _681 = exp2(log2(_669 * 0.0001f) * 0.15930176f);
  _682 = exp2(log2(_670 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_680 * 18.6875f) + 1.0f)) * ((_680 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_681 * 18.6875f) + 1.0f)) * ((_681 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_682 * 18.6875f) + 1.0f)) * ((_682 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _243;
  return SV_Target;
}
