// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below; Imports "../local-direct-lighting/local_light_common.hlsl" for the local-light color and attenuation helpers used below; Imports "../lighting/diffuse_brdf.hlsli" for the shared diffuse-BRDF helpers used below.
#include "../shared.h"
#include "../local-direct-lighting/local_light_common.hlsl"
#include "../lighting/diffuse_brdf.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t136, space36);

Texture2D<float> __3__36__0__0__g_lightProfile : register(t48, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

StructuredBuffer<ManyLightsData> __3__37__0__0__g_manyLightsDataBuffer : register(t8, space37);

Texture2D<uint2> __3__36__0__0__g_manyLightsHitData : register(t15, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t17, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneDiffuseUAV : register(u5, space38);

RWTexture2D<float4> __3__38__0__1__g_specularResultUAV : register(u8, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b19, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b32, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b49, space35) {
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
  int _24;
  int _25;
  int4 _33;
  int _43;
  int _47;
  uint _53;
  uint _55;
  half _326;
  half _330;
  bool _331;
  bool _336;
  half _337;
  bool _340;
  half _341;
  bool _342;
  float _353;
  half _364;
  float _414;
  float _415;
  float _416;
  float _537;
  float _538;
  float _539;
  float _653;
  float _654;
  float _655;
  float _656;
  float _710;
  float _711;
  float _712;
  float _736;
  float _769;
  float _770;
  float _771;
  uint _70;
  float _74;
  int _79;
  int _80;
  float _83;
  float _92;
  float _93;
  float _95;
  float _97;
  float _133;
  float _134;
  float _135;
  float _136;
  float _143;
  uint4 _145;
  float4 _151;
  half _160;
  half _164;
  half _169;
  half _178;
  uint _190;
  float _201;
  float _202;
  float _203;
  float _205;
  half _209;
  half _210;
  half _211;
  half _214;
  half _215;
  float _220;
  float _221;
  float _225;
  float _227;
  float _234;
  float _235;
  float _236;
  float _238;
  float _241;
  float _242;
  float _243;
  float _244;
  float _251;
  float _252;
  float _253;
  half _265;
  half _266;
  half _267;
  half _269;
  half _276;
  half _277;
  half _278;
  half _297;
  half _298;
  half _299;
  half _300;
  half _301;
  int _303;
  half _308;
  int _312;
  bool _327;
  bool _344;
  bool _346;
  float _354;
  float _355;
  float _356;
  half _370;
  float _383;
  float _384;
  float _385;
  float _394;
  float _395;
  float _396;
  float _397;
  float _400;
  float _405;
  float _406;
  float _407;
  float _409;
  float _417;
  float _418;
  float _419;
  float _421;
  float _422;
  float _423;
  uint2 _425;
  int _435;
  float _438;
  float _439;
  float _440;
  float _442;
  float _443;
  float _444;
  float _445;
  int _447;
  int _448;
  int _450;
  int _451;
  float _454;
  float _455;
  float _456;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _471;
  float _472;
  float _473;
  float _474;
  float _476;
  float _480;
  float _481;
  float _482;
  float _484;
  float _485;
  float _486;
  float _487;
  float _497;
  float _500;
  float _508;
  bool _511;
  bool _512;
  bool _513;
  bool _514;
  float _531;
  float _540;
  float _549;
  float _550;
  float _551;
  float _552;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _559;
  float _563;
  float _564;
  float _565;
  float _566;
  float _570;
  float _571;
  float _572;
  float _580;
  float _584;
  float _585;
  float _586;
  float _588;
  float _589;
  float _590;
  float _591;
  float _592;
  float _593;
  float _594;
  float _596;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _603;
  float _605;
  float _606;
  float _610;
  float _611;
  float _613;
  float _616;
  float _617;
  float _625;
  float _626;
  float _638;
  float _642;
  float _664;
  float _665;
  float _667;
  float _670;
  float _671;
  float _679;
  float _691;
  float _695;
  float _702;
  float _714;
  float _715;
  float _716;
  float _717;
  float _721;
  float _740;
  float _741;
  float _742;
  float _743;
  float _744;
  float _751;
  float _761;
  float _762;
  float _763;
  float2 _776;
  float _788;
  float _789;
  float _790;
  float _791;
  float _797;
  float _800;
  float _813;
  float _814;
  float _815;
  float _828;
  float _829;
  float _830;
  float _832;
  int _17[4];
  _24 = (int)(SV_GroupID.x) & 3;
  _25 = (uint)((uint)(_24)) >> 1;
  _33 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _17[0] = _33.x;
  _17[1] = _33.y;
  _17[2] = _33.z;
  _17[3] = _33.w;
  _43 = _17[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _47 = select((((int)(SV_GroupID.x) & 4) == 0), _43, ((uint)((uint)(_43)) >> 16));
  _53 = (uint)((uint)((uint)((int)((int)(_24) - (int)((int)(_25) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_47)) << 5)) & 8160));
  _55 = (uint)((uint)((uint)((int)(_25) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_47)) >> 3) & 8160));
  [branch]
  if (!(((((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((uint)((uint)(_53)) >> 5), ((uint)((uint)(_55)) >> 5), 0)))).x) & 1) == 0)) {
    if (_lightingParams.z > 0.0f) {
      _70 = __3__36__0__0__g_depthStencil.Load(int3(_53, _55, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
      _74 = ((float)((uint)((uint)(_70.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
      if (!((_74 < 1e-07f) || (_74 == 1.0f))) {
        _79 = (uint)((uint)(_70.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _80 = _79 & 127;
        _83 = max(1e-07f, _74);
        _92 = _bufferSizeAndInvSize.z * (((float)((uint)((uint)(_53)))) + 0.5f);
        _93 = _bufferSizeAndInvSize.w * (((float)((uint)((uint)(_55)))) + 0.5f);
        _95 = (_92 * 2.0f) + -1.0f;
        _97 = 1.0f - (_93 * 2.0f);
        _133 = mad((_invViewProjRelative[3].z), _83, mad((_invViewProjRelative[3].y), _97, (_95 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
        _134 = (mad((_invViewProjRelative[0].z), _83, mad((_invViewProjRelative[0].y), _97, (_95 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _133;
        _135 = (mad((_invViewProjRelative[1].z), _83, mad((_invViewProjRelative[1].y), _97, (_95 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _133;
        _136 = (mad((_invViewProjRelative[2].z), _83, mad((_invViewProjRelative[2].y), _97, (_95 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _133;
        _143 = 1.0f / sqrt(((_135 * _135) + (_134 * _134)) + (_136 * _136));
        _145 = __3__36__0__0__g_baseColor.Load(int3(_53, _55, 0));  // [sem: _3__36__0__0__g_baseColor_load]
        _151 = __3__36__0__0__g_normal.Load(int3(_53, _55, 0));  // [sem: _3__36__0__0__g_normal_load]
        _160 = half(((float)((uint)((uint)(((uint)((uint)(_145.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _164 = half(((float)((uint)((uint)(_145.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _169 = half(((float)((uint)((uint)(((uint)((uint)(_145.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _178 = half(((float)((uint)((uint)(((uint)((uint)(_145.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _190 = (uint)((_151.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
        _201 = (saturate(_151.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _202 = (saturate(_151.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _203 = (saturate(_151.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _205 = rsqrt(dot(float3(_201, _202, _203), float3(_201, _202, _203)));  // [sem: invLength]
        _209 = half(_205 * _201);
        _210 = half(_205 * _202);
        _211 = half(_203 * _205);
        // [sem: _3__36__0__0__g_baseColor_load_derived]
        _214 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_145.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
        _215 = ((half)((half)(half(((float)((uint)((uint)(_145.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _220 = float(_214 + _215) * 0.5f;
        _221 = float(_214 - _215) * 0.5f;
        _225 = (1.0f - abs(_220)) - abs(_221);
        _227 = rsqrt(dot(float3(_220, _221, _225), float3(_220, _221, _225)));  // [sem: invLength]
        _234 = float(_209);
        _235 = float(_210);
        _236 = float(_211);
        _238 = select((_211 >= 0.0h), 1.0f, -1.0f);
        _241 = -0.0f - (1.0f / (_238 + _236));
        _242 = _235 * _241;
        _243 = _242 * _234;
        _244 = _238 * _234;
        _251 = float(half(_227 * _220));
        _252 = float(half(_227 * _221));
        _253 = float(half(_227 * _225));
        _265 = half(mad(_253, _234, mad(_252, _243, (_251 * (((_244 * _234) * _241) + 1.0f)))));
        _266 = half(mad(_253, _235, mad(_252, ((_242 * _235) + _238), ((_251 * _238) * _243))));
        _267 = half(mad(_253, _236, mad(_252, (-0.0f - _235), (-0.0f - (_244 * _251)))));
        _269 = rsqrt((half)(dot(half3(_265, _266, _267), half3(_265, _266, _267))));  // [sem: invLength]
        _276 = saturate((half)(_160 * _160));  // [sem: expr_sat]
        _277 = saturate((half)(_164 * _164));  // [sem: expr_sat]
        _278 = saturate((half)(_169 * _169));  // [sem: expr_sat]
        // [sem: expr_sat]
        _297 = saturate((half)(saturate((half)(((half)(((half)(_277 * 0.3395996h)) + ((half)(_276 * 0.61328125h)))) + ((half)(_278 * 0.04736328h))))));
        // [sem: expr_sat]
        _298 = saturate((half)(saturate((half)(((half)(((half)(_277 * 0.9165039h)) + ((half)(_276 * 0.07019043h)))) + ((half)(_278 * 0.013450623h))))));
        // [sem: expr_sat]
        _299 = saturate((half)(saturate((half)(((half)(((half)(_277 * 0.109558105h)) + ((half)(_276 * 0.020614624h)))) + ((half)(_278 * 0.8696289h))))));
        _300 = max(0.020004272h, _178);
        _301 = saturate((half)(half(((float)((uint)((uint)(_145.y & 255)))) * 0.003921569f)));  // [sem: expr_sat]
        _303 = _79 & 126;
        if ((uint)_80 > (uint)10) {
          _308 = select((((uint)_80 < (uint)20) || (_80 == 107)), 0.0f, _301);
          _312 = (int)(_80) + (int)(-105);
          if (!((_303 == 96) || (_80 == 98))) {
            if ((uint)_312 < (uint)2) {
              if (_190 == 1) {
                _326 = 0.0h;
              } else {
                _326 = _308;
              }
              _327 = (_80 == 19);
              if (!((uint)_312 < (uint)2)) {
                _330 = _326;
                _331 = _327;
                if (!((_303 == 26) || (_80 == 28))) {
                  _336 = _331;
                  _337 = _330;
                  _340 = _336;
                  _341 = _337;
                  _342 = (_80 == 107);
                } else {
                  _340 = _331;
                  _341 = _330;
                  _342 = true;
                }
              } else {
                _340 = _327;
                _341 = _326;
                _342 = true;
              }
            } else {
              if (_80 == 65) {
                _326 = 0.0h;
                _327 = (_80 == 19);
                if (!((uint)_312 < (uint)2)) {
                  _330 = _326;
                  _331 = _327;
                  if (!((_303 == 26) || (_80 == 28))) {
                    _336 = _331;
                    _337 = _330;
                    _340 = _336;
                    _341 = _337;
                    _342 = (_80 == 107);
                  } else {
                    _340 = _331;
                    _341 = _330;
                    _342 = true;
                  }
                } else {
                  _340 = _327;
                  _341 = _326;
                  _342 = true;
                }
              } else {
                if ((_80 == 24) || (_80 == 29)) {
                  _330 = 0.0h;
                  _331 = (_80 == 19);
                  if (!((_303 == 26) || (_80 == 28))) {
                    _336 = _331;
                    _337 = _330;
                    _340 = _336;
                    _341 = _337;
                    _342 = (_80 == 107);
                  } else {
                    _340 = _331;
                    _341 = _330;
                    _342 = true;
                  }
                } else {
                  _326 = _308;
                  _327 = (_80 == 19);
                  if (!((uint)_312 < (uint)2)) {
                    _330 = _326;
                    _331 = _327;
                    if (!((_303 == 26) || (_80 == 28))) {
                      _336 = _331;
                      _337 = _330;
                      _340 = _336;
                      _341 = _337;
                      _342 = (_80 == 107);
                    } else {
                      _340 = _331;
                      _341 = _330;
                      _342 = true;
                    }
                  } else {
                    _340 = _327;
                    _341 = _326;
                    _342 = true;
                  }
                }
              }
            }
          } else {
            _326 = 0.0h;
            _327 = (_80 == 19);
            if (!((uint)_312 < (uint)2)) {
              _330 = _326;
              _331 = _327;
              if (!((_303 == 26) || (_80 == 28))) {
                _336 = _331;
                _337 = _330;
                _340 = _336;
                _341 = _337;
                _342 = (_80 == 107);
              } else {
                _340 = _331;
                _341 = _330;
                _342 = true;
              }
            } else {
              _340 = _327;
              _341 = _326;
              _342 = true;
            }
          }
        } else {
          _336 = false;
          _337 = _301;
          _340 = _336;
          _341 = _337;
          _342 = (_80 == 107);
        }
        _344 = (_303 == 64);
        _346 = (_lightingParams.x > 0.5f);
        if (_346) {
          _353 = (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_92, _93), 0.0f))).y);
        } else {
          _353 = 0.0f;
        }
        _354 = float(_269 * _265);
        _355 = float(_269 * _266);
        _356 = float(_269 * _267);
        if (_80 == 52) {
          _364 = (half)(saturate((half)(((half)(((half)(_298 + _297)) + _299)) * 1.2001953h)));
        } else {
          _364 = 1.0h;
        }
        _370 = ((half)(0.7001953h / (half)(min((half)(max((half)(max((half)(max(_297, _298)), _299)), 0.010002136h)), 0.7001953h)))) * _364;
        _383 = float(((half)(((half)(((half)(_370 * _297)) + -0.040008545h)) * _341)) + 0.040008545h);
        _384 = float(((half)(((half)(((half)(_370 * _298)) + -0.040008545h)) * _341)) + 0.040008545h);
        _385 = float(((half)(((half)(((half)(_370 * _299)) + -0.040008545h)) * _341)) + 0.040008545h);
        if (_346) {
          _394 = float(saturate((half)((half)(rsqrt((half)(dot(half3(_209, _210, _211), half3(_209, _210, _211))))) * _210)));
          _395 = _394 * _394;
          _396 = _395 * _395;
          _397 = _396 * _396;
          _400 = (_397 * _397) * (_353 * select(((_80 == 29) || (_340 || _342)), 0.0f, 1.0f));
          _405 = _354 - (_400 * _354);
          _406 = (_400 * (1.0f - _355)) + _355;
          _407 = _356 - (_400 * _356);
          _409 = rsqrt(dot(float3(_405, _406, _407), float3(_405, _406, _407)));  // [sem: invLength]
          _414 = (_405 * _409);
          _415 = (_406 * _409);
          _416 = (_407 * _409);
        } else {
          _414 = _354;
          _415 = _355;
          _416 = _356;
        }
        _417 = float(_300);
        _418 = _417 * _417;
        _419 = _418 * _418;
        _421 = float(_300 * 0.60009766h);
        _422 = _421 * _421;
        _423 = _422 * _422;
        _425 = __3__36__0__0__g_manyLightsHitData.Load(int3(_53, _55, 0));  // [sem: _3__36__0__0__g_manyLightsHitData_load]
        _435 = select((((int)(_425.x) | (int)(_425.y)) != 0), (((uint)((uint)(_425.x)) >> 16) & 32767), 32767);
        _438 = __3__37__0__0__g_manyLightsDataBuffer[_435]._position.x;
        _439 = __3__37__0__0__g_manyLightsDataBuffer[_435]._position.y;
        _440 = __3__37__0__0__g_manyLightsDataBuffer[_435]._position.z;
        _442 = __3__37__0__0__g_manyLightsDataBuffer[_435]._color.x;
        _443 = __3__37__0__0__g_manyLightsDataBuffer[_435]._color.y;
        _444 = __3__37__0__0__g_manyLightsDataBuffer[_435]._color.z;
        // RenoDX: >>> [Patch: LocalLightHueCorrection] [Version: 1.16.00]
        // Description: Corrects the resolved local-light RGB toward the configured warm-fire hue and saturation before
        //              the color reaches its alpha, geometry, or scene-composite consumers. Only the already-resolved
        //              X/Y/Z color channels are rewritten; the W channel and resource index remain untouched.
        //              The explicit neutral-settings gate performs no helper call or RGB write when hue is 0 and
        //              saturation is 1, so the disabled path is the exact successor-A dataflow.
        if (LOCAL_LIGHT_HUE_CORRECTION > 0.0f || abs(LOCAL_LIGHT_SATURATION - 1.0f) > 1e-6f) {
          float3 _rndx_local_light_corrected = ApplyLocalLightHueCorrection(
              float3(_442, _443, _444),
              LOCAL_LIGHT_HUE_CORRECTION,
              LOCAL_LIGHT_SATURATION);
          _442 = _rndx_local_light_corrected.x;
          _443 = _rndx_local_light_corrected.y;
          _444 = _rndx_local_light_corrected.z;
        }
        // RenoDX: <<< [Patch: LocalLightHueCorrection]
        _445 = __3__37__0__0__g_manyLightsDataBuffer[_435]._color.w;
        _447 = __3__37__0__0__g_manyLightsDataBuffer[_435]._up.x;
        _448 = __3__37__0__0__g_manyLightsDataBuffer[_435]._up.y;
        _450 = __3__37__0__0__g_manyLightsDataBuffer[_435]._look.x;
        _451 = __3__37__0__0__g_manyLightsDataBuffer[_435]._look.y;
        _454 = _438 - _134;
        _455 = _439 - _135;
        _456 = _440 - _136;
        _462 = sqrt(((_454 * _454) + (_455 * _455)) + (_456 * _456));
        _463 = 1.0f / _462;
        _464 = _463 * _454;
        _465 = _463 * _455;
        _466 = _463 * _456;
        _471 = f16tof32(((uint)(_447 & 65535)));
        _472 = f16tof32(((uint)((uint)((uint)(_447)) >> 16)));
        _473 = f16tof32(((uint)(_448 & 65535)));
        _474 = f16tof32(((uint)((uint)((uint)(_448)) >> 16)));
        _476 = rsqrt(dot(float3(_471, _472, _473), float3(_471, _472, _473)));  // [sem: invLength]
        _480 = f16tof32(((uint)(_450 & 65535)));
        _481 = f16tof32(((uint)((uint)((uint)(_450)) >> 16)));
        _482 = f16tof32(((uint)(_451 & 65535)));
        _484 = rsqrt(dot(float3(_480, _481, _482), float3(_480, _481, _482)));  // [sem: invLength]
        _485 = _484 * _480;
        _486 = _484 * _481;
        _487 = _484 * _482;
        if (!(!(_474 >= 0.0f))) {
          _497 = mad(_466, (_476 * _473), mad(_465, (_476 * _472), ((_464 * _471) * _476)));
          _500 = mad(_466, _487, mad(_465, _486, (_485 * _464)));
          _508 = atan((-0.0f - _500) / (-0.0f - _497));
          _511 = (_497 > -0.0f);
          _512 = (_497 == -0.0f);
          _513 = (_500 <= -0.0f);
          _514 = (_500 > -0.0f);
          // [sem: _3__36__0__0__g_lightProfile_sampleLod]
          _531 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_464, _465, _466), float3(_485, _486, _487))) * 0.31830987f) + 0.5f), ((abs(f16tof32(((uint)((uint)((uint)(_451)) >> 16)))) * saturate(abs(select((_512 && _513), 0.5f, select((_512 && _514), -0.5f, (select((_511 && _514), (_508 + -3.1415927f), select((_511 && _513), (_508 + 3.1415927f), _508)) * 0.31830987f)))))) + _474)), 0.0f);
          _537 = (_531.x * _442);
          _538 = (_531.x * _443);
          _539 = (_531.x * _444);
        } else {
          _537 = _442;
          _538 = _443;
          _539 = _444;
        }
        _540 = abs(_445);
        _549 = _143 * _134;
        _550 = _143 * _135;
        _551 = _143 * _136;
        _552 = _464 * _462;
        _553 = _465 * _462;
        _554 = _466 * _462;
        _555 = -0.0f - _549;
        _556 = -0.0f - _550;
        _557 = -0.0f - _551;
        _559 = dot(float3(_555, _556, _557), float3(_354, _355, _356)) * 2.0f;
        _563 = _555 - (_559 * _354);
        _564 = _556 - (_559 * _355);
        _565 = _557 - (_559 * _356);
        _566 = dot(float3(_552, _553, _554), float3(_563, _564, _565));
        _570 = (_563 * _566) - _552;
        _571 = (_564 * _566) - _553;
        _572 = (_565 * _566) - _554;
        _580 = saturate(_540 / sqrt(((_570 * _570) + (_571 * _571)) + (_572 * _572)));  // [sem: expr_sat]
        _584 = (_570 * _580) + _552;
        _585 = (_571 * _580) + _553;
        _586 = (_572 * _580) + _554;
        _588 = rsqrt(dot(float3(_584, _585, _586), float3(_584, _585, _586)));  // [sem: invLength]
        _589 = _584 * _588;
        _590 = _585 * _588;
        _591 = _586 * _588;
        _592 = _589 - _549;
        _593 = _590 - _550;
        _594 = _591 - _551;
        _596 = rsqrt(dot(float3(_592, _593, _594), float3(_592, _593, _594)));  // [sem: invLength]
        _597 = _592 * _596;
        _598 = _593 * _596;
        _599 = _594 * _596;
        _600 = dot(float3(_354, _355, _356), float3(_589, _590, _591));
        _601 = dot(float3(_414, _415, _416), float3(_589, _590, _591));
        _603 = saturate(dot(float3(_354, _355, _356), float3(_555, _556, _557)));  // [sem: expr_sat]
        _605 = saturate(dot(float3(_414, _415, _416), float3(_597, _598, _599)));  // [sem: expr_sat]
        _606 = dot(float3(_555, _556, _557), float3(_597, _598, _599));
        if (!(_600 <= 0.0f)) {
          _610 = saturate(1.0f - _606);  // [sem: expr_sat]
          _611 = _610 * _610;
          _613 = (_611 * _611) * _610;
          _616 = _613 * saturate(_384 * 50.0f);
          _617 = 1.0f - _613;
          _625 = saturate(_601);  // [sem: _601_sat]
          _626 = 1.0f - _418;
          _638 = (((_605 * _419) - _605) * _605) + 1.0f;
          _642 = (_419 / ((_638 * _638) * 3.1415927f)) * (0.5f / ((((_603 * _626) + _418) * _601) + (_603 * ((_601 * _626) + _418))));
          _653 = (max((((_617 * _383) + _616) * _642), 0.0f) * _625);
          _654 = (max((((_617 * _384) + _616) * _642), 0.0f) * _625);
          _655 = (max((((_617 * _385) + _616) * _642), 0.0f) * _625);
          // RenoDX: >>> [Patch: MaterialDiffuseBRDF] [Version: 1.16.00]
          // Description: The native punctual-light diffuse term is a plain Lambert lobe (NdotL / pi), which loses the
          //              retro-reflection and rough-surface energy that microfacet diffuse models reproduce, so rough
          //              dielectrics lit by local lights look flat. This block optionally substitutes a physically based
          //              diffuse scalar (EON at mode 2, Hammon at mode 1) evaluated from the same NdotL, NdotV, LdotV/
          //              VdotH and roughness inputs the native lobe uses. Mode 0 is the default and keeps the exact
          //              native Lambert expression.
          if (DIFFUSE_BRDF_MODE >= 2.0f) {
            float _rndx_sNdotL = saturate(_600);
            float _rndx_LdotV = dot(float3(_589, _590, _591), float3(_555, _556, _557));
            _656 = _rndx_sNdotL * EON_DiffuseScalar(_rndx_sNdotL, _603, _rndx_LdotV, _417);
          } else if (DIFFUSE_BRDF_MODE >= 1.0f) {
            float _rndx_sNdotL = saturate(_600);
            _656 = _rndx_sNdotL * HammonDiffuseScalar(_rndx_sNdotL, _603, _605, _606, _417);
          } else {
            _656 = (_600 * 0.31830987f);
          }
          // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
        } else {
          _653 = 0.0f;
          _654 = 0.0f;
          _655 = 0.0f;
          _656 = 0.0f;
        }
        if ((_80 != 65) && _344) {
          _664 = saturate(1.0f - _606);  // [sem: expr_sat]
          _665 = _664 * _664;
          _667 = (_665 * _665) * _664;
          _670 = _667 * saturate(_384 * 50.0f);
          _671 = 1.0f - _667;
          _679 = 1.0f - _422;
          _691 = (((_605 * _423) - _605) * _605) + 1.0f;
          _695 = (_423 / ((_691 * _691) * 3.1415927f)) * (0.5f / ((((_603 * _679) + _422) * _601) + (_603 * ((_601 * _679) + _422))));
          _702 = saturate(_601) * 0.39990234f;
          _710 = ((max((((_671 * _383) + _670) * _695), 0.0f) * _702) + (_653 * 0.60009766f));
          _711 = ((max((((_671 * _384) + _670) * _695), 0.0f) * _702) + (_654 * 0.60009766f));
          _712 = ((max((((_671 * _385) + _670) * _695), 0.0f) * _702) + (_655 * 0.60009766f));
        } else {
          _710 = _653;
          _711 = _654;
          _712 = _655;
        }
        // RenoDX: >>> [Patch: MaterialDiffraction] [Version: 1.16.00]
        // Description: Smooth conductive and coated surfaces show a wavelength-dependent colour shift and fine
        //              speckle when lit by a small bright source; the native specular lobe is achromatic and cannot
        //              produce it. This block multiplies the local-light specular RGB by a per-channel diffraction
        //              tint derived from the half-vector geometry, roughness and screen position, weighted by the
        //              material gate so only materials flagged for it are affected. The multiplier is
        //              lerp(1, shift, DIFFRACTION * gate), so at strength 0 the specular is left exactly as native.
        if (DIFFRACTION > 0.0f && float(_341) > 0.0f) {
          float3 _rndx_dShift = DiffractionShiftAndSpeckleCS(
              _605, _603, _417,
              float2(_92, _93), (_nearFarProj.x / _83),
              float3(_597, _598, _599),
              float3(_414, _415, _416),
              float3(_383, _384, _385));
          float3 _rndx_dMod = lerp(1.0f, _rndx_dShift, DIFFRACTION * float(_341));
          _710 *= _rndx_dMod.x;
          _711 *= _rndx_dMod.y;
          _712 *= _rndx_dMod.z;
        }
        // RenoDX: <<< [Patch: MaterialDiffraction]
        // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.16.00]
        // Description: Softens the geometric shadow terminator after this branch has resolved its diffuse
        //              scalar and specular RGB. The factor is derived from the matched N.L, V.H, and N.H
        //              roles and multiplies all four resolved outputs at their shared post-branch boundary.
        //              The entire mutation is inside the SMOOTH_TERMINATOR gate; at 0 no output is written.
        if (SMOOTH_TERMINATOR > 0.0f) {
          float _rndx_st = CallistoSmoothTerminator(_600, _606, _605, SMOOTH_TERMINATOR, 0.5f);
          _656 *= _rndx_st;
          _710 *= _rndx_st;
          _711 *= _rndx_st;
          _712 *= _rndx_st;
        }
        // RenoDX: <<< [Patch: MaterialSmoothTerminator]
        // [sem: expr_sat]
        _714 = saturate(select((_540 > 99999.0f), 1.0f, (1.0f / max((_540 * _540), (_462 * _462))))) * (((float)((bool)((((float)((uint)((uint)(_425.x & 65535)))) * 0.01560998f) >= 1000.0f))) * asfloat(_425.y));
        _715 = _714 * _537;
        _716 = _714 * _538;
        _717 = _714 * _539;
        _721 = float(_178);
        if ((_190 != 3) && _344) {
          _736 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
        } else {
          _736 = saturate(exp2((_721 * _721) * ((_nearFarProj.x / _83) * -0.00577078f)));  // [sem: expr_sat]
        }
        _740 = select((_cavityParams.x == 0.0f), 1.0f, _736);
        _741 = float(_341);
        _742 = float(_297);
        _743 = float(_298);
        _744 = float(_299);
        _751 = 0.7f / min(max(max(max(_742, _743), _744), 0.01f), 0.7f);
        _761 = (((_751 * _742) + -0.04f) * _741) + 0.04f;
        _762 = (((_751 * _743) + -0.04f) * _741) + 0.04f;
        _763 = (((_751 * _744) + -0.04f) * _741) + 0.04f;
        if (_344) {
          _769 = (_761 * _740);
          _770 = (_762 * _740);
          _771 = (_763 * _740);
        } else {
          _769 = _761;
          _770 = _762;
          _771 = _763;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _776 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, saturate(dot(float3(_555, _556, _557), float3(_414, _415, _416)))), (1.0f - _417)), 0.0f);
        _788 = (_710 * _715) / max(0.01f, ((_776.x * _769) + _776.y));
        _789 = (_711 * _716) / max(0.01f, ((_776.x * _770) + _776.y));
        _790 = (_712 * _717) / max(0.01f, ((_776.x * _771) + _776.y));
        _791 = dot(float3(_788, _789, _790), float3(0.212671f, 0.71516f, 0.072169f));
        _797 = min((_exposure3.w * 8192.0f), _791) / max(1e-06f, _791);
        _800 = _exposure4.x * _656;
        _813 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_788 * _797)))));
        _814 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_789 * _797)))));
        _815 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_790 * _797)))));
        _828 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_715 * _800)))));
        _829 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_716 * _800)))));
        _830 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_717 * _800)))));
        _832 = dot(float3(_828, _829, _830), float3(0.212671f, 0.71516f, 0.072169f)) / _exposure4.x;
        __3__38__0__1__g_sceneDiffuseUAV[int2(_53, _55)] = float4(_828, _829, _830, 0.0f);
        [branch]
        if ((((_813 > 0.0f) || (_814 > 0.0f)) || (_815 > 0.0f)) || (_832 > 0.0f)) {
          __3__38__0__1__g_specularResultUAV[int2(_53, _55)] = float4(_813, _814, _815, _832);
        }
      }
    }
  }
}
