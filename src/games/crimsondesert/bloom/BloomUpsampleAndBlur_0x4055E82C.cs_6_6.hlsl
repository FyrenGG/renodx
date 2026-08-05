Texture2D<float3> __3__36__0__0__g_higherRes : register(t86, space36);

Texture2D<float3> __3__36__0__0__g_lowerRes : register(t87, space36);

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

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

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
  uint _13;
  uint _16;
  uint _20;
  uint _21;
  uint _22;
  int _23;
  float3 _25;
  float3 _29;
  int _38;
  int _52;
  float3 _54;
  float3 _58;
  int _68;
  uint _83;
  uint _84;
  int _85;
  int _87;
  int _89;
  int _91;
  float _93;
  float _95;
  float _97;
  int _99;
  int _101;
  int _103;
  int _105;
  float _106;
  float _107;
  float _108;
  float _110;
  float _112;
  float _114;
  int _116;
  int _118;
  int _120;
  int _122;
  float _123;
  float _124;
  float _125;
  float _127;
  float _129;
  float _131;
  int _133;
  int _135;
  int _137;
  int _139;
  float _140;
  float _141;
  float _142;
  float _144;
  float _146;
  float _148;
  int _150;
  int _152;
  int _154;
  int _156;
  float _157;
  float _158;
  float _159;
  uint _174;
  uint _227;
  uint _268;
  float3 _280;
  float _286;
  float _287;
  float _288;
  uint _289;
  uint _294;
  uint _301;
  uint _307;
  uint _312;
  uint _319;
  uint _324;
  uint _331;
  uint _336;
  _13 = (uint)(SV_GroupThreadID.x) << 1;
  _16 = (uint)((uint)((uint)(SV_GroupID.x) << 3) + (uint)(-4)) + (uint)((uint)(_13));
  _20 = (uint)((uint)((uint)(SV_GroupID.y) << 3) + (uint)(-4)) + (uint)((uint)(SV_GroupThreadID.y) << 1);
  _21 = (uint)(SV_GroupThreadID.y) << 4;
  _22 = (uint)((uint)(_21)) + (uint)(SV_GroupThreadID.x);
  _23 = (int)(_16) | (int)(1);
  _25 = __3__36__0__0__g_higherRes.Load(int3(_23, _20, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _29 = __3__36__0__0__g_higherRes.Load(int3(_16, _20, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _38 = (int)min((uint)(_22), (uint)(127));
  _global_0[_38] = ((int)((int)(f32tof16(_29.x)) & 65535) | (int)((int)((uint)(f32tof16(_25.x)) << 16)));
  _global_1[_38] = ((int)((int)(f32tof16(_29.y)) & 65535) | (int)((int)((uint)(f32tof16(_25.y)) << 16)));
  _global_2[_38] = ((int)((int)(f32tof16(_29.z)) & 65535) | (int)((int)((uint)(f32tof16(_25.z)) << 16)));
  _52 = (int)(_20) | (int)(1);
  _54 = __3__36__0__0__g_higherRes.Load(int3(_23, _52, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _58 = __3__36__0__0__g_higherRes.Load(int3(_16, _52, 0));  // [sem: _3__36__0__0__g_higherRes_load]
  _68 = (int)min((uint)(((int)(_22) + (int)(8))), (uint)(127));
  _global_0[_68] = ((int)((int)(f32tof16(_58.x)) & 65535) | (int)((int)((uint)(f32tof16(_54.x)) << 16)));
  _global_1[_68] = ((int)((int)(f32tof16(_58.y)) & 65535) | (int)((int)((uint)(f32tof16(_54.y)) << 16)));
  _global_2[_68] = ((int)((int)(f32tof16(_58.z)) & 65535) | (int)((int)((uint)(f32tof16(_54.z)) << 16)));
  GroupMemoryBarrierWithGroupSync();
  _83 = (uint)((uint)(_22)) + (uint)((uint)((int)(SV_GroupThreadID.x) & 4));
  _84 = (uint)((uint)(_21)) + (uint)((uint)(_13));
  _85 = (int)min((uint)(_83), (uint)(127));
  _87 = _global_0[_85];
  _89 = _global_1[_85];
  _91 = _global_2[_85];
  _93 = f16tof32(((uint)((uint)((uint)(_87)) >> 16)));
  _95 = f16tof32(((uint)((uint)((uint)(_89)) >> 16)));
  _97 = f16tof32(((uint)((uint)((uint)(_91)) >> 16)));
  _99 = (int)min((uint)(((int)((uint)((uint)(_83)) + (uint)(1)))), (uint)(127));
  _101 = _global_0[_99];
  _103 = _global_1[_99];
  _105 = _global_2[_99];
  _106 = f16tof32((uint)(_101));
  _107 = f16tof32((uint)(_103));
  _108 = f16tof32((uint)(_105));
  _110 = f16tof32(((uint)((uint)((uint)(_101)) >> 16)));
  _112 = f16tof32(((uint)((uint)((uint)(_103)) >> 16)));
  _114 = f16tof32(((uint)((uint)((uint)(_105)) >> 16)));
  _116 = (int)min((uint)(((int)((uint)((uint)(_83)) + (uint)(2)))), (uint)(127));
  _118 = _global_0[_116];
  _120 = _global_1[_116];
  _122 = _global_2[_116];
  _123 = f16tof32((uint)(_118));
  _124 = f16tof32((uint)(_120));
  _125 = f16tof32((uint)(_122));
  _127 = f16tof32(((uint)((uint)((uint)(_118)) >> 16)));
  _129 = f16tof32(((uint)((uint)((uint)(_120)) >> 16)));
  _131 = f16tof32(((uint)((uint)((uint)(_122)) >> 16)));
  _133 = (int)min((uint)(((int)((uint)((uint)(_83)) + (uint)(3)))), (uint)(127));
  _135 = _global_0[_133];
  _137 = _global_1[_133];
  _139 = _global_2[_133];
  _140 = f16tof32((uint)(_135));
  _141 = f16tof32((uint)(_137));
  _142 = f16tof32((uint)(_139));
  _144 = f16tof32(((uint)((uint)((uint)(_135)) >> 16)));
  _146 = f16tof32(((uint)((uint)((uint)(_137)) >> 16)));
  _148 = f16tof32(((uint)((uint)((uint)(_139)) >> 16)));
  _150 = (int)min((uint)(((int)((uint)((uint)(_83)) + (uint)(4)))), (uint)(127));
  _152 = _global_0[_150];
  _154 = _global_1[_150];
  _156 = _global_2[_150];
  _157 = f16tof32((uint)(_152));
  _158 = f16tof32((uint)(_154));
  _159 = f16tof32((uint)(_156));
  _174 = (uint)((uint)(_84)) * (uint)(3);
  _global_3[((int)min((uint)(_174), (uint)(383)))] = ((((((_127 + _110) * 0.21875f) + (_123 * 0.2734375f)) + ((_140 + _106) * 0.109375f)) + ((_144 + _93) * 0.03125f)) + ((f16tof32((uint)(_87)) + _157) * 0.00390625f));
  _global_3[((int)min((uint)(((int)(_174) | (int)(1))), (uint)(383)))] = ((((((_129 + _112) * 0.21875f) + (_124 * 0.2734375f)) + ((_141 + _107) * 0.109375f)) + ((_146 + _95) * 0.03125f)) + ((f16tof32((uint)(_89)) + _158) * 0.00390625f));
  _global_3[((int)min((uint)(((int)((uint)((uint)(_174)) + (uint)(2)))), (uint)(383)))] = ((((((_131 + _114) * 0.21875f) + (_125 * 0.2734375f)) + ((_142 + _108) * 0.109375f)) + ((_148 + _97) * 0.03125f)) + ((f16tof32((uint)(_91)) + _159) * 0.00390625f));
  _227 = (uint)((uint)((int)(_84) | (int)(1))) * (uint)(3);
  _global_3[((int)min((uint)(_227), (uint)(383)))] = ((((((_140 + _123) * 0.21875f) + (_127 * 0.2734375f)) + ((_144 + _110) * 0.109375f)) + ((_157 + _106) * 0.03125f)) + ((f16tof32(((uint)((uint)((uint)(_152)) >> 16))) + _93) * 0.00390625f));
  _global_3[((int)min((uint)(((int)((uint)((uint)(_227)) + (uint)(1)))), (uint)(383)))] = ((((((_141 + _124) * 0.21875f) + (_129 * 0.2734375f)) + ((_146 + _112) * 0.109375f)) + ((_158 + _107) * 0.03125f)) + ((f16tof32(((uint)((uint)((uint)(_154)) >> 16))) + _95) * 0.00390625f));
  _global_3[((int)min((uint)(((int)((uint)((uint)(_227)) + (uint)(2)))), (uint)(383)))] = ((((((_142 + _125) * 0.21875f) + (_131 * 0.2734375f)) + ((_148 + _114) * 0.109375f)) + ((_159 + _108) * 0.03125f)) + ((f16tof32(((uint)((uint)((uint)(_156)) >> 16))) + _97) * 0.00390625f));
  GroupMemoryBarrierWithGroupSync();
  __3__38__0__1__g_blurredBloomUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(0.0f, 0.0f, 0.0f);
  _268 = (uint)((uint)(SV_GroupThreadID.y) << 3) + (uint)(SV_GroupThreadID.x);
  // [sem: _3__36__0__0__g_lowerRes_sampleLod]
  _280 = __3__36__0__0__g_lowerRes.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2((_textureSizeAndInvSize.z * (((float)((uint)(SV_DispatchThreadID.x))) + 0.5f)), (_textureSizeAndInvSize.w * (((float)((uint)(SV_DispatchThreadID.y))) + 0.5f))), 0.0f);
  _286 = __3__38__0__1__g_blurredBloomUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].x;
  _287 = __3__38__0__1__g_blurredBloomUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].y;
  _288 = __3__38__0__1__g_blurredBloomUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].z;
  _289 = (uint)((uint)(_268)) * (uint)(3);
  _294 = (uint)((uint)(_268)) * (uint)(3);
  _301 = (uint)((uint)(_268)) * (uint)(3);
  _307 = (uint)((uint)(_268)) * (uint)(3);
  _312 = (uint)((uint)(_268)) * (uint)(3);
  _319 = (uint)((uint)(_268)) * (uint)(3);
  _324 = (uint)((uint)(_268)) * (uint)(3);
  _331 = (uint)((uint)(_268)) * (uint)(3);
  _336 = (uint)((uint)(_268)) * (uint)(3);
  __3__38__0__1__g_blurredBloomUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(((((((_286 + _280.x) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_294)) + (uint)(72)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_289)) + (uint)(120)))), (uint)(383)))])) * 0.21875f)) + ((_global_3[((int)min((uint)(((int)((uint)((uint)(_301)) + (uint)(96)))), (uint)(383)))]) * 0.2734375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_312)) + (uint)(48)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_307)) + (uint)(144)))), (uint)(383)))])) * 0.109375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_324)) + (uint)(24)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_319)) + (uint)(168)))), (uint)(383)))])) * 0.03125f)) + (((_global_3[((int)min((uint)(_336), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_331)) + (uint)(192)))), (uint)(383)))])) * 0.00390625f)), ((((((_287 + _280.y) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_294)) + (uint)(73)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_289)) + (uint)(121)))), (uint)(383)))])) * 0.21875f)) + ((_global_3[((int)min((uint)(((int)((uint)((uint)(_301)) + (uint)(97)))), (uint)(383)))]) * 0.2734375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_312)) + (uint)(49)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_307)) + (uint)(145)))), (uint)(383)))])) * 0.109375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_324)) + (uint)(25)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_319)) + (uint)(169)))), (uint)(383)))])) * 0.03125f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_336)) + (uint)(1)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_331)) + (uint)(193)))), (uint)(383)))])) * 0.00390625f)), ((((((_288 + _280.z) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_294)) + (uint)(74)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_289)) + (uint)(122)))), (uint)(383)))])) * 0.21875f)) + ((_global_3[((int)min((uint)(((int)((uint)((uint)(_301)) + (uint)(98)))), (uint)(383)))]) * 0.2734375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_312)) + (uint)(50)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_307)) + (uint)(146)))), (uint)(383)))])) * 0.109375f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_324)) + (uint)(26)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_319)) + (uint)(170)))), (uint)(383)))])) * 0.03125f)) + (((_global_3[((int)min((uint)(((int)((uint)((uint)(_336)) + (uint)(2)))), (uint)(383)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_331)) + (uint)(194)))), (uint)(383)))])) * 0.00390625f)));
}
