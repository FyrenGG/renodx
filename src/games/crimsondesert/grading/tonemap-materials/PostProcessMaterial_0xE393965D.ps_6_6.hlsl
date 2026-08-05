struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
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

typedef BindlessParameters_PostProcessDirectionalBlur BindlessParameters_PostProcessDirectionalBlur_t;
ConstantBuffer<BindlessParameters_PostProcessDirectionalBlur_t> BindlessParameters_PostProcessDirectionalBlur[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _16;
  float _24;
  int _27;
  int _35;
  int _38;
  float _46;
  int _49;
  float _57;
  int _60;
  float _68;
  int _70;
  float _71;
  float _72;
  float _73;
  float _209;
  float _414;
  float _415;
  float _416;
  float _509;
  float _510;
  float _511;
  float _569;
  float _570;
  float _571;
  float _590;
  float _591;
  float _592;
  float _622;
  float _623;
  float _624;
  float _638;
  float _639;
  float _640;
  float _76;
  float _87;
  float _90;
  float _93;
  float4 _98;
  float _104;
  float _107;
  float _110;
  float4 _115;
  float _121;
  float _124;
  float _127;
  float _146;
  float _165;
  float _184;
  int _185;
  uint _193;
  bool _212;
  float _218;
  float _237;
  float _253;
  float _269;
  float _270;
  float _274;
  float _277;
  float _280;
  float _287;
  float _294;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _306;
  float _307;
  float _323;
  float _339;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _376;
  float _377;
  float _378;
  float _379;
  float _382;
  float _385;
  float _389;
  float _393;
  float _397;
  float _417;
  float _429;
  float _441;
  float _453;
  float _460;
  float _467;
  float _474;
  float _480;
  float _481;
  float _483;
  float _485;
  float _487;
  float _492;
  float _513;
  float _515;
  float _518;
  float _521;
  float _524;
  float _530;
  float _576;
  float _579;
  float _585;
  float _627;
  float _644;
  float _648;
  float _652;
  int __loop_jump_target = -1;
  _16 = WaveReadLaneFirst(_materialIndex);
  _24 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_16 < (uint)170000), _16, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _70 = 1;
  _71 = 0.0f;
  _72 = 0.0f;
  _73 = 0.0f;
  while(true) {
    _76 = (_57 * 0.03125f) * ((float)((int)(_70)));
    _87 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_35 < (uint)65000), _35, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_24 * TEXCOORD.x), (_24 * TEXCOORD.y))))).x) * _68;
    _90 = (_87 - sin(_46)) * _76;
    _93 = (_87 + cos(_46)) * _76;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _98 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_90 + TEXCOORD.x), (_93 + TEXCOORD.y)));
    _104 = (pow(_98.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _107 = (pow(_98.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _110 = (pow(_98.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _115 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _90), (TEXCOORD.y - _93)));
    _121 = (pow(_115.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _124 = (pow(_115.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _127 = (pow(_115.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _146 = ((exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.851562f - (_104 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_121 + -0.8359375f)) / (18.851562f - (_121 * 18.6875f))) * 6.277395f)) * 10000.0f) + _73;
    _165 = ((exp2(log2(max(0.0f, (_107 + -0.8359375f)) / (18.851562f - (_107 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_124 + -0.8359375f)) / (18.851562f - (_124 * 18.6875f))) * 6.277395f)) * 10000.0f) + _72;
    _184 = ((exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.851562f - (_110 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_127 + -0.8359375f)) / (18.851562f - (_127 * 18.6875f))) * 6.277395f)) * 10000.0f) + _71;
    _185 = (int)(_70) + (int)(1);
    if (!(_185 == 33)) {
      _70 = _185;
      _71 = _184;
      _72 = _165;
      _73 = _146;
      continue;
    }
    _193 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _209 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _193, 0)))).x) & 127)))) + 0.5f);
    } else {
      _209 = _postProcessParams.x;
    }
    _212 = (_localToneMappingParams.w > 0.0f);
    if (_212) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_146, _165, _184));
      _460 = _rndx_tonemapped_color.x;
      _467 = _rndx_tonemapped_color.y;
      _474 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _480 = 1.0f - abs(_etcParams.w);
        _481 = saturate(_etcParams.w);  // [sem: expr_sat]
        _483 = (_480 * _460) + _481;
        _485 = (_480 * _467) + _481;
        _487 = (_480 * _474) + _481;
        if (_colorGradingParams.w > 0.0f) {
          _492 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _509 = (((max(0.0f, (1.0f - _487)) - _487) * _492) + _487);
          _510 = (((max(0.0f, (1.0f - _485)) - _485) * _492) + _485);
          _511 = (((max(0.0f, (1.0f - _483)) - _483) * _492) + _483);
        } else {
          _509 = _487;
          _510 = _485;
          _511 = _483;
        }
        _513 = _userImageAdjust.y + 1.0f;
        _515 = _userImageAdjust.x + 0.5f;
        _518 = ((_511 + -0.5f) * _513) + _515;
        _521 = ((_510 + -0.5f) * _513) + _515;
        _524 = ((_509 + -0.5f) * _513) + _515;
        _530 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _569 = exp2(log2(saturate(mad(_colorBlind0.z, _524, mad(_colorBlind0.y, _521, (_colorBlind0.x * _518))))) * _530);
        _570 = exp2(log2(saturate(mad(_colorBlind1.z, _524, mad(_colorBlind1.y, _521, (_colorBlind1.x * _518))))) * _530);
        _571 = exp2(log2(saturate(mad(_colorBlind2.z, _524, mad(_colorBlind2.y, _521, (_colorBlind2.x * _518))))) * _530);
      } else {
        _569 = _460;
        _570 = _467;
        _571 = _474;
      }
    } else {
      _569 = (_146 * 0.015625f);
      _570 = (_165 * 0.015625f);
      _571 = (_184 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _576 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _579 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _585 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_576, _579), float2(_576, _579))));  // [sem: expr_sat]
      _590 = (_585 * _569);
      _591 = (_585 * _570);
      _592 = (_585 * _571);
    } else {
      _590 = _569;
      _591 = _570;
      _592 = _571;
    }
    if (_212 && (_etcParams.z > 0.0f)) {
      _622 = select((_590 <= 0.0031308f), (_590 * 12.92f), (((pow(_590, 0.41666666f)) * 1.055f) + -0.055f));
      _623 = select((_591 <= 0.0031308f), (_591 * 12.92f), (((pow(_591, 0.41666666f)) * 1.055f) + -0.055f));
      _624 = select((_592 <= 0.0031308f), (_592 * 12.92f), (((pow(_592, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _622 = _590;
      _623 = _591;
      _624 = _592;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _627 = (float)((uint)((uint)(_193)));
      if (!(_627 < _viewDir.w)) {
        if (!(!(_627 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _638 = 0.0f;
          _639 = 0.0f;
          _640 = 0.0f;
        } else {
          _638 = _622;
          _639 = _623;
          _640 = _624;
        }
      } else {
        _638 = 0.0f;
        _639 = 0.0f;
        _640 = 0.0f;
      }
    } else {
      _638 = _622;
      _639 = _623;
      _640 = _624;
    }
    _644 = exp2(log2(_638 * 0.0001f) * 0.15930176f);
    _648 = exp2(log2(_639 * 0.0001f) * 0.15930176f);
    _652 = exp2(log2(_640 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_644 * 18.6875f) + 1.0f)) * ((_644 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_648 * 18.6875f) + 1.0f)) * ((_648 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_652 * 18.6875f) + 1.0f)) * ((_652 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _209;
    break;
  }
  return SV_Target;
}
