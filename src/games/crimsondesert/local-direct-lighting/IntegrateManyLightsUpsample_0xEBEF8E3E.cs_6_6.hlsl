struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};

struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t139, space36);

Texture2D<float> __3__36__0__0__g_lightProfile : register(t45, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t156, space36);

StructuredBuffer<ManyLightsData> __3__37__0__0__g_manyLightsDataBuffer : register(t16, space37);

Texture2D<uint2> __3__36__0__0__g_manyLightsHitData : register(t13, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t14, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneDiffuseUAV : register(u4, space38);

RWTexture2D<float4> __3__38__0__1__g_specularResultUAV : register(u7, space38);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b27, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _lightingParams : packoffset(c000.x);
  float4 _tiledRadianceCacheParams : packoffset(c001.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

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
  int _25;
  int _26;
  int4 _28;
  int _40;
  int _44;
  uint _51;
  uint _56;
  int _345;
  half _346;
  int _347;
  float _357;
  half _371;
  float _408;
  float _425;
  float _426;
  float _427;
  float _543;
  float _544;
  float _545;
  float _651;
  float _652;
  float _653;
  float _654;
  float _708;
  float _709;
  float _710;
  float _747;
  float _778;
  float _779;
  float _780;
  uint _71;
  float _75;
  int _80;
  int _81;
  float _82;
  float _87;
  float _91;
  float _93;
  float _95;
  float _107;
  float _116;
  float _125;
  float _134;
  float _141;
  uint4 _143;
  float4 _149;
  half _158;
  half _162;
  half _167;
  half _172;
  uint _175;
  float _179;
  float _183;
  float _187;
  float _189;
  half _191;
  half _193;
  half _195;
  half _202;
  half _208;
  float _211;
  float _214;
  float _218;
  float _220;
  float _221;
  float _222;
  float _223;
  float _225;
  float _228;
  float _229;
  float _230;
  float _231;
  float _234;
  float _237;
  float _240;
  half _247;
  half _254;
  half _260;
  half _262;
  half _264;
  half _266;
  half _268;
  half _275;
  half _282;
  half _289;
  half _290;
  half _295;
  int _296;
  bool _300;
  half _302;
  bool _307;
  int _322;
  int _337;
  bool _348;
  bool _350;
  float _359;
  float _361;
  float _363;
  half _377;
  float _382;
  float _387;
  float _392;
  float _398;
  float _399;
  float _400;
  float _401;
  float _411;
  float _413;
  float _416;
  float _418;
  float _420;
  float _428;
  float _429;
  float _430;
  float _432;
  float _433;
  float _434;
  uint2 _436;
  int _443;
  float _446;
  float _447;
  float _448;
  float _450;
  float _451;
  float _452;
  float _453;
  int _455;
  int _456;
  int _458;
  int _459;
  float _460;
  float _461;
  float _462;
  float _468;
  float _469;
  float _470;
  float _471;
  float _472;
  float _474;
  float _476;
  float _478;
  float _480;
  float _482;
  float _484;
  float _486;
  float _488;
  float _490;
  float _491;
  float _492;
  float _493;
  float _501;
  float _504;
  float _508;
  bool _509;
  bool _510;
  bool _511;
  bool _512;
  float _537;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _553;
  float _554;
  float _555;
  float _557;
  float _559;
  float _561;
  float _563;
  float _564;
  float _566;
  float _568;
  float _570;
  float _578;
  float _580;
  float _582;
  float _584;
  float _586;
  float _587;
  float _588;
  float _589;
  float _590;
  float _591;
  float _592;
  float _594;
  float _595;
  float _596;
  float _597;
  float _598;
  float _599;
  float _601;
  float _603;
  float _604;
  float _608;
  float _609;
  float _611;
  float _614;
  float _615;
  float _616;
  float _617;
  float _621;
  float _633;
  float _659;
  float _660;
  float _662;
  float _665;
  float _666;
  float _667;
  float _671;
  float _683;
  float _685;
  float _725;
  float _726;
  float _727;
  float _728;
  float _729;
  float _751;
  float _752;
  float _753;
  float _754;
  float _755;
  float _760;
  float _764;
  float _768;
  float _772;
  float2 _787;
  float _794;
  float _799;
  float _804;
  float _805;
  float _811;
  float _814;
  float _819;
  float _824;
  float _829;
  float _834;
  float _839;
  float _844;
  float _846;
  int _23[4];
  _25 = (int)(SV_GroupID.x) & 3;
  _26 = (uint)((uint)(_25)) >> 1;
  _28 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _23[0] = _28.x;
  _23[1] = _28.y;
  _23[2] = _28.z;
  _23[3] = _28.w;
  _40 = _23[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _44 = select((((int)(SV_GroupID.x) & 4) == 0), _40, ((uint)((uint)(_40)) >> 16));
  _51 = (uint)((uint)((uint)((int)((int)(_25) - (int)((int)(_26) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_44)) << 5)) & 8160));
  _56 = (uint)((uint)((uint)((int)(_26) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_44)) >> 3) & 8160));
  [branch]
  if (!(((((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((uint)((uint)(_51)) >> 5), ((uint)((uint)(_56)) >> 5), 0)))).x) & 1) == 0)) {
    if (_lightingParams.z > 0.0f) {
      _71 = __3__36__0__0__g_depthStencil.Load(int3(_51, _56, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
      _75 = ((float)((uint)((uint)(_71.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
      if (!((_75 < 1e-07f) || (_75 == 1.0f))) {
        _80 = (uint)((uint)(_71.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _81 = _80 & 127;
        _82 = max(1e-07f, _75);
        _87 = _bufferSizeAndInvSize.z * (((float)((uint)((uint)(_51)))) + 0.5f);
        _91 = _bufferSizeAndInvSize.w * (((float)((uint)((uint)(_56)))) + 0.5f);
        _93 = (_87 * 2.0f) + -1.0f;
        _95 = 1.0f - (_91 * 2.0f);
        _107 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _82, mad((_invViewProjRelative[3].y), _95, (_93 * (_invViewProjRelative[3].x))));
        _116 = (mad((_invViewProjRelative[0].z), _82, mad((_invViewProjRelative[0].y), _95, (_93 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _107;
        _125 = (mad((_invViewProjRelative[1].z), _82, mad((_invViewProjRelative[1].y), _95, (_93 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _107;
        _134 = (mad((_invViewProjRelative[2].z), _82, mad((_invViewProjRelative[2].y), _95, (_93 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _107;
        _141 = 1.0f / sqrt(((_125 * _125) + (_116 * _116)) + (_134 * _134));
        _143 = __3__36__0__0__g_baseColor.Load(int3(_51, _56, 0));  // [sem: _3__36__0__0__g_baseColor_load]
        _149 = __3__36__0__0__g_normal.Load(int3(_51, _56, 0));  // [sem: _3__36__0__0__g_normal_load]
        _158 = half(((float)((uint)((uint)(((uint)((uint)(_143.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _162 = half(((float)((uint)((uint)(_143.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _167 = half(((float)((uint)((uint)(((uint)((uint)(_143.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _172 = half(((float)((uint)((uint)(((uint)((uint)(_143.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _175 = (uint)((_149.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
        _179 = (saturate(_149.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _183 = (saturate(_149.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _187 = (saturate(_149.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _189 = rsqrt(dot(float3(_179, _183, _187), float3(_179, _183, _187)));  // [sem: invLength]
        _191 = half(_189 * _179);
        _193 = half(_189 * _183);
        _195 = half(_187 * _189);
        // [sem: _3__36__0__0__g_baseColor_load_derived]
        _202 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_143.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
        _208 = ((half)((half)(half(((float)((uint)((uint)(_143.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _211 = float(_202 + _208) * 0.5f;
        _214 = float(_202 - _208) * 0.5f;
        _218 = (1.0f - abs(_211)) - abs(_214);
        _220 = rsqrt(dot(float3(_211, _214, _218), float3(_211, _214, _218)));  // [sem: invLength]
        _221 = float(_191);
        _222 = float(_193);
        _223 = float(_195);
        _225 = select((_195 >= 0.0h), 1.0f, -1.0f);
        _228 = -0.0f - (1.0f / (_225 + _223));
        _229 = _222 * _228;
        _230 = _229 * _221;
        _231 = _225 * _221;
        _234 = float(half(_220 * _211));
        _237 = float(half(_220 * _214));
        _240 = float(half(_220 * _218));
        _247 = half(mad(_240, _221, mad(_237, _230, ((((_231 * _221) * _228) + 1.0f) * _234))));
        _254 = half(mad(_240, _222, mad(_237, ((_229 * _222) + _225), ((_234 * _225) * _230))));
        _260 = half(mad(_240, _223, mad(_237, (-0.0f - _222), (-0.0f - (_231 * _234)))));
        _262 = rsqrt((half)(dot(half3(_247, _254, _260), half3(_247, _254, _260))));  // [sem: invLength]
        _264 = saturate((half)(_158 * _158));  // [sem: expr_sat]
        _266 = saturate((half)(_162 * _162));  // [sem: expr_sat]
        _268 = saturate((half)(_167 * _167));  // [sem: expr_sat]
        // [sem: expr_sat]
        _275 = saturate((half)(saturate((half)(((half)(((half)(_266 * 0.3395996h)) + ((half)(_264 * 0.61328125h)))) + ((half)(_268 * 0.04736328h))))));
        // [sem: expr_sat]
        _282 = saturate((half)(saturate((half)(((half)(((half)(_266 * 0.9165039h)) + ((half)(_264 * 0.07019043h)))) + ((half)(_268 * 0.013450623h))))));
        // [sem: expr_sat]
        _289 = saturate((half)(saturate((half)(((half)(((half)(_266 * 0.109558105h)) + ((half)(_264 * 0.020614624h)))) + ((half)(_268 * 0.8696289h))))));
        _290 = max(0.020004272h, _172);
        _295 = saturate((half)(half(((float)((uint)((uint)(_143.y & 255)))) * 0.003921569f)));  // [sem: expr_sat]
        _296 = _80 & 126;
        if ((uint)_81 > (uint)10) {
          _300 = (_81 == 107);
          _302 = select((((uint)_81 < (uint)20) || _300), 0.0f, _295);
          _307 = ((uint)((int)(_81) + (int)(-105)) < (uint)2);
          if ((_296 == 96) || (_81 == 98)) {
            _337 = (int)(uint)((int)(_81 == 19));
            if (!_307) {
              _345 = select(((_296 == 26) || (_81 == 28)), 1, ((int)(uint)(_300)));
              _346 = 0.0h;
              _347 = _337;
            } else {
              _345 = 1;
              _346 = 0.0h;
              _347 = _337;
            }
          } else {
            if (_307) {
              _345 = 1;
              _346 = (half)(select((_175 == 1), 0.0f, _302));
              _347 = 0;
            } else {
              if (_81 == 65) {
                _345 = ((int)(uint)((int)(_296 == 26)));
                _346 = 0.0h;
                _347 = 0;
              } else {
                _322 = (int)(uint)((int)(_81 == 19));
                if ((_81 == 24) || (_81 == 29)) {
                  _345 = select(((_296 == 26) || (_81 == 28)), 1, ((int)(uint)(_300)));
                  _346 = 0.0h;
                  _347 = _322;
                } else {
                  _345 = select(((_296 == 26) || (_81 == 28)), 1, ((int)(uint)(_300)));
                  _346 = _302;
                  _347 = _322;
                }
              }
            }
          }
        } else {
          _345 = 0;
          _346 = _295;
          _347 = 0;
        }
        _348 = (_296 == 64);
        _350 = (_lightingParams.x > 0.5f);
        if (_350) {
          _357 = (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_87, _91), 0.0f))).y);
        } else {
          _357 = 0.0f;
        }
        _359 = float(_262 * _247);
        _361 = float(_262 * _254);
        _363 = float(_262 * _260);
        if (_81 == 52) {
          _371 = (half)(saturate((half)(((half)(((half)(_282 + _275)) + _289)) * 1.2001953h)));
        } else {
          _371 = 1.0h;
        }
        _377 = ((half)(0.7001953h / (half)(min((half)(max((half)(max((half)(max(_275, _282)), _289)), 0.010002136h)), 0.7001953h)))) * _371;
        _382 = float(((half)(((half)(((half)(_377 * _275)) + -0.040008545h)) * _346)) + 0.040008545h);
        _387 = float(((half)(((half)(((half)(_377 * _282)) + -0.040008545h)) * _346)) + 0.040008545h);
        _392 = float(((half)(((half)(((half)(_377 * _289)) + -0.040008545h)) * _346)) + 0.040008545h);
        if (_350) {
          _398 = float(saturate((half)((half)(rsqrt((half)(dot(half3(_191, _193, _195), half3(_191, _193, _195))))) * _193)));
          _399 = _398 * _398;
          _400 = _399 * _399;
          _401 = _400 * _400;
          if (!(_81 == 29)) {
            _408 = select((((int)(_347) | (int)(_345)) != 0), 0.0f, 1.0f);
          } else {
            _408 = 0.0f;
          }
          _411 = ((_401 * _401) * _357) * _408;
          _413 = _359 - (_411 * _359);
          _416 = (_411 * (1.0f - _361)) + _361;
          _418 = _363 - (_411 * _363);
          _420 = rsqrt(dot(float3(_413, _416, _418), float3(_413, _416, _418)));  // [sem: invLength]
          _425 = (_418 * _420);
          _426 = (_416 * _420);
          _427 = (_413 * _420);
        } else {
          _425 = _363;
          _426 = _361;
          _427 = _359;
        }
        _428 = float(_290);
        _429 = _428 * _428;
        _430 = _429 * _429;
        _432 = float(_290 * 0.60009766h);
        _433 = _432 * _432;
        _434 = _433 * _433;
        _436 = __3__36__0__0__g_manyLightsHitData.Load(int3(_51, _56, 0));  // [sem: _3__36__0__0__g_manyLightsHitData_load]
        _443 = select((((int)(_436.x) | (int)(_436.y)) != 0), (((uint)((uint)(_436.x)) >> 16) & 32767), 32767);
        _446 = __3__37__0__0__g_manyLightsDataBuffer[_443]._position.x;
        _447 = __3__37__0__0__g_manyLightsDataBuffer[_443]._position.y;
        _448 = __3__37__0__0__g_manyLightsDataBuffer[_443]._position.z;
        _450 = __3__37__0__0__g_manyLightsDataBuffer[_443]._color.x;
        _451 = __3__37__0__0__g_manyLightsDataBuffer[_443]._color.y;
        _452 = __3__37__0__0__g_manyLightsDataBuffer[_443]._color.z;
        _453 = __3__37__0__0__g_manyLightsDataBuffer[_443]._color.w;
        _455 = __3__37__0__0__g_manyLightsDataBuffer[_443]._up.x;
        _456 = __3__37__0__0__g_manyLightsDataBuffer[_443]._up.y;
        _458 = __3__37__0__0__g_manyLightsDataBuffer[_443]._look.x;
        _459 = __3__37__0__0__g_manyLightsDataBuffer[_443]._look.y;
        _460 = _446 - _116;
        _461 = _447 - _125;
        _462 = _448 - _134;
        _468 = sqrt(((_461 * _461) + (_460 * _460)) + (_462 * _462));
        _469 = 1.0f / _468;
        _470 = _469 * _460;
        _471 = _469 * _461;
        _472 = _469 * _462;
        _474 = f16tof32(((uint)(_455 & 65535)));
        _476 = f16tof32(((uint)((uint)((uint)(_455)) >> 16)));
        _478 = f16tof32(((uint)(_456 & 65535)));
        _480 = f16tof32(((uint)((uint)((uint)(_456)) >> 16)));
        _482 = rsqrt(dot(float3(_474, _476, _478), float3(_474, _476, _478)));  // [sem: invLength]
        _484 = f16tof32(((uint)(_458 & 65535)));
        _486 = f16tof32(((uint)((uint)((uint)(_458)) >> 16)));
        _488 = f16tof32(((uint)(_459 & 65535)));
        _490 = rsqrt(dot(float3(_484, _486, _488), float3(_484, _486, _488)));  // [sem: invLength]
        _491 = _490 * _484;
        _492 = _490 * _486;
        _493 = _490 * _488;
        if (!(!(_480 >= 0.0f))) {
          _501 = mad(_472, (_482 * _478), mad(_471, (_482 * _476), ((_470 * _474) * _482)));
          _504 = mad(_472, _493, mad(_471, _492, (_491 * _470)));
          _508 = atan((-0.0f - _504) / (-0.0f - _501));
          _509 = (_501 > -0.0f);
          _510 = (_501 == -0.0f);
          _511 = (_504 <= -0.0f);
          _512 = (_504 > -0.0f);
          // [sem: _3__36__0__0__g_lightProfile_sampleLod]
          _537 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_470, _471, _472), float3(_491, _492, _493))) * 0.31830987f) + 0.5f), ((saturate(abs(select((_510 && _511), 0.5f, select((_510 && _512), -0.5f, (select((_509 && _512), (_508 + -3.1415927f), select((_509 && _511), (_508 + 3.1415927f), _508)) * 0.31830987f))))) * abs(f16tof32(((uint)((uint)((uint)(_459)) >> 16))))) + _480)), 0.0f);
          _543 = (_537.x * _452);
          _544 = (_537.x * _451);
          _545 = (_537.x * _450);
        } else {
          _543 = _452;
          _544 = _451;
          _545 = _450;
        }
        _546 = abs(_453);
        _547 = _141 * _116;
        _548 = _141 * _125;
        _549 = _141 * _134;
        _550 = _470 * _468;
        _551 = _471 * _468;
        _552 = _472 * _468;
        _553 = -0.0f - _547;
        _554 = -0.0f - _548;
        _555 = -0.0f - _549;
        _557 = dot(float3(_553, _554, _555), float3(_359, _361, _363)) * 2.0f;
        _559 = _553 - (_557 * _359);
        _561 = _554 - (_557 * _361);
        _563 = _555 - (_557 * _363);
        _564 = dot(float3(_550, _551, _552), float3(_559, _561, _563));
        _566 = (_559 * _564) - _550;
        _568 = (_561 * _564) - _551;
        _570 = (_563 * _564) - _552;
        _578 = saturate(_546 / sqrt(((_566 * _566) + (_568 * _568)) + (_570 * _570)));  // [sem: expr_sat]
        _580 = (_566 * _578) + _550;
        _582 = (_568 * _578) + _551;
        _584 = (_570 * _578) + _552;
        _586 = rsqrt(dot(float3(_580, _582, _584), float3(_580, _582, _584)));  // [sem: invLength]
        _587 = _580 * _586;
        _588 = _582 * _586;
        _589 = _584 * _586;
        _590 = _587 - _547;
        _591 = _588 - _548;
        _592 = _589 - _549;
        _594 = rsqrt(dot(float3(_590, _591, _592), float3(_590, _591, _592)));  // [sem: invLength]
        _595 = _590 * _594;
        _596 = _591 * _594;
        _597 = _592 * _594;
        _598 = dot(float3(_359, _361, _363), float3(_587, _588, _589));
        _599 = dot(float3(_427, _426, _425), float3(_587, _588, _589));
        _601 = saturate(dot(float3(_359, _361, _363), float3(_553, _554, _555)));  // [sem: expr_sat]
        _603 = saturate(dot(float3(_427, _426, _425), float3(_595, _596, _597)));  // [sem: expr_sat]
        _604 = dot(float3(_553, _554, _555), float3(_595, _596, _597));
        if (!(_598 <= 0.0f)) {
          _608 = saturate(1.0f - _604);  // [sem: expr_sat]
          _609 = _608 * _608;
          _611 = (_609 * _609) * _608;
          _614 = _611 * saturate(_387 * 50.0f);
          _615 = 1.0f - _611;
          _616 = saturate(_599);  // [sem: _599_sat]
          _617 = 1.0f - _429;
          _621 = (((_603 * _430) - _603) * _603) + 1.0f;
          _633 = (0.5f / ((((_601 * _617) + _429) * _599) + (_601 * ((_599 * _617) + _429)))) * (_430 / ((_621 * _621) * 3.1415927f));
          _651 = (max((((_615 * _392) + _614) * _633), 0.0f) * _616);
          _652 = (max((((_615 * _387) + _614) * _633), 0.0f) * _616);
          _653 = (max((((_615 * _382) + _614) * _633), 0.0f) * _616);
          _654 = (_598 * 0.31830987f);
        } else {
          _651 = 0.0f;
          _652 = 0.0f;
          _653 = 0.0f;
          _654 = 0.0f;
        }
        if ((_81 != 65) && _348) {
          _659 = saturate(1.0f - _604);  // [sem: expr_sat]
          _660 = _659 * _659;
          _662 = (_660 * _660) * _659;
          _665 = _662 * saturate(_387 * 50.0f);
          _666 = 1.0f - _662;
          _667 = 1.0f - _433;
          _671 = (((_603 * _434) - _603) * _603) + 1.0f;
          _683 = (0.5f / ((((_601 * _667) + _433) * _599) + (_601 * ((_599 * _667) + _433)))) * (_434 / ((_671 * _671) * 3.1415927f));
          _685 = saturate(_599) * 0.39990234f;
          _708 = ((max((((_666 * _382) + _665) * _683), 0.0f) * _685) + (_653 * 0.60009766f));
          _709 = ((max((((_666 * _387) + _665) * _683), 0.0f) * _685) + (_652 * 0.60009766f));
          _710 = ((max((((_666 * _392) + _665) * _683), 0.0f) * _685) + (_651 * 0.60009766f));
        } else {
          _708 = _653;
          _709 = _652;
          _710 = _651;
        }
        _725 = (((float)((bool)((((float)((uint)((uint)(_436.x & 65535)))) * 0.01560998f) >= 1000.0f))) * asfloat(_436.y)) * saturate(select((_546 > 99999.0f), 1.0f, (1.0f / max((_546 * _546), (_468 * _468)))));
        _726 = _725 * _545;
        _727 = _725 * _544;
        _728 = _725 * _543;
        _729 = float(_172);
        if (_348 && (_175 != 3)) {
          _747 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
        } else {
          _747 = saturate(exp2(((_729 * _729) * -0.00577078f) * (_nearFarProj.x / _82)));  // [sem: expr_sat]
        }
        _751 = select((_cavityParams.x == 0.0f), 1.0f, _747);
        _752 = float(_346);
        _753 = float(_275);
        _754 = float(_282);
        _755 = float(_289);
        _760 = 0.7f / min(max(max(max(_753, _754), _755), 0.01f), 0.7f);
        _764 = (((_760 * _753) + -0.04f) * _752) + 0.04f;
        _768 = (((_760 * _754) + -0.04f) * _752) + 0.04f;
        _772 = (((_760 * _755) + -0.04f) * _752) + 0.04f;
        if (_348) {
          _778 = (_764 * _751);
          _779 = (_768 * _751);
          _780 = (_772 * _751);
        } else {
          _778 = _764;
          _779 = _768;
          _780 = _772;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _787 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, saturate(dot(float3(_553, _554, _555), float3(_427, _426, _425)))), (1.0f - _428)), 0.0f);
        _794 = (_726 * _708) / max(0.01f, ((_787.x * _778) + _787.y));
        _799 = (_727 * _709) / max(0.01f, ((_787.x * _779) + _787.y));
        _804 = (_728 * _710) / max(0.01f, ((_787.x * _780) + _787.y));
        _805 = dot(float3(_794, _799, _804), float3(0.212671f, 0.71516f, 0.072169f));
        _811 = min((_exposure3.w * 8192.0f), _805) / max(1e-06f, _805);
        _814 = _exposure4.x * _654;
        _819 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_794 * _811)))));
        _824 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_799 * _811)))));
        _829 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_804 * _811)))));
        _834 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_726 * _814)))));
        _839 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_727 * _814)))));
        _844 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_728 * _814)))));
        _846 = dot(float3(_834, _839, _844), float3(0.212671f, 0.71516f, 0.072169f)) / _exposure4.x;
        __3__38__0__1__g_sceneDiffuseUAV[int2(_51, _56)] = float4(_834, _839, _844, 0.0f);
        if ((((_819 > 0.0f) || (_824 > 0.0f)) || (_829 > 0.0f)) || (_846 > 0.0f)) {
          __3__38__0__1__g_specularResultUAV[int2(_51, _56)] = float4(_819, _824, _829, _846);
        }
      }
    }
  }
}
