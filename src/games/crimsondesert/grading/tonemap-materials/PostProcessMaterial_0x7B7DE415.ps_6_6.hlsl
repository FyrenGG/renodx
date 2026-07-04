struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};

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
  float _265;
  float _266;
  float _267;
  float _281;
  float _486;
  float _487;
  float _488;
  float _581;
  float _582;
  float _583;
  float _637;
  float _638;
  float _639;
  float _658;
  float _659;
  float _660;
  float _690;
  float _691;
  float _692;
  float _706;
  float _707;
  float _708;
  uint2 _29;
  bool _57;
  float _59;
  int _66;
  float _74;
  float4 _77;
  float _80;
  float _81;
  float4 _83;
  float4 _87;
  float _90;
  float4 _92;
  float4 _96;
  int _117;
  float _125;
  float4 _128;
  float _131;
  float _132;
  float4 _134;
  float4 _138;
  float _141;
  float4 _143;
  float4 _147;
  int _168;
  float _176;
  float4 _179;
  float _182;
  float _183;
  float4 _185;
  float4 _189;
  float _192;
  float4 _194;
  float4 _198;
  int _219;
  float _227;
  float4 _230;
  float _233;
  float _234;
  float4 _236;
  float4 _240;
  float _243;
  float4 _245;
  float4 _249;
  uint _268;
  bool _284;
  float _290;
  float _339;
  float _340;
  float _341;
  float _343;
  float _350;
  float _351;
  float _352;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _376;
  float _377;
  float _378;
  float _379;
  float _425;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _431;
  float _448;
  float _449;
  float _450;
  float _451;
  float _457;
  float _460;
  float _467;
  float _468;
  float _469;
  float _498;
  float _523;
  float _524;
  float _525;
  float _544;
  float _545;
  float _546;
  float _552;
  float _556;
  float _557;
  float _558;
  float _559;
  float _564;
  float _589;
  float _593;
  float _594;
  float _595;
  float _596;
  float _626;
  float _648;
  float _649;
  float _653;
  float _697;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_29.x, _29.y);
    _57 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_29.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_29.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255) == 30);
    _59 = select(_57, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * TEXCOORD.x), int(_customRenderPassSizeInvSize.y * TEXCOORD.y), 0)))).x), 0.0f);
    _265 = select(_57, 1.0f, 0.0f);
    _266 = _59;
    _267 = _59;
  } else {
    if (_passIndex == 1) {
      _66 = WaveReadLaneFirst(_materialIndex);
      _74 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)(select(((uint)_66 < (uint)170000), _66, 0)) + 0u))].BindlessParameters_PostProcessOutlineExample._outlineSize);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _77 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _80 = _74 * (1.0f / _destTargetSizAndInv.x);
      _81 = _80 * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _83 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_81 + TEXCOORD.x), TEXCOORD.y));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _87 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _81), TEXCOORD.y));
      _90 = _80 * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _92 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_90 + TEXCOORD.x), TEXCOORD.y));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _96 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _90), TEXCOORD.y));
      _265 = ((((_87.x + _83.x) * 0.31621623039245605f) + (_77.x * 0.227027028799057f)) + ((_96.x + _92.x) * 0.07027027010917664f));
      _266 = max(max(max(max(max(0.0f, _77.y), _83.y), _87.y), _92.y), _96.y);
      _267 = 0.0f;
    } else {
      if (_passIndex == 2) {
        _117 = WaveReadLaneFirst(_materialIndex);
        _125 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)(select(((uint)_117 < (uint)170000), _117, 0)) + 0u))].BindlessParameters_PostProcessOutlineExample._outlineSize);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _128 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _131 = _125 * (1.0f / _destTargetSizAndInv.y);
        _132 = _131 * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _134 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_132 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _138 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _132)));
        _141 = _131 * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _143 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_141 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _147 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _141)));
        _265 = ((((_138.x + _134.x) * 0.31621623039245605f) + (_128.x * 0.227027028799057f)) + ((_147.x + _143.x) * 0.07027027010917664f));
        _266 = max(max(max(max(max(0.0f, _128.y), _134.y), _138.y), _143.y), _147.y);
        _267 = 0.0f;
      } else {
        if (_passIndex == 3) {
          _168 = WaveReadLaneFirst(_materialIndex);
          _176 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)(select(((uint)_168 < (uint)170000), _168, 0)) + 0u))].BindlessParameters_PostProcessOutlineExample._outlineSize);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _179 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _182 = _176 * (1.0f / _destTargetSizAndInv.x);
          _183 = _182 * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _185 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_183 + TEXCOORD.x), TEXCOORD.y));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _189 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _183), TEXCOORD.y));
          _192 = _182 * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _194 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_192 + TEXCOORD.x), TEXCOORD.y));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _198 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _192), TEXCOORD.y));
          _265 = ((((_189.x + _185.x) * 0.31621623039245605f) + (_179.x * 0.227027028799057f)) + ((_198.x + _194.x) * 0.07027027010917664f));
          _266 = max(max(max(max(max(0.0f, _179.y), _185.y), _189.y), _194.y), _198.y);
          _267 = 0.0f;
        } else {
          if (_passIndex == 4) {
            _219 = WaveReadLaneFirst(_materialIndex);
            _227 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)(select(((uint)_219 < (uint)170000), _219, 0)) + 0u))].BindlessParameters_PostProcessOutlineExample._outlineSize);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _230 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _233 = _227 * (1.0f / _destTargetSizAndInv.y);
            _234 = _233 * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _236 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_234 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _240 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _234)));
            _243 = _233 * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _245 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_243 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _249 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _243)));
            _265 = ((((_240.x + _236.x) * 0.31621623039245605f) + (_230.x * 0.227027028799057f)) + ((_249.x + _245.x) * 0.07027027010917664f));
            _266 = max(max(max(max(max(0.0f, _230.y), _236.y), _240.y), _245.y), _249.y);
            _267 = 0.0f;
          } else {
            _265 = 0.0f;
            _266 = 0.0f;
            _267 = 0.0f;
          }
        }
      }
    }
  }
  _268 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _281 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _268, 0)))).x) & 127)))) + 0.5f);
  } else {
    _281 = 1.0f;
  }
  _284 = (_localToneMappingParams.w > 0.0f);
  if (_284) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_265, _266, _267));
    _544 = _rndx_tonemapped_color.x;
    _545 = _rndx_tonemapped_color.y;
    _546 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _552 = 1.0f - abs(_etcParams.w);
      _556 = saturate(_etcParams.w);  // [sem: expr_sat]
      _557 = (_552 * _544) + _556;
      _558 = (_552 * _545) + _556;
      _559 = (_552 * _546) + _556;
      if (_colorGradingParams.w > 0.0f) {
        _564 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _581 = (((max(0.0f, (1.0f - _557)) - _557) * _564) + _557);
        _582 = (((max(0.0f, (1.0f - _558)) - _558) * _564) + _558);
        _583 = (((max(0.0f, (1.0f - _559)) - _559) * _564) + _559);
      } else {
        _581 = _557;
        _582 = _558;
        _583 = _559;
      }
      _589 = _userImageAdjust.y + 1.0f;
      _593 = _userImageAdjust.x + 0.5f;
      _594 = ((_581 + -0.5f) * _589) + _593;
      _595 = ((_582 + -0.5f) * _589) + _593;
      _596 = ((_583 + -0.5f) * _589) + _593;
      _626 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _637 = exp2(log2(saturate(mad(_colorBlind0.z, _596, mad(_colorBlind0.y, _595, (_colorBlind0.x * _594))))) * _626);
      _638 = exp2(log2(saturate(mad(_colorBlind1.z, _596, mad(_colorBlind1.y, _595, (_colorBlind1.x * _594))))) * _626);
      _639 = exp2(log2(saturate(mad(_colorBlind2.z, _596, mad(_colorBlind2.y, _595, (_colorBlind2.x * _594))))) * _626);
    } else {
      _637 = _544;
      _638 = _545;
      _639 = _546;
    }
  } else {
    _637 = _265;
    _638 = _266;
    _639 = _267;
  }
  if (_etcParams.y > 1.0f) {
    _648 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _649 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _653 = saturate(1.0f - (dot(float2(_648, _649), float2(_648, _649)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _658 = (_653 * _637);
    _659 = (_653 * _638);
    _660 = (_653 * _639);
  } else {
    _658 = _637;
    _659 = _638;
    _660 = _639;
  }
  if (_284 && (_etcParams.z > 0.0f)) {
    _690 = select((_658 <= 0.0031308000907301903f), (_658 * 12.920000076293945f), (((pow(_658, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _691 = select((_659 <= 0.0031308000907301903f), (_659 * 12.920000076293945f), (((pow(_659, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _692 = select((_660 <= 0.0031308000907301903f), (_660 * 12.920000076293945f), (((pow(_660, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _690 = _658;
    _691 = _659;
    _692 = _660;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _697 = (float)((uint)_268);
    if (!(_697 < _viewDir.w)) {
      if (!(_697 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _706 = _690;
        _707 = _691;
        _708 = _692;
      } else {
        _706 = 0.0f;
        _707 = 0.0f;
        _708 = 0.0f;
      }
    } else {
      _706 = 0.0f;
      _707 = 0.0f;
      _708 = 0.0f;
    }
  } else {
    _706 = _690;
    _707 = _691;
    _708 = _692;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_706, _707, _708), _sunDirection.y, _moonDirection.y);
    _706 = _rndx_final_color.x;
    _707 = _rndx_final_color.y;
    _708 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _706;
  SV_Target.y = _707;
  SV_Target.z = _708;
  SV_Target.w = _281;
  return SV_Target;
}
