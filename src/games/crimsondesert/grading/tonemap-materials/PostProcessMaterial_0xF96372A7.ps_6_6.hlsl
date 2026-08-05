struct PostProcessAbyssEnter_CDStruct {
  float _scanRadius;
  float _startFade;
  uint _noiseTex;
  uint _noiseTex2;
  uint _effectType;
  float _ppAbyssEnterRatio;
};

struct BindlessParameters_PostProcessAbyssEnter_CD {
  PostProcessAbyssEnter_CDStruct BindlessParameters_PostProcessAbyssEnter_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

typedef BindlessParameters_PostProcessAbyssEnter_CD BindlessParameters_PostProcessAbyssEnter_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnter_CD_t> BindlessParameters_PostProcessAbyssEnter_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  bool _2;
  int _26;
  int _34;
  float _77;
  float _78;
  float _79;
  float _80;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _200;
  float _201;
  float _202;
  float _204;
  float _205;
  float _206;
  float _207;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _311;
  float _312;
  float _313;
  float _327;
  float _532;
  float _533;
  float _534;
  float _627;
  float _628;
  float _629;
  float _683;
  float _684;
  float _685;
  float _704;
  float _705;
  float _706;
  float _736;
  float _737;
  float _738;
  float _752;
  float _753;
  float _754;
  float _43;
  int _44;
  int _52;
  float4 _67;
  float _69;
  float _72;
  float _73;
  float _74;
  float _75;
  float _92;
  float _93;
  float4 _101;
  float _117;
  float _120;
  float _121;
  float _122;
  float _131;
  float _132;
  float _133;
  float _141;
  float _145;
  float _151;
  float _152;
  float _164;
  int _167;
  float _175;
  float _178;
  int _209;
  int _217;
  float4 _222;
  float _224;
  float _229;
  float _233;
  float _237;
  float _239;
  float _256;
  float _267;
  float _268;
  float _269;
  float _279;
  float _280;
  float _281;
  float _290;
  float _295;
  float _302;
  float _303;
  float _306;
  float _307;
  uint _314;
  bool _330;
  float _336;
  float _355;
  float _371;
  float _387;
  float _388;
  float _392;
  float _395;
  float _398;
  float _405;
  float _412;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _441;
  float _457;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _494;
  float _495;
  float _496;
  float _497;
  float _500;
  float _503;
  float _507;
  float _511;
  float _515;
  float _535;
  float _547;
  float _559;
  float _571;
  float _578;
  float _585;
  float _592;
  float _598;
  float _599;
  float _601;
  float _603;
  float _605;
  float _610;
  float _631;
  float _633;
  float _636;
  float _639;
  float _642;
  float _648;
  float _690;
  float _693;
  float _699;
  float _741;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _26 = WaveReadLaneFirst(_materialIndex);
  _34 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_26 < (uint)170000), _26, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
  if (_34 == 0) {
    _43 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _44 = WaveReadLaneFirst(_materialIndex);
    _52 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
    _67 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_52 < (uint)65000), _52, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_43 * TEXCOORD.x) - (_time.x * 0.22f)), ((_43 * TEXCOORD.y) - (_time.x * 0.18f))));
    _69 = _67.x + -0.3f;
    _72 = ((_67.x + -0.4f) * 10.471975f) + -1.5707964f;
    _73 = sin(_72);
    _74 = cos(_72);
    _75 = _69 * 0.03f;
    _77 = -1.0f;
    _78 = 0.0f;
    _79 = _75;
    _80 = _75;
    while(true) {
      _92 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_77 * _73) * _80)), (TEXCOORD.y - ((_77 * _74) * _79)))))).w) * 0.2f) + _78;
      _93 = _77 + 0.2f;
      if (!(!(_93 <= 1.0f))) {
        _204 = _93;
        _205 = (_92 * 0.9f);
        _206 = (_79 * 1.01f);
        _207 = (_80 * 1.01f);
        _77 = _204;
        _78 = _205;
        _79 = _206;
        _80 = _207;
        continue;
      }
      _101 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      if ((_92 * 0.54f) > 0.0f) {
        _109 = -1.0f;
        _110 = 0.0f;
        _111 = 0.0f;
        _112 = 0.0f;
        _113 = _75;
        _114 = _75;
        while(true) {
          _117 = TEXCOORD.x - ((_109 * _73) * _114);
          _120 = TEXCOORD.y - ((_109 * _74) * _113);
          _121 = _117 + -0.5f;
          _122 = _120 + -0.5f;
          _131 = ((_69 * 0.06f) * rsqrt(dot(float2(_121, _122), float2(_121, _122)))) * sqrt((_121 * _121) + (_122 * _122));
          _132 = _131 * _121;
          _133 = _131 * _122;
          _141 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_117 - _132), (_120 - _133))))).x) * 0.2f) + _112;
          _145 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_117, _120)))).y) * 0.2f) + _111;
          _151 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_132 + _117), (_133 + _120))))).z) * 0.2f) + _110;
          _152 = _109 + 0.2f;
          if (!(!(_152 <= 1.0f))) {
            _180 = _152;
            _181 = (_151 * 0.9f);
            _182 = (_145 * 0.9f);
            _183 = (_141 * 0.9f);
            _184 = (_113 * 1.01f);
            _185 = (_114 * 1.01f);
            _109 = _180;
            _110 = _181;
            _111 = _182;
            _112 = _183;
            _113 = _184;
            _114 = _185;
            continue;
          }
          _164 = 0.54f / max(0.001f, _exposure0.x);
          _167 = WaveReadLaneFirst(_materialIndex);
          _175 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._ppAbyssEnterRatio);
          _178 = saturate(_92 * 1.08f) * _175;
          if (!_2) {
            _180 = _109;
            _181 = _110;
            _182 = _111;
            _183 = _112;
            _184 = _113;
            _185 = _114;
            _109 = _180;
            _110 = _181;
            _111 = _182;
            _112 = _183;
            _113 = _184;
            _114 = _185;
            continue;
          }
          _200 = ((_178 * ((_164 * _151) - _101.z)) + _101.z);
          _201 = ((_178 * ((_164 * _145) - _101.y)) + _101.y);
          _202 = ((_178 * ((_164 * _141) - _101.x)) + _101.x);
          break;
        }
      } else {
        _200 = _101.z;
        _201 = _101.y;
        _202 = _101.x;
      }
      if (!_2) {
        _204 = _77;
        _205 = _78;
        _206 = _79;
        _207 = _80;
        _77 = _204;
        _78 = _205;
        _79 = _206;
        _80 = _207;
        continue;
      }
      _311 = _200;
      _312 = _201;
      _313 = _202;
      break;
    }
  } else {
    _209 = WaveReadLaneFirst(_materialIndex);
    _217 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_209 < (uint)170000), _209, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
    if (_217 == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _222 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _224 = _222.w + -0.4f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _229 = (float)((uint)((uint)(_srcTargetSizeAndInv.x * TEXCOORD.x)));
      _233 = (float)((uint)((uint)(_srcTargetSizeAndInv.y * TEXCOORD.y)));
      _237 = min(max(((_224 * 6.666667f) + -1.0f), -1.0f), 1.0f);
      _239 = (_224 * 0.020000001f) + -0.003f;
      _241 = -1.0f;
      _242 = 0.0f;
      _243 = 0.0f;
      _244 = 0.0f;
      _245 = _239;
      _246 = _239;
      while(true) {
        _256 = TEXCOORD.x - ((_246 * _241) * ((-0.5f - (_237 * 8.742278e-08f)) + frac(frac(dot(float2(_229, _233), float2(0.06711056f, 0.00583715f))) * 52.982918f)));
        _267 = TEXCOORD.y - ((_245 * _241) * ((-0.5f - _237) + frac(frac(dot(float2((_229 + 32.665f), (_233 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f)));
        _268 = _256 + -0.5f;
        _269 = _267 + -0.5f;
        _279 = (((_222.w + -0.3f) * 0.001f) * rsqrt(dot(float2(_268, _269), float2(_268, _269)))) * sqrt((_269 * _269) + (_268 * _268));
        _280 = _279 * _268;
        _281 = _279 * _269;
        _290 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_256 - _280), (_267 - _281))))).x) * 0.2f) + _244) * 0.5f;
        _295 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_256, _267)))).y) * 0.2f) + _243) * 0.5f;
        _302 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_280 + _256), (_281 + _267))))).z) * 0.2f) + _242) * 0.5f;
        _303 = _241 + 0.2f;
        if (!(!(_303 <= 1.0f))) {
          _306 = _246 * 0.2f;
          _307 = _245 * 0.2f;
          _241 = _303;
          _242 = _302;
          _243 = _295;
          _244 = _290;
          _245 = _307;
          _246 = _306;
          continue;
        }
        _311 = _302;
        _312 = _295;
        _313 = _290;
        break;
      }
    } else {
      _311 = 0.0f;
      _312 = 0.0f;
      _313 = 0.0f;
    }
  }
  _314 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _327 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _314, 0)))).x) & 127)))) + 0.5f);
  } else {
    _327 = 1.0f;
  }
  _330 = (_localToneMappingParams.w > 0.0f);
  if (_330) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_313, _312, _311));
    _578 = _rndx_tonemapped_color.x;
    _585 = _rndx_tonemapped_color.y;
    _592 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _598 = 1.0f - abs(_etcParams.w);
      _599 = saturate(_etcParams.w);  // [sem: expr_sat]
      _601 = (_598 * _578) + _599;
      _603 = (_598 * _585) + _599;
      _605 = (_598 * _592) + _599;
      if (_colorGradingParams.w > 0.0f) {
        _610 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _627 = (((max(0.0f, (1.0f - _605)) - _605) * _610) + _605);
        _628 = (((max(0.0f, (1.0f - _603)) - _603) * _610) + _603);
        _629 = (((max(0.0f, (1.0f - _601)) - _601) * _610) + _601);
      } else {
        _627 = _605;
        _628 = _603;
        _629 = _601;
      }
      _631 = _userImageAdjust.y + 1.0f;
      _633 = _userImageAdjust.x + 0.5f;
      _636 = ((_629 + -0.5f) * _631) + _633;
      _639 = ((_628 + -0.5f) * _631) + _633;
      _642 = ((_627 + -0.5f) * _631) + _633;
      _648 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _683 = exp2(log2(saturate(mad(_colorBlind2.z, _642, mad(_colorBlind2.y, _639, (_colorBlind2.x * _636))))) * _648);
      _684 = exp2(log2(saturate(mad(_colorBlind1.z, _642, mad(_colorBlind1.y, _639, (_colorBlind1.x * _636))))) * _648);
      _685 = exp2(log2(saturate(mad(_colorBlind0.z, _642, mad(_colorBlind0.y, _639, (_colorBlind0.x * _636))))) * _648);
    } else {
      _683 = _592;
      _684 = _585;
      _685 = _578;
    }
  } else {
    _683 = _311;
    _684 = _312;
    _685 = _313;
  }
  if (_etcParams.y > 1.0f) {
    _690 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _693 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _699 = saturate(1.0f - (dot(float2(_690, _693), float2(_690, _693)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _704 = (_699 * _683);
    _705 = (_699 * _684);
    _706 = (_699 * _685);
  } else {
    _704 = _683;
    _705 = _684;
    _706 = _685;
  }
  if (_330 && (_etcParams.z > 0.0f)) {
    _736 = select((_705 <= 0.0031308f), (_705 * 12.92f), (((pow(_705, 0.41666666f)) * 1.055f) + -0.055f));
    _737 = select((_706 <= 0.0031308f), (_706 * 12.92f), (((pow(_706, 0.41666666f)) * 1.055f) + -0.055f));
    _738 = select((_704 <= 0.0031308f), (_704 * 12.92f), (((pow(_704, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _736 = _705;
    _737 = _706;
    _738 = _704;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _741 = (float)((uint)((uint)(_314)));
    if (!(_741 < _viewDir.w)) {
      if (!(!(_741 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _752 = 0.0f;
        _753 = 0.0f;
        _754 = 0.0f;
      } else {
        _752 = _737;
        _753 = _736;
        _754 = _738;
      }
    } else {
      _752 = 0.0f;
      _753 = 0.0f;
      _754 = 0.0f;
    }
  } else {
    _752 = _737;
    _753 = _736;
    _754 = _738;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_752, _753, _754), _sunDirection.y, _moonDirection.y);
    _752 = _rndx_final_color.x;
    _753 = _rndx_final_color.y;
    _754 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _752;
  SV_Target.y = _753;
  SV_Target.z = _754;
  SV_Target.w = _327;
  return SV_Target;
}
