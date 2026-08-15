Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

RWTexture2D<float4> __3__38__0__1__g_textureUAV : register(u13, space38);

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

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  float4 _12;
  float _21;
  float _70;
  float _71;
  float _72;
  float _74;
  float _93;
  float _94;
  float _95;
  float4 _125;
  _12 = __3__36__0__0__g_sceneColor.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
  _21 = _userImageAdjust.z * _exposure0.x;
  _70 = exp2(log2(max(0.0f, (((_21 * max(0.0f, (((_12.x * 1.70505f) - (_12.y * 0.62179f)) - (_12.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
  _71 = exp2(log2(max(0.0f, (((max(0.0f, (((_12.y * 1.1408f) - (_12.x * 0.13026f)) - (_12.z * 0.01055f))) * _21) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
  _72 = exp2(log2(max(0.0f, (((max(0.0f, (((_12.x * -0.024f) - (_12.y * 0.12897f)) + (_12.z * 1.15297f))) * _21) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
  _74 = dot(float3(_70, _71, _72), float3(0.212671f, 0.71516f, 0.072169f));
  _93 = exp2(log2((lerp(_74, _70, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _94 = exp2(log2((lerp(_74, _71, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _95 = exp2(log2((lerp(_74, _72, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _125 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_93 * 18.6875f) + 1.0f)) * ((_93 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_94 * 18.6875f) + 1.0f)) * ((_94 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_95 * 18.6875f) + 1.0f)) * ((_95 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  __3__38__0__1__g_textureUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(select((_125.x <= 0.0031308f), (_125.x * 12.92f), (((pow(_125.x, 0.41666666f)) * 1.055f) + -0.055f)), select((_125.y <= 0.0031308f), (_125.y * 12.92f), (((pow(_125.y, 0.41666666f)) * 1.055f) + -0.055f)), select((_125.z <= 0.0031308f), (_125.z * 12.92f), (((pow(_125.z, 0.41666666f)) * 1.055f) + -0.055f)), _12.w);
}
