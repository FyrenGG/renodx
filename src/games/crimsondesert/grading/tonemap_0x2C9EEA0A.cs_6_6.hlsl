// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared RenoDX tonemap, option, color, auto-exposure, and debug helpers consumed by the host-selected active HDR intermediate pipeline.
#include "./tonemap.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

RWTexture2D<float4> __3__38__0__1__g_textureUAV : register(u13, space38);

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Keeps the exact native constant-buffer declarations as an inactive layout witness while tonemap.hlsli supplies the live declarations required by the host-selected active replacement.
#if 0 // Equivalent register layouts are supplied by tonemap.hlsli.
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
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

// RenoDX: >>> [Patch: TonemapIntermediatePipelineHelpers] [Version: 1.16.00]
// Description: Defines the AP1 conversion, display grading, and LUT-coordinate transforms used by the host-selected active HDR intermediate-tonemap replacement.
float3 ConvertAP1ToBT709(float3 scene_ap1) {
  return float3(
      max(0.0f, (((scene_ap1.x * 1.705049991607666f) - (scene_ap1.y * 0.6217899918556213f)) - (scene_ap1.z * 0.08325999975204468f))),
      max(0.0f, (((scene_ap1.y * 1.1407999992370605f) - (scene_ap1.x * 0.13026000559329987f)) - (scene_ap1.z * 0.01054999977350235f))),
      max(0.0f, (((scene_ap1.x * -0.024000000208616257f) - (scene_ap1.y * 0.12896999716758728f)) + (scene_ap1.z * 1.1529699563980103f))));
}

float3 ApplyDisplayCurvesAndSaturation(float3 bt709, bool clamp = true) {
  float3 graded_components = ((bt709)*_slopeParams.xyz) + _offsetParams.xyz;
  if (clamp) {
    graded_components = max(0.0f, graded_components);
  }
  float3 curved = exp2(log2(graded_components) * _powerParams.xyz);
  float display_transform_luminance = dot(curved, float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
  return lerp(display_transform_luminance.xxx, curved, _powerParams.w);
}

float3 EncodeLutInputPQ(float3 linear_saturated) {
  return exp2(log2(linear_saturated * 0.0003509999660309404f) * 0.1593017578125f);
}

float3 EncodeDisplayTransformLutCoordinates(float3 lut_input) {
  return exp2(log2((1.0f / ((lut_input * 18.6875f) + 1.0f)) * ((lut_input * 18.8515625f) + 0.8359375f)) * 78.84375f);
}

// RenoDX: <<< [Patch: TonemapIntermediatePipelineHelpers]

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  // RenoDX: >>> [Patch: TonemapIntermediatePipeline] [Version: 1.16.00]
  // Description: The host selects this active replacement only while RenoDX shader replacement is enabled; it selects the shared custom HDR tonemap or the native display-transform compatibility path that writes the paired raw-PQ intermediate.
  float4 _12 = __3__36__0__0__g_sceneColor.Load(int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), 0));
  float4 _12_unexposed = _12;

  if (RENODX_TONE_MAP_TYPE != 0) {
    // `_exposure0.x` is the AE solve from AdaptExposure. `_userImageAdjust.z`
    // is a separate grading exposure multiplier layered on top of that solve.
    float new_exposure = _exposure0.x;
    float user_exposure = _userImageAdjust.z;
    float tonemap_exposure_mul = user_exposure * new_exposure;
    _12.xyz *= tonemap_exposure_mul;

    float3 ungraded_ap1 = (IMPROVED_AUTO_EXPOSURE == 2) ? _12_unexposed.xyz : _12.xyz;
    float3 ungraded_bt709 = renodx::color::bt709::from::AP1(ungraded_ap1);
    float3 graded_bt709 = ApplyDisplayCurvesAndSaturation(ungraded_bt709, true);
    float3 input_color = lerp(ungraded_bt709, graded_bt709, RENODX_COLOR_GRADE_STRENGTH);

    float histogram_mean = 0.18f;
    float histogram_target_mean = 0.18f;
    float histogram_target = 0.18f;
    float mid_gray_scale = 1.f;
    float3 output_color;
    [branch]
    if (IMPROVED_AUTO_EXPOSURE == 2) {
      // Current anchor = clean adapted field plus FastBg/SlowBg carryover.
      histogram_mean = GetPerceptualAdaptedFieldYf();

      // AE2 exposure0.x is solved against the live current anchor, not just the
      // clean field. Reconstruct the target from that same current anchor so the
      // tonemap anchors and debug panel reflect the actual bounded target.
      histogram_target_mean = histogram_mean;

      // Tonemap target anchor after applying both AE exposure and the user
      // grading exposure multiplier.
      histogram_target = histogram_target_mean * tonemap_exposure_mul;

      float3 psycho_input_color = input_color;
      output_color = CustomTonemap(psycho_input_color, histogram_mean, histogram_target);
    } else {
      const float mid_gray = 0.18f;
      float mid_gray_adjusted = mid_gray * lerp(1.0f, GetSDRTonemapExposure2BrightnessScalar(mid_gray), CUSTOM_TONE_MAP_MIDGRAY_ADJUST);
      float3 tonemap_input_color = input_color;
      output_color = CustomTonemap(tonemap_input_color, mid_gray, mid_gray_adjusted);
    }

    output_color = renodx::color::bt2020::from::BT709(output_color);
    output_color = renodx::color::pq::EncodeSafe(output_color, RENODX_DIFFUSE_WHITE_NITS);
    __3__38__0__1__g_textureUAV[int2((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y))] = float4(output_color, _12.w);
  } else {
    float new_exposure = _exposure0.x;
    float tonemap_exposure_mul = _userImageAdjust.z * new_exposure;
    _12.xyz *= tonemap_exposure_mul;

    float3 display_transform_bt709 = ConvertAP1ToBT709(_12.xyz);
    float3 display_saturated = ApplyDisplayCurvesAndSaturation(display_transform_bt709);
    float3 display_transform_lut_input = EncodeLutInputPQ(display_saturated);
    float3 display_transform_lut_uv = EncodeDisplayTransformLutCoordinates(display_transform_lut_input);

    float4 _125 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, display_transform_lut_uv, 0.0f);

    // RenoDX: >>> [Patch: TonemapIntermediateRawPQ] [Version: 1.16.00]
    // Description: On the RenoDX-active native-tonemap subpath, writes the display-transform LUT result as raw PQ so the patched HDR final passes apply one matching decode.
    float3 output_color = _125.xyz;
    __3__38__0__1__g_textureUAV[int2((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y))] = float4(output_color, _12.w);
    // RenoDX: <<< [Patch: TonemapIntermediateRawPQ]
  }
  // RenoDX: <<< [Patch: TonemapIntermediatePipeline]
}
