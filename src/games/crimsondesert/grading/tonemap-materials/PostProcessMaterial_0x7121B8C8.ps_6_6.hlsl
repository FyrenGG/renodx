struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
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

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

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
  int _20;
  float _28;
  float _31;
  int _34;
  float _42;
  int _45;
  float _53;
  float _54;
  float _55;
  int _58;
  int _66;
  float _80;
  float _84;
  int _87;
  int _95;
  float _111;
  int _114;
  float _122;
  int _125;
  float _133;
  float _134;
  float _135;
  int _138;
  int _146;
  int _149;
  int _157;
  float4 _165;
  float _170;
  float _199;
  float _201;
  float4 _218;
  float _224;
  float _227;
  float _230;
  float _238;
  float _246;
  float _254;
  uint _255;
  float _274;
  float _479;
  float _480;
  float _481;
  float _574;
  float _575;
  float _576;
  float _634;
  float _635;
  float _636;
  float _655;
  float _656;
  float _657;
  float _687;
  float _688;
  float _689;
  float _703;
  float _704;
  float _705;
  bool _277;
  float _283;
  float _302;
  float _318;
  float _334;
  float _335;
  float _339;
  float _342;
  float _345;
  float _352;
  float _359;
  float _366;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _372;
  float _388;
  float _404;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _441;
  float _442;
  float _443;
  float _444;
  float _447;
  float _450;
  float _454;
  float _458;
  float _462;
  float _482;
  float _494;
  float _506;
  float _518;
  float _525;
  float _532;
  float _539;
  float _545;
  float _546;
  float _548;
  float _550;
  float _552;
  float _557;
  float _578;
  float _580;
  float _583;
  float _586;
  float _589;
  float _595;
  float _641;
  float _644;
  float _650;
  float _692;
  float _709;
  float _713;
  float _717;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainSpeed);
  _31 = _time.x * _28;
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakUTiling);
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakVTiling);
  _54 = _42 * TEXCOORD.x;
  _55 = _53 * TEXCOORD.y;
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _80 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_66 < (uint)65000), _66, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_54, (_55 - frac(_31)))))).z) + -0.01f) * 1.1235955f);
  _84 = (_80 * _80) * (3.0f - (_80 * 2.0f));
  _87 = WaveReadLaneFirst(_materialIndex);
  _95 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _111 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_95 < (uint)65000), _95, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_54, ((_55 * 1.2f) - frac(_31 * 1.5f)))))).z) + -0.04f) * 50.0f);
  _114 = WaveReadLaneFirst(_materialIndex);
  _122 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
  _125 = WaveReadLaneFirst(_materialIndex);
  _133 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_125 < (uint)170000), _125, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
  _134 = _122 * TEXCOORD.x;
  _135 = _133 * TEXCOORD.y;
  _138 = WaveReadLaneFirst(_materialIndex);
  _146 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  _149 = WaveReadLaneFirst(_materialIndex);
  _157 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_149 < (uint)170000), _149, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainNormalTexture);
  _165 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_134, (1.0f - _135)));
  _170 = saturate((2.5f - TEXCOORD.y) * 0.33333334f);  // [sem: expr_sat]
  // [sem: expr_sat]
  _199 = saturate(saturate(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_146 < (uint)65000), _146, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_134, _135)))).y) - saturate(((((((_111 * _111) * (3.0f - (_111 * 2.0f))) - _84) * 0.5f) + _84) - saturate(exp2(log2((_170 * _170) * (3.0f - (_170 * 2.0f))) * 1.1f))) * 5.0f));
  _201 = dot(float3(_199, _199, _199), float3(1.0f, 1.0f, 1.0f)) * 0.09f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _218 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_201 * ((_199 * ((_165.x * 2.0f) + -1.4960785f)) + 0.5f)) + TEXCOORD.x), abs(TEXCOORD.y - (_201 * ((_199 * ((_165.y * 2.0f) + -1.4960785f)) + 0.5f)))));
  _224 = (pow(_218.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _227 = (pow(_218.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _230 = (pow(_218.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _238 = exp2(log2(max(0.0f, (_224 + -0.8359375f)) / (18.851562f - (_224 * 18.6875f))) * 6.277395f);
  _246 = exp2(log2(max(0.0f, (_227 + -0.8359375f)) / (18.851562f - (_227 * 18.6875f))) * 6.277395f);
  _254 = exp2(log2(max(0.0f, (_230 + -0.8359375f)) / (18.851562f - (_230 * 18.6875f))) * 6.277395f);
  _255 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _274 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _255, 0)))).x) & 127)))) + 0.5f);
  } else {
    _274 = select(isnan(_postProcessParams.x), 0.0f, _postProcessParams.x);
  }
  _277 = (_localToneMappingParams.w > 0.0f);
  if (_277) {
    _283 = _exposure0.x * _userImageAdjust.z;
    _302 = exp2(_powerParams.x * log2(max(0.0f, (((_283 * max(0.0f, (((_238 * 17050.5f) - (_246 * 6217.9f)) - (_254 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))));
    _318 = exp2(log2(max(0.0f, (((_slopeParams.y * _283) * max(0.0f, (((_246 * 11408.0f) - (_238 * 1302.6001f)) - (_254 * 105.5f)))) + _offsetParams.y))) * _powerParams.y);
    _334 = exp2(log2(max(0.0f, (((_slopeParams.z * _283) * max(0.0f, (((_238 * -240.0f) - (_246 * 1289.7f)) + (_254 * 11529.699f)))) + _offsetParams.z))) * _powerParams.z);
    _335 = dot(float3(_302, _318, _334), float3(0.212671f, 0.71516f, 0.072169f));
    _339 = ((_302 - _335) * _powerParams.w) + _335;
    _342 = ((_318 - _335) * _powerParams.w) + _335;
    _345 = ((_334 - _335) * _powerParams.w) + _335;
    _352 = min(max(log2(mad(_345, 0.079223745f, mad(_342, 0.0784336f, (_339 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _359 = min(max(log2(mad(_345, 0.07916613f, mad(_342, 0.87846863f, (_339 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _366 = min(max(log2(mad(_345, 0.879143f, mad(_342, 0.0784336f, (_339 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _367 = _352 * 0.060606062f;
    _368 = _359 * 0.060606062f;
    _369 = _366 * 0.060606062f;
    _370 = _367 * _367;
    _371 = _368 * _368;
    _372 = _369 * _369;
    _388 = min(0.0f, (-0.0f - (((_352 * 0.0072181816f) + ((_370 * 0.4298f) + (((_370 * _370) * ((31.96f - (_352 * 2.4327273f)) + (_370 * 15.5f))) - ((_352 * 0.41624245f) * _370)))) + -0.00232f)));
    _404 = min(0.0f, (-0.0f - (((_359 * 0.0072181816f) + ((_371 * 0.4298f) + (((_371 * _371) * ((31.96f - (_359 * 2.4327273f)) + (_371 * 15.5f))) - ((_359 * 0.41624245f) * _371)))) + -0.00232f)));
    _420 = min(0.0f, (-0.0f - (((_366 * 0.0072181816f) + ((_372 * 0.4298f) + (((_372 * _372) * ((31.96f - (_366 * 2.4327273f)) + (_372 * 15.5f))) - ((_366 * 0.41624245f) * _372)))) + -0.00232f)));
    _421 = -0.0f - _388;
    _422 = -0.0f - _404;
    _423 = -0.0f - _420;
    _424 = dot(float3(_421, _422, _423), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _441 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _442 = -0.79999995f / _441;
      _443 = -1.2f / _441;
      _444 = 0.20000005f / _441;
      _447 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _450 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _454 = (_442 + 1.4f) + (_450 * (-0.39999998f - _442));
      _458 = (_443 + 1.6f) + (_450 * (-0.6f - _443));
      _462 = (_444 + 0.9f) + (_450 * (0.5f - _444));
      _479 = (lerp(_458, 1.2f, _447));  // [sem: blended]
      _480 = (lerp(_454, 1.0f, _447));  // [sem: blended]
      _481 = (lerp(_462, 1.4f, _447));  // [sem: blended]
    } else {
      _479 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _480 = 1.0f;  // [sem: blended]
      _481 = 1.4f;  // [sem: blended]
    }
    _482 = 1.0f - _479;
    _494 = ((exp2(log2(((saturate((_388 * _388) * _421) * _482) + _479) * _421) * _480) - _424) * _481) + _424;
    _506 = ((exp2(log2(((saturate((_404 * _404) * _422) * _482) + _479) * _422) * _480) - _424) * _481) + _424;
    _518 = ((exp2(log2(((saturate((_420 * _420) * _423) * _482) + _479) * _423) * _480) - _424) * _481) + _424;
    _525 = saturate(exp2(log2(mad(_518, -0.09902974f, mad(_506, -0.09802088f, (_494 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _532 = saturate(exp2(log2(mad(_518, -0.098961174f, mad(_506, 1.1519032f, (_494 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _539 = saturate(exp2(log2(mad(_518, 1.1510737f, mad(_506, -0.09804345f, (_494 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _545 = 1.0f - abs(_etcParams.w);
      _546 = saturate(_etcParams.w);  // [sem: expr_sat]
      _548 = (_545 * _525) + _546;
      _550 = (_545 * _532) + _546;
      _552 = (_545 * _539) + _546;
      if (_colorGradingParams.w > 0.0f) {
        _557 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _574 = (((max(0.0f, (1.0f - _548)) - _548) * _557) + _548);
        _575 = (((max(0.0f, (1.0f - _550)) - _550) * _557) + _550);
        _576 = (((max(0.0f, (1.0f - _552)) - _552) * _557) + _552);
      } else {
        _574 = _548;
        _575 = _550;
        _576 = _552;
      }
      _578 = _userImageAdjust.y + 1.0f;
      _580 = _userImageAdjust.x + 0.5f;
      _583 = ((_574 + -0.5f) * _578) + _580;
      _586 = ((_575 + -0.5f) * _578) + _580;
      _589 = ((_576 + -0.5f) * _578) + _580;
      _595 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _634 = exp2(log2(saturate(mad(_colorBlind0.z, _589, mad(_colorBlind0.y, _586, (_colorBlind0.x * _583))))) * _595);
      _635 = exp2(log2(saturate(mad(_colorBlind1.z, _589, mad(_colorBlind1.y, _586, (_colorBlind1.x * _583))))) * _595);
      _636 = exp2(log2(saturate(mad(_colorBlind2.z, _589, mad(_colorBlind2.y, _586, (_colorBlind2.x * _583))))) * _595);
    } else {
      _634 = _525;
      _635 = _532;
      _636 = _539;
    }
  } else {
    _634 = (_238 * 10000.0f);
    _635 = (_246 * 10000.0f);
    _636 = (_254 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _641 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _644 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _650 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_641, _644), float2(_641, _644))));  // [sem: expr_sat]
    _655 = (_650 * _634);
    _656 = (_650 * _635);
    _657 = (_650 * _636);
  } else {
    _655 = _634;
    _656 = _635;
    _657 = _636;
  }
  if (_277 && (_etcParams.z > 0.0f)) {
    _687 = select((_655 <= 0.0031308f), (_655 * 12.92f), (((pow(_655, 0.41666666f)) * 1.055f) + -0.055f));
    _688 = select((_656 <= 0.0031308f), (_656 * 12.92f), (((pow(_656, 0.41666666f)) * 1.055f) + -0.055f));
    _689 = select((_657 <= 0.0031308f), (_657 * 12.92f), (((pow(_657, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _687 = _655;
    _688 = _656;
    _689 = _657;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _692 = (float)((uint)((uint)(_255)));
    if (!(_692 < _viewDir.w)) {
      if (!(!(_692 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _703 = 0.0f;
        _704 = 0.0f;
        _705 = 0.0f;
      } else {
        _703 = _687;
        _704 = _688;
        _705 = _689;
      }
    } else {
      _703 = 0.0f;
      _704 = 0.0f;
      _705 = 0.0f;
    }
  } else {
    _703 = _687;
    _704 = _688;
    _705 = _689;
  }
  _709 = exp2(log2(_703 * 0.0001f) * 0.15930176f);
  _713 = exp2(log2(_704 * 0.0001f) * 0.15930176f);
  _717 = exp2(log2(_705 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_709 * 18.6875f) + 1.0f)) * ((_709 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_713 * 18.6875f) + 1.0f)) * ((_713 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_717 * 18.6875f) + 1.0f)) * ((_717 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _274;
  return SV_Target;
}
