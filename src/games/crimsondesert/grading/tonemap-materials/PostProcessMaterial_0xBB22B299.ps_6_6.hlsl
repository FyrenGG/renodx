struct PostProcessHousingStruct {
  float _ratio;
  float3 _pivotPosition;
  float4 _rectMinMax;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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

struct BindlessParameters_PostProcessHousing {
  PostProcessHousingStruct BindlessParameters_PostProcessHousing;
};

typedef BindlessParameters_PostProcessHousing BindlessParameters_PostProcessHousing_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_t> BindlessParameters_PostProcessHousing[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _26;
  float _36;
  float _37;
  float _38;
  float _63;
  float _64;
  float _65;
  float _71;
  float _72;
  float _73;
  float _74;
  float _102;
  float _103;
  float _104;
  float _105;
  float _107;
  float _108;
  float _110;
  int _111;
  float _121;
  float _123;
  int _124;
  float _135;
  float _136;
  float _137;
  float _138;
  float _170;
  float _171;
  float _172;
  float _186;
  float _391;
  float _392;
  float _393;
  float _486;
  float _487;
  float _488;
  float _542;
  float _543;
  float _544;
  float _560;
  float _561;
  float _562;
  float _592;
  float _593;
  float _594;
  float _608;
  float _609;
  float _610;
  bool _165;
  uint _173;
  bool _189;
  float _195;
  float _244;
  float _245;
  float _246;
  float _248;
  float _255;
  float _256;
  float _257;
  float _276;
  float _277;
  float _278;
  float _279;
  float _280;
  float _281;
  float _282;
  float _283;
  float _284;
  float _330;
  float _331;
  float _332;
  float _333;
  float _334;
  float _335;
  float _336;
  float _353;
  float _354;
  float _355;
  float _356;
  float _362;
  float _365;
  float _372;
  float _373;
  float _374;
  float _403;
  float _428;
  float _429;
  float _430;
  float _449;
  float _450;
  float _451;
  float _457;
  float _461;
  float _462;
  float _463;
  float _464;
  float _469;
  float _494;
  float _498;
  float _499;
  float _500;
  float _501;
  float _531;
  float _550;
  float _551;
  float _555;
  float _599;
  float _620;
  float _621;
  float _622;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _36 = (pow(_26.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_26.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_26.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.8515625f - (_36 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.8515625f - (_37 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _65 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.8515625f - (_38 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _71 = (TEXCOORD.x * 2.0f) + -1.0f;
  _72 = TEXCOORD.y * 2.0f;
  _73 = 1.0f - _72;
  _74 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _102 = mad((_invViewProj[2].w), _74, mad((_invViewProj[1].w), _73, ((_invViewProj[0].w) * _71))) + (_invViewProj[3].w);
  _103 = (mad((_invViewProj[2].x), _74, mad((_invViewProj[1].x), _73, ((_invViewProj[0].x) * _71))) + (_invViewProj[3].x)) / _102;
  _104 = (mad((_invViewProj[2].z), _74, mad((_invViewProj[1].z), _73, ((_invViewProj[0].z) * _71))) + (_invViewProj[3].z)) / _102;
  _105 = abs(_103);
  _107 = frac(abs(_105));
  _108 = abs(_104);
  _110 = frac(abs(_108));
  _111 = WaveReadLaneFirst(_materialIndex);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)(select(((uint)_111 < (uint)170000), _111, 0)) + 0u))].BindlessParameters_PostProcessHousing._pivotPosition.x);
  _123 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)(select(((uint)_111 < (uint)170000), _111, 0)) + 0u))].BindlessParameters_PostProcessHousing._pivotPosition.z);
  _124 = WaveReadLaneFirst(_materialIndex);
  _135 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)(select(((uint)_124 < (uint)170000), _124, 0)) + 0u))].BindlessParameters_PostProcessHousing._rectMinMax.x);
  _136 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)(select(((uint)_124 < (uint)170000), _124, 0)) + 0u))].BindlessParameters_PostProcessHousing._rectMinMax.y);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)(select(((uint)_124 < (uint)170000), _124, 0)) + 0u))].BindlessParameters_PostProcessHousing._rectMinMax.z);
  _138 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)(select(((uint)_124 < (uint)170000), _124, 0)) + 0u))].BindlessParameters_PostProcessHousing._rectMinMax.w);
  if (((_103 > (_135 + _121)) && (_104 > (_136 + _123))) && (_103 < (_137 + _121))) {
    _165 = (_104 < (_138 + _123)) && ((abs(1.0f - select((_108 >= (-0.0f - _108)), _110, (-0.0f - _110))) < 0.03125f) || (abs(1.0f - select((_105 >= (-0.0f - _105)), _107, (-0.0f - _107))) < 0.03125f));
    _170 = select(_165, 256.0f, _63);
    _171 = select(_165, 256.0f, _64);
    _172 = select(_165, 256.0f, _65);
  } else {
    _170 = _63;
    _171 = _64;
    _172 = _65;
  }
  _173 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _186 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _173, 0)))).x) & 127)))) + 0.5f);
  } else {
    _186 = _postProcessParams.x;
  }
  _189 = (_localToneMappingParams.w > 0.0f);
  if (_189) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_170, _171, _172));
    _449 = _rndx_tonemapped_color.x;
    _450 = _rndx_tonemapped_color.y;
    _451 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _457 = 1.0f - abs(_etcParams.w);
      _461 = saturate(_etcParams.w);  // [sem: expr_sat]
      _462 = (_457 * _449) + _461;
      _463 = (_457 * _450) + _461;
      _464 = (_457 * _451) + _461;
      if (_colorGradingParams.w > 0.0f) {
        _469 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _486 = (((max(0.0f, (1.0f - _462)) - _462) * _469) + _462);
        _487 = (((max(0.0f, (1.0f - _463)) - _463) * _469) + _463);
        _488 = (((max(0.0f, (1.0f - _464)) - _464) * _469) + _464);
      } else {
        _486 = _462;
        _487 = _463;
        _488 = _464;
      }
      _494 = _userImageAdjust.y + 1.0f;
      _498 = _userImageAdjust.x + 0.5f;
      _499 = ((_486 + -0.5f) * _494) + _498;
      _500 = ((_487 + -0.5f) * _494) + _498;
      _501 = ((_488 + -0.5f) * _494) + _498;
      _531 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _542 = exp2(log2(saturate(mad(_colorBlind0.z, _501, mad(_colorBlind0.y, _500, (_colorBlind0.x * _499))))) * _531);
      _543 = exp2(log2(saturate(mad(_colorBlind1.z, _501, mad(_colorBlind1.y, _500, (_colorBlind1.x * _499))))) * _531);
      _544 = exp2(log2(saturate(mad(_colorBlind2.z, _501, mad(_colorBlind2.y, _500, (_colorBlind2.x * _499))))) * _531);
    } else {
      _542 = _449;
      _543 = _450;
      _544 = _451;
    }
  } else {
    _542 = _170;
    _543 = _171;
    _544 = _172;
  }
  if (_etcParams.y > 1.0f) {
    _550 = abs(_71);
    _551 = abs(_72 + -1.0f);
    _555 = saturate(1.0f - (dot(float2(_550, _551), float2(_550, _551)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _560 = (_555 * _542);
    _561 = (_555 * _543);
    _562 = (_555 * _544);
  } else {
    _560 = _542;
    _561 = _543;
    _562 = _544;
  }
  if (_189 && (_etcParams.z > 0.0f)) {
    _592 = select((_560 <= 0.0031308000907301903f), (_560 * 12.920000076293945f), (((pow(_560, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _593 = select((_561 <= 0.0031308000907301903f), (_561 * 12.920000076293945f), (((pow(_561, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _594 = select((_562 <= 0.0031308000907301903f), (_562 * 12.920000076293945f), (((pow(_562, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _592 = _560;
    _593 = _561;
    _594 = _562;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _599 = (float)((uint)_173);
    if (!(_599 < _viewDir.w)) {
      if (!(_599 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _608 = _592;
        _609 = _593;
        _610 = _594;
      } else {
        _608 = 0.0f;
        _609 = 0.0f;
        _610 = 0.0f;
      }
    } else {
      _608 = 0.0f;
      _609 = 0.0f;
      _610 = 0.0f;
    }
  } else {
    _608 = _592;
    _609 = _593;
    _610 = _594;
  }
  _620 = exp2(log2(_608 * 9.999999747378752e-05f) * 0.1593017578125f);
  _621 = exp2(log2(_609 * 9.999999747378752e-05f) * 0.1593017578125f);
  _622 = exp2(log2(_610 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_620 * 18.6875f) + 1.0f)) * ((_620 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_621 * 18.6875f) + 1.0f)) * ((_621 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_622 * 18.6875f) + 1.0f)) * ((_622 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _186;
  return SV_Target;
}
