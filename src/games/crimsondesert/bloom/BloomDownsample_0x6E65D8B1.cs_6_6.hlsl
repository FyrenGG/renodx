Texture2D<float3> __3__36__0__0__g_glareSource : register(t21, space36);

Texture2D<float3> __3__36__0__0__g_colorAdatationSource : register(t88, space36);

RWTexture2D<float3> __3__38__0__1__g_bloom1UAV : register(u17, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom2UAV : register(u18, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom3UAV : register(u19, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom4UAV : register(u20, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom5UAV : register(u21, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom6UAV : register(u22, space38);

RWTexture2D<float3> __3__38__0__1__g_colorAdatationSourceUAV : register(u24, space38);

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _textureSizeAndInvSize : packoffset(c000.x);
  float4 _blurParam : packoffset(c001.x);
  float4 _glareParam : packoffset(c002.x);
  float4 _renderParam : packoffset(c003.x);
  float4 _exposureParam : packoffset(c004.x);
  float4 _histogramParam : packoffset(c005.x);
  float4 _whiteBalance : packoffset(c006.x);
  float4 _glareBlurParam : packoffset(c007.x);
  float4 _preFrameViewPosition : packoffset(c008.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

groupshared float _global_0[3072];
groupshared float _global_1[3072];

[numthreads(32, 32, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _16;
  float _26;
  float _27;
  float3 _30;
  float3 _35;
  float _164;
  float _165;
  float _166;
  float _167;
  float _168;
  float _169;
  float _276;
  float _277;
  float _278;
  float _279;
  float _280;
  float _281;
  float _388;
  float _389;
  float _390;
  float _391;
  float _392;
  float _393;
  float _500;
  float _501;
  float _502;
  float _503;
  float _504;
  float _505;
  uint _61;
  uint _77;
  uint _93;
  float _109;
  float _110;
  float _111;
  float _160;
  float _161;
  float _162;
  uint _173;
  uint _189;
  uint _205;
  float _221;
  float _222;
  float _223;
  float _272;
  float _273;
  float _274;
  uint _285;
  uint _301;
  uint _317;
  float _333;
  float _334;
  float _335;
  float _384;
  float _385;
  float _386;
  uint _397;
  uint _413;
  uint _429;
  float _445;
  float _446;
  float _447;
  float _496;
  float _497;
  float _498;
  uint _509;
  uint _525;
  uint _541;
  int _560;
  int _561;
  _16 = (int)((int)(SV_DispatchThreadID.y)) | (int)((int)(SV_DispatchThreadID.x));
  _26 = ((((float)((uint)(SV_DispatchThreadID.x))) * 2.0f) + 1.0f) * _textureSizeAndInvSize.z;
  _27 = ((((float)((uint)(SV_DispatchThreadID.y))) * 2.0f) + 1.0f) * _textureSizeAndInvSize.w;
  _30 = __3__36__0__0__g_glareSource.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_26, _27), 0.0f);  // [sem: _3__36__0__0__g_glareSource_sampleLod]
  _35 = __3__36__0__0__g_colorAdatationSource.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_26, _27), 0.0f);  // [sem: _3__36__0__0__g_colorAdatationSource_sampleLod]
  _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _30.x;
  _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _30.y;
  _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _30.z;
  __3__38__0__1__g_bloom1UAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(_30.x, _30.y, _30.z);
  _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _35.x;
  _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _35.y;
  _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _35.z;
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 1) == 0) {
    _61 = (uint)(SV_GroupIndex) + (uint)(1);
    _77 = (uint)(SV_GroupIndex) + (uint)(32);
    _93 = (uint)(SV_GroupIndex) + (uint)(33);
    _109 = ((((_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_61)) * (uint)(3))))), 3071u)]) + _30.x) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_77)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_93)) * (uint)(3))))), 3071u)])) * 0.25f;
    _110 = ((((_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_61)) * (uint)(3))))), 3071u)]) + _30.y) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_77)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_93)) * (uint)(3))))), 3071u)])) * 0.25f;
    _111 = ((((_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_61)) * (uint)(3))))), 3071u)]) + _30.z) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_77)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_93)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _109;
    _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _110;
    _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _111;
    __3__38__0__1__g_bloom2UAV[int2(((uint)(SV_DispatchThreadID.x) >> 1), ((uint)(SV_DispatchThreadID.y) >> 1))] = float3(_109, _110, _111);
    _160 = ((((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_61)) * (uint)(3))))), 3071u)]) + _35.x) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_77)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_93)) * (uint)(3))))), 3071u)])) * 0.25f;
    _161 = ((((_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_61)) * (uint)(3))))), 3071u)]) + _35.y) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_77)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_93)) * (uint)(3))))), 3071u)])) * 0.25f;
    _162 = ((((_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_61)) * (uint)(3))))), 3071u)]) + _35.z) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_77)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_93)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _160;
    _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _161;
    _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _162;
    _164 = _109;
    _165 = _110;
    _166 = _111;
    _167 = _160;
    _168 = _161;
    _169 = _162;
  } else {
    _164 = _30.x;
    _165 = _30.y;
    _166 = _30.z;
    _167 = _35.x;
    _168 = _35.y;
    _169 = _35.z;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 3) == 0) {
    _173 = (uint)(SV_GroupIndex) + (uint)(2);
    _189 = (uint)(SV_GroupIndex) + (uint)(64);
    _205 = (uint)(SV_GroupIndex) + (uint)(66);
    _221 = ((((_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_173)) * (uint)(3))))), 3071u)]) + _164) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_189)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_205)) * (uint)(3))))), 3071u)])) * 0.25f;
    _222 = ((((_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_173)) * (uint)(3))))), 3071u)]) + _165) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_189)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_205)) * (uint)(3))))), 3071u)])) * 0.25f;
    _223 = ((((_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_173)) * (uint)(3))))), 3071u)]) + _166) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_189)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_205)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _221;
    _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _222;
    _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _223;
    __3__38__0__1__g_bloom3UAV[int2(((uint)(SV_DispatchThreadID.x) >> 2), ((uint)(SV_DispatchThreadID.y) >> 2))] = float3(_221, _222, _223);
    _272 = ((((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_173)) * (uint)(3))))), 3071u)]) + _167) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_189)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_205)) * (uint)(3))))), 3071u)])) * 0.25f;
    _273 = ((((_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_173)) * (uint)(3))))), 3071u)]) + _168) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_189)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_205)) * (uint)(3))))), 3071u)])) * 0.25f;
    _274 = ((((_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_173)) * (uint)(3))))), 3071u)]) + _169) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_189)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_205)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _272;
    _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _273;
    _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _274;
    _276 = _221;
    _277 = _222;
    _278 = _223;
    _279 = _272;
    _280 = _273;
    _281 = _274;
  } else {
    _276 = _164;
    _277 = _165;
    _278 = _166;
    _279 = _167;
    _280 = _168;
    _281 = _169;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 7) == 0) {
    _285 = (uint)(SV_GroupIndex) + (uint)(4);
    _301 = (uint)(SV_GroupIndex) + (uint)(128);
    _317 = (uint)(SV_GroupIndex) + (uint)(132);
    _333 = ((((_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_285)) * (uint)(3))))), 3071u)]) + _276) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_301)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_317)) * (uint)(3))))), 3071u)])) * 0.25f;
    _334 = ((((_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_285)) * (uint)(3))))), 3071u)]) + _277) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_301)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_317)) * (uint)(3))))), 3071u)])) * 0.25f;
    _335 = ((((_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_285)) * (uint)(3))))), 3071u)]) + _278) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_301)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_317)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _333;
    _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _334;
    _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _335;
    __3__38__0__1__g_bloom4UAV[int2(((uint)(SV_DispatchThreadID.x) >> 3), ((uint)(SV_DispatchThreadID.y) >> 3))] = float3(_333, _334, _335);
    _384 = ((((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_285)) * (uint)(3))))), 3071u)]) + _279) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_301)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_317)) * (uint)(3))))), 3071u)])) * 0.25f;
    _385 = ((((_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_285)) * (uint)(3))))), 3071u)]) + _280) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_301)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_317)) * (uint)(3))))), 3071u)])) * 0.25f;
    _386 = ((((_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_285)) * (uint)(3))))), 3071u)]) + _281) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_301)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_317)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _384;
    _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _385;
    _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _386;
    _388 = _333;
    _389 = _334;
    _390 = _335;
    _391 = _384;
    _392 = _385;
    _393 = _386;
  } else {
    _388 = _276;
    _389 = _277;
    _390 = _278;
    _391 = _279;
    _392 = _280;
    _393 = _281;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 15) == 0) {
    _397 = (uint)(SV_GroupIndex) + (uint)(8);
    _413 = (uint)(SV_GroupIndex) + (uint)(256);
    _429 = (uint)(SV_GroupIndex) + (uint)(264);
    _445 = ((((_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_397)) * (uint)(3))))), 3071u)]) + _388) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_413)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_429)) * (uint)(3))))), 3071u)])) * 0.25f;
    _446 = ((((_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_397)) * (uint)(3))))), 3071u)]) + _389) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_413)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_429)) * (uint)(3))))), 3071u)])) * 0.25f;
    _447 = ((((_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_397)) * (uint)(3))))), 3071u)]) + _390) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_413)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_429)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _445;
    _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _446;
    _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _447;
    __3__38__0__1__g_bloom5UAV[int2(((uint)(SV_DispatchThreadID.x) >> 4), ((uint)(SV_DispatchThreadID.y) >> 4))] = float3(_445, _446, _447);
    _496 = ((((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_397)) * (uint)(3))))), 3071u)]) + _391) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_413)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_429)) * (uint)(3))))), 3071u)])) * 0.25f;
    _497 = ((((_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_397)) * (uint)(3))))), 3071u)]) + _392) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_413)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_429)) * (uint)(3))))), 3071u)])) * 0.25f;
    _498 = ((((_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_397)) * (uint)(3))))), 3071u)]) + _393) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_413)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_429)) * (uint)(3))))), 3071u)])) * 0.25f;
    _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _496;
    _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _497;
    _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 3071u)] = _498;
    _500 = _445;
    _501 = _446;
    _502 = _447;
    _503 = _496;
    _504 = _497;
    _505 = _498;
  } else {
    _500 = _388;
    _501 = _389;
    _502 = _390;
    _503 = _391;
    _504 = _392;
    _505 = _393;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 31) == 0) {
    _509 = (uint)(SV_GroupIndex) + (uint)(16);
    _525 = (uint)(SV_GroupIndex) + (uint)(512);
    _541 = (uint)(SV_GroupIndex) + (uint)(528);
    _560 = (uint)(SV_DispatchThreadID.x) >> 5;
    _561 = (uint)(SV_DispatchThreadID.y) >> 5;
    __3__38__0__1__g_bloom6UAV[int2(_560, _561)] = float3((((((_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_509)) * (uint)(3))))), 3071u)]) + _500) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_525)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_541)) * (uint)(3))))), 3071u)])) * 0.25f), (((((_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_509)) * (uint)(3))))), 3071u)]) + _501) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_525)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_541)) * (uint)(3))))), 3071u)])) * 0.25f), (((((_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_509)) * (uint)(3))))), 3071u)]) + _502) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_525)) * (uint)(3))))), 3071u)])) + (_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_541)) * (uint)(3))))), 3071u)])) * 0.25f));
    __3__38__0__1__g_colorAdatationSourceUAV[int2(_560, _561)] = float3((((((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_509)) * (uint)(3))))), 3071u)]) + _503) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_525)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_541)) * (uint)(3))))), 3071u)])) * 0.25f), (((((_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_509)) * (uint)(3))))), 3071u)]) + _504) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_525)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_541)) * (uint)(3))))), 3071u)])) * 0.25f), (((((_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_509)) * (uint)(3))))), 3071u)]) + _505) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_525)) * (uint)(3))))), 3071u)])) + (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_541)) * (uint)(3))))), 3071u)])) * 0.25f));
  }
}
