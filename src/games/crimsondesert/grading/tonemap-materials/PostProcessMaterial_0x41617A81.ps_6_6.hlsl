struct PostProcessMirrorStruct {
  float _ratio;
};

struct BindlessParameters_PostProcessMirror {
  PostProcessMirrorStruct BindlessParameters_PostProcessMirror;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time;
  float4 _timeNoScale;
  uint4 _frameNumber;
  float4 _screenSizeAndInvSize;
  float4 _bufferSizeAndInvSize;
  float4 _hiZUVScaleAndInvScale;
  float4 _resolutionScale;
  float4 _temporalReprojectionParams;
  float4 _viewPos;
  float4 _viewDir;
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
  float4 _temporalAAJitter;
  float4 _temporalAAJitterParams;
  float4 _frustumPlanes[6];
  float4 _frustumPlanesPrev[6];
  float4 _frustumCornerDirs[4];
  float4 _screenPercentage;
  float4 _nearFarProj;
  float4 _renderingOriginPos;
  float4 _renderingOriginPosPrev;
  float4 _lodMaskRenderRate;
  float4 _terrainNormalParams;
  int4 _hiZMapInfo;
  int4 _hiZMapInfoCurrent;
  float4 _treeParams;
  uint4 _clusterSize;
  uint4 _globalLightParams;
  float4 _bevelParams;
  float4 _variableRateShadingParams;
  float4 _cavityParams;
  float4 _customRenderPassSizeInvSize;
  uint4 _impostorParams;
  float4 _clusterDecalSizeAndInvSize;
  uint4 _globalWindParams;
  float4 _windFluidVolumeParams;
  float4 _windFluidTextureParams;
  float4 _raytracingAccelerationStructureOrigin;
  float4 _debugBaseColor;
  float4 _debugNormal;
  float4 _debugMaterial;
  float4 _debugMultiplier;
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
  float4 _debugCursorWorldPos;
  uint4 _debugRenderToggle01;
  uint4 _debugTreeShapeVariation;
  float4 _positionBasedDynamicsParameter;
  float _effectiveMetallicForVelvet;
  float _debugCharacterSnowRate;
  uint _systemRandomSeed;
  uint _skinnedMeshDebugFlag;
  float4 _viewPosShifted;
  float4 _viewPosShiftedPrev;
  float4 _viewTileRelativePos;
  float4 _viewTileRelativePosPrev;
  int2 _viewTileIndex;
  int2 _viewTileIndexPrev;
  float4 _worldVolume;
  float3 _diffViewPosAccurate;
  uint _isPhotosensitiveMode_isAllolwBlood;
  float _earthRadius;
  float3 _sceneConstantDummy;
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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessMirror BindlessParameters_PostProcessMirror_t;
ConstantBuffer<BindlessParameters_PostProcessMirror_t> BindlessParameters_PostProcessMirror[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _19;
  float _27;
  float4 _33;
  float _39;
  float _42;
  float _45;
  float _53;
  float _61;
  float _69;
  uint _70;
  float _87;
  float _292;
  float _293;
  float _294;
  float _387;
  float _388;
  float _389;
  float _447;
  float _448;
  float _449;
  float _468;
  float _469;
  float _470;
  float _500;
  float _501;
  float _502;
  float _516;
  float _517;
  float _518;
  bool _90;
  float _96;
  float _115;
  float _131;
  float _147;
  float _148;
  float _152;
  float _155;
  float _158;
  float _165;
  float _172;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _201;
  float _217;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _254;
  float _255;
  float _256;
  float _257;
  float _260;
  float _263;
  float _267;
  float _271;
  float _275;
  float _295;
  float _307;
  float _319;
  float _331;
  float _338;
  float _345;
  float _352;
  float _358;
  float _359;
  float _361;
  float _363;
  float _365;
  float _370;
  float _391;
  float _393;
  float _396;
  float _399;
  float _402;
  float _408;
  float _454;
  float _457;
  float _463;
  float _505;
  float _522;
  float _526;
  float _530;
  _19 = WaveReadLaneFirst(_materialIndex);
  _27 = WaveReadLaneFirst(BindlessParameters_PostProcessMirror[((int)((uint)((uint)(select(((uint)_19 < (uint)170000), _19, 0))) + (uint)(0)))].BindlessParameters_PostProcessMirror._ratio);
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(select((_27 > 0.5f), (1.0f - TEXCOORD.x), TEXCOORD.x), TEXCOORD.y));
  _39 = (pow(_33.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _42 = (pow(_33.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_33.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _53 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f);
  _61 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f);
  _69 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f);
  _70 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _87 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _70, 0)))).x) & 127)))) + 0.5f);
  } else {
    _87 = _postProcessParams.x;
  }
  _90 = (_localToneMappingParams.w > 0.0f);
  if (_90) {
    _96 = _exposure0.x * _userImageAdjust.z;
    _115 = exp2(_powerParams.x * log2(max(0.0f, (((_96 * max(0.0f, (((_53 * 17050.5f) - (_61 * 6217.9f)) - (_69 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))));
    _131 = exp2(log2(max(0.0f, (((_slopeParams.y * _96) * max(0.0f, (((_61 * 11408.0f) - (_53 * 1302.6001f)) - (_69 * 105.5f)))) + _offsetParams.y))) * _powerParams.y);
    _147 = exp2(log2(max(0.0f, (((_slopeParams.z * _96) * max(0.0f, (((_53 * -240.0f) - (_61 * 1289.7f)) + (_69 * 11529.699f)))) + _offsetParams.z))) * _powerParams.z);
    _148 = dot(float3(_115, _131, _147), float3(0.212671f, 0.71516f, 0.072169f));
    _152 = ((_115 - _148) * _powerParams.w) + _148;
    _155 = ((_131 - _148) * _powerParams.w) + _148;
    _158 = ((_147 - _148) * _powerParams.w) + _148;
    _165 = min(max(log2(mad(_158, 0.079223745f, mad(_155, 0.0784336f, (_152 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _172 = min(max(log2(mad(_158, 0.07916613f, mad(_155, 0.87846863f, (_152 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _179 = min(max(log2(mad(_158, 0.879143f, mad(_155, 0.0784336f, (_152 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _180 = _165 * 0.060606062f;
    _181 = _172 * 0.060606062f;
    _182 = _179 * 0.060606062f;
    _183 = _180 * _180;
    _184 = _181 * _181;
    _185 = _182 * _182;
    _201 = min(0.0f, (-0.0f - (((_165 * 0.0072181816f) + ((_183 * 0.4298f) + (((_183 * _183) * ((31.96f - (_165 * 2.4327273f)) + (_183 * 15.5f))) - ((_165 * 0.41624245f) * _183)))) + -0.00232f)));
    _217 = min(0.0f, (-0.0f - (((_172 * 0.0072181816f) + ((_184 * 0.4298f) + (((_184 * _184) * ((31.96f - (_172 * 2.4327273f)) + (_184 * 15.5f))) - ((_172 * 0.41624245f) * _184)))) + -0.00232f)));
    _233 = min(0.0f, (-0.0f - (((_179 * 0.0072181816f) + ((_185 * 0.4298f) + (((_185 * _185) * ((31.96f - (_179 * 2.4327273f)) + (_185 * 15.5f))) - ((_179 * 0.41624245f) * _185)))) + -0.00232f)));
    _234 = -0.0f - _201;
    _235 = -0.0f - _217;
    _236 = -0.0f - _233;
    _237 = dot(float3(_234, _235, _236), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _254 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _255 = -0.79999995f / _254;
      _256 = -1.2f / _254;
      _257 = 0.20000005f / _254;
      _260 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _263 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _267 = (_255 + 1.4f) + (_263 * (-0.39999998f - _255));
      _271 = (_256 + 1.6f) + (_263 * (-0.6f - _256));
      _275 = (_257 + 0.9f) + (_263 * (0.5f - _257));
      _292 = (lerp(_275, 1.4f, _260));  // [sem: blended]
      _293 = (lerp(_267, 1.0f, _260));  // [sem: blended]
      _294 = (lerp(_271, 1.2f, _260));  // [sem: blended]
    } else {
      _292 = 1.4f;  // [sem: blended]
      _293 = 1.0f;  // [sem: blended]
      _294 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _295 = 1.0f - _294;
    _307 = ((exp2(log2(((saturate((_201 * _201) * _234) * _295) + _294) * _234) * _293) - _237) * _292) + _237;
    _319 = ((exp2(log2(((saturate((_217 * _217) * _235) * _295) + _294) * _235) * _293) - _237) * _292) + _237;
    _331 = ((exp2(log2(((saturate((_233 * _233) * _236) * _295) + _294) * _236) * _293) - _237) * _292) + _237;
    _338 = saturate(exp2(log2(mad(_331, -0.09902974f, mad(_319, -0.09802088f, (_307 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _345 = saturate(exp2(log2(mad(_331, -0.098961174f, mad(_319, 1.1519032f, (_307 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _352 = saturate(exp2(log2(mad(_331, 1.1510737f, mad(_319, -0.09804345f, (_307 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _358 = 1.0f - abs(_etcParams.w);
      _359 = saturate(_etcParams.w);  // [sem: expr_sat]
      _361 = (_358 * _338) + _359;
      _363 = (_358 * _345) + _359;
      _365 = (_358 * _352) + _359;
      if (_colorGradingParams.w > 0.0f) {
        _370 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _387 = (((max(0.0f, (1.0f - _365)) - _365) * _370) + _365);
        _388 = (((max(0.0f, (1.0f - _363)) - _363) * _370) + _363);
        _389 = (((max(0.0f, (1.0f - _361)) - _361) * _370) + _361);
      } else {
        _387 = _365;
        _388 = _363;
        _389 = _361;
      }
      _391 = _userImageAdjust.y + 1.0f;
      _393 = _userImageAdjust.x + 0.5f;
      _396 = ((_389 + -0.5f) * _391) + _393;
      _399 = ((_388 + -0.5f) * _391) + _393;
      _402 = ((_387 + -0.5f) * _391) + _393;
      _408 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _447 = exp2(log2(saturate(mad(_colorBlind0.z, _402, mad(_colorBlind0.y, _399, (_colorBlind0.x * _396))))) * _408);
      _448 = exp2(log2(saturate(mad(_colorBlind1.z, _402, mad(_colorBlind1.y, _399, (_colorBlind1.x * _396))))) * _408);
      _449 = exp2(log2(saturate(mad(_colorBlind2.z, _402, mad(_colorBlind2.y, _399, (_colorBlind2.x * _396))))) * _408);
    } else {
      _447 = _338;
      _448 = _345;
      _449 = _352;
    }
  } else {
    _447 = (_53 * 10000.0f);
    _448 = (_61 * 10000.0f);
    _449 = (_69 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _454 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _457 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _463 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_454, _457), float2(_454, _457))));  // [sem: expr_sat]
    _468 = (_463 * _447);
    _469 = (_463 * _448);
    _470 = (_463 * _449);
  } else {
    _468 = _447;
    _469 = _448;
    _470 = _449;
  }
  if (_90 && (_etcParams.z > 0.0f)) {
    _500 = select((_468 <= 0.0031308f), (_468 * 12.92f), (((pow(_468, 0.41666666f)) * 1.055f) + -0.055f));
    _501 = select((_469 <= 0.0031308f), (_469 * 12.92f), (((pow(_469, 0.41666666f)) * 1.055f) + -0.055f));
    _502 = select((_470 <= 0.0031308f), (_470 * 12.92f), (((pow(_470, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _500 = _468;
    _501 = _469;
    _502 = _470;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _505 = (float)((uint)((uint)(_70)));
    if (!(_505 < _viewDir.w)) {
      if (!(!(_505 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _516 = 0.0f;
        _517 = 0.0f;
        _518 = 0.0f;
      } else {
        _516 = _500;
        _517 = _501;
        _518 = _502;
      }
    } else {
      _516 = 0.0f;
      _517 = 0.0f;
      _518 = 0.0f;
    }
  } else {
    _516 = _500;
    _517 = _501;
    _518 = _502;
  }
  _522 = exp2(log2(_516 * 0.0001f) * 0.15930176f);
  _526 = exp2(log2(_517 * 0.0001f) * 0.15930176f);
  _530 = exp2(log2(_518 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_522 * 18.6875f) + 1.0f)) * ((_522 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_526 * 18.6875f) + 1.0f)) * ((_526 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_530 * 18.6875f) + 1.0f)) * ((_530 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _87;
  return SV_Target;
}
