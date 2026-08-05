struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

RWTexture2D<float2> __3__38__0__1__g_sceneAOResultUAV : register(u37, space38);

RWTexture2D<float4> __3__38__0__1__g_bentConeResultUAV : register(u41, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _shadowAOParams : packoffset(c000.x);
  float4 _tiledRadianceCacheParams : packoffset(c001.x);
};

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(16, 16, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _16;
  int _17;
  int4 _19;
  int _31;
  int _35;
  uint _42;
  uint _47;
  float _48;
  float _49;
  uint _51;
  int _53;
  float _56;
  int _57;
  uint _59;
  float _65;
  float _71;
  float _77;
  float _79;
  float _80;
  float _81;
  float _82;
  float _88;
  float _93;
  bool _94;
  float _193;
  float _202;
  float _225;
  float _226;
  float _227;
  int _372;
  float _379;
  int _383;
  int _384;
  float _385;
  float _386;
  float _387;
  int _388;
  float _389;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  int _570;
  int _571;
  float _572;
  int _629;
  int _647;
  float _648;
  float _659;
  int _689;
  float _690;
  int _705;
  float _721;
  float _781;
  float _782;
  float _783;
  float _796;
  float _797;
  float _798;
  float _807;
  float _823;
  float _824;
  float _98;
  float _100;
  float _103;
  float _115;
  float _124;
  float _133;
  float _142;
  float _144;
  int _145;
  bool _146;
  float _149;
  float _155;
  float _161;
  float _166;
  bool _168;
  bool _169;
  bool _172;
  int _175;
  int _177;
  float _182;
  int _194;
  float _218;
  float _220;
  uint _239;
  uint _247;
  uint _255;
  uint _263;
  uint _271;
  uint _279;
  uint _287;
  uint _295;
  uint _303;
  uint _311;
  uint _319;
  uint _327;
  uint _335;
  uint _343;
  uint _351;
  uint _359;
  uint _373;
  float _375;
  float _381;
  int _404;
  float _414;
  float _421;
  float _424;
  float _426;
  float _428;
  float _430;
  float _433;
  float _434;
  float _435;
  float _436;
  float _442;
  float _448;
  float _453;
  uint _454;
  float _466;
  float _474;
  float _476;
  float _478;
  float _480;
  float _484;
  float _493;
  float _502;
  float _503;
  float _509;
  float _515;
  float _517;
  float _529;
  float _536;
  float _537;
  float _539;
  float _541;
  float _542;
  float _553;
  uint _581;
  float _585;
  int _587;
  float _589;
  float _590;
  float _594;
  float _596;
  float _599;
  float _613;
  bool _626;
  int _627;
  float _638;
  int _694;
  float _696;
  float _698;
  float _700;
  float _701;
  int _702;
  float _706;
  float _707;
  float _708;
  float _711;
  float _715;
  float _722;
  bool _724;
  float _727;
  float _729;
  float _731;
  float _733;
  float _734;
  float _736;
  float _738;
  float _740;
  float _742;
  float _747;
  float _750;
  float _752;
  float _754;
  float _755;
  bool _758;
  int _759;
  int _760;
  float _765;
  float _772;
  float _776;
  float _789;
  int __loop_jump_target = -1;
  int _14[4];
  _16 = (int)(SV_GroupID.x) & 3;
  _17 = (uint)((uint)(_16)) >> 1;
  _19 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _14[0] = _19.x;
  _14[1] = _19.y;
  _14[2] = _19.z;
  _14[3] = _19.w;
  _31 = _14[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _35 = select((((int)(SV_GroupID.x) & 4) == 0), _31, ((uint)((uint)(_31)) >> 16));
  _42 = (uint)((uint)((uint)((int)((int)(_16) - (int)((int)(_17) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_35)) << 5)) & 8160));
  _47 = (uint)((uint)((uint)((int)(_17) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_35)) >> 3) & 8160));
  _48 = (float)((uint)((uint)(_42)));
  _49 = (float)((uint)((uint)(_47)));
  _51 = __3__36__0__0__g_depthStencil.Load(int3(_42, _47, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _53 = (uint)((uint)(_51.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _56 = ((float)((uint)((uint)(_51.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _57 = _53 & 127;
  _59 = __3__36__0__0__g_sceneNormal.Load(int3(_42, _47, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _65 = min(1.0f, ((((float)((uint)((uint)(_59.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _71 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_59.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _77 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_59.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _79 = rsqrt(dot(float3(_65, _71, _77), float3(_65, _71, _77)));  // [sem: invLength]
  _80 = _79 * _65;
  _81 = _79 * _71;
  _82 = _79 * _77;
  _88 = (((_48 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
  _93 = 1.0f - (((_49 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
  _94 = (_56 == 1.0f);
  if ((_56 < 1e-07f) || _94) {
    _98 = select(_94, 0.0f, 1.0f);
    _823 = _98;
    _824 = _98;
  } else {
    _100 = max(1e-07f, _56);
    _103 = _nearFarProj.x / _100;
    _115 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _100, mad((_invViewProjRelative[3].y), _93, ((_invViewProjRelative[3].x) * _88)));
    _124 = (mad((_invViewProjRelative[0].z), _100, mad((_invViewProjRelative[0].y), _93, ((_invViewProjRelative[0].x) * _88))) + (_invViewProjRelative[0].w)) / _115;
    _133 = (mad((_invViewProjRelative[1].z), _100, mad((_invViewProjRelative[1].y), _93, ((_invViewProjRelative[1].x) * _88))) + (_invViewProjRelative[1].w)) / _115;
    _142 = (mad((_invViewProjRelative[2].z), _100, mad((_invViewProjRelative[2].y), _93, ((_invViewProjRelative[2].x) * _88))) + (_invViewProjRelative[2].w)) / _115;
    _144 = rsqrt(dot(float3(_124, _133, _142), float3(_124, _133, _142)));  // [sem: invLength]
    _145 = (int)(_57) + (int)(-52);
    _146 = ((uint)_145 < (uint)16);
    _149 = (float)((uint)((uint)(_frameNumber.x)));
    _155 = (frac(((_149 * 92.0f) + _48) * 0.0078125f) * 128.0f) + -64.34062f;
    _161 = (frac(((_149 * 71.0f) + _49) * 0.0078125f) * 128.0f) + -72.46562f;
    _166 = frac(dot(float3((_155 * _155), (_161 * _161), (_161 * _155)), float3(20.390625f, 60.703125f, 2.4281209f)));
    _168 = _146 && (_103 < 4.0f);
    _169 = (_57 == 65);
    _172 = (_shadowAOParams.z == 0.0f);
    _175 = select(_172, 4, select(_169, 32, select(_168, 8, 4)));
    _177 = select(_172, 5, select(_146, 8, 6));
    _182 = ((_bufferSizeAndInvSize.z * 16.0f) * _103) * _screenPercentage.x;
    if (_146) {
      _193 = max(0.05f, (_182 * 4.0f));
    } else {
      _193 = (max(((_103 * 0.03125f) + 0.1f), (_182 * 16.0f)) * 2.0f);
    }
    _194 = _53 & 126;
    if (((_53 & 124) == 64) || (_57 == 53)) {
      _202 = max(0.02f, _193);
    } else {
      _202 = _193;
    }
    if ((_194 == 12) || ((_194 == 16) || ((_57 == 107) || (_57 == 18)))) {
      if (!_146) {
        _218 = saturate(_103 * 0.02f) + _81;
        _220 = rsqrt(dot(float3(_80, _218, _82), float3(_80, _218, _82)));  // [sem: invLength]
        _225 = (_220 * _82);
        _226 = (_220 * _218);
        _227 = (_220 * _80);
      } else {
        _225 = _82;
        _226 = _81;
        _227 = _80;
      }
    } else {
      if (!(_146 || ((uint)((int)(_57) + (int)(-19)) > (uint)1))) {
        _218 = saturate(_103 * 0.02f) + _81;
        _220 = rsqrt(dot(float3(_80, _218, _82), float3(_80, _218, _82)));  // [sem: invLength]
        _225 = (_220 * _82);
        _226 = (_220 * _218);
        _227 = (_220 * _80);
      } else {
        _225 = _82;
        _226 = _81;
        _227 = _80;
      }
    }
    _239 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * _49) + _48));
    _247 = (uint)((uint)((((int)((uint)((uint)((uint)(_239)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_239)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_239)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _255 = (uint)((uint)((((int)((uint)((uint)((uint)(_247)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_247)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_247)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_239));
    _263 = (uint)((uint)((((int)((uint)((uint)((uint)(_255)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_255)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_255)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_247));
    _271 = (uint)((uint)((((int)((uint)((uint)((uint)(_263)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_263)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_263)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_255));
    _279 = (uint)((uint)((((int)((uint)((uint)((uint)(_271)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_271)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_271)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_263));
    _287 = (uint)((uint)((((int)((uint)((uint)((uint)(_279)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_279)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_279)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_271));
    _295 = (uint)((uint)((((int)((uint)((uint)((uint)(_287)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_287)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_287)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_279));
    _303 = (uint)((uint)((((int)((uint)((uint)((uint)(_295)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_295)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_295)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_287));
    _311 = (uint)((uint)((((int)((uint)((uint)((uint)(_303)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_303)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_303)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_295));
    _319 = (uint)((uint)((((int)((uint)((uint)((uint)(_311)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_311)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_311)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_303));
    _327 = (uint)((uint)((((int)((uint)((uint)((uint)(_319)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_319)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_319)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_311));
    _335 = (uint)((uint)((((int)((uint)((uint)((uint)(_327)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_327)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_327)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_319));
    _343 = (uint)((uint)((((int)((uint)((uint)((uint)(_335)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_335)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_335)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_327));
    _351 = (uint)((uint)((((int)((uint)((uint)((uint)(_343)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_343)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_343)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_335));
    _359 = (uint)((uint)((((int)((uint)((uint)((uint)(_351)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_351)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_351)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_343));
    if ((_351 & 16777215) == 0) {
      _372 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_359)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_359)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_359)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_351))));
    } else {
      _372 = _351;
    }
    _373 = (uint)((uint)(_372)) * (uint)(48271);
    if (!_146) {
      _375 = (float)((uint)((uint)(_177)));
      _379 = (_375 / (_375 + -1.5f));
    } else {
      _379 = 1.0f;
    }
    _381 = _379 * select(_169, 0.02f, _202);
    _383 = 0;
    _384 = 0;
    _385 = 0.0f;
    _386 = 0.0f;
    _387 = 0.0f;
    _388 = _373;
    _389 = 0.0f;
    _390 = 0.0f;
    _391 = 0.0f;
    _392 = 0.0f;
    _393 = 0.0f;
    _394 = 0.0f;
    while(true) {
      _404 = ((int)((uint)((uint)((uint)((int)max((uint)(1), (uint)(select(_169, 0, select(_168, 3, 7)))))) * (uint)((uint)(_383))) + (uint)((uint)(((float)((uint)((uint)(_373 & 16777215)))) * 1.5258193e-05f)))) & 31;
      _414 = frac((((float)((uint)((uint)(_404)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_166 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _421 = sqrt(((float)((uint)((uint)(reversebits(_404) ^ ((int)((uint)(_166 * 2.8747837e+08f))))))) * 2.3283064e-10f);
      _424 = sqrt(1.0f - (_421 * _421));
      _426 = cos(_414) * _424;
      _428 = sin(_414) * _424;
      _430 = select((_225 >= 0.0f), 1.0f, -1.0f);
      _433 = -0.0f - (1.0f / (_430 + _225));
      _434 = _226 * _433;
      _435 = _434 * _227;
      _436 = _430 * _227;
      _442 = mad(_421, _227, mad(_428, _435, ((((_436 * _227) * _433) + 1.0f) * _426)));
      _448 = mad(_421, _226, mad(_428, ((_434 * _226) + _430), ((_426 * _430) * _435)));
      _453 = mad(_421, _225, mad(_428, (-0.0f - _226), (-0.0f - (_436 * _426))));
      _454 = (uint)((uint)(_388)) * (uint)(48271);
      _466 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _142, mad((_viewProjRelative[2].y), _133, ((_viewProjRelative[2].x) * _124)));
      _474 = mad((_viewProjRelative[3].z), _142, mad((_viewProjRelative[3].y), _133, ((_viewProjRelative[3].x) * _124))) + (_viewProjRelative[3].w);
      _476 = (_442 * _381) + _124;
      _478 = (_448 * _381) + _133;
      _480 = (_453 * _381) + _142;
      _484 = mad((_viewProjRelative[3].z), _480, mad((_viewProjRelative[3].y), _478, ((_viewProjRelative[3].x) * _476))) + (_viewProjRelative[3].w);
      _493 = (mad((_viewProjRelative[0].z), _142, mad((_viewProjRelative[0].y), _133, ((_viewProjRelative[0].x) * _124))) + (_viewProjRelative[0].w)) / _474;
      _502 = (mad((_viewProjRelative[1].z), _142, mad((_viewProjRelative[1].y), _133, ((_viewProjRelative[1].x) * _124))) + (_viewProjRelative[1].w)) / _474;
      _503 = _466 / _474;
      _509 = ((mad((_viewProjRelative[0].z), _480, mad((_viewProjRelative[0].y), _478, ((_viewProjRelative[0].x) * _476))) + (_viewProjRelative[0].w)) / _484) - _493;
      _515 = ((mad((_viewProjRelative[1].z), _480, mad((_viewProjRelative[1].y), _478, ((_viewProjRelative[1].x) * _476))) + (_viewProjRelative[1].w)) / _484) - _502;
      _517 = 1.0f / ((float)((uint)((uint)(_177))));
      _529 = max(_517, (1.0f / min(1.0f, (max((_bufferSizeAndInvSize.x * abs(_509)), (_bufferSizeAndInvSize.y * abs(_515))) * _517))));
      _536 = (((mad((_viewProjRelative[2].z), _480, mad((_viewProjRelative[2].y), _478, ((_viewProjRelative[2].x) * _476))) + (_viewProjRelative[2].w)) / _484) - _503) * _529;
      _537 = _529 * _517;
      _539 = (_509 * 0.5f) * _537;
      _541 = (_515 * -0.5f) * _537;
      _542 = _536 * _517;
      _553 = max(((((float)((uint)((uint)(_454 & 16777215)))) * 1.4901161e-08f) + 0.01f), (1.0f / max((abs(_539) * _bufferSizeAndInvSize.x), (abs(_541) * _bufferSizeAndInvSize.y))));
      _565 = ((0.5f - (_502 * 0.5f)) + (_553 * _541));
      _566 = (((_493 * 0.5f) + 0.5f) + (_553 * _539));
      _567 = ((_553 * _542) + _503);
      _568 = 0.0f;
      _569 = 0.25f;
      _570 = 0;
      _571 = 0;
      _572 = 0.0f;
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _581 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_bufferSizeAndInvSize.x * _566)), ((int)(_bufferSizeAndInvSize.y * _565)), 0));
        _585 = ((float)((uint)((uint)(_581.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _587 = ((uint)((uint)(_581.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _589 = select((_570 == 2), 1.2f, _569);
        _590 = _567 - _585;
        _594 = _nearFarProj.x / max(1e-07f, _585);
        _596 = (_517 * _381) * _589;
        _599 = _594 - (_nearFarProj.x / max(1e-07f, _567));
        _613 = (max(abs(_536), (_503 - ((mad((_proj[2].z), _103, 0.0f) + _466) / (mad((_proj[3].z), _103, 0.0f) + _474)))) * 0.34f) * max(0.0625f, _517);
        bool __branch_chain_564;
        if (!(abs(_613 + _590) < _613)) {
          _629 = 0;
          __branch_chain_564 = true;
        } else {
          _626 = (_599 > select((_587 == 5), -0.08f, (-0.0f - max(0.03f, min((_594 * 0.5f), ((_594 * _594) * 0.01f))))));
          _627 = (int)(uint)(_626);
          if (!_626) {
            _629 = _627;
            __branch_chain_564 = true;
          } else {
            _647 = _627;
            _648 = _568;
            __branch_chain_564 = false;
          }
        }
        if (__branch_chain_564) {
          if ((_568 == 0.0f) && (_590 < 0.0f)) {
            _647 = _629;
            _648 = (-0.0f - _599);
          } else {
            if (_568 > 0.0f) {
              _638 = _596 * 1.5f;
              if ((_568 < _638) || (_590 > 0.0f)) {
                _647 = ((int)(uint)((int)((_568 - _638) < 0.0f)));
                _648 = 0.0f;
              } else {
                _647 = _629;
                _648 = _568;
              }
            } else {
              _647 = _629;
              _648 = _568;
            }
          }
        }
        if (!(_647 == 0)) {
          if ((_587 == 19) || (_587 == 107)) {
            _659 = max(0.1f, (1.0f - (_594 * 0.01f)));
          } else {
            _659 = 1.0f;
          }
          _689 = ((int)((int)(uint)((int)((uint)((int)(_587) + (int)(-52)) < (uint)16))) | (int)(_571));
          // [sem: expr_sat]
          _690 = saturate((saturate(1.0f - exp2(max(_659, (((_596 * 20.0f) * (1.0f - saturate(max((_594 + -100.0f), 0.0f) * 0.05f))) / ((_594 * 0.2f) + 1.0f))) * log2(select((_terrainNormalParams.z > 0.0f), 0.2f, 0.6f)))) * (1.0f - _572)) + _572);
        } else {
          _689 = _571;
          _690 = _572;  // [sem: expr_sat]
        }
        [branch]
        if (!(_690 > 0.75f)) {
          _694 = (int)(uint)((int)(_689 != 0));
          _696 = (_589 * _539) + _566;
          _698 = (_589 * _541) + _565;
          _700 = (_589 * _542) + _567;
          _701 = _589 * 1.1f;
          _702 = (int)(_570) + (int)(1);
          if ((uint)_702 < (uint)_177) {
            _565 = _698;
            _566 = _696;
            _567 = _700;
            _568 = _648;
            _569 = _701;
            _570 = _702;
            _571 = _694;
            _572 = _690;
            continue;
          } else {
            _705 = 0;
          }
        } else {
          _705 = _587;
        }
        _706 = _442 + _391;
        _707 = _448 + _390;
        _708 = _453 + _389;
        _711 = saturate(saturate(_690 * 1.1f));  // [sem: expr_sat]
        _715 = select(((uint)((int)(_705) + (int)(-97)) < (uint)2), (_711 * 0.33f), _711);
        if (_57 == 15) {
          _721 = saturate(_715 * 2.0f);  // [sem: expr_sat]
        } else {
          _721 = _715;  // [sem: expr_sat]
        }
        _722 = 1.0f - _721;
        _724 = ((uint)((int)(_705) + (int)(-52)) < (uint)16);
        _727 = select((((uint)_145 > (uint)15) && _724), 0.3f, _722);
        _729 = (_727 * _442) + _394;
        _731 = (_727 * _448) + _393;
        _733 = (_727 * _453) + _392;
        _734 = _387 + 1.0f;
        _736 = _442 - (_144 * _124);
        _738 = _448 - (_144 * _133);
        _740 = _453 - (_144 * _142);
        _742 = rsqrt(dot(float3(_736, _738, _740), float3(_736, _738, _740)));  // [sem: invLength]
        _747 = saturate(dot(float3(_227, _226, _225), float3((_742 * _736), (_742 * _738), (_742 * _740))));  // [sem: expr_sat]
        _750 = 1.0f - ((_747 * _747) * 0.35999995f);
        _752 = 0.20371833f / (_750 * _750);
        _754 = (_752 * _722) + _386;
        _755 = _752 + _385;
        _758 = (((int)(_689) | (int)(_384)) != 0) || _724;
        _759 = (int)(uint)(_758);
        _760 = (int)(_383) + (int)(1);
        if ((uint)_760 < (uint)_175) {
          _383 = _760;
          _384 = _759;
          _385 = _755;
          _386 = _754;
          _387 = _734;
          _388 = _454;
          _389 = _708;
          _390 = _707;
          _391 = _706;
          _392 = _733;
          _393 = _731;
          _394 = _729;
          __loop_jump_target = 382;
          break;
        }
        _765 = saturate(_754 / max(1e-06f, _755));  // [sem: expr_sat]
        _772 = sqrt(((_707 * _707) + (_706 * _706)) + (_708 * _708)) * _734;
        if (!(_772 == 0.0f)) {
          _776 = ((float)((uint)((uint)(_175)))) / _772;
          _781 = (_776 * _729);
          _782 = (_776 * _731);
          _783 = (_776 * _733);
        } else {
          _781 = _729;
          _782 = _731;
          _783 = _733;
        }
        _789 = sqrt(((_782 * _782) + (_781 * _781)) + (_783 * _783));
        if (!(_789 == 0.0f)) {
          _796 = (_781 / _789);
          _797 = (_782 / _789);
          _798 = (_783 / _789);
        } else {
          _796 = _227;
          _797 = _226;
          _798 = _225;
        }
        if (!_146) {
          _807 = (1.0f - (saturate(1.0f - _765) * saturate(select(_758, 0.0f, 1.0f))));
        } else {
          _807 = 1.0f;
        }
        __3__38__0__1__g_bentConeResultUAV[int2(_42, _47)] = float4(((_796 * 0.5f) + 0.5f), ((_797 * 0.5f) + 0.5f), ((_798 * 0.5f) + 0.5f), saturate(1.0f - _789));
        _823 = ((_shadowAOParams.w + _807) - (_shadowAOParams.w * _807));
        _824 = _765;
        break;
      }
      if (__loop_jump_target == 382) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  }
  __3__38__0__1__g_sceneAOResultUAV[int2(_42, _47)] = float2(_823, _824);
}
