// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float3> __3__36__0__0__g_ghostHalo : register(t100, space36);

Texture2D<float3> __3__36__0__0__g_blade : register(t101, space36);

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _textureSizeAndInvSize : packoffset(c000.x);
  float4 _ghostsParams : packoffset(c001.x);
  float4 _ghostsMultiplyColor : packoffset(c002.x);
  float4 _haloParams : packoffset(c003.x);
  float4 _glareBladeParams : packoffset(c004.x);
  uint2 _tileXY : packoffset(c005.x);
  float2 _bufferRatio : packoffset(c005.z);
  float _lensFlareColorScale : packoffset(c006.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float3 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float3 SV_Target;
  float3 _12;
  float _18;
  float _20;
  float _21;
  float _22;
  float3 _24;
  float _28;
  float3 _29;
  float _33;
  float3 _34;
  float3 _38;
  float _56;
  float _57;
  // [sem: _3__36__0__0__g_ghostHalo_sampleLod]
  _12 = __3__36__0__0__g_ghostHalo.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
  _18 = _textureSizeAndInvSize.z * 0.5f;
  _20 = _textureSizeAndInvSize.w * 0.5f;
  _21 = TEXCOORD.x - _18;
  _22 = TEXCOORD.y - _20;
  _24 = __3__36__0__0__g_blade.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_21, _22), 0.0f);  // [sem: _3__36__0__0__g_blade_sampleLod]
  _28 = _18 + TEXCOORD.x;
  _29 = __3__36__0__0__g_blade.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_28, _22), 0.0f);  // [sem: _3__36__0__0__g_blade_sampleLod]
  _33 = _20 + TEXCOORD.y;
  _34 = __3__36__0__0__g_blade.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_21, _33), 0.0f);  // [sem: _3__36__0__0__g_blade_sampleLod]
  _38 = __3__36__0__0__g_blade.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_28, _33), 0.0f);  // [sem: _3__36__0__0__g_blade_sampleLod]
  // RenoDX: >>> [Patch: LensFlareSlowExposure] [Version: 1.16.00]
  // Description: Perceptual auto exposure routes both flare-normalization reads through the slow exposure value to prevent pumping; vanilla auto exposure keeps both native reads unchanged.
  float _renodxLensFlareExposure = (IMPROVED_AUTO_EXPOSURE >= 1) ? max(_exposure4.z, 0.001f) : _exposure0.y;
  _56 = (_lensFlareColorScale * 8.0f) * select((_lensFlareColorScale < 1.0001f), 1.0f, ((max(0.01f, min(1.0f, _renodxLensFlareExposure)) * 3.0f) + (1.0f / min(max(0.5f, _renodxLensFlareExposure), 10.0f))));
  // RenoDX: <<< [Patch: LensFlareSlowExposure]
  _57 = _lensFlareColorScale * 0.5f;
  // RenoDX: >>> [Patch: LensFlareStrength] [Version: 1.16.00]
  // Description: Applies one normalized user strength to the completed RGB flare, preserving the native halo-to-blade balance; a value of 1 leaves every native channel unchanged.
  float _renodxLensFlareStrength = LENS_FLARE_STRENGTH;
  SV_Target.x = (exp2(log2((_56 * _12.x) + (_57 * (((_29.x + _24.x) + _34.x) + _38.x))))) * _renodxLensFlareStrength;
  SV_Target.y = (exp2(log2((_56 * _12.y) + (_57 * (((_29.y + _24.y) + _34.y) + _38.y))))) * _renodxLensFlareStrength;
  SV_Target.z = (exp2(log2((_56 * _12.z) + (_57 * (((_29.z + _24.z) + _34.z) + _38.z))))) * _renodxLensFlareStrength;
  // RenoDX: <<< [Patch: LensFlareStrength]
  return SV_Target;
}
