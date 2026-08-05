Texture2D<float3> __3__36__0__0__g_higherRes : register(t86, space36);

RWTexture2D<float3> __3__38__0__1__g_blurredBloomUAV : register(u26, space38);

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

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

groupshared uint _global_0[128];
groupshared uint _global_1[128];
groupshared uint _global_2[128];
groupshared float _global_3[384];

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  uint _11;
  uint _14;
  uint _18;
  uint _19;
  uint _20;
  int _21;
  float3 _23;
  float3 _27;
  int _36;
  int _50;
  float3 _52;
  float3 _56;
  int _66;
  uint _81;
  uint _82;
  int _83;
  int _85;
  int _87;
  int _89;
  float _91;
  float _93;
  float _95;
  int _97;
  int _99;
  int _101;
  int _103;
  float _104;
  float _105;
  float _106;
  float _108;
  float _110;
  float _112;
  int _114;
  int _116;
  int _118;
  int _120;
  float _121;
  float _122;
  float _123;
  float _125;
  float _127;
  float _129;
  int _131;
  int _133;
  int _135;
  int _137;
  float _138;
  float _139;
  float _140;
  float _142;
  float _144;
  float _146;
  int _148;
  int _150;
  int _152;
  int _154;
  float _155;
  float _156;
  float _157;
  uint _172;
  uint _225;
  uint _265;
  uint _268;
  uint _273;
  uint _280;
  uint _287;
  uint _292;
  uint _300;
  uint _305;
  uint _313;
  uint _318;
  _11 = (uint)(SV_GroupThreadID.x) << 1;
  _14 = (uint)((uint)((uint)(SV_GroupID.x) << 3) + (uint)(-4)) + (uint)((uint)(_11));
  _18 = (uint)((uint)((uint)(SV_GroupID.y) << 3) + (uint)(-4)) + (uint)((uint)(SV_GroupThreadID.y) << 1);
  _19 = (uint)(SV_GroupThreadID.y) << 4;
  _20 = (uint)((uint)(_19)) + (uint)(SV_GroupThreadID.x);
  _21 = (int)(_14) | (int)(1);
  _23 = __3__36__0__0__g_higherRes.Load(int3(_21, _18, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _27 = __3__36__0__0__g_higherRes.Load(int3(_14, _18, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _36 = (int)min((uint)(_20), (uint)(127));
  _global_0[_36] = ((int)((int)(f32tof16(_27.x)) & 65535) | (int)((int)((uint)(f32tof16(_23.x)) << 16)));
  _global_1[_36] = ((int)((int)(f32tof16(_27.y)) & 65535) | (int)((int)((uint)(f32tof16(_23.y)) << 16)));
  _global_2[_36] = ((int)((int)(f32tof16(_27.z)) & 65535) | (int)((int)((uint)(f32tof16(_23.z)) << 16)));
  _50 = (int)(_18) | (int)(1);
  _52 = __3__36__0__0__g_higherRes.Load(int3(_21, _50, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _56 = __3__36__0__0__g_higherRes.Load(int3(_14, _50, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _66 = (int)min((uint)(((int)(_20) + (int)(8))), (uint)(127));
  _global_0[_66] = ((int)((int)(f32tof16(_56.x)) & 65535) | (int)((int)((uint)(f32tof16(_52.x)) << 16)));
  _global_1[_66] = ((int)((int)(f32tof16(_56.y)) & 65535) | (int)((int)((uint)(f32tof16(_52.y)) << 16)));
  _global_2[_66] = ((int)((int)(f32tof16(_56.z)) & 65535) | (int)((int)((uint)(f32tof16(_52.z)) << 16)));
  GroupMemoryBarrierWithGroupSync();
  _81 = (uint)((uint)(_20)) + (uint)((uint)((int)(SV_GroupThreadID.x) & 4));
  _82 = (uint)((uint)(_19)) + (uint)((uint)(_11));
  _83 = (int)min((uint)(_81), (uint)(127));
  _85 = _global_0[_83];
  _87 = _global_1[_83];
  _89 = _global_2[_83];
  _91 = f16tof32(((uint)((uint)((uint)(_85)) >> 16)));
  _93 = f16tof32(((uint)((uint)((uint)(_87)) >> 16)));
  _95 = f16tof32(((uint)((uint)((uint)(_89)) >> 16)));
  _97 = (int)min((uint)(((int)((uint)((uint)(_81)) + (uint)(1)))), (uint)(127));
  _99 = _global_0[_97];
  _101 = _global_1[_97];
  _103 = _global_2[_97];
  _104 = f16tof32((uint)(_99));
  _105 = f16tof32((uint)(_101));
  _106 = f16tof32((uint)(_103));
  _108 = f16tof32(((uint)((uint)((uint)(_99)) >> 16)));
  _110 = f16tof32(((uint)((uint)((uint)(_101)) >> 16)));
  _112 = f16tof32(((uint)((uint)((uint)(_103)) >> 16)));
  _114 = (int)min((uint)(((int)((uint)((uint)(_81)) + (uint)(2)))), (uint)(127));
  _116 = _global_0[_114];
  _118 = _global_1[_114];
  _120 = _global_2[_114];
  _121 = f16tof32((uint)(_116));
  _122 = f16tof32((uint)(_118));
  _123 = f16tof32((uint)(_120));
  _125 = f16tof32(((uint)((uint)((uint)(_116)) >> 16)));
  _127 = f16tof32(((uint)((uint)((uint)(_118)) >> 16)));
  _129 = f16tof32(((uint)((uint)((uint)(_120)) >> 16)));
  _131 = (int)min((uint)(((int)((uint)((uint)(_81)) + (uint)(3)))), (uint)(127));
  _133 = _global_0[_131];
  _135 = _global_1[_131];
  _137 = _global_2[_131];
  _138 = f16tof32((uint)(_133));
  _139 = f16tof32((uint)(_135));
  _140 = f16tof32((uint)(_137));
  _142 = f16tof32(((uint)((uint)((uint)(_133)) >> 16)));
  _144 = f16tof32(((uint)((uint)((uint)(_135)) >> 16)));
  _146 = f16tof32(((uint)((uint)((uint)(_137)) >> 16)));
  _148 = (int)min((uint)(((int)((uint)((uint)(_81)) + (uint)(4)))), (uint)(127));
  _150 = _global_0[_148];
  _152 = _global_1[_148];
  _154 = _global_2[_148];
  _155 = f16tof32((uint)(_150));
  _156 = f16tof32((uint)(_152));
  _157 = f16tof32((uint)(_154));
  _172 = (uint)((uint)(_82)) * (uint)(3);
  _global_3[((int)min((uint)(_172), (uint)(383)))] = ((((((_125 + _108) * 0.21875f) + (_121 * 0.2734375f)) + ((_138 + _104) * 0.109375f)) + ((_142 + _91) * 0.03125f)) + ((f16tof32((uint)(_85)) + _155) * 0.00390625f));
  _global_3[((int)min((uint)(((int)(_172) | (int)(1))), (uint)(383)))] = ((((((_127 + _110) * 0.21875f) + (_122 * 0.2734375f)) + ((_139 + _105) * 0.109375f)) + ((_144 + _93) * 0.03125f)) + ((f16tof32((uint)(_87)) + _156) * 0.00390625f));
  _global_3[((int)min((uint)(((int)((uint)((uint)(_172)) + (uint)(2)))), (uint)(383)))] = ((((((_129 + _112) * 0.21875f) + (_123 * 0.2734375f)) + ((_140 + _106) * 0.109375f)) + ((_146 + _95) * 0.03125f)) + ((f16tof32((uint)(_89)) + _157) * 0.00390625f));
  _225 = (uint)((uint)((int)(_82) | (int)(1))) * (uint)(3);
  _global_3[((int)min((uint)(_225), (uint)(383)))] = ((((((_138 + _121) * 0.21875f) + (_125 * 0.2734375f)) + ((_142 + _108) * 0.109375f)) + ((_155 + _104) * 0.03125f)) + ((f16tof32(((uint)((uint)((uint)(_150)) >> 16))) + _91) * 0.00390625f));
  _global_3[((int)min((uint)(((int)((uint)((uint)(_225)) + (uint)(1)))), (uint)(383)))] = ((((((_139 + _122) * 0.21875f) + (_127 * 0.2734375f)) + ((_144 + _110) * 0.109375f)) + ((_156 + _105) * 0.03125f)) + ((f16tof32(((uint)((uint)((uint)(_152)) >> 16))) + _93) * 0.00390625f));
  _global_3[((int)min((uint)(((int)((uint)((uint)(_225)) + (uint)(2)))), (uint)(383)))] = ((((((_140 + _123) * 0.21875f) + (_129 * 0.2734375f)) + ((_146 + _112) * 0.109375f)) + ((_157 + _106) * 0.03125f)) + ((f16tof32(((uint)((uint)((uint)(_154)) >> 16))) + _95) * 0.00390625f));
  GroupMemoryBarrierWithGroupSync();
  _265 = (uint)((uint)(SV_GroupThreadID.y) << 3) + (uint)(SV_GroupThreadID.x);
  _268 = (uint)((uint)(_265)) * (uint)(3);
  _273 = (uint)((uint)(_265)) * (uint)(3);
  _280 = (uint)((uint)(_265)) * (uint)(3);
  _287 = (uint)((uint)(_265)) * (uint)(3);
  _292 = (uint)((uint)(_265)) * (uint)(3);
  _300 = (uint)((uint)(_265)) * (uint)(3);
  _305 = (uint)((uint)(_265)) * (uint)(3);
  _313 = (uint)((uint)(_265)) * (uint)(3);
  _318 = (uint)((uint)(_265)) * (uint)(3);
  __3__38__0__1__g_blurredBloomUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3((((((((_global_3[((int)min((uint)(((int)((uint)((uint)(_280)) + (uint)(96)))), (uint)(383)))]) * 0.2734375f) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_273)) + (uint)(72)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_268)) + (uint)(120)))), (uint)(383)))])) * 0.21875f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_292)) + (uint)(48)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_287)) + (uint)(144)))), (uint)(383)))])) * 0.109375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_305)) + (uint)(24)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_300)) + (uint)(168)))), (uint)(383)))])) * 0.03125f)) + (((_global_3[((int)min((uint)(_318), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_313)) + (uint)(192)))), (uint)(383)))])) * 0.00390625f)) * _glareBlurParam.x), (((((((_global_3[((int)min((uint)(((int)((uint)((uint)(_280)) + (uint)(97)))), (uint)(383)))]) * 0.2734375f) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_273)) + (uint)(73)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_268)) + (uint)(121)))), (uint)(383)))])) * 0.21875f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_292)) + (uint)(49)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_287)) + (uint)(145)))), (uint)(383)))])) * 0.109375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_305)) + (uint)(25)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_300)) + (uint)(169)))), (uint)(383)))])) * 0.03125f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_318)) + (uint)(1)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_313)) + (uint)(193)))), (uint)(383)))])) * 0.00390625f)) * _glareBlurParam.x), (((((((_global_3[((int)min((uint)(((int)((uint)((uint)(_280)) + (uint)(98)))), (uint)(383)))]) * 0.2734375f) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_273)) + (uint)(74)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_268)) + (uint)(122)))), (uint)(383)))])) * 0.21875f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_292)) + (uint)(50)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_287)) + (uint)(146)))), (uint)(383)))])) * 0.109375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_305)) + (uint)(26)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_300)) + (uint)(170)))), (uint)(383)))])) * 0.03125f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_318)) + (uint)(2)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_313)) + (uint)(194)))), (uint)(383)))])) * 0.00390625f)) * _glareBlurParam.x));
}
