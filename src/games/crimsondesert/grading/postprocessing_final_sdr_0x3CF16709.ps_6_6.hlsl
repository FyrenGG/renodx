Texture2D<float4> __3__36__0__0__g_sceneColor : register(t28, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t37, space36);

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
  int _colorBlindParam : packoffset(c012.x);
  int _nightToneParm : packoffset(c012.y);
  int2 _padding : packoffset(c012.z);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _12[36];
  float4 _15 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));
  float _38;
  float _39;
  float _83;
  float _84;
  float _85;
  float _168;
  float _169;
  float _170;
  float _230;
  float _231;
  float _232;
  float _402;
  float _424;
  float _425;
  float _426;
  if (_postProcessParams.w > 0.0f) {
    float4 _32 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.x), TEXCOORD.y), 0.0f);
    float4 _35 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.y)), 0.0f);
    _38 = _32.x;
    _39 = _35.z;
  } else {
    _38 = _15.x;
    _39 = _15.z;
  }
  if (_slopeParams.w > 0.0f) {
    float _49 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    float _50 = _49 * 0.7692307829856873f;
    float _54 = frac(abs(_50));
    float _59 = _49 * 0.08130080997943878f;
    float _63 = frac(abs(_59));
    float _68 = ((select((_59 >= (-0.0f - _59)), _63, (-0.0f - _63)) * 1230.0f) + 10.0f) * ((select((_50 >= (-0.0f - _50)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    float _72 = frac(abs(_68));
    float _78 = ((0.007500052452087402f - (select((_68 >= (-0.0f - _68)), _72, (-0.0f - _72)) * 0.15000000596046448f)) * _slopeParams.w) + 1.0f;
    _83 = (_78 * _38);
    _84 = (_78 * _15.y);
    _85 = (_78 * _39);
  } else {
    _83 = _38;
    _84 = _15.y;
    _85 = _39;
  }
  uint _91 = uint(_screenSizeAndInvSize.x * TEXCOORD.x);
  uint _92 = uint(_screenSizeAndInvSize.y * TEXCOORD.y);
  float _94 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));
  if (!(((_94.x < 1.0000000116860974e-07f)) || ((_94.x == 1.0f)))) {
    float _102 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    float4 _109 = __3__36__0__0__g_sceneColor.Load(int3((int)(_91), ((int)(_92 + (uint)(-1))), 0));
    float4 _114 = __3__36__0__0__g_sceneColor.Load(int3(((int)(_91 + (uint)(-1))), (int)(_92), 0));
    float4 _119 = __3__36__0__0__g_sceneColor.Load(int3(((int)(_91 + 1u)), (int)(_92), 0));
    float4 _124 = __3__36__0__0__g_sceneColor.Load(int3((int)(_91), ((int)(_92 + 1u)), 0));
    float _135 = max(max(_84, _109.y), max(max(_114.y, _119.y), _124.y));
    float _142 = sqrt(saturate(min(min(min(_84, _109.y), min(min(_114.y, _119.y), _124.y)), (1.0f - _135)) * (1.0f / _135))) * (-1.0f / (((1.0f - _102) * 8.0f) + (_102 * 5.0f)));
    float _145 = 1.0f / ((_142 * 4.0f) + 1.0f);
    _168 = saturate(((_142 * (((_114.x + _109.x) + _119.x) + _124.x)) + _83) * _145);
    _169 = saturate(((_142 * (((_114.y + _109.y) + _119.y) + _124.y)) + _84) * _145);
    _170 = saturate(((_142 * (((_114.z + _109.z) + _119.z) + _124.z)) + _85) * _145);
  } else {
    _168 = _83;
    _169 = _84;
    _170 = _85;
  }
  float _201 = 1.0f - abs(_etcParams.w);
  float _205 = saturate(_etcParams.w);
  float _206 = (_201 * saturate(select((_168 < 0.040449999272823334f), (_168 * 0.07739938050508499f), exp2(log2((_168 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) + _205;
  float _207 = (_201 * saturate(select((_169 < 0.040449999272823334f), (_169 * 0.07739938050508499f), exp2(log2((_169 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) + _205;
  float _208 = (_201 * saturate(select((_170 < 0.040449999272823334f), (_170 * 0.07739938050508499f), exp2(log2((_170 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) + _205;
  if (_colorGradingParams.w > 0.0f) {
    float _213 = saturate(_colorGradingParams.w);
    _230 = (((max(0.0f, (1.0f - _206)) - _206) * _213) + _206);
    _231 = (((max(0.0f, (1.0f - _207)) - _207) * _213) + _207);
    _232 = (((max(0.0f, (1.0f - _208)) - _208) * _213) + _208);
  } else {
    _230 = _206;
    _231 = _207;
    _232 = _208;
  }
  float _239 = _userImageAdjust.y + 1.0f;
  float _243 = _userImageAdjust.x + 0.5f;
  float _244 = (_239 * (_230 + -0.5f)) + _243;
  float _245 = (_239 * (_231 + -0.5f)) + _243;
  float _246 = (_239 * (_232 + -0.5f)) + _243;
  _12[0] = 1.0f;
  _12[1] = 0.0f;
  _12[2] = 0.0f;
  _12[3] = 0.0f;
  _12[4] = 1.0f;
  _12[5] = 0.0f;
  _12[6] = 0.0f;
  _12[7] = 0.0f;
  _12[8] = 1.0f;
  _12[9] = 0.800000011920929f;
  _12[10] = 0.25832998752593994f;
  _12[11] = 0.0f;
  _12[12] = 0.20000000298023224f;
  _12[13] = 0.7416700124740601f;
  _12[14] = 0.14167000353336334f;
  _12[15] = 0.0f;
  _12[16] = 0.0f;
  _12[17] = 0.8583300113677979f;
  _12[18] = 0.8166700005531311f;
  _12[19] = 0.3333300054073334f;
  _12[20] = 0.0f;
  _12[21] = 0.1833299994468689f;
  _12[22] = 0.666670024394989f;
  _12[23] = 0.125f;
  _12[24] = 0.0f;
  _12[25] = 0.0f;
  _12[26] = 0.875f;
  _12[27] = 0.9666699767112732f;
  _12[28] = 0.0f;
  _12[29] = 0.0f;
  _12[30] = 0.033330000936985016f;
  _12[31] = 0.7333300113677979f;
  _12[32] = 0.1833299994468689f;
  _12[33] = 0.0f;
  _12[34] = 0.26666998863220215f;
  _12[35] = 0.8166700005531311f;
  int _287 = min(max(_colorBlindParam, 0), 3);
  float _342 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
  float _353 = (TEXCOORD.x * 2.0f) + -1.0f;
  float _354 = TEXCOORD.y * 2.0f;
  float _355 = 1.0f - _354;
  float _383 = mad((_projToPrevProj[2].w), 1.0000000116860974e-07f, mad((_projToPrevProj[1].w), _355, ((_projToPrevProj[0].w) * _353))) + (_projToPrevProj[3].w);
  float _386 = ((mad((_projToPrevProj[2].x), 1.0000000116860974e-07f, mad((_projToPrevProj[1].x), _355, ((_projToPrevProj[0].x) * _353))) + (_projToPrevProj[3].x)) / _383) - _353;
  float _387 = ((mad((_projToPrevProj[2].y), 1.0000000116860974e-07f, mad((_projToPrevProj[1].y), _355, ((_projToPrevProj[0].y) * _353))) + (_projToPrevProj[3].y)) / _383) - _355;
  if (_localToneMappingParams.w > 0.0f) {
    _402 = saturate(1.0f - (sqrt((_387 * _387) + (_386 * _386)) * 2.0f));
  } else {
    _402 = 1.0f;
  }
  float _405 = abs(_353);
  float _406 = abs(_354 + -1.0f);
  float _410 = saturate(1.0f - ((_402 * _postProcessParams.x) * dot(float2(_405, _406), float2(_405, _406))));
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _424 = (_410 * exp2(log2(saturate(mad((_12[((int)(6u + (_287 * 9)))]), _246, mad((_12[((int)(3u + (_287 * 9)))]), _245, ((_12[((int)(0u + (_287 * 9)))]) * _244))))) * _342));
      _425 = (_410 * exp2(log2(saturate(mad((_12[((int)(7u + (_287 * 9)))]), _246, mad((_12[((int)(4u + (_287 * 9)))]), _245, ((_12[((int)(1u + (_287 * 9)))]) * _244))))) * _342));
      _426 = (_410 * exp2(log2(saturate(mad((_12[((int)(8u + (_287 * 9)))]), _246, mad((_12[((int)(5u + (_287 * 9)))]), _245, ((_12[((int)(2u + (_287 * 9)))]) * _244))))) * _342));
    } else {
      _424 = 0.0f;
      _425 = 0.0f;
      _426 = 0.0f;
    }
  } else {
    _424 = 0.0f;
    _425 = 0.0f;
    _426 = 0.0f;
  }
  SV_Target.x = _424;
  SV_Target.y = _425;
  SV_Target.z = _426;
  SV_Target.w = _15.w;
  return SV_Target;
}