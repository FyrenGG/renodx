#include "../shared.h"
#include "rr_ladder_common.hlsli"

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t61, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t73, space36);

Texture2D<uint4> __3__36__0__0__g_diffuseGIReservoirHitGeometry : register(t92, space36);

Texture2D<uint2> __3__36__0__0__g_diffuseGIReservoirRadiance : register(t81, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u44, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u28, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b18, space35) {
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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _renderParams : packoffset(c000.x);
  float4 _renderParams2 : packoffset(c001.x);
  float4 _cubemapViewPosRelative : packoffset(c002.x);
  float4 _lightingParams : packoffset(c003.x);
  float4 _tiledRadianceCacheParams : packoffset(c004.x);
  float _rtaoIntensity : packoffset(c005.x);
};

// RenoDX: >>> [Patch: RRLadderCandidateB] [Version: 1.13.00]
// Description: Optional declaration-only import of the engine's exposure constants for
// the exposure-aware target function of the RETIRED standalone Candidate B branch
// below (compiled out with it unless the archival RRB_STANDALONE_LANE knob is armed),
// COMPILED OUT by default
// (RRB_USE_EXPOSURE_CBUFFER == 0 in rr_ladder_common.hlsli). A DevKit probe of the
// live spatial dispatch (2026-07-05) found NO cbuffer bound at b31/space35 — the bound
// cbuffer set at that dispatch is b0/space1, b0/space34, b1/space1, and b18/space35
// only — so compiling this declaration in would add a root-signature binding the pass
// never provides (PSO-creation failure or garbage reads). Compiling it out also costs
// no correctness: the luminance this shader reads from the reservoir radiance texel
// was ALREADY multiplied by the engine's exposure scale when the temporal pass packed
// it (TemporalResampleReservoirsDiffuse stores f32tof16(_exposure4.y * luminance)), so
// the exposure-aware target already operates on exposure-normalized units with the
// RRB_EXPOSED_SCALE 1.0 fallback and no cbuffer read. The declaration (textually
// mirroring the sibling temporal shader's b31/space35 ExposureConstantBuffer, of which
// only _exposure4.x would be read, and only inside the RT_QUALITY==2 gate) is kept
// compilable behind the switch for a future shader-selection lane whose spatial
// dispatch does bind exposure constants.
#if RRB_USE_EXPOSURE_CBUFFER
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif
// RenoDX: <<< [Patch: RRLadderCandidateB]

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
  float _14;
  float _15;
  uint _34;
  uint _42;
  uint _50;
  uint _58;
  uint _66;
  uint _74;
  uint _82;
  uint _90;
  uint _98;
  uint _106;
  uint _114;
  uint _122;
  uint _130;
  uint _138;
  uint _146;
  uint _154;
  int _167;
  int _322;
  float _323;
  float _324;
  float _325;
  float _326;
  float _327;
  float _328;
  int _357;
  float _358;
  float _359;
  float _360;
  float _361;
  int _362;
  float _363;
  float _364;
  int _365;
  int _603;
  float _604;
  float _605;
  float _606;
  float _607;
  int _608;
  float _609;
  float _610;
  uint _175;
  float _191;
  float _192;
  float _193;
  float _195;
  float _196;
  float _197;
  float _198;
  float _202;
  float _205;
  float _206;
  float _242;
  float _243;
  float _244;
  float _245;
  uint4 _257;
  uint2 _262;
  float _276;
  float _277;
  float _278;
  float _280;
  float _284;
  float _285;
  float _286;
  float _288;
  int _289;
  float _291;
  float _292;
  float _293;
  float _295;
  float _302;
  float _305;
  float _313;
  int _316;
  float _330;
  float _334;
  float _338;
  float _339;
  float _340;
  float _346;
  float _347;
  half _352;
  uint _371;
  int _390;
  int _391;
  uint _399;
  float _415;
  float _416;
  float _417;
  float _429;
  float _432;
  float _433;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  uint4 _485;
  uint2 _491;
  float _505;
  float _506;
  float _507;
  float _509;
  float _510;
  float _511;
  float _512;
  float _527;
  float _528;
  float _529;
  float _531;
  float _532;
  float _533;
  float _534;
  float _536;
  int _537;
  float _552;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _564;
  float _566;
  float _570;
  float _571;
  float _572;
  float _578;
  float _584;
  float _588;
  uint _589;
  float _593;
  bool _596;
  uint _611;
  int __loop_jump_target = -1;
  _14 = (float)((uint)SV_DispatchThreadID.x);
  _15 = (float)((uint)SV_DispatchThreadID.y);
  _34 = ((uint)((((int)((_frameNumber.x << 4) + (uint)(-1556008596))) ^ ((int)((uint)(_frameNumber.x) + (uint)(-1640531527)))) ^ (((uint)((uint)(_frameNumber.x)) >> 5) + -939442524))) + uint((_bufferSizeAndInvSize.x * _15) + _14);
  _42 = ((uint)((((int)((_34 << 4) + (uint)(-1383041155))) ^ ((int)(_34 + (uint)(-1640531527)))) ^ ((int)(((uint)((uint)(_34) >> 5)) + 2123724318u)))) + (uint)(_frameNumber.x);
  _50 = ((uint)((((int)((_42 << 4) + (uint)(-1556008596))) ^ ((int)(_42 + 1013904242u))) ^ (((uint)(_42) >> 5) + -939442524))) + _34;
  _58 = ((uint)((((int)((_50 << 4) + (uint)(-1383041155))) ^ ((int)(_50 + 1013904242u))) ^ ((int)(((uint)((uint)(_50) >> 5)) + 2123724318u)))) + _42;
  _66 = ((uint)((((int)((_58 << 4) + (uint)(-1556008596))) ^ ((int)(_58 + (uint)(-626627285)))) ^ (((uint)(_58) >> 5) + -939442524))) + _50;
  _74 = ((uint)((((int)((_66 << 4) + (uint)(-1383041155))) ^ ((int)(_66 + (uint)(-626627285)))) ^ ((int)(((uint)((uint)(_66) >> 5)) + 2123724318u)))) + _58;
  _82 = ((uint)((((int)((_74 << 4) + (uint)(-1556008596))) ^ ((int)(_74 + 2027808484u))) ^ (((uint)(_74) >> 5) + -939442524))) + _66;
  _90 = ((uint)((((int)((_82 << 4) + (uint)(-1383041155))) ^ ((int)(_82 + 2027808484u))) ^ ((int)(((uint)((uint)(_82) >> 5)) + 2123724318u)))) + _74;
  _98 = ((uint)((((int)((_90 << 4) + (uint)(-1556008596))) ^ ((int)(_90 + 387276957u))) ^ (((uint)(_90) >> 5) + -939442524))) + _82;
  _106 = ((uint)((((int)((_98 << 4) + (uint)(-1383041155))) ^ ((int)(_98 + 387276957u))) ^ ((int)(((uint)((uint)(_98) >> 5)) + 2123724318u)))) + _90;
  _114 = ((uint)((((int)((_106 << 4) + (uint)(-1556008596))) ^ ((int)(_106 + (uint)(-1253254570)))) ^ (((uint)(_106) >> 5) + -939442524))) + _98;
  _122 = ((uint)((((int)((_114 << 4) + (uint)(-1383041155))) ^ ((int)(_114 + (uint)(-1253254570)))) ^ ((int)(((uint)((uint)(_114) >> 5)) + 2123724318u)))) + _106;
  _130 = ((uint)((((int)((_122 << 4) + (uint)(-1556008596))) ^ ((int)(_122 + 1401181199u))) ^ (((uint)(_122) >> 5) + -939442524))) + _114;
  _138 = ((uint)((((int)((_130 << 4) + (uint)(-1383041155))) ^ ((int)(_130 + 1401181199u))) ^ ((int)(((uint)((uint)(_130) >> 5)) + 2123724318u)))) + _122;
  _146 = ((uint)((((int)((_138 << 4) + (uint)(-1556008596))) ^ ((int)(_138 + (uint)(-239350328)))) ^ (((uint)(_138) >> 5) + -939442524))) + _130;
  _154 = ((uint)((((int)((_146 << 4) + (uint)(-1383041155))) ^ ((int)(_146 + (uint)(-239350328)))) ^ ((int)(((uint)((uint)(_146) >> 5)) + 2123724318u)))) + _138;
  if ((_146 & 16777215) == 0) {
    _167 = ((int)(((uint)((((int)((_154 << 4) + (uint)(-1556008596))) ^ ((int)(_154 + (uint)(-1879881855)))) ^ (((uint)(_154) >> 5) + -939442524))) + _146));
  } else {
    _167 = _146;
  }
  _175 = __3__36__0__0__g_sceneNormal.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _191 = min(1.0f, ((((float)((uint)((uint)(_175.x & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _192 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_175.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _193 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_175.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
  _195 = rsqrt(dot(float3(_191, _192, _193), float3(_191, _192, _193)));  // [sem: invLength]
  _196 = _195 * _191;
  _197 = _195 * _192;
  _198 = _195 * _193;
  _202 = (((_14 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
  _205 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_15 + 0.5f));
  _206 = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
  _242 = mad((_invViewProjRelative[2].w), _206, mad((_invViewProjRelative[1].w), _205, ((_invViewProjRelative[0].w) * _202))) + (_invViewProjRelative[3].w);
  _243 = (mad((_invViewProjRelative[2].x), _206, mad((_invViewProjRelative[1].x), _205, ((_invViewProjRelative[0].x) * _202))) + (_invViewProjRelative[3].x)) / _242;
  _244 = (mad((_invViewProjRelative[2].y), _206, mad((_invViewProjRelative[1].y), _205, ((_invViewProjRelative[0].y) * _202))) + (_invViewProjRelative[3].y)) / _242;
  _245 = (mad((_invViewProjRelative[2].z), _206, mad((_invViewProjRelative[1].z), _205, ((_invViewProjRelative[0].z) * _202))) + (_invViewProjRelative[3].z)) / _242;
  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
  _257 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
  _262 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  _276 = min(1.0f, ((((float)((uint)((uint)((int)(uint((_196 * 511.0f) + 511.5f)) & 1023)))) * 0.001956947147846222f) + -1.0f));
  _277 = min(1.0f, ((((float)((uint)((uint)((int)(uint((_197 * 511.0f) + 511.5f)) & 1023)))) * 0.001956947147846222f) + -1.0f));
  _278 = min(1.0f, ((((float)((uint)((uint)((int)(uint((_198 * 511.0f) + 511.5f)) & 1023)))) * 0.001956947147846222f) + -1.0f));
  _280 = rsqrt(dot(float3(_276, _277, _278), float3(_276, _277, _278)));  // [sem: invLength]
  _284 = asfloat(_257.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _285 = asfloat(_257.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _286 = asfloat(_257.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _288 = f16tof32(((uint)((uint)((uint)(_262.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _289 = _262.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _291 = _284 - _243;
  _292 = _285 - _244;
  _293 = _286 - _245;
  _295 = rsqrt(dot(float3(_291, _292, _293), float3(_291, _292, _293)));  // [sem: invLength]
  _302 = (_288 * 0.31830987334251404f) * max(0.10000000149011612f, dot(float3((_280 * _276), (_280 * _277), (_280 * _278)), float3((_295 * _291), (_295 * _292), (_295 * _293))));
  _305 = (((float)((uint)_289)) * asfloat(_262.y)) * _302;
  _313 = select((_renderParams.x > 0.0f), 64.0f, 8.0f);
  _316 = (int)max((uint)(8), (uint)(((int)(16u / ((uint)((int)max((uint)(1), (uint)(_289))))))));
  // RenoDX: >>> [Patch: RRLadderCandidateB] [Version: 1.13.00]
  // Description: RETIRED STANDALONE LANE (kept for reference/diagnostics, compiled out).
  // This branch was the RT_QUALITY==2 "Smart Neighbors" candidate of the original
  // candidate competition. When the ladder was re-mapped to the Fidelity lanes
  // (2026-07-05), its compatibility-guided selection idea was folded into the
  // wide-pooling branch below (pool importance scaled by RRLadder_CompatScore,
  // selection probability only) and the whole-pixel branch here lost its slider slot.
  // The gate now requires the compile-time knob RRB_STANDALONE_LANE (default 0 in
  // rr_ladder_common.hlsli), which constant-folds to false so /O3 strips the branch
  // from the shipped shader; arming the knob makes this branch shadow the
  // RT_QUALITY==2 lane again for archival A/B only. Original description follows.
  // Compatibility-guided spatial neighbor
  // selection (Junkins et al., HPG 2026) + exposure-aware target function (Capcom RE
  // Engine GDC 2026) at the UNCHANGED vanilla kernel budget. Semantic anchor: inserted
  // directly after the vanilla center setup completes (center reservoir loads, center
  // target value, reuse radius, and reuse slot count are all computed) and before the
  // vanilla neighbor loop. Per reuse slot (vanilla count max(8, 16/max(1,M)), vanilla
  // radius), instead of reusing ONE uniformly drawn neighbor, the branch scores
  // RRB_CANDIDATES_PER_SLOT uniformly drawn candidate pixels with a G-buffer-only
  // geometric compatibility heuristic (surface-distance falloff x normal alignment) and
  // reservoir-selects one winner proportional to score; because the score never reads
  // reservoir samples or resampling weights, the non-uniform pick preserves GRIS
  // unbiasedness by the same argument as the vanilla binary rejection tests. The winner
  // then runs the UNCHANGED vanilla full-reuse body: identical receiver-plane,
  // neighbor-normal-backface, and reconnection-Jacobian rejection tests (via
  // arithmetic-identical helpers), plain WRS merge with M added uncapped. The vanilla
  // target function p-hat = luminance * (1/pi) * max(0.1, cos) is wrapped at all four
  // sites (center target, center weight-sum reconstruction, neighbor weight, final
  // unbiased-contribution-weight division) as p-hat' = 1 + alpha * p-hat * exposureScale
  // (Capcom brightness compensation), keeping the RIS estimator self-consistent while
  // flattening selection toward uniform in display-dim regions. Outputs follow the
  // vanilla write contract exactly: only the selected, fully-validated donor's hit
  // direction/distance reaches g_raytracingHitResultUAV, and the center reservoir stays
  // selected when no donor is accepted (vanilla fallthrough). All randomness comes from
  // a dedicated TEA second-extraction stream (stream 2); the vanilla RNG chain is never
  // advanced inside the gate, and the merge-acceptance stream advances exactly once per
  // slot regardless of gate outcomes (a deliberate, documented simplification of
  // vanilla's data-dependent LCG advance, confined to this gated branch). With the gate
  // off, the untouched vanilla loop below executes with identical values.
  if ((RRB_STANDALONE_LANE != 0) && RR_ENABLED == 1.f && RT_QUALITY == 2.f) {
    const int2 rrb_pixel = int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y));
    const float3 rrb_center_normal = float3(_196, _197, _198);
    const float3 rrb_center_pos = float3(_243, _244, _245);
#if RRB_USE_EXPOSURE_CBUFFER
    const float rrb_exposed = _exposure4.x;  // unexposed->exposed multiplier (Capcom 1/E)
#else
    const float rrb_exposed = RRB_EXPOSED_SCALE;
#endif
    // View depth from the inverse-projection homogeneous divide term (standard
    // perspective: reconstruction w == 1/view_z). Used only for the compatibility
    // footprint scale, so a constant-factor error rescales Omega, not correctness.
    const float rrb_cam_dist = abs(1.0f / _242);
    const float rrb_compat_scale = RRLadder_CompatScale(RRB_COMPAT_SOLID_ANGLE, rrb_cam_dist);
    // Reservoir state under the exposure-aware target (mirrors the vanilla center state).
    int rrb_m_acc = _289;
    float rrb_lum_sel = _288;
    float3 rrb_hit_sel = float3(_284, _285, _286);
    float rrb_phat_sel = RRLadder_ExposureAwareTarget(_302, rrb_exposed, RRB_EXPOSURE_ALPHA);
    float rrb_wsum = (((float)((uint)_289)) * asfloat(_262.y)) * rrb_phat_sel;
    // Candidate B RNG: independent of the vanilla hash chain; stable per-pixel streams.
    const uint2 rrb_seed = RRLadder_TeaSecondExtraction(uint((_bufferSizeAndInvSize.x * _15) + _14), _frameNumber.x, 2u);
    uint rrb_sel_state = rrb_seed.x | 1u;    // candidate offsets + selection-WRS draws
    uint rrb_merge_state = rrb_seed.y | 1u;  // merge acceptance (one draw per slot)
    for (int rrb_slot = 0; rrb_slot < _316; ++rrb_slot) {
      // ---- compatibility-guided pick (replaces the vanilla uniform neighbor draw) ----
      int2 rrb_win = rrb_pixel;  // A-Chao initial state = self (vanilla fallthrough)
      float rrb_score_sum = 0.0f;
      [loop] for (uint rrb_k = 0u; rrb_k < RRB_CANDIDATES_PER_SLOT; ++rrb_k) {
        // Vanilla-form uniform square offset at the vanilla radius, clamped to bounds.
        const int rrb_cx = int(min(max(float(int(RRLadder_LcgSigned(rrb_sel_state) * _313) + rrb_pixel.x), 0.0f), (_bufferSizeAndInvSize.x + -1.0f)));
        const int rrb_cy = int(min(max(float(int(RRLadder_LcgSigned(rrb_sel_state) * _313) + rrb_pixel.y), 0.0f), (_bufferSizeAndInvSize.y + -1.0f)));
        // Cheap taps only: G-buffer normal + depth + inverse-projection reconstruction
        // (the same decode/reconstruct forms the vanilla neighbor body uses).
        const float3 rrb_cand_normal = RRLadder_DecodeUnorm101010Normal(__3__36__0__0__g_sceneNormal.Load(int3(rrb_cx, rrb_cy, 0)));
        const float rrb_cand_depth = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(rrb_cx, rrb_cy, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
        const float3 rrb_cand_pos = RRLadder_ReconstructPosition(_invViewProjRelative, RRLadder_PixelToNdc(float2(float(rrb_cx), float(rrb_cy)), _bufferSizeAndInvSize.zw), rrb_cand_depth);
        const float rrb_score = RRLadder_CompatScore(rrb_cand_pos - rrb_center_pos, rrb_center_normal, rrb_cand_normal, rrb_compat_scale, RRB_COMPAT_NORMAL_BETA);
        if (RRLadder_WrsAccept(rrb_score, rrb_score_sum, RRLadder_LcgUnit(rrb_sel_state))) {
          rrb_win = int2(rrb_cx, rrb_cy);
        }
        if (rrb_score >= RRB_EARLY_STOP_SCORE) break;  // paper Sec. 7.5 early stop
      }
      // Merge-acceptance draw: advances exactly once per slot, before any gate can skip.
      const float rrb_merge_u = RRLadder_LcgUnit(rrb_merge_state);
      // ---- full vanilla reuse body on the winner; all rejection tests preserved ----
      const float3 rrb_n_raw = RRLadder_DecodeUnorm101010Raw(__3__36__0__0__g_sceneNormal.Load(int3(rrb_win.x, rrb_win.y, 0)));
      const float rrb_n_depth = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(rrb_win.x, rrb_win.y, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      const float3 rrb_n_pos = RRLadder_ReconstructPosition(_invViewProjRelative, RRLadder_PixelToNdc(float2(float(rrb_win.x), float(rrb_win.y)), _bufferSizeAndInvSize.zw), rrb_n_depth);
      // Vanilla receiver-plane test (identical threshold form).
      if (abs(dot(rrb_center_normal, rrb_n_pos - rrb_center_pos)) > max(0.5f, (_nearFarProj.x / _206))) continue;
      // Vanilla neighbor-normal backface test (requantized normal, identical chain).
      const float3 rrb_n_requant = RRLadder_RequantUnorm101010Normal(rrb_n_raw);
      if (dot(rrb_center_normal, rrb_n_requant) < 0.0f) continue;
      const uint4 rrb_n_hitgeom = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3(rrb_win.x, rrb_win.y, 0));
      const uint2 rrb_n_rad = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(rrb_win.x, rrb_win.y, 0));
      const float3 rrb_n_hit = float3(asfloat(rrb_n_hitgeom.x), asfloat(rrb_n_hitgeom.y), asfloat(rrb_n_hitgeom.z));
      const float3 rrb_n_hitnormal = RRLadder_DecodeUnorm101010Normal(rrb_n_hitgeom.w);
      // Vanilla reconnection Jacobian with sign/degeneracy gates (0 == vanilla reject).
      const float rrb_jacobian = RRLadder_ReconnectJacobianClamped(rrb_n_pos, rrb_center_pos, rrb_n_hit, rrb_n_hitnormal);
      if (!(rrb_jacobian > 0.0f)) continue;
      const float rrb_n_lum = f16tof32(((uint)((uint)(rrb_n_rad.x)) >> 16));
      const int rrb_n_m = (int)(rrb_n_rad.x & 1023);
      // Exposure-aware target at the neighbor-weight site (vanilla p-hat form wrapped).
      const float rrb_phat_n = RRLadder_ExposureAwareTarget(
          RRLadder_ReconnectTargetLum(rrb_n_lum, rrb_center_pos, rrb_center_normal, rrb_n_hit),
          rrb_exposed, RRB_EXPOSURE_ALPHA);
      const float rrb_w_n = ((((float)((uint)rrb_n_m)) * asfloat(rrb_n_rad.y)) * rrb_jacobian) * rrb_phat_n;
      rrb_wsum += rrb_w_n;
      rrb_m_acc = rrb_m_acc + rrb_n_m;  // uncapped, vanilla semantics
      if ((rrb_merge_u * rrb_wsum) <= rrb_w_n) {  // vanilla accept form (rand * wsum_new <= w)
        rrb_lum_sel = rrb_n_lum;
        rrb_hit_sel = rrb_n_hit;
        rrb_phat_sel = rrb_phat_n;
      }
    }
    // ---- outputs: vanilla write contract with the exposure-aware target ----
    const float rrb_m_phat = rrb_phat_sel * ((float)((uint)rrb_m_acc));
    const float rrb_w_out = saturate(select((rrb_m_phat == 0.0f), 0.0f, (rrb_wsum / rrb_m_phat)));
    const float3 rrb_to_hit = rrb_hit_sel - rrb_center_pos;
    const float rrb_dist = sqrt(dot(rrb_to_hit, rrb_to_hit));
    const float rrb_dist_safe = max(9.999999974752427e-07f, rrb_dist);
    const half rrb_out = (half)(max(0.0f, rrb_lum_sel * rrb_w_out));
    __3__38__0__1__g_diffuseResultUAV[rrb_pixel] = float4(rrb_out, rrb_out, rrb_out, 0.0f);
    __3__38__0__1__g_raytracingHitResultUAV[rrb_pixel] = float4(rrb_to_hit.x / rrb_dist_safe, rrb_to_hit.y / rrb_dist_safe, rrb_to_hit.z / rrb_dist_safe, rrb_dist);
    __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[rrb_pixel] = rrb_w_out;
    return;  // off-gate falls through to the untouched vanilla loop + writes below
  }
  // RenoDX: <<< [Patch: RRLadderCandidateB]
  // RenoDX: >>> [Patch: RRLadderCandidateC] [Version: 1.13.00]
  // Description: The shared wide-pooling core of every exposed SPMIS tier plus the
  // unexposed RT_QUALITY==1 conditioning baseline (==2 "SPMIS Balanced", ==3 "SPMIS Boosted"; originally the
  // standalone "Wide Pooling" candidate; re-gated to serve every SPMIS tier when the
  // shipping ladder was fixed 2026-07-05). Composition inside this one branch:
  //  - ALL tiers: stochastic pairwise MIS wide-kernel spatial reuse (Hedstrom et al.,
  //    Eurographics/CGF 45(2) 2026) + the retired Candidate B's compatibility-guided
  //    selection folded into the pool importance ([Patch: RRLadderFidelity] knob
  //    RRFID_CGNS_POOL_SCORING). This is the noise-only conditioning; on Denoise the
  //    resolve splat is vanilla-clamped (rrc_knee_tier gate forces the de-clamp knee's
  //    k_eff to 0, so RRLadder_SoftKneeW == saturate).
  //  - tiers 2/3 only: the variance-gated W de-clamp at the resolve splat
  //    ([Patch: RRLadderFidelity]).
  //  - tier 3 only: the stability-gated energy-character lift ([Patch: RRLadderLift]).
  // Semantic anchor: inserted after the vanilla center setup,
  // before the vanilla neighbor loop (same insertion point as the retired B branch
  // above; the branches remain mutually exclusive). The pooling core replaces
  // the vanilla 1/M-normalized 8..16-donor merge with an unbiased defensive
  // pairwise-MIS merge over donors importance-selected from a probed wide-kernel pool,
  // so large-radius reuse no longer darkens or double-counts at geometry boundaries.
  // Phase 1 probes RRC_POOL_COUNT ring-stratified coordinates (radiance texel plus,
  // when RRFID_CGNS_POOL_SCORING is on, the cheap G-buffer normal/depth taps for the
  // compatibility score) to accumulate the pool confidence sum and Eq.-17 importances
  // (confidence x luminance x UCW, optionally x compatibility), and per-slot streaming
  // WRS selects RRC_EVAL_COUNT donors with replacement (exact selection probability
  // importance/importanceTotal, divided back out at the merge so any importance shaping
  // stays unbiased).
  // Phase 2 fully loads, gate-checks (all vanilla shift-validation tests verbatim via
  // arithmetic-identical helpers), and merges only the selected donors with defensive
  // generalized pairwise MIS weights; the canonical sample keeps a defensive share plus
  // a one-draw stochastic beta-sum estimate (reverse shift of the center sample into a
  // uniformly chosen probe's domain), and all non-canonical confidences are scaled by
  // evaluated/pooled count (paper Sec. 4.3) to prevent dark pepper noise. Final
  // W = wsum / p-hat_selected with NO division by donor count (the MIS weights
  // self-normalize); the raw ratio is kept and the splat's ceiling is the
  // confidence-gated soft knee instead of the vanilla hard saturate (see the
  // [Patch: RRLadderFidelity] block at the final-normalization section below — the
  // inverse-PDF guide UAV still receives a value in [0,1]). Guide-buffer laws
  // (1.09 root cause): the hit-result UAV is
  // always recomputed relative to the CENTER surface, donor hits are written only after
  // passing every vanilla gate plus an above-horizon write-guard, and a failed guard
  // reverts the WHOLE pixel to center-only vanilla-equivalent outputs — donor geometry
  // never reaches the guide buffers unvalidated. All randomness comes from dedicated
  // TEA second-extraction streams (5 = pool coords, 3 = slot WRS, 4 = merge acceptance
  // + canonical probe index), with every multiplicative LCG state forced odd (| 1u) so
  // no stream can degenerate to the zero fixed point; merge order is fixed (canonical
  // incumbent first, then slots in order) and the acceptance stream advances once per
  // slot regardless of
  // branch outcomes. The vanilla RNG chain is never advanced inside the gate; with the
  // gate off, the untouched vanilla loop below executes with identical values.
  if (RR_ENABLED == 1.f && (RT_QUALITY == 1.f || RT_QUALITY == 2.f || RT_QUALITY == 3.f)) {
    const int2 rrc_pixel = int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y));
    const float3 rrc_center_normal = float3(_196, _197, _198);                  // N_c
    const float3 rrc_center_pos = float3(_243, _244, _245);                     // P_c
    const float3 rrc_center_hit = float3(_284, _285, _286);                     // H_c
    const float rrc_center_ucw = asfloat(_262.y);                               // W_c
    const float rrc_center_conf = min(RRC_CONFIDENCE_CAP, ((float)((uint)_289)));  // c_c
    // Center hit normal (payload .w, unused by the vanilla spatial body) — needed only
    // for the reverse-shift Jacobian; the phat_c > 0 && conf > 0 gate below skips
    // the reverse shift exactly when this could be stale/garbage.
    const float3 rrc_center_hitnormal = RRLadder_DecodeUnorm101010Normal(_257.w);
    const float rrc_adjust = ((float)RRC_EVAL_COUNT) / ((float)RRC_POOL_COUNT);  // Sec. 4.3
    const float rrc_radius = max(_313, RRC_WIDE_RADIUS);      // never narrower than vanilla mode
    const float rrc_radius_local = max(8.0f, rrc_radius * 0.25f);  // local stratum
    const uint rrc_pixflat = uint((_bufferSizeAndInvSize.x * _15) + _14);
    // Dedicated white-noise streams; the vanilla chain is never advanced in-gate.
    // All multiplicative LCG states below are forced odd (| 1u): an odd state under an
    // odd multiplier stays odd forever, so no stream can hit the zero fixed point.
    const uint2 rrc_seed_pool = RRLadder_TeaSecondExtraction(rrc_pixflat, _frameNumber.x, 5u);
    const uint2 rrc_seed_slot = RRLadder_TeaSecondExtraction(rrc_pixflat, _frameNumber.x, 3u);
    const uint2 rrc_seed_merge = RRLadder_TeaSecondExtraction(rrc_pixflat, _frameNumber.x, 4u);
    const uint rrc_canon_index = rrc_seed_merge.y % RRC_POOL_COUNT;  // Ntilde_c = 1 uniform probe
#if RRFID_CGNS_POOL_SCORING
    // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.13.00]
    // Description: World-space compatibility footprint scale for the pool
    // selection scoring below (the retired Candidate B's CGNS heuristic folded into
    // the wide-pooling donor selection). View distance comes from the
    // inverse-projection homogeneous divide term already computed for the center pixel
    // (standard perspective: reconstruction w == 1/view_z); a constant-factor error
    // here only rescales the effective footprint solid angle, not correctness.
    const float rrc_compat_scale = RRLadder_CompatScale(RRB_COMPAT_SOLID_ANGLE, abs(1.0f / _242));
    // RenoDX: <<< [Patch: RRLadderFidelity]
#endif

    // ---- phase 1: probe pool, per-slot WRS donor selection ----
    uint rrc_slot_coord[RRC_EVAL_COUNT];
    float rrc_slot_imp[RRC_EVAL_COUNT];
    uint rrc_slot_rng[RRC_EVAL_COUNT];
    [unroll] for (uint rrc_s = 0u; rrc_s < RRC_EVAL_COUNT; ++rrc_s) {
      rrc_slot_coord[rrc_s] = 0xFFFFFFFFu;
      rrc_slot_imp[rrc_s] = 0.0f;
      rrc_slot_rng[rrc_s] = (rrc_seed_slot.x + ((rrc_s + 1u) * rrc_seed_slot.y)) | 1u;  // per-slot stream, forced odd
    }
    float rrc_conf_sum = 0.0f;    // cS (uncapped-by-pool, per-probe capped)
    float rrc_imp_total = 0.0f;   // Eq.-17 importance normalizer
    // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.13.00]
    // Description: f32 accumulators for the pool-luminance variance gate: sum and
    // sum-of-squares of ALL RRC_POOL_COUNT phase-1 probes' decoded reservoir
    // luminances (including zero-confidence/empty probes — sparse bright hits among
    // dark neighbors are exactly the disagreement the gate must see). Two consumers,
    // both via RRLadder_PoolAgreement and both in this wide-pooling branch: the
    // resolve knee's k_eff at the final-normalization site (lanes 2/3, knob
    // RRFID_VARIANCE_K — pool disagreement collapses the de-clamp toward the vanilla
    // saturate) and the RT_QUALITY==3 lift lambda (knob RRLIFT_VARIANCE_K). NOT
    // guarded by RRLIFT_ENABLE: the knee gate consumes these even in lift-off
    // diagnostic builds. The surrounding pool loop was already full f32 (f16tof32
    // decode into float sums), and these stay float — NEVER half — because a single
    // squared probe luminance (up to ~65504^2 ~ 4.3e9) overflows f16 (see the
    // accumulator contract on RRLadder_PoolAgreement).
    float rrc_lum_sum = 0.0f;
    float rrc_lum_sq_sum = 0.0f;
    // RenoDX: <<< [Patch: RRLadderFidelity]
    float rrc_canon_conf = 0.0f;
    int2 rrc_canon_coord = rrc_pixel;
    uint rrc_coord_rng = rrc_seed_pool.x | 1u;  // forced odd
    [loop] for (uint rrc_i = 0u; rrc_i < RRC_POOL_COUNT; ++rrc_i) {
      // Vanilla offset idiom: 24-bit LCG extraction -> [-1,1) * radius, clamped to bounds
      // (x draw from state * 48271 not fed forward; y stream multiplier fed forward).
      const float rrc_ux = (((float)((uint)((rrc_coord_rng * 48271u) & 16777215u))) * 1.1920928955078125e-07f) - 1.0f;
      rrc_coord_rng *= 2330089441u;  // vanilla y-stream multiplier (-1964877855)
      const float rrc_uy = (((float)((uint)(rrc_coord_rng & 16777215u))) * 1.1920928955078125e-07f) - 1.0f;
      const float rrc_r = (rrc_i < (RRC_POOL_COUNT >> 1u)) ? rrc_radius_local : rrc_radius;  // ring stratification
      const int2 rrc_probe = int2(
          int(min(max(float(int(rrc_ux * rrc_r) + rrc_pixel.x), 0.0f), (_bufferSizeAndInvSize.x + -1.0f))),
          int(min(max(float(int(rrc_uy * rrc_r) + rrc_pixel.y), 0.0f), (_bufferSizeAndInvSize.y + -1.0f))));
      const uint2 rrc_probe_rad = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(rrc_probe.x, rrc_probe.y, 0));
      const float rrc_probe_conf = min(RRC_CONFIDENCE_CAP, ((float)((uint)(rrc_probe_rad.x & 1023))));
      const float rrc_probe_lum = f16tof32(((uint)((uint)(rrc_probe_rad.x)) >> 16));  // exposure-scaled probe luminance (hoisted from the Eq.-17 product below)
      float rrc_probe_imp = (rrc_probe_conf * rrc_probe_lum) * asfloat(rrc_probe_rad.y);  // Eq. 17: c * phat-proxy * W
      // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.13.00]
      // Description: Variance-gate accumulation for the pool-agreement factor (knee
      // k_eff gate, lanes 2/3, plus the lane-3 lift lambda gate) — unconditional per
      // probe (all pool probes count, empty reservoirs included) so the statistic
      // reflects the full neighborhood, not just importance-positive taps.
      rrc_lum_sum += rrc_probe_lum;
      rrc_lum_sq_sum += rrc_probe_lum * rrc_probe_lum;
      // RenoDX: <<< [Patch: RRLadderFidelity]
#if RRFID_CGNS_POOL_SCORING
      // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.13.00]
      // Description: Compatibility-guided pool selection (the retired Candidate B's
      // CGNS heuristic, Junkins et al. HPG 2026, folded into the wide-pooling probe
      // importance). Each probe's Eq.-17 selection importance is scaled by a
      // G-buffer-only geometric compatibility score (surface-distance falloff x normal
      // alignment) so donors likely to survive the merge gates are drawn more often.
      // SELECTION PROBABILITY ONLY: the score never touches samples, UCWs, or the MIS
      // weights, and the merge below divides every accepted donor by its exact
      // selection pmf (importance/importanceTotal), so this shaping is unbiased by
      // construction — it moves variance, not energy. The score is floored
      // (RRFID_CGNS_SCORE_FLOOR) because that same 1/pmf division would otherwise
      // amplify a gate-passing donor that happened to score near zero.
      const float3 rrc_probe_normal = RRLadder_DecodeUnorm101010Normal(__3__36__0__0__g_sceneNormal.Load(int3(rrc_probe.x, rrc_probe.y, 0)));
      const float rrc_probe_depth = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(rrc_probe.x, rrc_probe.y, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      const float3 rrc_probe_pos = RRLadder_ReconstructPosition(_invViewProjRelative, RRLadder_PixelToNdc(float2(float(rrc_probe.x), float(rrc_probe.y)), _bufferSizeAndInvSize.zw), rrc_probe_depth);
      rrc_probe_imp *= max(RRFID_CGNS_SCORE_FLOOR,
                           RRLadder_CompatScore(rrc_probe_pos - rrc_center_pos, rrc_center_normal,
                                                rrc_probe_normal, rrc_compat_scale, RRB_COMPAT_NORMAL_BETA));
      // RenoDX: <<< [Patch: RRLadderFidelity]
#endif
      rrc_conf_sum += rrc_probe_conf;
      rrc_imp_total += rrc_probe_imp;
      if (rrc_probe_imp > 0.0f) {
        const uint rrc_packed = (((uint)rrc_probe.y) << 16) | ((uint)rrc_probe.x);
        [unroll] for (uint rrc_s2 = 0u; rrc_s2 < RRC_EVAL_COUNT; ++rrc_s2) {
          rrc_slot_rng[rrc_s2] *= 48271u;  // advance on every positive-importance probe
          if (((((float)((uint)(rrc_slot_rng[rrc_s2] & 16777215u))) * 5.960464477539063e-08f) * rrc_imp_total) <= rrc_probe_imp) {
            rrc_slot_coord[rrc_s2] = rrc_packed;  // P(i) = imp_i / impTotal, with replacement
            rrc_slot_imp[rrc_s2] = rrc_probe_imp;
          }
        }
      }
      if (rrc_i == rrc_canon_index) {
        rrc_canon_coord = rrc_probe;
        rrc_canon_conf = rrc_probe_conf;
      }
    }
    const float rrc_conf_sum_adj = rrc_conf_sum * rrc_adjust;  // Sec. 4.3 scaled cS

    // ---- canonical MIS weight, stochastic with Ntilde_c = 1 (paper Eq. 18/19) ----
    float rrc_mis_canon = ((rrc_center_conf + rrc_conf_sum_adj) > 0.0f)
                              ? (rrc_center_conf / (rrc_center_conf + rrc_conf_sum_adj))
                              : 1.0f;  // all-empty pool: canonical keeps full weight
    if ((_302 > 0.0f) && (rrc_canon_conf > 0.0f)) {
      // Reverse shift: the center's sample seen from the canonical probe's surface.
      const float3 rrc_cn_normal = RRLadder_DecodeUnorm101010Normal(__3__36__0__0__g_sceneNormal.Load(int3(rrc_canon_coord.x, rrc_canon_coord.y, 0)));
      const float rrc_cn_depth = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(rrc_canon_coord.x, rrc_canon_coord.y, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      const float3 rrc_cn_pos = RRLadder_ReconstructPosition(_invViewProjRelative, RRLadder_PixelToNdc(float2(float(rrc_canon_coord.x), float(rrc_canon_coord.y)), _bufferSizeAndInvSize.zw), rrc_cn_depth);
      float rrc_ph_from_c = 0.0f;
      // Role-swapped vanilla gates: if the shift of the center sample to the probe would
      // fail validation, the shifted target is 0 and the canonical weight keeps that share.
      const bool rrc_plane_ok = !(abs(dot(rrc_cn_normal, rrc_center_pos - rrc_cn_pos)) > max(0.5f, (_nearFarProj.x / rrc_cn_depth)));
      const bool rrc_face_ok = !(dot(rrc_cn_normal, rrc_center_normal) < 0.0f);
      if (rrc_plane_ok && rrc_face_ok) {
        const float rrc_jac_cj = RRLadder_ReconnectJacobianClamped(rrc_center_pos, rrc_cn_pos, rrc_center_hit, rrc_center_hitnormal);  // J_{c->j}
        rrc_ph_from_c = RRLadder_ReconnectTargetLum(_288, rrc_cn_pos, rrc_cn_normal, rrc_center_hit) * rrc_jac_cj;
      }
      rrc_mis_canon += ((float)RRC_POOL_COUNT) * RRLadder_PairwiseCanonicalBeta(rrc_canon_conf * rrc_adjust, rrc_center_conf, rrc_conf_sum_adj, rrc_ph_from_c, _302);
    }

    // ---- phase 2: WRS merge — canonical incumbent first, then slots in fixed order ----
    float rrc_wsum = (rrc_mis_canon * _302) * rrc_center_ucw;  // w~_c = m~_c * phat_c * UCW_c
    float rrc_lum_sel = _288;
    float3 rrc_hit_sel = rrc_center_hit;
    float rrc_phat_sel = _302;
    bool rrc_donor_sel = false;
    // RenoDX: >>> [Patch: RRLadderLift] [Version: 1.13.00]
    // Description: Counts donors that pass EVERY vanilla shift-validation gate
    // (receiver-plane, backface, reconnection-Jacobian) in the merge loop this frame.
    // Consumed only by the RT_QUALITY==3 lift's accept_conf signal — donors must
    // actually agree with the center surface for the energy lift to arm. Pure counter;
    // no effect on selection, weights, or writes.
    uint rrc_accept_count = 0u;
    // RenoDX: <<< [Patch: RRLadderLift]
    uint rrc_merge_rng = rrc_seed_merge.x | 1u;  // forced odd
    for (uint rrc_s3 = 0u; rrc_s3 < RRC_EVAL_COUNT; ++rrc_s3) {
      rrc_merge_rng *= 3438826159u;  // vanilla acceptance multiplier; advances EVERY slot
      if (rrc_slot_coord[rrc_s3] == 0xFFFFFFFFu) continue;
      const int2 rrc_donor = int2((int)(rrc_slot_coord[rrc_s3] & 65535u), (int)(rrc_slot_coord[rrc_s3] >> 16));
      // Full vanilla donor loads/decodes (identical forms, loop coordinate substituted).
      const float3 rrc_d_raw = RRLadder_DecodeUnorm101010Raw(__3__36__0__0__g_sceneNormal.Load(int3(rrc_donor.x, rrc_donor.y, 0)));
      const float rrc_d_depth = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(rrc_donor.x, rrc_donor.y, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      const float3 rrc_d_pos = RRLadder_ReconstructPosition(_invViewProjRelative, RRLadder_PixelToNdc(float2(float(rrc_donor.x), float(rrc_donor.y)), _bufferSizeAndInvSize.zw), rrc_d_depth);
      // Vanilla gate 1: receiver-plane test.
      if (abs(dot(rrc_center_normal, rrc_d_pos - rrc_center_pos)) > max(0.5f, (_nearFarProj.x / _206))) continue;
      // Vanilla gate 2: neighbor-normal backface test (requantized normal, vanilla chain).
      const float3 rrc_d_normal = RRLadder_RequantUnorm101010Normal(rrc_d_raw);
      if (dot(rrc_center_normal, rrc_d_normal) < 0.0f) continue;
      const uint4 rrc_d_hitgeom = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3(rrc_donor.x, rrc_donor.y, 0));
      const uint2 rrc_d_rad = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(rrc_donor.x, rrc_donor.y, 0));
      const float3 rrc_d_hit = float3(asfloat(rrc_d_hitgeom.x), asfloat(rrc_d_hitgeom.y), asfloat(rrc_d_hitgeom.z));
      const float3 rrc_d_hitnormal = RRLadder_DecodeUnorm101010Normal(rrc_d_hitgeom.w);
      // Vanilla gates 3+4: reconnection Jacobian sign/degeneracy tests (0 == reject).
      const float rrc_jac = RRLadder_ReconnectJacobianClamped(rrc_d_pos, rrc_center_pos, rrc_d_hit, rrc_d_hitnormal);  // J_{i->c}
      if (!(rrc_jac > 0.0f)) continue;
      rrc_accept_count += 1u;  // all vanilla gates passed ([Patch: RRLadderLift] signal)
      const float rrc_d_lum = f16tof32(((uint)((uint)(rrc_d_rad.x)) >> 16));
      const float rrc_d_m = (float)((uint)(rrc_d_rad.x & 1023));
      const float rrc_d_ucw = asfloat(rrc_d_rad.y);
      const float rrc_ph_at_c = RRLadder_ReconnectTargetLum(rrc_d_lum, rrc_center_pos, rrc_center_normal, rrc_d_hit);  // vanilla neighbor-target form
      const float rrc_ph_own = RRLadder_ReconnectTargetLum(rrc_d_lum, rrc_d_pos, rrc_d_normal, rrc_d_hit);             // donor's own target
      const float rrc_d_conf = min(RRC_CONFIDENCE_CAP, rrc_d_m) * rrc_adjust;  // Sec. 4.3
      const float rrc_mis = (rrc_imp_total / (((float)RRC_EVAL_COUNT) * rrc_slot_imp[rrc_s3]))  // 1 / (Ntilde * P(i))
                            * RRLadder_PairwiseNonCanonical(rrc_d_conf, rrc_center_conf, rrc_conf_sum_adj, rrc_ph_own / rrc_jac, rrc_ph_at_c);
      const float rrc_w = ((rrc_mis * rrc_ph_at_c) * rrc_d_ucw) * rrc_jac;  // Eq. 14
      if (!(rrc_w > 0.0f)) continue;
      rrc_wsum += rrc_w;
      if (((((float)((uint)(rrc_merge_rng & 16777215u))) * 5.960464477539063e-08f) * rrc_wsum) <= rrc_w) {
        rrc_lum_sel = rrc_d_lum;
        rrc_hit_sel = rrc_d_hit;
        rrc_phat_sel = rrc_ph_at_c;
        rrc_donor_sel = true;
      }
    }

    // ---- final normalization + guarded writes (guide-buffer laws) ----
    // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.13.00]
    // Description: Confidence-gated de-clamp of the resolve weight for the SPMIS Balanced
    // (RT_QUALITY==2) and SPMIS Boosted (RT_QUALITY==3) tiers only; the unexposed RT_QUALITY==1 tier
    // (RT_QUALITY==1) forces rrc_knee_tier=0 below so its splat stays vanilla-clamped
    // (noise-only, no energy change). The MIS ratio W = wsum / p-hat_selected is kept RAW
    // (un-saturated): the hard saturate here was an asymmetric energy clip — resampling
    // ratios above 1 (bright stable indirect light whose luminance-only target model
    // locally underestimates) lost energy while ratios below 1 kept theirs. On the
    // de-clamping tiers the splatted energy uses RRLadder_SoftKneeW (C1-continuous at 1,
    // bounded by 1 + k_eff <= 4), with k_eff scaled by the CENTER reservoir's pre-merge
    // convergence (RRLadder_ReservoirConfidence of the same packed radiance word this
    // shader already loaded for the center pixel), so freshly reset / disoccluded
    // pixels splat exactly the vanilla-saturated value, AND by the pool-luminance
    // agreement factor (RRLadder_PoolAgreement over the phase-1 probes' luminance
    // sum/sum-of-squares, sharpness RRFID_VARIANCE_K): when the probe pool's
    // reservoir luminances disagree — the wide kernel importing sparse bright donors
    // into locally dim pixels drives the honest W above 1, and the knee then releases
    // energy the vanilla saturate used to swallow, seen in-game as tiny fireflies at
    // indoor window light on this pooling path — agreement falls toward 0 and k_eff
    // collapses the knee back to the vanilla saturate; agreeing pools (dense-bright
    // terrain, open sky) keep the full knee. The inverse-PDF guide UAV
    // keeps a vanilla-saturated W in [0,1] (RR-internal range expectations are
    // unknown; also keeps the energy A/B unconfounded) — for the Lift lane it is
    // recomputed from the final splat for splat/guide coherence, still in [0,1].
    // Firefly protection stays layered wherever the saturate ceiling is lifted: the
    // confidence gate, the knee bound, the pre-existing RRC_MAX_GROWTH clamp against
    // the center reservoir's own contribution, and the RRFID_SPLAT_CEILING
    // f16-headroom ceiling below.
    const float rrc_w_raw = ((rrc_phat_sel > 0.0f) && (rrc_wsum > 0.0f)) ? (rrc_wsum / rrc_phat_sel) : 0.0f;  // W = wsum/phat, NO /M
    float rrc_w_out = saturate(rrc_w_raw);  // vanilla-clamped W: guide-buffer contract value
    const float rrc_knee_agree = RRLadder_PoolAgreement(rrc_lum_sum, rrc_lum_sq_sum, (float)RRC_POOL_COUNT, RRFID_VARIANCE_K);
    // TIER GATE (shipping ladder): the variance-gated de-clamp knee is the SPMIS Balanced
    // (RT_QUALITY==2) and SPMIS Boosted (RT_QUALITY==3) energy change. The unexposed RT_QUALITY==1 tier
    // (RT_QUALITY==1) must be noise-only with vanilla brightness, so its k_eff is forced
    // to 0 here — RRLadder_SoftKneeW(w, 0) returns saturate(w) exactly (see the helper),
    // i.e. the vanilla resolve clamp. Tiers 2/3 keep the full confidence x agreement knee.
    const float rrc_knee_tier = (RT_QUALITY >= 2.f) ? 1.0f : 0.0f;
    const float rrc_k_eff = ((RRFID_KNEE_KMAX_RESOLVE * rrc_knee_tier) * rrc_knee_agree) * RRLadder_ConfidenceRamp(RRLadder_ReservoirConfidence(_262.x));
    float rrc_splat = max(0.0f, rrc_lum_sel * RRLadder_SoftKneeW(rrc_w_raw, rrc_k_eff));
    // RenoDX: <<< [Patch: RRLadderFidelity]
#if RRLIFT_ENABLE
    // RenoDX: >>> [Patch: RRLadderLift] [Version: 1.13.00]
    // Description: RT_QUALITY==3 "Fidelity Lift" energy-character layer, applied after
    // the pairwise-MIS merge and de-clamp knee, before the firefly clamp and the
    // guarded writes. lambda multiplies five slow-moving convergence statistics —
    // m_conf (center reservoir confidence through the shared declamp
    // RRLadder_ConfidenceRamp: zero through the first RRFID_CONF_FLOOR frames, so
    // fresh/disoccluded pixels get zero lift; NOTE: the confidence uses the min of
    // the leapfrogged M/age counter pair rather than M alone, strictly more
    // conservative on disocclusion), pool_conf (phase-1 probe confidence sum),
    // accept_conf (donors that passed every vanilla gate this frame), light_conf
    // (exposure-scaled center luminance ramp, full lift in bright stable light,
    // RRLIFT_DIM_FLOOR fraction in dim scenes), and agree_conf (a variance gate:
    // saturate(1 - rel_std * RRLIFT_VARIANCE_K) over the phase-1 pool probes' decoded
    // luminances, mechanically the coefficient of variation of the neighborhood's
    // reservoir brightness — dense-bright surfaces where the probes agree, e.g. sunlit
    // cliffs or open-sky visibility, score ~1 and pass the strong lift through, while
    // sparse bright hits where a few bright probes sit among dark neighbors, e.g. an
    // indoor window light pool, score ~0 and suppress it; added after a user report of
    // visible lift noise on indoor window light, which this statistic isolates without
    // touching the dense-bright cases the lift exists for) — and pulls the
    // below-ceiling part of
    // W toward the vanilla saturate ceiling by that fraction (RRLadder_LiftWeight),
    // with the ADDED energy compressed through a Reinhard knee on the delta only
    // (RRLadder_LiftSoftKnee). lambda has no dedicated RNG term; its inputs are
    // bounded confidence averages over the probe/donor sets, so its frame-to-frame
    // variance is low and shrinks with pool size — not zero. Where the de-clamp knee
    // already exceeds the lifted value (w_raw > 1) the
    // delta is zero and the lift no-ops, so the two layers never double-apply. When
    // the write-guard below reverts the pixel, every lift/knee output is discarded
    // with it (whole-pixel revert to center-only vanilla-equivalent values).
    if (RT_QUALITY == 3.f) {
      const float rrl_m_conf = RRLadder_ConfidenceRamp(RRLadder_ReservoirConfidence(_262.x));  // shared declamp ramp: 0 through conf 4, 1 at 32
      const float rrl_pool_conf = saturate(rrc_conf_sum / (((float)RRC_POOL_COUNT) * RRLIFT_POOL_NORM));
      const float rrl_accept_conf = saturate(((float)rrc_accept_count) / RRLIFT_ACCEPT_NORM);
      const float rrl_light_conf = saturate((_288 - RRLIFT_LUM_LO) / (RRLIFT_LUM_HI - RRLIFT_LUM_LO));
      const float rrl_agree_conf = RRLadder_PoolAgreement(rrc_lum_sum, rrc_lum_sq_sum, (float)RRC_POOL_COUNT, RRLIFT_VARIANCE_K);
      const float rrl_lambda = rrl_agree_conf
                               * RRLadder_LiftLambda(rrl_m_conf, rrl_pool_conf, rrl_accept_conf,
                                                     rrl_light_conf, RRLIFT_STRENGTH, RRLIFT_DIM_FLOOR);
      rrc_splat = RRLadder_LiftSoftKnee(rrc_splat,
                                        max(0.0f, rrc_lum_sel * RRLadder_LiftWeight(rrc_w_raw, rrl_lambda)),
                                        RRLIFT_KNEE_STRENGTH);
    }
    // RenoDX: <<< [Patch: RRLadderLift]
#endif
    // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.13.00]
    // Description: Mandatory firefly guard + f16-headroom ceiling on the de-clamped
    // (and possibly lifted) splat, then the guide-coherence W for the Lift lane (the
    // stored inverse-PDF mirrors the final splat / selected-luminance ratio, saturated
    // to the [0,1] guide contract; the Fidelity lane keeps the vanilla-saturated W).
    rrc_splat = min(RRFID_SPLAT_CEILING, RRLadder_FireflyClampScalar(rrc_splat, _288 * saturate(rrc_center_ucw), RRC_MAX_GROWTH));
    float rrc_w_written = rrc_w_out;
#if RRLIFT_ENABLE
    if (RT_QUALITY == 3.f) {
      rrc_w_written = (rrc_lum_sel > 9.999999974752427e-07f) ? saturate(rrc_splat / rrc_lum_sel) : rrc_w_out;
    }
#endif
    // RenoDX: <<< [Patch: RRLadderFidelity]
    float3 rrc_dir = rrc_hit_sel - rrc_center_pos;  // ALWAYS center-relative
    float rrc_dist = sqrt(dot(rrc_dir, rrc_dir));
    if (rrc_donor_sel && !((rrc_dist >= 9.999999974752427e-07f) && (dot(rrc_center_normal, rrc_dir) > 0.0f))) {
      // Guide write-guard failed: revert the WHOLE pixel to center-only
      // vanilla-equivalent outputs (no mixed state, no unvalidated donor geometry,
      // no residual knee/lift energy).
      const float rrc_w_center = (_302 > 0.0f) ? saturate(rrc_center_ucw) : 0.0f;
      rrc_splat = max(0.0f, _288 * rrc_w_center);
      rrc_w_out = rrc_w_center;
      rrc_w_written = rrc_w_center;
      rrc_dir = rrc_center_hit - rrc_center_pos;
      rrc_dist = sqrt(dot(rrc_dir, rrc_dir));
    }
    const float rrc_dist_safe = max(9.999999974752427e-07f, rrc_dist);
    const half rrc_out = (half)(rrc_splat);
    __3__38__0__1__g_diffuseResultUAV[rrc_pixel] = float4(rrc_out, rrc_out, rrc_out, 0.0f);
    __3__38__0__1__g_raytracingHitResultUAV[rrc_pixel] = float4(rrc_dir.x / rrc_dist_safe, rrc_dir.y / rrc_dist_safe, rrc_dir.z / rrc_dist_safe, rrc_dist);
    __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[rrc_pixel] = rrc_w_written;
    return;  // off-gate falls through to the untouched vanilla loop + writes below
  }
  // RenoDX: <<< [Patch: RRLadderCandidateC]
  if (!(_316 == 0)) {
    _357 = _289;
    _358 = _288;
    _359 = _284;
    _360 = _285;
    _361 = _286;
    _362 = ((int)(_167 * 48271));
    _363 = _302;
    _364 = _305;
    _365 = 0;
    while(true) {
      _603 = _357;
      _604 = _358;
      _605 = _359;
      _606 = _360;
      _607 = _361;
      _609 = _363;
      _610 = _364;
      _371 = _362 * -1964877855;
      _390 = int(min(max(float((int)(int(((((float)((uint)((uint)(((int)(_362 * 48271)) & 16777215)))) * 1.1920928955078125e-07f) + -1.0f) * _313) + (int)(SV_DispatchThreadID.x))), 0.0f), (_bufferSizeAndInvSize.x + -1.0f)));
      _391 = int(min(max(float((int)(int(((((float)((uint)((uint)(_371 & 16777215)))) * 1.1920928955078125e-07f) + -1.0f) * _313) + (int)(SV_DispatchThreadID.y))), 0.0f), (_bufferSizeAndInvSize.y + -1.0f)));
      _399 = __3__36__0__0__g_sceneNormal.Load(int3(_390, _391, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _415 = min(1.0f, ((((float)((uint)((uint)(_399.x & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _416 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_399.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _417 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_399.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
      _429 = (((float((int)(_390)) + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
      _432 = 1.0f - (((float((int)(_391)) + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
      _433 = max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_390, _391, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      _469 = mad((_invViewProjRelative[2].w), _433, mad((_invViewProjRelative[1].w), _432, (_429 * (_invViewProjRelative[0].w)))) + (_invViewProjRelative[3].w);
      _470 = (mad((_invViewProjRelative[2].x), _433, mad((_invViewProjRelative[1].x), _432, (_429 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[3].x)) / _469;
      _471 = (mad((_invViewProjRelative[2].y), _433, mad((_invViewProjRelative[1].y), _432, (_429 * (_invViewProjRelative[0].y)))) + (_invViewProjRelative[3].y)) / _469;
      _472 = (mad((_invViewProjRelative[2].z), _433, mad((_invViewProjRelative[1].z), _432, (_429 * (_invViewProjRelative[0].z)))) + (_invViewProjRelative[3].z)) / _469;
      _473 = rsqrt(dot(float3(_415, _416, _417), float3(_415, _416, _417))) * 511.0f;
      _485 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3(_390, _391, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
      _491 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(_390, _391, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
      _505 = min(1.0f, ((((float)((uint)((uint)((int)(uint((_473 * _415) + 511.5f)) & 1023)))) * 0.001956947147846222f) + -1.0f));
      _506 = min(1.0f, ((((float)((uint)((uint)((int)(uint((_473 * _416) + 511.5f)) & 1023)))) * 0.001956947147846222f) + -1.0f));
      _507 = min(1.0f, ((((float)((uint)((uint)((int)(uint((_473 * _417) + 511.5f)) & 1023)))) * 0.001956947147846222f) + -1.0f));
      _509 = rsqrt(dot(float3(_505, _506, _507), float3(_505, _506, _507)));  // [sem: invLength]
      _510 = asfloat(_485.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _511 = asfloat(_485.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _512 = asfloat(_485.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _527 = min(1.0f, ((((float)((uint)((uint)(_485.w & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _528 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_485.w)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _529 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_485.w)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
      _531 = rsqrt(dot(float3(_527, _528, _529), float3(_527, _528, _529)));  // [sem: invLength]
      _532 = _531 * _527;
      _533 = _531 * _528;
      _534 = _531 * _529;
      _536 = f16tof32(((uint)((uint)((uint)(_491.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      _537 = _491.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      if (!(abs(dot(float3(_196, _197, _198), float3((_470 - _243), (_471 - _244), (_472 - _245)))) > max(0.5f, (_nearFarProj.x / _206)))) {
        if (!(dot(float3(_196, _197, _198), float3((_509 * _505), (_509 * _506), (_509 * _507))) < 0.0f)) {
          _552 = _510 - _470;
          _553 = _511 - _471;
          _554 = _512 - _472;
          _555 = _510 - _243;
          _556 = _511 - _244;
          _557 = _512 - _245;
          _558 = dot(float3(_555, _556, _557), float3(_555, _556, _557));
          _559 = dot(float3(_552, _553, _554), float3(_552, _553, _554));
          _560 = rsqrt(_559);  // [sem: rsqrt_val]
          _564 = rsqrt(_558);  // [sem: rsqrt_val]
          _566 = _558 * dot(float3((_560 * _552), (_560 * _553), (_560 * _554)), float3(_532, _533, _534));
          if (!(_566 >= -0.0f)) {
            _570 = _564 * _555;
            _571 = _564 * _556;
            _572 = _564 * _557;
            _578 = min(max(((-0.0f - (_559 * dot(float3(_570, _571, _572), float3(_532, _533, _534)))) / (-0.0f - _566)), 0.0f), 1.0f);
            if (!(_578 <= 0.0f)) {
              _584 = (_536 * 0.31830987334251404f) * max(0.10000000149011612f, dot(float3(_196, _197, _198), float3(_570, _571, _572)));
              _588 = ((((float)((uint)_537)) * asfloat(_491.y)) * _578) * _584;
              _589 = _362 * -856141137;
              _593 = _588 + _364;
              _596 = (((((float)((uint)((uint)(_589 & 16777215)))) * 5.960464477539063e-08f) * _593) <= _588);
              _603 = ((int)(_537 + _357));
              _604 = select(_596, _536, _358);
              _605 = select(_596, _510, _359);
              _606 = select(_596, _511, _360);
              _607 = select(_596, _512, _361);
              _608 = _589;
              _609 = select(_596, _584, _363);
              _610 = _593;
            } else {
              _603 = _357;
              _604 = _358;
              _605 = _359;
              _606 = _360;
              _607 = _361;
              _608 = _371;
              _609 = _363;
              _610 = _364;
            }
          } else {
            _603 = _357;
            _604 = _358;
            _605 = _359;
            _606 = _360;
            _607 = _361;
            _608 = _371;
            _609 = _363;
            _610 = _364;
          }
        } else {
          _603 = _357;
          _604 = _358;
          _605 = _359;
          _606 = _360;
          _607 = _361;
          _608 = _371;
          _609 = _363;
          _610 = _364;
        }
      } else {
        _603 = _357;
        _604 = _358;
        _605 = _359;
        _606 = _360;
        _607 = _361;
        _608 = _371;
        _609 = _363;
        _610 = _364;
      }
      _611 = _365 + 1u;
      if (!(_611 == _316)) {
        _357 = _603;
        _358 = _604;
        _359 = _605;
        _360 = _606;
        _361 = _607;
        _362 = _608;
        _363 = _609;
        _364 = _610;
        _365 = _611;
        continue;
      }
      while(true) {
        _322 = _603;
        _323 = _604;
        _324 = _605;
        _325 = _606;
        _326 = _607;
        _327 = _609;
        _328 = _610;
        break;
      }
      break;
    }
  } else {
    _322 = _289;
    _323 = _288;
    _324 = _284;
    _325 = _285;
    _326 = _286;
    _327 = _302;
    _328 = _305;
  }
  _330 = _327 * ((float)((uint)_322));
  _334 = saturate(select((_330 == 0.0f), 0.0f, (_328 / _330)));  // [sem: expr_sat]
  // RenoDX: >>> [Patch: RRLadderResolvePassthrough] [Version: 1.13.00]
  // Description: RETIRED de-clamp on the vanilla narrow-reuse resolve path. This site
  // used to host the old RT_QUALITY==1 "Declamp" lane (a confidence-gated soft-knee
  // de-clamp of the vanilla resolve weight _334). Under the shipping SPMIS ladder the de-
  // clamp is delivered exclusively inside the wide-pooling branch above (the
  // [Patch: RRLadderFidelity] resolve knee, gated to SPMIS Balanced/Boosted via
  // rrc_knee_tier), and that branch is TERMINAL — it writes all three output UAVs and
  // returns before control can reach this code. Control-flow proof that no tier reaches a
  // de-clamp here: (Off, RT_QUALITY==0) never satisfies the wide-pooling gate and arrives
  // here as the pure vanilla resolve, which must stay bit-exact; (the conditioning tiers,
  // Boosted, RT_QUALITY==1/2/3, RR enabled) all satisfy the wide-pooling gate above and
  // return there, so they NEVER execute this block. Retiring the de-clamp here therefore
  // (a) leaves Off bit-exact vanilla and (b) guarantees there is exactly ONE code path per
  // SPMIS tier — the wide-pooling branch — with the de-clamp gated correctly, and no
  // residual vanilla-reuse de-clamp that a future control-flow change could accidentally
  // revive. The splat operand is now unconditionally the vanilla product _323 * _334.
  const float rr_fid_splat = _323 * _334;  // vanilla splat operand (bit-exact; de-clamp retired to the wide-pooling branch)
  // RenoDX: <<< [Patch: RRLadderResolvePassthrough]
  _338 = _324 - _243;
  _339 = _325 - _244;
  _340 = _326 - _245;
  _346 = sqrt(((_339 * _339) + (_338 * _338)) + (_340 * _340));
  _347 = max(9.999999974752427e-07f, _346);
  _352 = -0.0h - (half)(half(min(0.0f, (-0.0f - (rr_fid_splat)))));  // [Patch: RRLadderResolvePassthrough] splat operand (always == _323 * _334; de-clamp retired to the wide-pooling branch)
  __3__38__0__1__g_diffuseResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_352, _352, _352, 0.0f);
  __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4((_338 / _347), (_339 / _347), (_340 / _347), _346);
  __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = _334;
}
