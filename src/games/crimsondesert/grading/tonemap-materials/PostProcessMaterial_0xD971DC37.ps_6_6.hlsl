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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

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
  float4 _25;
  float _31;
  float _34;
  float _37;
  float _45;
  float _53;
  float _61;
  float _62;
  float _63;
  float _64;
  int _67;
  float _75;
  float _76;
  float _99;
  float _100;
  float _101;
  float _131;
  float _132;
  float _133;
  float _204;
  float _205;
  float _206;
  float _260;
  float _261;
  float _262;
  float _444;
  float _445;
  float _446;
  float _479;
  float _480;
  float _481;
  float _495;
  float _700;
  float _701;
  float _702;
  float _795;
  float _796;
  float _797;
  float _851;
  float _852;
  float _853;
  float _872;
  float _873;
  float _874;
  float _904;
  float _905;
  float _906;
  float _920;
  float _921;
  float _922;
  float _83;
  float _86;
  float _87;
  float _94;
  int _104;
  float _112;
  bool _113;
  float _120;
  int _136;
  float _144;
  int _150;
  float _158;
  float _159;
  float _175;
  float _179;
  float _185;
  float _187;
  float4 _209;
  float _215;
  float _218;
  float _221;
  float _230;
  int _233;
  float _241;
  float _255;
  int _265;
  float _273;
  float _280;
  float _284;
  float _288;
  float _294;
  float _295;
  float _296;
  float _297;
  float _301;
  float _305;
  float _309;
  float _311;
  float _313;
  float _316;
  float _328;
  float _337;
  float _346;
  float _355;
  float _357;
  float _367;
  float _379;
  int _382;
  float _390;
  int _393;
  int _401;
  float4 _416;
  float _420;
  float _427;
  int _449;
  float _457;
  float _458;
  float _471;
  uint _482;
  bool _498;
  float _504;
  float _523;
  float _539;
  float _555;
  float _556;
  float _560;
  float _563;
  float _566;
  float _573;
  float _580;
  float _587;
  float _588;
  float _589;
  float _590;
  float _591;
  float _592;
  float _593;
  float _609;
  float _625;
  float _641;
  float _642;
  float _643;
  float _644;
  float _645;
  float _662;
  float _663;
  float _664;
  float _665;
  float _668;
  float _671;
  float _675;
  float _679;
  float _683;
  float _703;
  float _715;
  float _727;
  float _739;
  float _746;
  float _753;
  float _760;
  float _766;
  float _767;
  float _769;
  float _771;
  float _773;
  float _778;
  float _799;
  float _801;
  float _804;
  float _807;
  float _810;
  float _816;
  float _858;
  float _861;
  float _867;
  float _909;
  float _926;
  float _930;
  float _934;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f);
  _53 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f);
  _61 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f);
  _62 = _45 * 10000.0f;
  _63 = _53 * 10000.0f;
  _64 = _61 * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _76 = saturate(_75);  // [sem: _75_sat]
  [branch]
  if (!(_76 < 0.0001f)) {
    _83 = 1.0f / max(0.001f, abs(_exposure0.x));
    _86 = _exposure2.x * _83;
    _87 = _83 * 0.5f;
    [branch]
    if (!(!(_76 >= 0.001f))) {
      _94 = ((_76 * 10000.0f) * (1.0f - saturate(_86))) + 10000.0f;
      _99 = (_94 * _61);
      _100 = (_94 * _53);
      _101 = (_94 * _45);
    } else {
      _99 = _64;
      _100 = _63;
      _101 = _62;
    }
    _104 = WaveReadLaneFirst(_materialIndex);
    _112 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._contrastRatio);
    _113 = (_76 >= 0.001f);
    if (!((_112 == 1.0f) || (!_113))) {
      _120 = ((_112 + -1.0f) * _76) + 1.0f;
      _131 = ((_120 * (_99 - _87)) + _87);
      _132 = ((_120 * (_100 - _87)) + _87);
      _133 = ((_120 * (_101 - _87)) + _87);
    } else {
      _131 = _99;
      _132 = _100;
      _133 = _101;
    }
    _136 = WaveReadLaneFirst(_materialIndex);
    _144 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_136 < (uint)170000), _136, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingContrast);
    if (_113 && (_144 < 1.0f)) {
      _150 = WaveReadLaneFirst(_materialIndex);
      _158 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_150 < (uint)170000), _150, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingDistance);
      _159 = max(0.0001f, _158);
      // [sem: expr_sat]
      _175 = saturate((1.0f - saturate(_nearFarProj.x / (max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _159))) / (1.0f - saturate(1.5f / _159)));
      _179 = (_175 * _175) * (3.0f - (_175 * 2.0f));
      _185 = (((1.0f - saturate(_86)) * 0.3f) * (1.0f - _179)) + _179;
      _187 = (1.0f - _144) * _76;
      _204 = ((((_185 * (_131 - _87)) + _87) * _187) + _131);
      _205 = ((((_185 * (_132 - _87)) + _87) * _187) + _132);
      _206 = ((((_185 * (_133 - _87)) + _87) * _187) + _133);
    } else {
      _204 = _131;
      _205 = _132;
      _206 = _133;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _209 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _215 = (pow(_209.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _218 = (pow(_209.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _221 = (pow(_209.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _230 = exp2(log2(max(0.0f, (_221 + -0.8359375f)) / (18.851562f - (_221 * 18.6875f))) * 6.277395f) * 10000.0f;
    _233 = WaveReadLaneFirst(_materialIndex);
    _241 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
    [branch]
    if (!(!(_241 >= 0.001f))) {
      _255 = 1.0f - (((_76 * 6000.0f) * _241) * exp2(log2(max(0.0f, (_215 + -0.8359375f)) / (18.851562f - (_215 * 18.6875f))) * 6.277395f));
      _260 = (_255 * _204);
      _261 = (_255 * _205);
      _262 = (_255 * _206);
    } else {
      _260 = _204;
      _261 = _205;
      _262 = _206;
    }
    _265 = WaveReadLaneFirst(_materialIndex);
    _273 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_265 < (uint)170000), _265, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
    [branch]
    if (!(!(_273 >= 0.0001f))) {
      _280 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
      _284 = (_280 * _280) * (3.0f - (_280 * 2.0f));
      // [sem: invLength]
      _288 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
      // [sem: invLength]
      _294 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
      _295 = _294 * _moonDirection.x;
      _296 = _294 * _moonDirection.y;
      _297 = _294 * _moonDirection.z;
      _301 = (((_288 * _sunDirection.x) - _295) * _284) + _295;
      _305 = (((_288 * _sunDirection.y) - _296) * _284) + _296;
      _309 = (((_288 * _sunDirection.z) - _297) * _284) + _297;
      _311 = rsqrt(dot(float3(_301, _305, _309), float3(_301, _305, _309)));  // [sem: invLength]
      _313 = (TEXCOORD.x * 2.0f) + -1.0f;
      _316 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
      _328 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _316, ((_invViewProjRelative[3].x) * _313));
      _337 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _316, ((_invViewProjRelative[0].x) * _313))) / _328;
      _346 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _316, ((_invViewProjRelative[1].x) * _313))) / _328;
      _355 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _316, ((_invViewProjRelative[2].x) * _313))) / _328;
      _357 = rsqrt(dot(float3(_337, _346, _355), float3(_337, _346, _355)));  // [sem: invLength]
      // [sem: expr_sat]
      _367 = saturate((dot(float3((_357 * _337), (_357 * _346), (_357 * _355)), float3((_301 * _311), (_305 * _311), (_309 * _311))) + -0.5f) * 2.0f);
      _379 = (((_284 * 4.0f) + 3.0f) * _230) * saturate(exp2(log2((_367 * _367) * (3.0f - (_367 * 2.0f))) * 3.0f));
      _382 = WaveReadLaneFirst(_materialIndex);
      _390 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_382 < (uint)170000), _382, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTexScale);
      _393 = WaveReadLaneFirst(_materialIndex);
      _401 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_393 < (uint)170000), _393, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTex);
      _416 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_401 < (uint)65000), _401, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_390 * TEXCOORD.x) * (1.0f / _srcTargetSizeAndInv.y)) * _srcTargetSizeAndInv.x), (_390 * TEXCOORD.y)));
      _420 = dot(float3(0.3f, 0.59f, 0.11f), float3(_416.x, _416.y, _416.z));
      _427 = (((_83 * _76) * _273) * (6.0f - (_284 * 2.0f))) * (_379 + _230);
      _444 = (((lerp(_420, _416.z, _379)) * _427) + _260);
      _445 = (((lerp(_420, _416.y, _379)) * _427) + _261);
      _446 = (((lerp(_420, _416.x, _379)) * _427) + _262);
    } else {
      _444 = _260;
      _445 = _261;
      _446 = _262;
    }
    _449 = WaveReadLaneFirst(_materialIndex);
    _457 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_449 < (uint)170000), _449, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
    _458 = saturate(_457);  // [sem: _457_sat]
    [branch]
    if (!(!(_458 >= 0.001f))) {
      _471 = ((_76 * 10000.0f) * _458) * exp2(log2(max(0.0f, (_218 + -0.8359375f)) / (18.851562f - (_218 * 18.6875f))) * 6.277395f);
      _479 = (_444 - (_471 * _444));
      _480 = (_445 - (_471 * _445));
      _481 = (_446 - (_471 * _446));
    } else {
      _479 = _444;
      _480 = _445;
      _481 = _446;
    }
  } else {
    _479 = _64;
    _480 = _63;
    _481 = _62;
  }
  _482 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _495 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _482, 0)))).x) & 127)))) + 0.5f);
  } else {
    _495 = 1.0f;
  }
  _498 = (_localToneMappingParams.w > 0.0f);
  if (_498) {
    _504 = _exposure0.x * _userImageAdjust.z;
    _523 = exp2(_powerParams.x * log2(max(0.0f, (((_504 * max(0.0f, (((_480 * -0.62179f) - (_479 * 0.08326f)) + (_481 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _539 = exp2(log2(max(0.0f, (((_slopeParams.y * _504) * max(0.0f, (((_480 * 1.1408f) - (_479 * 0.01055f)) - (_481 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _555 = exp2(log2(max(0.0f, (((_slopeParams.z * _504) * max(0.0f, (((_479 * 1.15297f) - (_480 * 0.12897f)) - (_481 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _556 = dot(float3(_523, _539, _555), float3(0.212671f, 0.71516f, 0.072169f));
    _560 = ((_523 - _556) * _powerParams.w) + _556;
    _563 = ((_539 - _556) * _powerParams.w) + _556;
    _566 = ((_555 - _556) * _powerParams.w) + _556;
    _573 = min(max(log2(mad(_566, 0.079223745f, mad(_563, 0.0784336f, (_560 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _580 = min(max(log2(mad(_566, 0.07916613f, mad(_563, 0.87846863f, (_560 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _587 = min(max(log2(mad(_566, 0.879143f, mad(_563, 0.0784336f, (_560 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _588 = _573 * 0.060606062f;
    _589 = _580 * 0.060606062f;
    _590 = _587 * 0.060606062f;
    _591 = _588 * _588;
    _592 = _589 * _589;
    _593 = _590 * _590;
    _609 = min(0.0f, (-0.0f - (((_573 * 0.0072181816f) + ((_591 * 0.4298f) + (((_591 * _591) * ((31.96f - (_573 * 2.4327273f)) + (_591 * 15.5f))) - ((_573 * 0.41624245f) * _591)))) + -0.00232f)));
    _625 = min(0.0f, (-0.0f - (((_580 * 0.0072181816f) + ((_592 * 0.4298f) + (((_592 * _592) * ((31.96f - (_580 * 2.4327273f)) + (_592 * 15.5f))) - ((_580 * 0.41624245f) * _592)))) + -0.00232f)));
    _641 = min(0.0f, (-0.0f - (((_587 * 0.0072181816f) + ((_593 * 0.4298f) + (((_593 * _593) * ((31.96f - (_587 * 2.4327273f)) + (_593 * 15.5f))) - ((_587 * 0.41624245f) * _593)))) + -0.00232f)));
    _642 = -0.0f - _609;
    _643 = -0.0f - _625;
    _644 = -0.0f - _641;
    _645 = dot(float3(_642, _643, _644), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _662 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _663 = -0.79999995f / _662;
      _664 = -1.2f / _662;
      _665 = 0.20000005f / _662;
      _668 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _671 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _675 = (_663 + 1.4f) + (_671 * (-0.39999998f - _663));
      _679 = (_664 + 1.6f) + (_671 * (-0.6f - _664));
      _683 = (_665 + 0.9f) + (_671 * (0.5f - _665));
      _700 = (lerp(_683, 1.4f, _668));  // [sem: blended]
      _701 = (lerp(_675, 1.0f, _668));  // [sem: blended]
      _702 = (lerp(_679, 1.2f, _668));  // [sem: blended]
    } else {
      _700 = 1.4f;  // [sem: blended]
      _701 = 1.0f;  // [sem: blended]
      _702 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _703 = 1.0f - _702;
    _715 = ((exp2(log2(((saturate((_609 * _609) * _642) * _703) + _702) * _642) * _701) - _645) * _700) + _645;
    _727 = ((exp2(log2(((saturate((_625 * _625) * _643) * _703) + _702) * _643) * _701) - _645) * _700) + _645;
    _739 = ((exp2(log2(((saturate((_641 * _641) * _644) * _703) + _702) * _644) * _701) - _645) * _700) + _645;
    _746 = saturate(exp2(log2(mad(_739, -0.09902974f, mad(_727, -0.09802088f, (_715 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _753 = saturate(exp2(log2(mad(_739, -0.098961174f, mad(_727, 1.1519032f, (_715 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _760 = saturate(exp2(log2(mad(_739, 1.1510737f, mad(_727, -0.09804345f, (_715 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _766 = 1.0f - abs(_etcParams.w);
      _767 = saturate(_etcParams.w);  // [sem: expr_sat]
      _769 = (_766 * _746) + _767;
      _771 = (_766 * _753) + _767;
      _773 = (_766 * _760) + _767;
      if (_colorGradingParams.w > 0.0f) {
        _778 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _795 = (((max(0.0f, (1.0f - _769)) - _769) * _778) + _769);
        _796 = (((max(0.0f, (1.0f - _771)) - _771) * _778) + _771);
        _797 = (((max(0.0f, (1.0f - _773)) - _773) * _778) + _773);
      } else {
        _795 = _769;
        _796 = _771;
        _797 = _773;
      }
      _799 = _userImageAdjust.y + 1.0f;
      _801 = _userImageAdjust.x + 0.5f;
      _804 = ((_795 + -0.5f) * _799) + _801;
      _807 = ((_796 + -0.5f) * _799) + _801;
      _810 = ((_797 + -0.5f) * _799) + _801;
      _816 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _851 = exp2(log2(saturate(mad(_colorBlind0.z, _810, mad(_colorBlind0.y, _807, (_colorBlind0.x * _804))))) * _816);
      _852 = exp2(log2(saturate(mad(_colorBlind1.z, _810, mad(_colorBlind1.y, _807, (_colorBlind1.x * _804))))) * _816);
      _853 = exp2(log2(saturate(mad(_colorBlind2.z, _810, mad(_colorBlind2.y, _807, (_colorBlind2.x * _804))))) * _816);
    } else {
      _851 = _746;
      _852 = _753;
      _853 = _760;
    }
  } else {
    _851 = _481;
    _852 = _480;
    _853 = _479;
  }
  if (_etcParams.y > 1.0f) {
    _858 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _861 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _867 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_858, _861), float2(_858, _861))));  // [sem: expr_sat]
    _872 = (_867 * _851);
    _873 = (_867 * _852);
    _874 = (_867 * _853);
  } else {
    _872 = _851;
    _873 = _852;
    _874 = _853;
  }
  if (_498 && (_etcParams.z > 0.0f)) {
    _904 = select((_872 <= 0.0031308f), (_872 * 12.92f), (((pow(_872, 0.41666666f)) * 1.055f) + -0.055f));
    _905 = select((_873 <= 0.0031308f), (_873 * 12.92f), (((pow(_873, 0.41666666f)) * 1.055f) + -0.055f));
    _906 = select((_874 <= 0.0031308f), (_874 * 12.92f), (((pow(_874, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _904 = _872;
    _905 = _873;
    _906 = _874;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _909 = (float)((uint)((uint)(_482)));
    if (!(_909 < _viewDir.w)) {
      if (!(!(_909 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _920 = 0.0f;
        _921 = 0.0f;
        _922 = 0.0f;
      } else {
        _920 = _904;
        _921 = _905;
        _922 = _906;
      }
    } else {
      _920 = 0.0f;
      _921 = 0.0f;
      _922 = 0.0f;
    }
  } else {
    _920 = _904;
    _921 = _905;
    _922 = _906;
  }
  _926 = exp2(log2(_920 * 0.0001f) * 0.15930176f);
  _930 = exp2(log2(_921 * 0.0001f) * 0.15930176f);
  _934 = exp2(log2(_922 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_926 * 18.6875f) + 1.0f)) * ((_926 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_930 * 18.6875f) + 1.0f)) * ((_930 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_934 * 18.6875f) + 1.0f)) * ((_934 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _495;
  return SV_Target;
}
