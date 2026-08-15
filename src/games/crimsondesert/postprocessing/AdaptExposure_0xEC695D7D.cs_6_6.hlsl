// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared options and helpers used by this shader's RenoDX patches. This dependency-only prefix adds no native executable statement; removing it restores the native shader body byte-for-byte.
#include "../shared.h"
#include "../common.hlsl"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture3D<float> __3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav : register(t162, space36);

StructuredBuffer<uint> __3__37__0__0__g_histogram : register(t4, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogram2 : register(t5, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogramR : register(t6, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogramG : register(t7, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogramB : register(t8, space37);

RWStructuredBuffer<float> __3__39__0__1__g_exposureUAV : register(u8, space39);

RWStructuredBuffer<float4> __3__39__0__1__g_autoWhiteBalanceColorUAV : register(u14, space39);

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

cbuffer __3__35__0__0__VoxelGlobalIlluminationConstantBuffer : register(b1, space35) {
  struct {
    float4 _voxelParams;
    float4 _invClipmapExtent;
    float4 _wrappedViewPosForInject;
    float4 _clipmapOffsetsForInject[8];
    float4 _clipmapRelativeIndexOffsetsForInject[8];
    float4 _wrappedViewPos;
    float4 _clipmapOffsets[8];
    float4 _clipmapOffsetsPrev[8];
    float4 _clipmapRelativeIndexOffsets[8];
    float4 _clipmapUVParams[2];
    float4 _clipmapUVRelativeOffset;
    uint4 _surfelTimestamps;
  } __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[48] : packoffset(c0);
  uint4 __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw_uint[48] : packoffset(c0);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _param0 : packoffset(c000.x);
  float4 _param1 : packoffset(c001.x);
  float4 _param2 : packoffset(c002.x);
  float4 _param3 : packoffset(c003.x);
};

SamplerState __0__4__0__0__g_staticVoxelSampler : register(s12, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

// RenoDX: >>> [Patch: PerceptualAEAdaptingField] [Version: 1.12.02]
// Description: The auto-exposure histogram stores luminance in a log2 domain that is normalised to the
// 0..255 bin range by a per-frame scale/bias pair (_param0.x / _param0.y). The vanilla shader only ever
// converts a bin back to linear luminance via exp2(), so there is no reusable inverse. The perceptual
// auto-exposure path below needs the *log2* luminance of a bin so it can average the adapting field
// geometrically instead of arithmetically; this helper is that missing inverse and performs no
// conversion of its own beyond undoing the bin normalisation.
float DecodeHistogramLog2Luminance(float histogram_bin, float histogram_scale, float histogram_bias) {
  float normalized_bin = histogram_bin * 0.00390625f;
  float shifted_bin = normalized_bin - histogram_bias;
  return shifted_bin / histogram_scale;
}
// RenoDX: <<< [Patch: PerceptualAEAdaptingField]
groupshared uint _global_0[256];
groupshared uint _global_1[256];
groupshared uint _global_2[768];

[numthreads(256, 1, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  bool _135;
  int _142;
  float _143;
  int _156;
  float _157;
  float _158;
  float _159;
  float _160;
  float _161;
  float _162;
  int _200;
  int _255;
  float _286;
  float _381;
  int _383;
  float _384;
  float _385;
  float _424;
  float _427;
  float _456;
  bool _635;
  int _643;
  float _644;
  int _657;
  float _658;
  float _659;
  float _660;
  float _661;
  int _690;
  float _691;
  int _705;
  float _706;
  float _707;
  float _708;
  float _709;
  int _738;
  float _739;
  int _753;
  float _754;
  float _755;
  float _756;
  float _757;
  float _884;
  float _885;
  float _897;
  float _923;
  float _924;
  float _925;
  float _926;
  float _950;
  float _951;
  int _952;
  float _972;
  float _973;
  int _974;
  float _994;
  float _995;
  int _996;
  uint _36;
  int _39;
  int _42;
  int _43;
  int _45;
  int _48;
  int _50;
  int _52;
  int _55;
  int _57;
  int _59;
  int _62;
  uint _68;
  uint _80;
  uint _92;
  uint _104;
  uint _116;
  bool _126;
  float _138;
  float _140;
  int _146;
  float _149;
  int _150;
  int _170;
  float _172;
  float _173;
  float _176;
  float _177;
  float _179;
  float _180;
  float _181;
  float _183;
  float _184;
  int _185;
  float _188;
  float _196;
  float _197;
  float _198;
  float4 _202;
  float4 _227;
  int _237;
  int _238;
  int _239;
  int _252;
  float _265;
  float _269;
  float _287;
  float _297;
  float _299;
  float _302;
  float _314;
  float _320;
  float _325;
  float _328;
  float _331;
  float _332;
  float _335;
  float _340;
  float _348;
  float _349;
  float _350;
  float _357;
  float _363;
  int _388;
  float _390;
  float _397;
  float _398;
  int _399;
  float _403;
  float _407;
  float _410;
  bool _414;
  float _416;
  float _419;
  float _440;
  float _452;
  uint _464;
  int _467;
  int _470;
  int _473;
  int _474;
  int _476;
  int _478;
  int _480;
  int _484;
  int _486;
  int _488;
  int _490;
  int _494;
  int _496;
  int _498;
  int _500;
  uint _515;
  uint _537;
  uint _559;
  uint _581;
  uint _603;
  bool _623;
  float _641;
  int _647;
  float _650;
  int _651;
  int _669;
  float _671;
  float _672;
  float _675;
  float _676;
  float _679;
  float _680;
  int _681;
  float _688;
  int _694;
  float _697;
  int _698;
  float _701;
  int _717;
  float _719;
  float _720;
  float _723;
  float _724;
  float _727;
  float _728;
  int _729;
  float _736;
  int _742;
  float _745;
  int _746;
  float _749;
  int _765;
  float _767;
  float _768;
  float _771;
  float _772;
  float _775;
  float _776;
  int _777;
  float _783;
  float _789;
  float _790;
  float _791;
  float _792;
  float _794;
  float _795;
  float _796;
  float _798;
  float _799;
  float _801;
  float _824;
  float _825;
  float _826;
  float _831;
  float _836;
  float _841;
  float _846;
  float _858;
  float _864;
  float _867;
  float _875;
  float _886;
  float _930;
  float _933;
  float _934;
  float _935;
  float _936;
  int _955;
  float _957;
  float _964;
  float _965;
  int _966;
  float _970;
  int _977;
  float _979;
  float _986;
  float _987;
  int _988;
  float _992;
  int _999;
  float _1001;
  float _1008;
  float _1009;
  int _1010;
  float _1014;
  float _1016;
  float _1020;
  float _1021;
  float _1022;
  int __loop_jump_target = -1;
  if ((int)(SV_GroupID.x) == 0) {
    _36 = (uint)(SV_GroupIndex) << 2;
    _39 = __3__37__0__0__g_histogram[_36];
    _42 = __3__37__0__0__g_histogram2[_36];
    _43 = (int)(_36) | (int)(1);
    _45 = __3__37__0__0__g_histogram[_43];
    _48 = __3__37__0__0__g_histogram2[_43];
    _50 = (int)(_36) | (int)(2);
    _52 = __3__37__0__0__g_histogram[_50];
    _55 = __3__37__0__0__g_histogram2[_50];
    _57 = (int)(_36) | (int)(3);
    _59 = __3__37__0__0__g_histogram[_57];
    _62 = __3__37__0__0__g_histogram2[_57];
    _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_39), (uint)(_45)))), (uint)(_52)))), (uint)(_59)));
    _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_42), (uint)(_48)))), (uint)(_55)))), (uint)(_62)));
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)32) {
      _68 = (uint)(SV_GroupIndex) + (uint)(32);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_68), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_68), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)16) {
      _80 = (uint)(SV_GroupIndex) + (uint)(16);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_80), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_80), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)8) {
      _92 = (uint)(SV_GroupIndex) + (uint)(8);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_92), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_92), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)4) {
      _104 = (uint)(SV_GroupIndex) + (uint)(4);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_104), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_104), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)2) {
      _116 = (uint)(SV_GroupIndex) + (uint)(2);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_116), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_116), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    _126 = ((int)(SV_GroupIndex) == 0);
    if (_126) {
      _global_0[0] = ((int)max((uint)((_global_0[0])), (uint)((_global_0[1]))));
      _global_1[0] = ((int)max((uint)((_global_1[0])), (uint)((_global_1[1]))));
      _135 = _126;
    } else {
      _135 = false;
    }
    GroupMemoryBarrierWithGroupSync();
    if (_135) {
      _138 = (float)((uint)((uint)(_global_0[0])));
      _140 = 1.0f / max(1e-06f, _138);
      _142 = 0;
      _143 = 0.0f;
      while(true) {
        _146 = __3__37__0__0__g_histogram[_142];
        _149 = (((float)((uint)((uint)(_146)))) * _140) + _143;
        _150 = (int)(_142) + (int)(1);
        if (!(_150 == 256)) {
          _142 = _150;
          _143 = _149;
          continue;
        }
        _156 = 0;
        _157 = 0.0f;
        _158 = 0.0f;
        _159 = (_149 * _param1.x);
        _160 = (_149 * _param1.y);
        _161 = 0.0f;
        _162 = 0.0f;
        while(true) {
          _170 = __3__37__0__0__g_histogram[_156];
          _172 = ((float)((uint)((uint)(_170)))) * _140;
          _173 = min(_159, _172);
          _176 = _160 - _173;
          _177 = min(_176, (_172 - _173));
          _179 = exp2(((((float)((uint)((uint)(_156)))) * 0.00390625f) - _param0.y) / _param0.x) * _177;
          _180 = _179 + _157;
          _181 = _177 + _158;
          _183 = _179 + _161;
          _184 = (_179 * _179) + _162;
          _185 = (int)(_156) + (int)(1);
          if (!(_185 == 256)) {
            _156 = _185;
            _157 = _180;
            _158 = _181;
            _159 = (_159 - _173);
            _160 = (_176 - _177);
            _161 = _183;
            _162 = _184;
            continue;
          }
          _188 = _183 * 0.00390625f;
          // RenoDX: >>> [Patch: AutoExposureEnvironmentBias] [Version: 1.12.02]
          // Description: The game clamps the metered histogram mean into a per-scene luminance window
          // (_param1.z / _param1.w) that the environment author picked. Those clamps are tuned for the
          // game's own SDR exposure placement curve and, in the perceptual auto-exposure mode, they
          // truncate the measured scene statistics before the perceptual solve ever sees them, which
          // pins indoor/outdoor transitions to the authored window instead of the real scene. This block
          // turns the clamp pair into a blendable pair: at Environment Bias 1 the authored window is used
          // unchanged (identical to vanilla), at 0 the window is opened to 0..65536 so the perceptual path
          // meters the visible scene directly. Only the perceptual mode reads the blend; every other mode
          // keeps the authored clamps verbatim. The histogram-mean clamp line at the end of the block is
          // the vanilla expression with the inline _param1.z/_param1.w clamps replaced by the blendable
          // _ae_min_lum/_ae_max_lum locals; that identifier substitution is its only change.
          float _ae_min_lum = _param1.z;
          float _ae_max_lum = _param1.w;
          if (IMPROVED_AUTO_EXPOSURE == 2) {
            float _psychov17_environment_bias = saturate(AE_ENVIRONMENT_BIAS);
            _ae_min_lum = lerp(0.0f, _ae_min_lum, _psychov17_environment_bias);
            _ae_max_lum = lerp(65536.0f, _ae_max_lum, _psychov17_environment_bias);
          }
          _196 = min(max((_180 / max(_181, 0.0001f)), _ae_min_lum), _ae_max_lum);
          // RenoDX: <<< [Patch: AutoExposureEnvironmentBias]
          _197 = sqrt(max(1e-09f, ((_184 * 0.00390625f) - (_188 * _188))));
          _198 = max(1e-06f, _196);
          // RenoDX: >>> [Patch: AutoExposureTargetLuminanceFilter] [Version: 1.12.02]
          // Description: _198 is the raw per-frame histogram mean. It jitters frame to frame because the
          // histogram is rebuilt from a jittered, temporally-reprojected frame, and that jitter is
          // amplified by the exponential exposure placement curve further down, producing visible
          // exposure and bloom shimmer on otherwise static scenes. This introduces a separate filtered
          // target that the exposure curve consumes instead of the raw mean. It is initialised to the raw
          // mean, so with every RenoDX auto-exposure option off it is bit-identical to vanilla; the
          // smoothing blocks below only overwrite it for the improved auto-exposure modes. The raw mean
          // _198 is still what gets published to the exposure buffer slots that other passes read as the
          // unfiltered meter. This and the bloom-side GlareSourcePreFilter are partial mitigations of
          // the same TAA-jitter bloom shimmer; neither removes it entirely, and the improved
          // auto-exposure modes benefit most.
          float _smoothed_target_yf = _198;
          // RenoDX: <<< [Patch: AutoExposureTargetLuminanceFilter]

          // RenoDX: >>> [Patch: AutoExposureModeMatchedHistory] [Version: 1.12.02]
          // Description: Slot 13 stores both history validity and the AE mode that wrote the exposure state as 1 + IMPROVED_AUTO_EXPOSURE. Treating the slot as a boolean lets Perceptual AE reuse Vanilla or Custom AE history slots with incompatible meanings, which can seed stale fast/slow adaptation state after mode or preset changes. This validates the marker and only reuses history when the stored mode matches the active mode.
          float _ae_history_state_raw = __3__39__0__1__g_exposureUAV[13];
          bool _ae_history_valid =
              (_ae_history_state_raw > 0.5f) && !isnan(_ae_history_state_raw) && !isinf(_ae_history_state_raw);
          float _ae_previous_mode = _ae_history_valid ? (floor(_ae_history_state_raw + 0.5f) - 1.0f) : -1.0f;
          bool _ae_mode_matches_history = abs(_ae_previous_mode - IMPROVED_AUTO_EXPOSURE) < 0.5f;
          bool _ae_temporal_continuity = !(_temporalReprojectionParams.w > 0.5f);
          bool _ae_can_reuse_history = _ae_history_valid && _ae_temporal_continuity && _ae_mode_matches_history;
          // RenoDX: <<< [Patch: AutoExposureModeMatchedHistory]

          // RenoDX: >>> [Patch: PerceptualAEAdaptingField] [Version: 1.12.02]
          // Description: The vanilla meter is a single arithmetic mean over the whole histogram, so a
          // small very bright or very dark region drags the exposure target away from what the viewer is
          // actually adapted to. Perceptual AE instead needs a "sustained background" estimate. This
          // block walks the histogram, discards the darkest 20% and brightest 20% of the accumulated
          // weight, and averages the remaining central band in log2 luminance (a geometric mean), which
          // is the domain visual adaptation actually operates in. Bin 0 is skipped because it collects
          // clamped/black pixels. Kraft & Brainard (1999, PNAS 96:307-312) show simple local-surround,
          // spatial-mean or max-flux rules are individually insufficient under natural viewing, so this
          // stays an engineering background estimate rather than a claim of a full appearance model.
          // The block only runs in the perceptual mode; every other mode leaves the field at the raw mean.
          float _psychov17_field_yf = _198;
          [branch]
          if (IMPROVED_AUTO_EXPOSURE == 2) {
            float _psychov17_band_lo = _149 * 0.20000000298023224f;
            float _psychov17_band_hi = _149 * 0.800000011920929f;
            int _psychov17_bin = 0;
            float _psychov17_sum_log = 0.0f;
            float _psychov17_sum_weight = 0.0f;
            float _psychov17_remaining_lo = _psychov17_band_lo;
            float _psychov17_remaining_hi = _psychov17_band_hi;
            while (true) {
              int _psychov17_count_i = __3__37__0__0__g_histogram[_psychov17_bin];
              float _psychov17_count = float((uint)_psychov17_count_i) * _140;
              float _psychov17_skip = min(_psychov17_remaining_lo, _psychov17_count);
              float _psychov17_after_skip = _psychov17_count - _psychov17_skip;
              float _psychov17_next_lo = _psychov17_remaining_lo - _psychov17_skip;
              float _psychov17_window = max(0.0f, _psychov17_remaining_hi - _psychov17_skip);
              float _psychov17_take = min(_psychov17_window, _psychov17_after_skip);
              float _psychov17_next_hi = _psychov17_window - _psychov17_take;
              if ((_psychov17_take > 0.0f) && (_psychov17_bin != 0)) {
                float _psychov17_log_yf = DecodeHistogramLog2Luminance(float((uint)_psychov17_bin), _param0.x, _param0.y);
                _psychov17_sum_log = (_psychov17_take * _psychov17_log_yf) + _psychov17_sum_log;
                _psychov17_sum_weight = _psychov17_take + _psychov17_sum_weight;
              }
              int _psychov17_next_bin_index = _psychov17_bin + 1;
              bool _psychov17_done = (_psychov17_next_bin_index == 256);
              if (!_psychov17_done) {
                _psychov17_bin = _psychov17_next_bin_index;
                _psychov17_remaining_lo = _psychov17_next_lo;
                _psychov17_remaining_hi = _psychov17_next_hi;
                continue;
              }
              if (_psychov17_sum_weight <= 0.0f) {
                _psychov17_field_yf = 0.0f;
              } else {
                float _psychov17_weight_safe = max(_psychov17_sum_weight, 9.999999747378752e-05f);
                float _psychov17_log_mean = _psychov17_sum_log / _psychov17_weight_safe;
                _psychov17_field_yf = exp2(_psychov17_log_mean);
              }
              break;
            }
          }
          // RenoDX: <<< [Patch: PerceptualAEAdaptingField]

          // RenoDX: >>> [Patch: PerceptualAEFieldSmoothing] [Version: 1.12.02]
          // Description: Perceptual AE computes a central 20-80% geometric field in the branch above, but the shared target smoothing block was chained as an else-if and was therefore unreachable for IMPROVED_AUTO_EXPOSURE == 2. Run the smoothing block independently so Perceptual AE feeds the filtered PsychoV17 field into the exposure solve instead of falling back to the raw histogram mean. Slot 19 of the exposure buffer carries the previous frame's filtered target; it is only reused when the mode-matched history check above says the stored state belongs to the active mode.
          [branch]
          if ((IMPROVED_AUTO_EXPOSURE == 1) || (IMPROVED_AUTO_EXPOSURE == 2)) {
            float _prevFilteredTarget = __3__39__0__1__g_exposureUAV[19];
            bool _prevFilteredTargetValid =
                _ae_can_reuse_history && (_prevFilteredTarget > 0.0001f) && !isnan(_prevFilteredTarget) &&
                !isinf(_prevFilteredTarget);
            float _targetSmoothAlpha = 1.0f;
            if (AE_TARGET_SMOOTHING_TIME > 0.0f) {
              float _targetSmoothTau = max(AE_TARGET_SMOOTHING_TIME, 9.999999747378752e-05f);
              _targetSmoothAlpha = 1.0f - exp(-_timeNoScale.z / _targetSmoothTau);
            }
            if (IMPROVED_AUTO_EXPOSURE == 1) {
              // Smoothed AE only: low-pass the raw histogram target before the
              // legacy exposure shaping below.
              if (_prevFilteredTargetValid) {
                float _logPrev = log2(_prevFilteredTarget);
                float _logCur = log2(_198);
                float _logSmooth = lerp(_logPrev, _logCur, _targetSmoothAlpha);
                _smoothed_target_yf = exp2(_logSmooth);
              }
            } else {
              // Perceptual AE keeps the scalar target dynamic, but filters the
              // target field in log space so low outdoor gains do not twitch
              // frame-to-frame from raw histogram noise.
              _smoothed_target_yf = max(_psychov17_field_yf, 9.999999747378752e-05f);
              if (_prevFilteredTargetValid) {
                float _logPrev = log2(_prevFilteredTarget);
                float _logCur = log2(_smoothed_target_yf);
                float _logSmooth = lerp(_logPrev, _logCur, _targetSmoothAlpha);
                _smoothed_target_yf = exp2(_logSmooth);
              }
            }
          }
          // RenoDX: <<< [Patch: PerceptualAEFieldSmoothing]

          // RenoDX: >>> [Patch: PerceptualAETargetBounds] [Version: 1.12.02]
          // Description: Perceptual AE drives exposure from a measured adaptation state, which by design
          // has no fixed anchor - a uniformly dark or uniformly bright scene will be pulled back toward
          // mid grey no matter how dark or bright it really was. These two optional user bounds put a
          // floor and a ceiling on the perceptual *target* luminance so scenes that should stay dark stay
          // dark and scenes that should stay bright stay bright. A bound of 0 means "unset". When both are
          // set the maximum is raised to at least the minimum so an inverted pair cannot produce an empty
          // interval. The bounds are read here and applied to the target further down; no other mode
          // observes them.
          float _psychov17_min_target_yf = 0.0f;
          float _psychov17_max_target_yf = 0.0f;
          bool _psychov17_has_min_target = false;
          bool _psychov17_has_max_target = false;
          bool _psychov17_has_target_bounds = false;
          if (IMPROVED_AUTO_EXPOSURE == 2) {
            _psychov17_min_target_yf = AE_PERCEPTUAL_MIN_BRIGHTNESS;
            _psychov17_max_target_yf = AE_PERCEPTUAL_MAX_BRIGHTNESS;
            _psychov17_has_min_target = _psychov17_min_target_yf > 0.0f;
            _psychov17_has_max_target = _psychov17_max_target_yf > 0.0f;
            _psychov17_has_target_bounds = _psychov17_has_min_target || _psychov17_has_max_target;
            if (_psychov17_has_target_bounds) {
              if (_psychov17_has_min_target && _psychov17_has_max_target) {
                _psychov17_max_target_yf = max(_psychov17_max_target_yf, _psychov17_min_target_yf);
              }
            }
          }
          // RenoDX: <<< [Patch: PerceptualAETargetBounds]
          _200 = 1;
          while(true) {
            _202 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_200) + (int)(20)))];
            _227 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_200) + (int)(36)))];
            _237 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x * _202.w) + _227.x));
            _238 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y * _202.w) + _227.y));
            _239 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z * _202.w) + _227.z));
            if (!(((((int)_237 >= (int)((int)(_202.x + -63.0f))) && ((int)_237 < (int)((int)(_202.x + 63.0f)))) && (((int)_238 >= (int)((int)(_202.y + -31.0f))) && ((int)_238 < (int)((int)(_202.y + 31.0f))))) && (((int)_239 >= (int)((int)(_202.z + -63.0f))) && ((int)_239 < (int)((int)(_202.z + 63.0f)))))) {
              _252 = (int)(_200) + (int)(1);
              if ((uint)_252 < (uint)8) {
                _200 = _252;
                continue;
              } else {
                _255 = -10000;
              }
            } else {
              _255 = _200;
            }
            if (!((uint)_255 > (uint)3)) {
              _265 = 1.0f / ((float)((uint)((uint)(1) << (_255 & 31))));
              _269 = frac(__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z * _265);
              // [sem: expr_sat]
              _286 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x * _265), (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y * _265), (((((float)((uint)((uint)((uint)(_255)) * (uint)(66)))) + 1.0f) + ((select((_269 < 0.0f), 1.0f, 0.0f) + _269) * 64.0f)) * 0.003787879f)), 0.0f)).x));
            } else {
              _286 = 1.0f;  // [sem: expr_sat]
            }
            _287 = sqrt(_286);
            // RenoDX: >>> [Patch: PerceptualAESkyVisibilityBias] [Version: 1.12.02]
            // Description: _287 is a sky-visibility term sampled from the voxel sky-occlusion clipmap; the
            // game uses it to reshape its exposure placement curve, so indoor spaces are metered
            // differently from open sky. In perceptual AE that heuristic fights the measured adaptation
            // state, because the exposure scalar is already derived from what the viewer is adapted to
            // rather than from the game's authored placement. Richer environmental context can help colour
            // constancy beyond reduced-cue setups (Gegenfurtner et al. 2024, PMCID: PMC10910556), so the
            // term is faded toward a neutral 0.5 rather than removed: at Environment Bias 1 the sampled
            // value is used unchanged (vanilla behaviour) and at 0 the placement curve sees a constant
            // half-open-sky context. Only the perceptual mode is affected.
            if (IMPROVED_AUTO_EXPOSURE == 2) {
              float _psychov17_environment_bias = saturate(AE_ENVIRONMENT_BIAS);
              _287 = lerp(0.5f, _287, _psychov17_environment_bias);
            }
            // RenoDX: <<< [Patch: PerceptualAESkyVisibilityBias]
            // RenoDX: >>> [Patch: AutoExposureTargetLuminanceFilter] [Version: 1.12.02]
            // Description: Consumption sites for the filtered exposure target introduced by the
            // [Patch: AutoExposureTargetLuminanceFilter] block above: the exposure placement curve
            // inputs (_297, _299, _325, _348) read _smoothed_target_yf in place of the raw per-frame
            // histogram mean _198, so the exponential placement curve no longer amplifies TAA-jitter
            // frame-to-frame meter noise into exposure and bloom shimmer. Only that identifier
            // substitution differs from vanilla on those four lines; the interleaved lines without a
            // _smoothed_target_yf reference are unmodified vanilla code kept inside the block for
            // contiguity. With every RenoDX auto-exposure option off the filtered target equals the
            // raw mean and the whole cluster is bit-identical to vanilla.
            _297 = (saturate((2.0f / (exp2(_smoothed_target_yf * -144.2695f) + 1.0f)) + -1.0f) * (_287 + 2.0f)) + (-1.5f - _287);
            _299 = log2(saturate(_smoothed_target_yf));
            _302 = _287 * 2.5f;
            _314 = (_197 * 10.0f) / max(1e-09f, _196);
            _320 = __3__39__0__1__g_autoWhiteBalanceColorUAV[1].w;
            _325 = min(max(_smoothed_target_yf, 0.0001f), 7.0f);
            _328 = saturate((_325 + -0.01f) * 0.14306152f);  // [sem: expr_sat]
            _331 = saturate((_325 + -0.0001f) * 101.0101f);  // [sem: expr_sat]
            _332 = _331 * 2.0f;
            _335 = (_331 * 3.0f) + -3.0f;
            _340 = _335 - (_335 * _328);
            _348 = (log2(_smoothed_target_yf * 8.0f) - _340) - ((((_332 + -3.5f) + ((3.0f - _332) * _328)) - _340) * sqrt(saturate(_287)));
            // RenoDX: <<< [Patch: AutoExposureTargetLuminanceFilter]
            _349 = exp2(_348);
            // RenoDX: >>> [Patch: PerceptualAEHistoryReset] [Version: 1.12.02]
            // Description: The game's exposure target is a static placement curve: it maps the current
            // meter straight to a gain with no memory, and all temporal behaviour comes from the
            // asymmetric filter further down. Perceptual AE instead models the viewer's adaptation state
            // explicitly and derives the gain from the ratio between where the viewer is adapted and where
            // the scene wants them to be. This block predicts that state.
            //
            // The state chases the filtered field exponentially in log luminance,
            //   alpha = 1 - exp(-dt / tau),
            // with tau selected by direction. Brightening uses the short-term constant directly.
            // Darkening is weighted by Rushton-Henry steady-state cone bleaching of the *previous* state:
            //   p_bleached = I / (I + I0), I0 ~= 10^4.3 troland,
            // so a dim preadaptation recovers on the short branch while a bright preadaptation drags the
            // long branch in. Reference direction: Webster (2011) on multi-timescale visual adaptation and
            // Stockman et al. (JOV 2006) on bleaching-dominated high-light regulation.
            //
            // Slots 9/10/11 hold the signed fast carryover, the adapted field and the signed slow
            // carryover. Those slots mean different things in the other AE modes, so every read is gated
            // by the mode-matched history check; on a mismatch or a temporal reset the state snaps to the
            // current field instead of inheriting an incompatible one. Nothing here is read outside the
            // perceptual mode.
            float _psychov17_predicted_fast_eqbg = 0.0f;
            float _psychov17_predicted_slow_eqbg = 0.0f;
            float _psychov17_predicted_current_state_yf = max(_smoothed_target_yf, 9.999999747378752e-05f);
            if (IMPROVED_AUTO_EXPOSURE == 2) {
              float _psychov17_predicted_field_yf = max(_smoothed_target_yf, 9.999999974752427e-07f);
              float _psychov17_prev_fast_eqbg = __3__39__0__1__g_exposureUAV[9];
              float _psychov17_prev_field_raw = __3__39__0__1__g_exposureUAV[10];
              float _psychov17_prev_field_yf = max(_psychov17_prev_field_raw, 9.999999974752427e-07f);
              float _psychov17_prev_slow_eqbg = __3__39__0__1__g_exposureUAV[11];
              bool _psychov17_prev_fast_valid =
                  _ae_can_reuse_history && !isnan(_psychov17_prev_fast_eqbg) && !isinf(_psychov17_prev_fast_eqbg);
              bool _psychov17_prev_field_valid =
                  _ae_can_reuse_history && (_psychov17_prev_field_raw > 0.0f) && !isnan(_psychov17_prev_field_raw) &&
                  !isinf(_psychov17_prev_field_raw);
              bool _psychov17_prev_slow_valid =
                  _ae_can_reuse_history && !isnan(_psychov17_prev_slow_eqbg) && !isinf(_psychov17_prev_slow_eqbg);
              float _psychov17_prev_current_state_yf = _psychov17_prev_field_yf;
              if (_psychov17_prev_fast_valid) {
                _psychov17_prev_current_state_yf += _psychov17_prev_fast_eqbg;
              }
              if (_psychov17_prev_slow_valid) {
                _psychov17_prev_current_state_yf += _psychov17_prev_slow_eqbg;
              }
              _psychov17_prev_current_state_yf = max(_psychov17_prev_current_state_yf, 9.999999747378752e-05f);
              float _psychov17_tau_fast = max(AE_DARK_TO_LIGHT_TIME, 0.10000000149011612f);
              float _psychov17_tau_slow = max(AE_LIGHT_TO_DARK_TIME, 0.10000000149011612f);
              if (!_ae_can_reuse_history) {
                _psychov17_predicted_current_state_yf = _psychov17_predicted_field_yf;
              } else if (!_psychov17_prev_field_valid) {
                _psychov17_predicted_current_state_yf = _psychov17_predicted_field_yf;
              } else if ((_psychov17_predicted_field_yf <= 0.0f) || isnan(_psychov17_predicted_field_yf) || isinf(_psychov17_predicted_field_yf)) {
                _psychov17_predicted_current_state_yf = _psychov17_prev_current_state_yf;
              } else {
                bool _psychov17_brightening = _psychov17_predicted_field_yf > _psychov17_prev_current_state_yf;
                float _psychov17_tau_state = _psychov17_tau_fast;
                if (!_psychov17_brightening) {
                  float _psychov17_prev_state_td =
                      max(_psychov17_prev_current_state_yf, 0.0f) * RENODX_DIFFUSE_WHITE_NITS * 4.0f;
                  float _psychov17_bleached_fraction =
                      _psychov17_prev_state_td / (_psychov17_prev_state_td + 20000.0f);
                  _psychov17_tau_state =
                      lerp(_psychov17_tau_fast, _psychov17_tau_slow, saturate(_psychov17_bleached_fraction));
                }
                float _psychov17_alpha_state =
                    1.0f - exp((-_timeNoScale.z) / _psychov17_tau_state);
                float _psychov17_log_prev_state = log2(_psychov17_prev_current_state_yf);
                float _psychov17_log_target_state = log2(_psychov17_predicted_field_yf);
                float _psychov17_log_current_state =
                    lerp(_psychov17_log_prev_state, _psychov17_log_target_state, _psychov17_alpha_state);
                _psychov17_predicted_current_state_yf = exp2(_psychov17_log_current_state);
              }
              float _psychov17_state_delta_yf =
                  _psychov17_predicted_current_state_yf - _psychov17_predicted_field_yf;
              _psychov17_predicted_fast_eqbg = min(_psychov17_state_delta_yf, 0.0f);
              _psychov17_predicted_slow_eqbg = max(_psychov17_state_delta_yf, 0.0f);
              _psychov17_predicted_current_state_yf = max(
                  _psychov17_predicted_field_yf + _psychov17_predicted_fast_eqbg + _psychov17_predicted_slow_eqbg,
                  9.999999747378752e-05f);
            }
            // RenoDX: <<< [Patch: PerceptualAEHistoryReset]
            _350 = 0.8333333f / _349;
            // RenoDX: >>> [Patch: PerceptualAETargetGain] [Version: 1.12.02]
            // Description: Replaces the game's exposure-placement gain with a perceptual one in
            // IMPROVED_AUTO_EXPOSURE == 2 only. The consuming tonemap builds
            //   current_average = adapted field + residual carryover
            //   target_average  = current_average * exposure_gain
            // so the gain has to encode the ratio between the predicted live adaptation anchor computed
            // above and the desired perceptual target average, rather than the game's authored curve. The
            // target average starts as the filtered field and is then constrained by the optional
            // perceptual min/max brightness bounds. The final ratio is clamped to 1e-4..16 so a
            // near-zero adaptation anchor cannot produce an unbounded exposure spike.
            if (IMPROVED_AUTO_EXPOSURE == 2) {
              float _ae2_target_field_yf = max(_smoothed_target_yf, 9.999999747378752e-05f);
              float _ae2_target_average_yf = _ae2_target_field_yf;
              if (_psychov17_has_min_target) {
                _ae2_target_average_yf = max(_ae2_target_average_yf, _psychov17_min_target_yf);
              }
              if (_psychov17_has_max_target) {
                _ae2_target_average_yf = min(_ae2_target_average_yf, _psychov17_max_target_yf);
              }
              _350 = clamp(
                  _ae2_target_average_yf / _psychov17_predicted_current_state_yf,
                  9.999999747378752e-05f,
                  16.0f);
            }
            // RenoDX: <<< [Patch: PerceptualAETargetGain]
            // RenoDX: >>> [Patch: AutoExposureAdaptationSpeed] [Version: 1.12.02]
            // Description: Two changes to the game's asymmetric temporal exposure filter.
            // (1) The reuse gate was the raw temporal-reprojection flag; it is now the mode-matched
            //     history check, so a mode or preset change also forces the same clean re-seed that a
            //     loading screen does instead of blending against state written under different
            //     semantics. With every option off the check reduces to the original flag.
            // (2) The perceptual mode already performs its own adaptation in log luminance when it builds
            //     the adaptation state, so running this second filter on top would double-filter and
            //     stall the response; it takes the target gain directly. The smoothed mode keeps the
            //     game's filter but scales the timestep by the user Adaptation Speed control, up to 3x.
            // The vanilla asymmetric behaviour is unchanged otherwise: brightening is interpolated in
            // reciprocal-exposure space, darkening in linear space.
            if (_ae_can_reuse_history) {
              _357 = __3__39__0__1__g_exposureUAV[1];
              [branch]
              if (IMPROVED_AUTO_EXPOSURE == 2) {
                _381 = _350;
              } else {
                float time_scale = _timeNoScale.z;
                if (IMPROVED_AUTO_EXPOSURE == 1.0f) time_scale = lerp(time_scale, time_scale * 3.0f, AE_SPEED);
                if (_350 > _357) {
                  _363 = 1.0f / _357;
                  _381 = (1.0f / (((1.0f - exp2(-0.0f - (_param2.x * time_scale))) * ((_349 * 1.2f) - _363)) + _363));
                } else {
                  _381 = (((1.0f - exp2(-0.0f - (_param2.y * time_scale))) * (_350 - _357)) + _357);
                }
              }
            } else {
              _381 = _350;
            }
            // RenoDX: <<< [Patch: AutoExposureAdaptationSpeed]
            _383 = 0;
            _384 = 0.0f;
            _385 = 0.0f;
            while(true) {
              _388 = __3__37__0__0__g_histogram[_383];
              _390 = ((float)((uint)((uint)(_388)))) * _140;
              _397 = (_390 * exp2(((((float)((uint)((uint)(_383)))) * 0.00390625f) - _param0.y) / _param0.x)) + _384;
              _398 = _390 + _385;
              _399 = (int)(_383) + (int)(1);
              if (!(_399 == 256)) {
                _383 = _399;
                _384 = _397;
                _385 = _398;
                continue;
              }
              _403 = _397 / max(_398, 0.0001f);
              // RenoDX: >>> [Patch: AutoExposureAdaptedFieldWrite] [Version: 1.12.02]
              // Description: Slot 10 is the adapted-field history the next frame reads back. Vanilla
              // seeds it from max(unclipped mean, raw histogram mean). In perceptual AE that raw
              // histogram jitter is exactly what the adaptation model must not inherit - the fast/slow
              // carryover already models adaptation memory, so feeding unfiltered per-frame noise into
              // the stored field makes scripted flashes, intro cards and lightning pulse even when the
              // configured adaptation times are very long. Perceptual AE therefore stores the filtered
              // field; the other modes keep the vanilla expression with the filtered target substituted,
              // which is bit-identical to vanilla when no smoothing is active.
              [branch]
              if (IMPROVED_AUTO_EXPOSURE == 2) {
                _407 = max(_smoothed_target_yf, 0.0001f);
              } else {
                _407 = max(_403, _smoothed_target_yf);
              }
              // RenoDX: <<< [Patch: AutoExposureAdaptedFieldWrite]
              _410 = __3__39__0__1__g_exposureUAV[11];
              // RenoDX: >>> [Patch: PerceptualAECarryoverWrite] [Version: 1.12.02]
              // Description: Vanilla treats slot 11 as a single low-passed field history and slot 9 as the
              // previous exposure scalar. Perceptual AE needs a signed two-branch carryover instead, so in
              // that mode slot 9 carries the fast (negative) residual and slot 11 the slow (positive)
              // residual produced by the adaptation-state model above; together with slot 10 they let the
              // next frame reconstruct the exact adaptation anchor. Every other mode keeps the vanilla
              // 1/8 low pass into slot 11. The two layouts are distinguished by the mode marker in slot 13,
              // so a mode change never reinterprets one layout as the other.
              float _ae_slow_history_write;
              [branch]
              if (IMPROVED_AUTO_EXPOSURE == 2) {
                __3__39__0__1__g_exposureUAV[9] = _psychov17_predicted_fast_eqbg;
                _ae_slow_history_write = _psychov17_predicted_slow_eqbg;
              } else {
                _ae_slow_history_write = (lerp(_410, _407, 0.125f));
              }
              // RenoDX: <<< [Patch: PerceptualAECarryoverWrite]
              _414 = !(_param3.x == 1.0f);
              _416 = __3__39__0__1__g_exposureUAV[0];
              if (!_414) {
                // RenoDX: >>> [Patch: PerceptualAEExposureCompensationBypass] [Version: 1.12.02]
                // Description: Vanilla multiplies the filtered exposure by an auto-white-balance driven
                // compensation term (built from the AWB confidence in _320 and the authored
                // _param2.z/_param3.z pair) before publishing it. That term is another authored placement
                // heuristic layered on top of the meter. Perceptual AE already produced an absolute gain
                // from the adaptation state, so applying the compensation again double-counts it and
                // makes the exposure drift with white-balance confidence. The perceptual mode publishes
                // the filtered gain directly; all other modes take the vanilla path unchanged.
                [branch]
                if (IMPROVED_AUTO_EXPOSURE == 2) {
                  _427 = _381;
                } else {
                  _419 = __3__39__0__1__g_exposureUAV[4];
                  if (_419 > 0.001f) {
                    _424 = exp2((saturate(_320) * _param3.z) + _param2.z);
                  } else {
                    _424 = 1.0f;
                  }
                  _427 = (_424 * _381);
                }
                // RenoDX: <<< [Patch: PerceptualAEExposureCompensationBypass]
              } else {
                _427 = _param3.y;
              }
              // RenoDX: >>> [Patch: AutoExposureDynamismShaping] [Version: 1.12.02]
              // Description: Smoothed AE (mode 1) exposes two user controls that reshape how far the
              // final exposure scalar is allowed to travel away from a 0.1 pivot: one for the bright side
              // and one for the dark side. The reshaping is a Naka-Rushton compression anchored so the
              // pivot maps to itself, which means a response exponent of 1 is an exact identity and the
              // controls are neutral at their defaults. Above the pivot the high-dynamism exponent is
              // applied directly; below it the low control is mirrored as 2 - value so that both sliders
              // increase contrast in the same direction. Only mode 1 is affected.
              [branch]
              if (IMPROVED_AUTO_EXPOSURE == 1) {
                const float pivot = 0.1f;
                if (_427 > pivot) {
                  _427 = NakaRushton(_427, 10000.f, pivot, pivot, AE_DYNAMISM_HIGH).x;
                } else {
                  _427 = NakaRushton(_427, 10000.f, pivot, pivot, 2.f - AE_DYNAMISM_LOW).x;
                }
              }
              // RenoDX: <<< [Patch: AutoExposureDynamismShaping]
              __3__39__0__1__g_exposureUAV[0] = _427;
              __3__39__0__1__g_exposureUAV[1] = select(_414, _param3.y, _381);
              __3__39__0__1__g_exposureUAV[2] = _param0.x;
              __3__39__0__1__g_exposureUAV[3] = _param0.y;
              __3__39__0__1__g_exposureUAV[4] = _138;
              __3__39__0__1__g_exposureUAV[5] = _348;
              __3__39__0__1__g_exposureUAV[8] = _198;
              // RenoDX: >>> [Patch: PerceptualAECarryoverWrite] [Version: 1.12.02]
              // Description: Companion to the carryover block above. Slot 9 is the previous exposure
              // scalar in every mode except perceptual AE, where it was already written with the fast
              // adaptation residual; this guard stops the vanilla write from immediately overwriting it.
              if (IMPROVED_AUTO_EXPOSURE != 2) {
                __3__39__0__1__g_exposureUAV[9] = _416;
              }
              // RenoDX: <<< [Patch: PerceptualAECarryoverWrite]
              __3__39__0__1__g_exposureUAV[10] = _407;
              // RenoDX: >>> [Patch: PerceptualAECarryoverWrite] [Version: 1.12.02]
              // Description: Store site for the slow-carryover local selected by the
              // [Patch: PerceptualAECarryoverWrite] block above: slot 11 receives the slow
              // (positive) adaptation residual in perceptual AE and the vanilla 1/8 low-passed
              // field history in every other mode. Substituting the _ae_slow_history_write local
              // for the inline vanilla low-pass expression is this line's only change; in the
              // non-perceptual modes the stored value is bit-identical to vanilla.
              __3__39__0__1__g_exposureUAV[11] = _ae_slow_history_write;
              // RenoDX: <<< [Patch: PerceptualAECarryoverWrite]
              _440 = __3__39__0__1__g_exposureUAV[12];
              __3__39__0__1__g_exposureUAV[12] = (((((saturate(_314 * _314) * (((((-2.0f - _302) - _297) + (exp2(_299 * 0.25f) * (_302 + 2.5f))) * exp2(_299 * 0.1f)) + _297)) * saturate(_403 * 100000.0f)) - _440) * 0.1f) + _440);
              // RenoDX: >>> [Patch: AutoExposureModeMatchedHistory] [Version: 1.12.02]
              // Description: Companion write for the mode-matched history check at the top of this
              // shader. Vanilla stores a plain 1.0 "history is valid" flag in slot 13. Storing
              // 1 + IMPROVED_AUTO_EXPOSURE instead makes the slot carry which AE mode produced the
              // surrounding history slots, which is what lets the next frame refuse to reuse state whose
              // slot meanings do not match the active mode. With every option off this writes 1.0, the
              // vanilla value.
              __3__39__0__1__g_exposureUAV[13] = 1.0f + IMPROVED_AUTO_EXPOSURE;
              // RenoDX: <<< [Patch: AutoExposureModeMatchedHistory]
              __3__39__0__1__g_exposureUAV[14] = _197;
              __3__39__0__1__g_exposureUAV[15] = _198;
              _452 = __3__39__0__1__g_exposureUAV[16];
              if (_terrainNormalParams.w > 0.0f) {
                _456 = max(1e-09f, _427);
              } else {
                _456 = 1.0f;
              }
              __3__39__0__1__g_exposureUAV[16] = _456;
              __3__39__0__1__g_exposureUAV[17] = (_456 / max(1e-09f, _452));
              // RenoDX: >>> [Patch: SlowExposureForGlare] [Version: 1.12.02]
              // Description: Bloom, lens flare and histogram-driven auto white balance all read the live
              // exposure scalar. Because that scalar is itself derived from the frame those effects
              // brighten, the loop is self-reinforcing: glare raises measured luminance, exposure reacts,
              // glare changes again, and foggy or interior scenes end up shimmering. This publishes a
              // heavily low-passed copy of the exposure into slot 18 and a low-passed copy of the target
              // luminance into slot 19; the glare consumers read slot 18 instead of the fast state, which
              // breaks the feedback path while leaving the actual scene exposure untouched. Slot 19 is
              // also the previous-target source for the target smoothing block near the top of this
              // shader. Both slots are only seeded from history when the mode-matched history check says
              // the stored state belongs to the active mode; otherwise they start from the current value.
              // Neither slot is written in vanilla mode, so consumers fall back to the fast state there.
              // alongside the target-luminance log-space filter as part of the bloom-jitter/glare-shimmer
              // campaign. The author's original comment: "This stops vanilla exposure + glare feedback
              // loop that causes bloom shimmer." (The unpredictable flaring of bright glare sources in
              // fog is later analysis of the same loop, not the author's wording.)
              // Frame-rate independence (1.16.00): both filters below convert a time constant into a
              // per-frame blend weight with 1 - exp(-dt / tau), using the engine frame delta
              // _timeNoScale.z. The same form is used by native code in this shader and by the target
              // smoothing block earlier in this file. Previously these were fixed per-frame weights
              // (0.05 and 0.08), which made the settling time depend on frame rate: the same scene
              // reached ~63% of a step in 0.65 s at 30 FPS but 0.16 s at 120 FPS, so glare bloomed in
              // and out at visibly different speeds on different hardware and the low-pass stopped
              // suppressing the feedback loop it exists to damp once frame rates got high. The time
              // constants are chosen so the response is unchanged at 60 FPS (0.325 s reproduces 0.05
              // and 0.2 s reproduces 0.08 to within 0.1%); above and below 60 FPS the filter now holds
              // that same wall-clock response instead of scaling with frame rate. The weights are
              // saturated because these values persist in the exposure UAV across frames, so a
              // negative or out-of-range weight from a bad delta would corrupt the filter state
              // permanently rather than for one frame.
              [branch]
              if ((IMPROVED_AUTO_EXPOSURE == 1) || (IMPROVED_AUTO_EXPOSURE == 2)) {
                float prevSlowExp = __3__39__0__1__g_exposureUAV[18];
                float slowSeed =
                    (_ae_can_reuse_history && prevSlowExp > 0.0001f && !isnan(prevSlowExp) && !isinf(prevSlowExp))
                        ? prevSlowExp
                        : _427;
                float slowTau = saturate(1.0f - exp(-_timeNoScale.z / 0.325f));
                float slowExp = lerp(slowSeed, _427, slowTau);
                __3__39__0__1__g_exposureUAV[18] = slowExp;
                float targetSource = _smoothed_target_yf;
                float prevSlowTarget = __3__39__0__1__g_exposureUAV[19];
                float targetSeed =
                    (_ae_can_reuse_history && prevSlowTarget > 0.0001f && !isnan(prevSlowTarget) &&
                     !isinf(prevSlowTarget))
                        ? prevSlowTarget
                        : targetSource;
                float slowTargetTau = saturate(1.0f - exp(-_timeNoScale.z / 0.2f));
                float slowTarget = lerp(targetSeed, targetSource, slowTargetTau);
                __3__39__0__1__g_exposureUAV[19] = slowTarget;
              }
              // RenoDX: <<< [Patch: SlowExposureForGlare]
              break;
            }
            break;
          }
          break;
        }
        break;
      }
    }
  } else {
    if (_param2.w > 0.001f) {
      _464 = (uint)(SV_GroupIndex) << 2;
      _467 = __3__37__0__0__g_histogramR[_464];
      _470 = __3__37__0__0__g_histogramG[_464];
      _473 = __3__37__0__0__g_histogramB[_464];
      _474 = (int)(_464) | (int)(1);
      _476 = __3__37__0__0__g_histogramR[_474];
      _478 = __3__37__0__0__g_histogramG[_474];
      _480 = __3__37__0__0__g_histogramB[_474];
      _484 = (int)(_464) | (int)(2);
      _486 = __3__37__0__0__g_histogramR[_484];
      _488 = __3__37__0__0__g_histogramG[_484];
      _490 = __3__37__0__0__g_histogramB[_484];
      _494 = (int)(_464) | (int)(3);
      _496 = __3__37__0__0__g_histogramR[_494];
      _498 = __3__37__0__0__g_histogramG[_494];
      _500 = __3__37__0__0__g_histogramB[_494];
      _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_467), (uint)(_476)))), (uint)(_486)))), (uint)(_496)));
      _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_470), (uint)(_478)))), (uint)(_488)))), (uint)(_498)));
      _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_473), (uint)(_480)))), (uint)(_490)))), (uint)(_500)));
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)32) {
        _515 = (uint)(SV_GroupIndex) + (uint)(32);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_515)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_515)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_515)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)16) {
        _537 = (uint)(SV_GroupIndex) + (uint)(16);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_537)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_537)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_537)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)8) {
        _559 = (uint)(SV_GroupIndex) + (uint)(8);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_559)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_559)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_559)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)4) {
        _581 = (uint)(SV_GroupIndex) + (uint)(4);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_581)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_581)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_581)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)2) {
        _603 = (uint)(SV_GroupIndex) + (uint)(2);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_603)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_603)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_603)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      _623 = ((int)(SV_GroupIndex) == 0);
      if (_623) {
        _global_2[0] = ((int)max((uint)((_global_2[0])), (uint)((_global_2[3]))));
        _global_2[1] = ((int)max((uint)((_global_2[1])), (uint)((_global_2[4]))));
        _global_2[2] = ((int)max((uint)((_global_2[2])), (uint)((_global_2[5]))));
        _635 = _623;
      } else {
        _635 = false;
      }
      GroupMemoryBarrierWithGroupSync();
      if (_635) {
        _641 = 1.0f / ((float)((uint)((uint)(_global_2[0]))));
        _643 = 0;
        _644 = 0.0f;
        while(true) {
          _647 = __3__37__0__0__g_histogramR[_643];
          _650 = (((float)((uint)((uint)(_647)))) * _641) + _644;
          _651 = (int)(_643) + (int)(1);
          if (!(_651 == 256)) {
            _643 = _651;
            _644 = _650;
            continue;
          }
          _657 = 0;
          _658 = 0.0f;
          _659 = 0.0f;
          _660 = (_650 * _param1.x);
          _661 = (_650 * _param1.y);
          while(true) {
            _669 = __3__37__0__0__g_histogramR[_657];
            _671 = ((float)((uint)((uint)(_669)))) * _641;
            _672 = min(_660, _671);
            _675 = _661 - _672;
            _676 = min(_675, (_671 - _672));
            _679 = (_676 * exp2(((((float)((uint)((uint)(_657)))) * 0.00390625f) - _param0.y) / _param0.x)) + _658;
            _680 = _676 + _659;
            _681 = (int)(_657) + (int)(1);
            if (!(_681 == 256)) {
              _657 = _681;
              _658 = _679;
              _659 = _680;
              _660 = (_660 - _672);
              _661 = (_675 - _676);
              continue;
            }
            _688 = 1.0f / ((float)((uint)((uint)(_global_2[1]))));
            _690 = 0;
            _691 = 0.0f;
            while(true) {
              _694 = __3__37__0__0__g_histogramG[_690];
              _697 = (((float)((uint)((uint)(_694)))) * _688) + _691;
              _698 = (int)(_690) + (int)(1);
              if (!(_698 == 256)) {
                _690 = _698;
                _691 = _697;
                continue;
              }
              _701 = min(max((_679 / max(_680, 0.0001f)), _param1.z), _param1.w);
              _705 = 0;
              _706 = 0.0f;
              _707 = 0.0f;
              _708 = (_697 * _param1.x);
              _709 = (_697 * _param1.y);
              while(true) {
                _717 = __3__37__0__0__g_histogramG[_705];
                _719 = ((float)((uint)((uint)(_717)))) * _688;
                _720 = min(_708, _719);
                _723 = _709 - _720;
                _724 = min(_723, (_719 - _720));
                _727 = (_724 * exp2(((((float)((uint)((uint)(_705)))) * 0.00390625f) - _param0.y) / _param0.x)) + _706;
                _728 = _724 + _707;
                _729 = (int)(_705) + (int)(1);
                if (!(_729 == 256)) {
                  _705 = _729;
                  _706 = _727;
                  _707 = _728;
                  _708 = (_708 - _720);
                  _709 = (_723 - _724);
                  continue;
                }
                _736 = 1.0f / ((float)((uint)((uint)(_global_2[2]))));
                _738 = 0;
                _739 = 0.0f;
                while(true) {
                  _742 = __3__37__0__0__g_histogramB[_738];
                  _745 = (((float)((uint)((uint)(_742)))) * _736) + _739;
                  _746 = (int)(_738) + (int)(1);
                  if (!(_746 == 256)) {
                    _738 = _746;
                    _739 = _745;
                    continue;
                  }
                  _749 = min(max((_727 / max(_728, 0.0001f)), _param1.z), _param1.w);
                  _753 = 0;
                  _754 = 0.0f;
                  _755 = 0.0f;
                  _756 = (_745 * _param1.x);
                  _757 = (_745 * _param1.y);
                  while(true) {
                    _765 = __3__37__0__0__g_histogramB[_753];
                    _767 = ((float)((uint)((uint)(_765)))) * _736;
                    _768 = min(_756, _767);
                    _771 = _757 - _768;
                    _772 = min(_771, (_767 - _768));
                    _775 = (_772 * exp2(((((float)((uint)((uint)(_753)))) * 0.00390625f) - _param0.y) / _param0.x)) + _754;
                    _776 = _772 + _755;
                    _777 = (int)(_753) + (int)(1);
                    if (!(_777 == 256)) {
                      _753 = _777;
                      _754 = _775;
                      _755 = _776;
                      _756 = (_756 - _768);
                      _757 = (_771 - _772);
                      continue;
                    }
                    _783 = min(max((_775 / max(_776, 0.0001f)), _param1.z), _param1.w);
                    _789 = max(0.001f, max(max(abs(_701), abs(_749)), abs(_783)));
                    _790 = _701 / _789;
                    _791 = _749 / _789;
                    _792 = _783 / _789;
                    _794 = dot(float3(_790, _791, _792), float3(-1.0f, 2.0f, -1.0f));
                    _795 = dot(float3(_790, _791, _792), float3(2.0f, 0.0f, -2.0f)) * 0.25f;
                    _796 = _794 * 0.25f;
                    _798 = (_795 + 1.0f) - _796;
                    _799 = _796 + 1.0f;
                    _801 = (1.0f - _795) - _796;
                    _824 = select((_798 <= 0.0031308f), (_798 * 12.92f), (((pow(_798, 0.41666666f)) * 1.055f) + -0.055f));
                    _825 = select((_799 <= 0.0031308f), ((_794 * 3.23f) + 12.92f), (((pow(_799, 0.41666666f)) * 1.055f) + -0.055f));
                    _826 = select((_801 <= 0.0031308f), (_801 * 12.92f), (((pow(_801, 0.41666666f)) * 1.055f) + -0.055f));
                    _831 = ((_825 * 0.103455f) + (_824 * 0.649926f)) + (_826 * 0.197109f);
                    _836 = ((_825 * 0.743075f) + (_824 * 0.234327f)) + (_826 * 0.022598f);
                    _841 = (((_826 * 1.035763f) + (_825 * 0.053077f)) + _836) + _831;
                    _846 = ((_831 / _841) + -0.3366f) / ((_836 / _841) + -0.1735f);
                    _858 = (((exp2(_846 * -1.5654413f) * 6253.803f) + -949.86316f) + (exp2(_846 * -7.1994367f) * 28.70599f)) + (exp2(_846 * -20.24835f) * 4e-05f);
                    if ((_858 < 5000.0f) || (_858 > 6500.0f)) {
                      _864 = min(max(_858, 5000.0f), 6500.0f);
                      _867 = min(max(_864, 1000.0f), 40000.0f) * 0.01f;
                      if (!(_867 <= 66.0f)) {
                        _875 = log2(_867 + -60.0f);
                        _884 = (exp2(_875 * -0.075514846f) * 1.1298909f);
                        _885 = saturate(exp2(_875 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
                      } else {
                        _884 = ((log2(_867) * 0.27038395f) + -0.6318414f);
                        _885 = 1.0f;  // [sem: expr_sat]
                      }
                      _886 = saturate(_884);  // [sem: _884_sat]
                      if (!(_867 >= 66.0f)) {
                        if (!(_867 <= 19.0f)) {
                          _897 = saturate((log2(_867 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
                        } else {
                          _897 = 0.0f;  // [sem: expr_sat]
                        }
                      } else {
                        _897 = 1.0f;  // [sem: expr_sat]
                      }
                      _923 = select((_885 < 0.04045f), (_885 * 0.07739938f), exp2(log2((_885 + 0.055f) * 0.94786733f) * 2.4f));
                      _924 = select((_886 < 0.04045f), (_886 * 0.07739938f), exp2(log2((_886 + 0.055f) * 0.94786733f) * 2.4f));
                      _925 = select((_897 < 0.04045f), (_897 * 0.07739938f), exp2(log2((_897 + 0.055f) * 0.94786733f) * 2.4f));
                      _926 = _864;
                    } else {
                      _923 = _798;
                      _924 = _799;
                      _925 = _801;
                      _926 = _858;
                    }
                    _930 = saturate(_temporalReprojectionParams.w + 0.1f);  // [sem: expr_sat]
                    _933 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].x;
                    _934 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].y;
                    _935 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].z;
                    _936 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].w;
                    __3__39__0__1__g_autoWhiteBalanceColorUAV[0] = float4((lerp(_933, _923, _930)), (lerp(_934, _924, _930)), (lerp(_935, _925, _930)), (lerp(_936, 1.0f, _930)));
                    _950 = 0.0f;
                    _951 = 0.0f;
                    _952 = 0;
                    while(true) {
                      _955 = __3__37__0__0__g_histogramR[_952];
                      _957 = ((float)((uint)((uint)(_955)))) * _641;
                      _964 = (_957 * exp2(((((float)((uint)((uint)(_952)))) * 0.00390625f) - _param0.y) / _param0.x)) + _950;
                      _965 = _957 + _951;
                      _966 = (int)(_952) + (int)(1);
                      if (!(_966 == 256)) {
                        _950 = _964;
                        _951 = _965;
                        _952 = _966;
                        continue;
                      }
                      _970 = _964 / max(_965, 0.0001f);
                      _972 = 0.0f;
                      _973 = 0.0f;
                      _974 = 0;
                      while(true) {
                        _977 = __3__37__0__0__g_histogramG[_974];
                        _979 = ((float)((uint)((uint)(_977)))) * _688;
                        _986 = (_979 * exp2(((((float)((uint)((uint)(_974)))) * 0.00390625f) - _param0.y) / _param0.x)) + _972;
                        _987 = _979 + _973;
                        _988 = (int)(_974) + (int)(1);
                        if (!(_988 == 256)) {
                          _972 = _986;
                          _973 = _987;
                          _974 = _988;
                          continue;
                        }
                        _992 = _986 / max(_987, 0.0001f);
                        _994 = 0.0f;
                        _995 = 0.0f;
                        _996 = 0;
                        while(true) {
                          _999 = __3__37__0__0__g_histogramB[_996];
                          _1001 = ((float)((uint)((uint)(_999)))) * _736;
                          _1008 = (_1001 * exp2(((((float)((uint)((uint)(_996)))) * 0.00390625f) - _param0.y) / _param0.x)) + _994;
                          _1009 = _1001 + _995;
                          _1010 = (int)(_996) + (int)(1);
                          if (!(_1010 == 256)) {
                            _994 = _1008;
                            _995 = _1009;
                            _996 = _1010;
                            continue;
                          }
                          _1014 = _1008 / max(_1009, 0.0001f);
                          _1016 = max(max(_970, _992), _1014);
                          _1020 = saturate(_970 / _1016);  // [sem: expr_sat]
                          _1021 = saturate(_992 / _1016);  // [sem: expr_sat]
                          _1022 = saturate(_1014 / _1016);  // [sem: expr_sat]
                          __3__39__0__1__g_exposureUAV[6] = asfloat(((int)((int)((int)((int)((uint)((uint)(saturate(select((_1020 <= 0.0031308f), (_1020 * 12.92f), (((pow(_1020, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f)) << 16)) | (int)(((int)((uint)((uint)(saturate(select((_1021 <= 0.0031308f), (_1021 * 12.92f), (((pow(_1021, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f)) << 8)) & 65280)) | (int)(((int)((uint)(saturate(select((_1022 <= 0.0031308f), (_1022 * 12.92f), (((pow(_1022, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f))) & 255)) | (int)(-16777216)));
                          __3__39__0__1__g_exposureUAV[7] = _926;
                          break;
                        }
                        break;
                      }
                      break;
                    }
                    break;
                  }
                  break;
                }
                break;
              }
              break;
            }
            break;
          }
          break;
        }
      }
    }
  }
}
