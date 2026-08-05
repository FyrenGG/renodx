struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

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
  float _19;
  float _20;
  float _21;
  float _24;
  float _26;
  float _38;
  float _48;
  float _58;
  float _68;
  float _70;
  float _71;
  float _72;
  float _73;
  int _76;
  int _84;
  float4 _91;
  int _96;
  int _104;
  float4 _115;
  int _120;
  int _128;
  float4 _141;
  float _144;
  float _145;
  int _148;
  int _156;
  float4 _167;
  int _172;
  int _180;
  float4 _193;
  float _197;
  float _199;
  float _202;
  float _205;
  float _209;
  float _213;
  float _215;
  int _218;
  int _226;
  float4 _239;
  float _244;
  float4 _256;
  float _264;
  float _270;
  float4 _279;
  float _292;
  float _293;
  float _297;
  float _299;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  int _306;
  float _402;
  float _607;
  float _608;
  float _609;
  float _702;
  float _703;
  float _704;
  float _758;
  float _759;
  float _760;
  float _776;
  float _777;
  float _778;
  float _808;
  float _809;
  float _810;
  float _827;
  float _828;
  float _829;
  float _307;
  float4 _359;
  float _364;
  float _366;
  float _368;
  int _369;
  float _379;
  float _382;
  float _385;
  float _388;
  uint _389;
  bool _405;
  float _411;
  float _430;
  float _446;
  float _462;
  float _463;
  float _467;
  float _470;
  float _473;
  float _480;
  float _487;
  float _494;
  float _495;
  float _496;
  float _497;
  float _498;
  float _499;
  float _500;
  float _516;
  float _532;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _569;
  float _570;
  float _571;
  float _572;
  float _575;
  float _578;
  float _582;
  float _586;
  float _590;
  float _610;
  float _622;
  float _634;
  float _646;
  float _653;
  float _660;
  float _667;
  float _673;
  float _674;
  float _676;
  float _678;
  float _680;
  float _685;
  float _706;
  float _708;
  float _711;
  float _714;
  float _717;
  float _723;
  float _763;
  float _765;
  float _771;
  float _813;
  float _824;
  float _825;
  int __loop_jump_target = -1;
  _19 = (TEXCOORD.x * 2.0f) + -1.0f;
  _20 = TEXCOORD.y * 2.0f;
  _21 = 1.0f - _20;
  _24 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _26 = max(1e-07f, _24.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _38 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _26, mad((_invViewProjRelative[3].y), _21, ((_invViewProjRelative[3].x) * _19)));
  _48 = -0.0f - ((mad((_invViewProjRelative[0].z), _26, mad((_invViewProjRelative[0].y), _21, ((_invViewProjRelative[0].x) * _19))) + (_invViewProjRelative[0].w)) / _38);
  _58 = -0.0f - ((mad((_invViewProjRelative[1].z), _26, mad((_invViewProjRelative[1].y), _21, ((_invViewProjRelative[1].x) * _19))) + (_invViewProjRelative[1].w)) / _38);
  _68 = -0.0f - ((mad((_invViewProjRelative[2].z), _26, mad((_invViewProjRelative[2].y), _21, ((_invViewProjRelative[2].x) * _19))) + (_invViewProjRelative[2].w)) / _38);
  _70 = rsqrt(dot(float3(_48, _58, _68), float3(_48, _58, _68)));  // [sem: invLength]
  _71 = _70 * _48;
  _72 = _70 * _58;
  _73 = _70 * _68;
  _76 = WaveReadLaneFirst(_materialIndex);
  _84 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_76 < (uint)170000), _76, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _91 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_84 < (uint)65000), _84, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_73, _71));
  _96 = WaveReadLaneFirst(_materialIndex);
  _104 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _115 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_104 < (uint)65000), _104, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_73, ((_time.x * 0.05f) + _72)));
  _120 = WaveReadLaneFirst(_materialIndex);
  _128 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_120 < (uint)170000), _120, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _141 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_128 < (uint)65000), _128, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_73 * 2.0f), ((_72 - (_time.x * 0.1f)) * 2.0f)));
  _144 = _141.x + _115.x;
  _145 = _141.y + _115.y;
  _148 = WaveReadLaneFirst(_materialIndex);
  _156 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_148 < (uint)170000), _148, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _167 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_156 < (uint)65000), _156, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _72), _71));
  _172 = WaveReadLaneFirst(_materialIndex);
  _180 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_172 < (uint)170000), _172, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _193 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_180 < (uint)65000), _180, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _72) * 2.0f), (_71 * 2.0f)));
  _197 = abs(dot(float3(_71, _72, _73), float3(0.0f, 1.0f, 0.0f)));
  _199 = abs(dot(float3(_71, _72, _73), float3(0.0f, 0.0f, 1.0f)));
  _202 = (_197 * (_91.x - _144)) + _144;
  _205 = (_197 * (_91.y - _145)) + _145;
  _209 = (((_193.x + _167.x) - _202) * _199) + _202;
  _213 = (((_193.y + _167.y) - _205) * _199) + _205;
  _215 = saturate(_24.x * 35.0f);  // [sem: expr_sat]
  _218 = WaveReadLaneFirst(_materialIndex);
  _226 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _239 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_226 < (uint)65000), _226, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _244 = ((_239.x - _209) * _215) + _209;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _256 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((TEXCOORD.x + -0.001992157f) + (_244 * 0.004f)), ((TEXCOORD.y + -0.001992157f) + ((lerp(_213, _239.y, _215)) * 0.004f))));
  _264 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _270 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
  _279 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_264 * _customRenderPassSizeInvSize.x)), ((int)(_270 * _customRenderPassSizeInvSize.y)), 0));
  _292 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _279.x, mad((_projToPrevProj[3].y), _21, ((_projToPrevProj[3].x) * _19)));
  _293 = _244 + -0.4f;
  _297 = min(max(((_293 * 6.666667f) + -1.0f), -1.0f), 1.0f);
  _299 = (_293 * 0.020000001f) + -0.003f;
  _301 = _299;
  _302 = _299;
  _303 = 0.0f;
  _304 = 0.0f;
  _305 = 0.0f;
  _306 = 1;
  while(true) {
    _307 = (float)((int)(_306));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _359 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_307 * _301) * (((-0.5f - (_297 * 8.742278e-08f)) + (((((_projToPrevProj[0].w) + mad((_projToPrevProj[0].z), _279.x, mad((_projToPrevProj[0].y), _21, ((_projToPrevProj[0].x) * _19)))) / _292) - _19) * 2.5f)) + frac(frac(dot(float2(_264, _270), float2(0.06711056f, 0.00583715f))) * 52.982918f)))), (TEXCOORD.y - ((_307 * _302) * (((-0.5f - _297) + ((((mad((_projToPrevProj[1].z), _279.x, mad((_projToPrevProj[1].y), _21, ((_projToPrevProj[1].x) * _19))) + (_projToPrevProj[1].w)) / _292) - _21) * 2.5f)) + frac(frac(dot(float2((_264 + 32.665f), (_270 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f))))));
    _364 = (_359.x * 0.125f) + _303;
    _366 = (_359.y * 0.125f) + _304;
    _368 = (_359.z * 0.125f) + _305;
    _369 = (int)(_306) + (int)(1);
    if (!(_369 == 8)) {
      _824 = _301 * 0.9f;
      _825 = _302 * 0.9f;
      _301 = _824;
      _302 = _825;
      _303 = _364;
      _304 = _366;
      _305 = _368;
      _306 = _369;
      continue;
    }
    _379 = dot(float3(_256.x, _256.y, _256.z), float3(0.2126f, 0.7152f, 0.0722f)) * 0.3f;
    _382 = ((_379 - _364) * 0.2f) + _364;
    _385 = ((_379 - _366) * 0.2f) + _366;
    _388 = ((_379 - _368) * 0.2f) + _368;
    _389 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _402 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _389, 0)))).x) & 127)))) + 0.5f);
    } else {
      _402 = 0.0f;
    }
    _405 = (_localToneMappingParams.w > 0.0f);
    if (_405) {
      _411 = _exposure0.x * _userImageAdjust.z;
      _430 = exp2(_powerParams.x * log2(max(0.0f, (((_411 * max(0.0f, (((_382 * 1.70505f) - (_385 * 0.62179f)) - (_388 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _446 = exp2(log2(max(0.0f, (((_slopeParams.y * _411) * max(0.0f, (((_385 * 1.1408f) - (_382 * 0.13026f)) - (_388 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _462 = exp2(log2(max(0.0f, (((_slopeParams.z * _411) * max(0.0f, (((_382 * -0.024f) - (_385 * 0.12897f)) + (_388 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _463 = dot(float3(_430, _446, _462), float3(0.212671f, 0.71516f, 0.072169f));
      _467 = ((_430 - _463) * _powerParams.w) + _463;
      _470 = ((_446 - _463) * _powerParams.w) + _463;
      _473 = ((_462 - _463) * _powerParams.w) + _463;
      _480 = min(max(log2(mad(_473, 0.079223745f, mad(_470, 0.0784336f, (_467 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _487 = min(max(log2(mad(_473, 0.07916613f, mad(_470, 0.87846863f, (_467 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _494 = min(max(log2(mad(_473, 0.879143f, mad(_470, 0.0784336f, (_467 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _495 = _480 * 0.060606062f;
      _496 = _487 * 0.060606062f;
      _497 = _494 * 0.060606062f;
      _498 = _495 * _495;
      _499 = _496 * _496;
      _500 = _497 * _497;
      _516 = min(0.0f, (-0.0f - (((_480 * 0.0072181816f) + ((_498 * 0.4298f) + (((_498 * _498) * ((31.96f - (_480 * 2.4327273f)) + (_498 * 15.5f))) - ((_480 * 0.41624245f) * _498)))) + -0.00232f)));
      _532 = min(0.0f, (-0.0f - (((_487 * 0.0072181816f) + ((_499 * 0.4298f) + (((_499 * _499) * ((31.96f - (_487 * 2.4327273f)) + (_499 * 15.5f))) - ((_487 * 0.41624245f) * _499)))) + -0.00232f)));
      _548 = min(0.0f, (-0.0f - (((_494 * 0.0072181816f) + ((_500 * 0.4298f) + (((_500 * _500) * ((31.96f - (_494 * 2.4327273f)) + (_500 * 15.5f))) - ((_494 * 0.41624245f) * _500)))) + -0.00232f)));
      _549 = -0.0f - _516;
      _550 = -0.0f - _532;
      _551 = -0.0f - _548;
      _552 = dot(float3(_549, _550, _551), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _569 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _570 = -0.79999995f / _569;
        _571 = -1.2f / _569;
        _572 = 0.20000005f / _569;
        _575 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _578 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _582 = (_570 + 1.4f) + (_578 * (-0.39999998f - _570));
        _586 = (_571 + 1.6f) + (_578 * (-0.6f - _571));
        _590 = (_572 + 0.9f) + (_578 * (0.5f - _572));
        _607 = (lerp(_586, 1.2f, _575));  // [sem: blended]
        _608 = (lerp(_582, 1.0f, _575));  // [sem: blended]
        _609 = (lerp(_590, 1.4f, _575));  // [sem: blended]
      } else {
        _607 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _608 = 1.0f;  // [sem: blended]
        _609 = 1.4f;  // [sem: blended]
      }
      _610 = 1.0f - _607;
      _622 = ((exp2(log2(((saturate((_516 * _516) * _549) * _610) + _607) * _549) * _608) - _552) * _609) + _552;
      _634 = ((exp2(log2(((saturate((_532 * _532) * _550) * _610) + _607) * _550) * _608) - _552) * _609) + _552;
      _646 = ((exp2(log2(((saturate((_548 * _548) * _551) * _610) + _607) * _551) * _608) - _552) * _609) + _552;
      _653 = saturate(exp2(log2(mad(_646, -0.09902974f, mad(_634, -0.09802088f, (_622 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _660 = saturate(exp2(log2(mad(_646, -0.098961174f, mad(_634, 1.1519032f, (_622 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _667 = saturate(exp2(log2(mad(_646, 1.1510737f, mad(_634, -0.09804345f, (_622 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _673 = 1.0f - abs(_etcParams.w);
        _674 = saturate(_etcParams.w);  // [sem: expr_sat]
        _676 = (_673 * _653) + _674;
        _678 = (_673 * _660) + _674;
        _680 = (_673 * _667) + _674;
        if (_colorGradingParams.w > 0.0f) {
          _685 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _702 = (((max(0.0f, (1.0f - _676)) - _676) * _685) + _676);
          _703 = (((max(0.0f, (1.0f - _678)) - _678) * _685) + _678);
          _704 = (((max(0.0f, (1.0f - _680)) - _680) * _685) + _680);
        } else {
          _702 = _676;
          _703 = _678;
          _704 = _680;
        }
        _706 = _userImageAdjust.y + 1.0f;
        _708 = _userImageAdjust.x + 0.5f;
        _711 = ((_702 + -0.5f) * _706) + _708;
        _714 = ((_703 + -0.5f) * _706) + _708;
        _717 = ((_704 + -0.5f) * _706) + _708;
        _723 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _758 = exp2(log2(saturate(mad(_colorBlind0.z, _717, mad(_colorBlind0.y, _714, (_colorBlind0.x * _711))))) * _723);
        _759 = exp2(log2(saturate(mad(_colorBlind1.z, _717, mad(_colorBlind1.y, _714, (_colorBlind1.x * _711))))) * _723);
        _760 = exp2(log2(saturate(mad(_colorBlind2.z, _717, mad(_colorBlind2.y, _714, (_colorBlind2.x * _711))))) * _723);
      } else {
        _758 = _653;
        _759 = _660;
        _760 = _667;
      }
    } else {
      _758 = _382;
      _759 = _385;
      _760 = _388;
    }
    if (_etcParams.y > 1.0f) {
      _763 = abs(_19);
      _765 = abs(_20 + -1.0f);
      _771 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_763, _765), float2(_763, _765))));  // [sem: expr_sat]
      _776 = (_771 * _758);
      _777 = (_771 * _759);
      _778 = (_771 * _760);
    } else {
      _776 = _758;
      _777 = _759;
      _778 = _760;
    }
    if (_405 && (_etcParams.z > 0.0f)) {
      _808 = select((_776 <= 0.0031308f), (_776 * 12.92f), (((pow(_776, 0.41666666f)) * 1.055f) + -0.055f));
      _809 = select((_777 <= 0.0031308f), (_777 * 12.92f), (((pow(_777, 0.41666666f)) * 1.055f) + -0.055f));
      _810 = select((_778 <= 0.0031308f), (_778 * 12.92f), (((pow(_778, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _808 = _776;
      _809 = _777;
      _810 = _778;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _813 = (float)((uint)((uint)(_389)));
      if (!(_813 < _viewDir.w)) {
        if (!(!(_813 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _827 = 0.0f;
          _828 = 0.0f;
          _829 = 0.0f;
        } else {
          _827 = _808;
          _828 = _809;
          _829 = _810;
        }
      } else {
        _827 = 0.0f;
        _828 = 0.0f;
        _829 = 0.0f;
      }
    } else {
      _827 = _808;
      _828 = _809;
      _829 = _810;
    }
    SV_Target.x = _827;
    SV_Target.y = _828;
    SV_Target.z = _829;
    SV_Target.w = _402;
    break;
  }
  return SV_Target;
}
