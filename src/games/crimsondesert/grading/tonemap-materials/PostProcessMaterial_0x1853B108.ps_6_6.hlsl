struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

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
    _57 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_29.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_29.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30);
    _59 = select(_57, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x), 0.0f);
    _265 = select(_57, 1.0f, 0.0f);
    _266 = _59;
    _267 = _59;
  } else {
    if (_passIndex == 1) {
      _66 = WaveReadLaneFirst(_materialIndex);
      _74 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _77 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _80 = _74 * (1.0f / _destTargetSizAndInv.x);
      _81 = _80 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _83 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_81 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _87 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _81), TEXCOORD.y));
      _90 = _80 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _92 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_90 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _96 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _90), TEXCOORD.y));
      _265 = ((((_87.x + _83.x) * 0.31621623f) + (_77.x * 0.22702703f)) + ((_96.x + _92.x) * 0.07027027f));
      _266 = max(max(max(max(max(0.0f, _77.y), _83.y), _87.y), _92.y), _96.y);
      _267 = 0.0f;
    } else {
      if (_passIndex == 2) {
        _117 = WaveReadLaneFirst(_materialIndex);
        _125 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_117 < (uint)170000), _117, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _128 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _131 = _125 * (1.0f / _destTargetSizAndInv.y);
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
        _265 = ((((_138.x + _134.x) * 0.31621623f) + (_128.x * 0.22702703f)) + ((_147.x + _143.x) * 0.07027027f));
        _266 = max(max(max(max(max(0.0f, _128.y), _134.y), _138.y), _143.y), _147.y);
        _267 = 0.0f;
      } else {
        if (_passIndex == 3) {
          _168 = WaveReadLaneFirst(_materialIndex);
          _176 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _179 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _182 = _176 * (1.0f / _destTargetSizAndInv.x);
          _183 = _182 * 1.3846154f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _185 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_183 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _189 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _183), TEXCOORD.y));
          _192 = _182 * 3.2307692f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _194 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_192 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _198 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _192), TEXCOORD.y));
          _265 = ((((_189.x + _185.x) * 0.31621623f) + (_179.x * 0.22702703f)) + ((_198.x + _194.x) * 0.07027027f));
          _266 = max(max(max(max(max(0.0f, _179.y), _185.y), _189.y), _194.y), _198.y);
          _267 = 0.0f;
        } else {
          if (_passIndex == 4) {
            _219 = WaveReadLaneFirst(_materialIndex);
            _227 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _230 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _233 = _227 * (1.0f / _destTargetSizAndInv.y);
            _234 = _233 * 1.3846154f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _236 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_234 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _240 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _234)));
            _243 = _233 * 3.2307692f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _245 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_243 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _249 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _243)));
            _265 = ((((_240.x + _236.x) * 0.31621623f) + (_230.x * 0.22702703f)) + ((_249.x + _245.x) * 0.07027027f));
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
  _268 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _281 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _268, 0)))).x) & 127)))) + 0.5f);
  } else {
    _281 = 1.0f;
  }
  _284 = (_localToneMappingParams.w > 0.0f);
  if (_284) {
    _290 = _userImageAdjust.z * _exposure0.x;
    _339 = exp2(log2(max(0.0f, (((_290 * max(0.0f, (((_265 * 1.70505f) - (_266 * 0.62179f)) - (_267 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _340 = exp2(log2(max(0.0f, (((max(0.0f, (((_266 * 1.1408f) - (_265 * 0.13026f)) - (_267 * 0.01055f))) * _290) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _341 = exp2(log2(max(0.0f, (((max(0.0f, (((_265 * -0.024f) - (_266 * 0.12897f)) + (_267 * 1.15297f))) * _290) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _343 = dot(float3(_339, _340, _341), float3(0.212671f, 0.71516f, 0.072169f));
    _350 = ((_339 - _343) * _powerParams.w) + _343;
    _351 = ((_340 - _343) * _powerParams.w) + _343;
    _352 = ((_341 - _343) * _powerParams.w) + _343;
    _371 = min(max(log2(mad(_352, 0.079223745f, mad(_351, 0.0784336f, (_350 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _372 = min(max(log2(mad(_352, 0.07916613f, mad(_351, 0.87846863f, (_350 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _373 = min(max(log2(mad(_352, 0.879143f, mad(_351, 0.0784336f, (_350 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _374 = _371 * 0.060606062f;
    _375 = _372 * 0.060606062f;
    _376 = _373 * 0.060606062f;
    _377 = _374 * _374;
    _378 = _375 * _375;
    _379 = _376 * _376;
    _425 = min(0.0f, (-0.0f - (((_371 * 0.0072181816f) + ((_377 * 0.4298f) + (((_377 * _377) * ((31.96f - (_371 * 2.4327273f)) + (_377 * 15.5f))) - ((_371 * 0.41624245f) * _377)))) + -0.00232f)));
    _426 = min(0.0f, (-0.0f - (((_372 * 0.0072181816f) + ((_378 * 0.4298f) + (((_378 * _378) * ((31.96f - (_372 * 2.4327273f)) + (_378 * 15.5f))) - ((_372 * 0.41624245f) * _378)))) + -0.00232f)));
    _427 = min(0.0f, (-0.0f - (((_373 * 0.0072181816f) + ((_379 * 0.4298f) + (((_379 * _379) * ((31.96f - (_373 * 2.4327273f)) + (_379 * 15.5f))) - ((_373 * 0.41624245f) * _379)))) + -0.00232f)));
    _428 = -0.0f - _425;
    _429 = -0.0f - _426;
    _430 = -0.0f - _427;
    _431 = dot(float3(_428, _429, _430), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _448 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _449 = -0.79999995f / _448;
      _450 = -1.2f / _448;
      _451 = 0.20000005f / _448;
      _457 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _460 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _467 = (_449 + 1.4f) + (_460 * (-0.39999998f - _449));
      _468 = (_450 + 1.6f) + (_460 * (-0.6f - _450));
      _469 = (_451 + 0.9f) + (_460 * (0.5f - _451));
      _486 = (lerp(_468, 1.2f, _457));  // [sem: blended]
      _487 = (lerp(_467, 1.0f, _457));  // [sem: blended]
      _488 = (lerp(_469, 1.4f, _457));  // [sem: blended]
    } else {
      _486 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _487 = 1.0f;  // [sem: blended]
      _488 = 1.4f;  // [sem: blended]
    }
    _498 = 1.0f - _486;
    _523 = ((exp2(log2(((saturate((_425 * _425) * _428) * _498) + _486) * _428) * _487) - _431) * _488) + _431;
    _524 = ((exp2(log2(((saturate((_426 * _426) * _429) * _498) + _486) * _429) * _487) - _431) * _488) + _431;
    _525 = ((exp2(log2(((saturate((_427 * _427) * _430) * _498) + _486) * _430) * _487) - _431) * _488) + _431;
    _544 = saturate(exp2(log2(mad(_525, -0.09902974f, mad(_524, -0.09802088f, (_523 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _545 = saturate(exp2(log2(mad(_525, -0.098961174f, mad(_524, 1.1519032f, (_523 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _546 = saturate(exp2(log2(mad(_525, 1.1510737f, mad(_524, -0.09804345f, (_523 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
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
      _626 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
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
    _653 = saturate(1.0f - (dot(float2(_648, _649), float2(_648, _649)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _658 = (_653 * _637);
    _659 = (_653 * _638);
    _660 = (_653 * _639);
  } else {
    _658 = _637;
    _659 = _638;
    _660 = _639;
  }
  if (_284 && (_etcParams.z > 0.0f)) {
    _690 = select((_658 <= 0.0031308f), (_658 * 12.92f), (((pow(_658, 0.41666666f)) * 1.055f) + -0.055f));
    _691 = select((_659 <= 0.0031308f), (_659 * 12.92f), (((pow(_659, 0.41666666f)) * 1.055f) + -0.055f));
    _692 = select((_660 <= 0.0031308f), (_660 * 12.92f), (((pow(_660, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _690 = _658;
    _691 = _659;
    _692 = _660;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _697 = (float)((uint)((uint)(_268)));
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
  SV_Target.x = _706;
  SV_Target.y = _707;
  SV_Target.z = _708;
  SV_Target.w = _281;
  return SV_Target;
}
