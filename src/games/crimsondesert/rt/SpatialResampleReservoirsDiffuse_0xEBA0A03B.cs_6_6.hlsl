// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below; Imports "rr_ladder_common.hlsli" for the SPMIS reservoir-sampling and quality-ladder helpers used below.
#include "../shared.h"
#include "rr_ladder_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint4> __3__36__0__0__g_diffuseGIReservoirHitGeometry : register(t71, space36);

Texture2D<uint2> __3__36__0__0__g_diffuseGIReservoirRadiance : register(t73, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u39, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

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

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _renderParams : packoffset(c000.x);
  float4 _renderParams2 : packoffset(c001.x);
  float4 _cubemapViewPosRelative : packoffset(c002.x);
  float4 _lightingParams : packoffset(c003.x);
  float4 _tiledRadianceCacheParams : packoffset(c004.x);
  float _rtaoIntensity : packoffset(c005.x);
};

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
  uint _30;
  uint _38;
  uint _46;
  uint _54;
  uint _62;
  uint _70;
  uint _78;
  uint _86;
  uint _94;
  uint _102;
  uint _110;
  uint _118;
  uint _126;
  uint _134;
  uint _142;
  uint _150;
  int _163;
  int _316;
  float _317;
  float _318;
  float _319;
  float _320;
  int _321;
  float _322;
  float _323;
  int _324;
  int _568;
  float _569;
  float _570;
  float _571;
  float _572;
  int _573;
  float _574;
  float _575;
  float _580;
  float _581;
  float _582;
  float _583;
  int _584;
  float _585;
  float _586;
  uint _165;
  float _171;
  float _177;
  float _183;
  float _185;
  float _186;
  float _187;
  float _188;
  float _193;
  float _198;
  float _205;
  float _217;
  float _226;
  float _235;
  float _244;
  uint4 _246;
  uint2 _251;
  float _261;
  float _269;
  float _277;
  float _279;
  float _280;
  float _281;
  float _282;
  float _284;
  int _285;
  float _286;
  float _287;
  float _288;
  float _290;
  float _300;
  float _304;
  float _308;
  int _311;
  uint _325;
  int _340;
  int _353;
  uint _355;
  float _361;
  float _367;
  float _373;
  float _379;
  float _385;
  float _392;
  float _404;
  float _413;
  float _422;
  float _431;
  float _434;
  uint4 _436;
  uint2 _442;
  float _452;
  float _460;
  float _468;
  float _470;
  float _471;
  float _472;
  float _473;
  float _478;
  float _484;
  float _490;
  float _492;
  float _493;
  float _494;
  float _495;
  float _497;
  int _498;
  float _516;
  float _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _530;
  float _533;
  float _534;
  float _535;
  float _542;
  float _548;
  float _553;
  uint _554;
  float _555;
  bool _560;
  uint _576;
  float _588;
  float _592;
  float _593;
  float _594;
  float _595;
  float _601;
  float _602;
  half _607;
  int __loop_jump_target = -1;
  _14 = (float)((uint)(SV_DispatchThreadID.x));
  _15 = (float)((uint)(SV_DispatchThreadID.y));
  _30 = (uint)((uint)((_bufferSizeAndInvSize.x * _15) + _14)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
  _38 = (uint)((uint)((((int)((uint)((uint)((uint)(_30)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_30)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_30)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
  _46 = (uint)((uint)((((int)((uint)((uint)((uint)(_38)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_38)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_38)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_30));
  _54 = (uint)((uint)((((int)((uint)((uint)((uint)(_46)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_46)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_46)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_38));
  _62 = (uint)((uint)((((int)((uint)((uint)((uint)(_54)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_54)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_54)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_46));
  _70 = (uint)((uint)((((int)((uint)((uint)((uint)(_62)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_62)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_62)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_54));
  _78 = (uint)((uint)((((int)((uint)((uint)((uint)(_70)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_70)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_70)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_62));
  _86 = (uint)((uint)((((int)((uint)((uint)((uint)(_78)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_78)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_78)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_70));
  _94 = (uint)((uint)((((int)((uint)((uint)((uint)(_86)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_86)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_86)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_78));
  _102 = (uint)((uint)((((int)((uint)((uint)((uint)(_94)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_94)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_94)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_86));
  _110 = (uint)((uint)((((int)((uint)((uint)((uint)(_102)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_102)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_102)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_94));
  _118 = (uint)((uint)((((int)((uint)((uint)((uint)(_110)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_110)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_110)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_102));
  _126 = (uint)((uint)((((int)((uint)((uint)((uint)(_118)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_118)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_118)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_110));
  _134 = (uint)((uint)((((int)((uint)((uint)((uint)(_126)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_126)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_126)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_118));
  _142 = (uint)((uint)((((int)((uint)((uint)((uint)(_134)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_134)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_134)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_126));
  _150 = (uint)((uint)((((int)((uint)((uint)((uint)(_142)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_142)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_142)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_134));
  if ((_142 & 16777215) == 0) {
    _163 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_150)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_150)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_150)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_142))));
  } else {
    _163 = _142;
  }
  _165 = __3__36__0__0__g_sceneNormal.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _171 = min(1.0f, ((((float)((uint)((uint)(_165.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _177 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_165.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _183 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_165.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _185 = rsqrt(dot(float3(_171, _177, _183), float3(_171, _177, _183)));  // [sem: invLength]
  _186 = _185 * _171;
  _187 = _185 * _177;
  _188 = _185 * _183;
  _193 = (((_14 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
  _198 = 1.0f - (((_15 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
  _205 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0)))).x) & 16777215)))) * 5.960465e-08f));
  _217 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _205, mad((_invViewProjRelative[3].y), _198, ((_invViewProjRelative[3].x) * _193)));
  _226 = (mad((_invViewProjRelative[0].z), _205, mad((_invViewProjRelative[0].y), _198, ((_invViewProjRelative[0].x) * _193))) + (_invViewProjRelative[0].w)) / _217;
  _235 = (mad((_invViewProjRelative[1].z), _205, mad((_invViewProjRelative[1].y), _198, ((_invViewProjRelative[1].x) * _193))) + (_invViewProjRelative[1].w)) / _217;
  _244 = (mad((_invViewProjRelative[2].z), _205, mad((_invViewProjRelative[2].y), _198, ((_invViewProjRelative[2].x) * _193))) + (_invViewProjRelative[2].w)) / _217;
  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
  _246 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
  _251 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  _261 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_186 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _269 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_187 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _277 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_188 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _279 = rsqrt(dot(float3(_261, _269, _277), float3(_261, _269, _277)));  // [sem: invLength]
  _280 = asfloat(_246.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _281 = asfloat(_246.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _282 = asfloat(_246.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _284 = f16tof32(((uint)((uint)((uint)(_251.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _285 = _251.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _286 = _280 - _226;
  _287 = _281 - _235;
  _288 = _282 - _244;
  _290 = rsqrt(dot(float3(_286, _287, _288), float3(_286, _287, _288)));  // [sem: invLength]
  _300 = (_284 * 0.31830987f) * max(0.1f, dot(float3((_279 * _261), (_279 * _269), (_279 * _277)), float3((_290 * _286), (_290 * _287), (_290 * _288))));
  _304 = (((float)((uint)((uint)(_285)))) * asfloat(_251.y)) * _300;
  _308 = select((_renderParams.x > 0.0f), 64.0f, 8.0f);
  _311 = (int)max((uint)(8), (uint)(((int)((uint)(16) / (uint)((uint)((int)max((uint)(1), (uint)(_285))))))));
  // RenoDX: >>> [Patch: SPMISWidePooling] [Version: 1.13.00]
  // Description: The shipping wide-pooling spatial-reuse core — the single terminal
  // branch for every active SPMIS tier: RT_QUALITY==2 "SPMIS Balanced", RT_QUALITY==3
  // "SPMIS Boosted", and the unexposed RT_QUALITY==1 noise-only conditioning baseline.
  // Composition inside this one branch:
  //  - ALL tiers: stochastic pairwise MIS wide-kernel spatial reuse (Hedstrom et al.,
  //    Eurographics/CGF 45(2) 2026) + CGNS compatibility-guided pool scoring
  //    ([Patch: SPMISCGNSPoolScoring], knob RRFID_CGNS_POOL_SCORING). This is the
  //    noise-only conditioning; on the RT_QUALITY==1 tier the resolve splat stays
  //    vanilla-clamped (rrc_knee_tier gate forces the de-clamp knee's
  //    k_eff to 0, so RRLadder_SoftKneeW == saturate).
  //  - tiers 2/3 only: the variance-gated W de-clamp at the resolve splat
  //    ([Patch: RRLadderFidelity]).
  //  - tier 3 only: the stability-gated energy-character lift ([Patch: RRLadderLift]).
  // Semantic anchor: inserted after the vanilla center setup completes (center
  // reservoir loads, center target value, reuse radius, and reuse slot count are all
  // computed) and before the vanilla neighbor loop. The pooling core replaces
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
    const float3 rrc_center_normal = float3(_186, _187, _188);                  // N_c
    const float3 rrc_center_pos = float3(_226, _235, _244);                     // P_c
    const float3 rrc_center_hit = float3(_280, _281, _282);                     // H_c
    const float rrc_center_ucw = asfloat(_251.y);                               // W_c
    const float rrc_center_conf = min(RRC_CONFIDENCE_CAP, ((float)((uint)_285)));  // c_c
    // Center hit normal (payload .w, unused by the vanilla spatial body) — needed only
    // for the reverse-shift Jacobian; the phat_c > 0 && conf > 0 gate below skips
    // the reverse shift exactly when this could be stale/garbage.
    const float3 rrc_center_hitnormal = RRLadder_DecodeUnorm101010Normal(_246.w);
    const float rrc_adjust = ((float)RRC_EVAL_COUNT) / ((float)RRC_POOL_COUNT);  // Sec. 4.3
    const float rrc_radius = max(_308, RRC_WIDE_RADIUS);      // never narrower than vanilla mode
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
    // RenoDX: >>> [Patch: SPMISCGNSPoolScoring] [Version: 1.13.00]
    // Description: World-space compatibility footprint scale for the CGNS pool
    // selection scoring below (helpers and knobs in the [Patch: SPMISCGNSPoolScoring]
    // section of rr_ladder_common.hlsli). View distance comes from the
    // inverse-projection homogeneous divide term already computed for the center pixel
    // (standard perspective: reconstruction w == 1/view_z); a constant-factor error
    // here only rescales the effective footprint solid angle, not correctness.
    const float rrc_compat_scale = RRLadder_CompatScale(RRB_COMPAT_SOLID_ANGLE, abs(1.0f / _217));
    // RenoDX: <<< [Patch: SPMISCGNSPoolScoring]
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
    // RenoDX: >>> [Patch: SPMISCGNSPoolScoring] [Version: 1.13.00]
    // Description: f32 accumulators for the pool-luminance variance gate — phase-1
    // pool-statistics instrumentation: sum and
    // sum-of-squares of ALL RRC_POOL_COUNT phase-1 probes' decoded reservoir
    // luminances (including zero-confidence/empty probes — sparse bright hits among
    // dark neighbors are exactly the disagreement the gate must see). Two consumers,
    // both via RRLadder_PoolAgreement and both in this wide-pooling branch: the
    // [Patch: RRLadderFidelity] resolve knee's k_eff at the final-normalization site
    // (lanes 2/3, knob
    // RRFID_VARIANCE_K — pool disagreement collapses the de-clamp toward the vanilla
    // saturate) and the RT_QUALITY==3 [Patch: RRLadderLift] lift lambda (knob
    // RRLIFT_VARIANCE_K). NOT
    // guarded by RRLIFT_ENABLE: the knee gate consumes these even in lift-off
    // diagnostic builds. The surrounding pool loop was already full f32 (f16tof32
    // decode into float sums), and these stay float — NEVER half — because a single
    // squared probe luminance (up to ~65504^2 ~ 4.3e9) overflows f16 (see the
    // accumulator contract on RRLadder_PoolAgreement).
    float rrc_lum_sum = 0.0f;
    float rrc_lum_sq_sum = 0.0f;
    // RenoDX: <<< [Patch: SPMISCGNSPoolScoring]
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
      // RenoDX: >>> [Patch: SPMISCGNSPoolScoring] [Version: 1.13.00]
      // Description: Variance-gate accumulation for the pool-agreement factor (the
      // [Patch: RRLadderFidelity] knee k_eff gate, lanes 2/3, plus the lane-3
      // [Patch: RRLadderLift] lambda gate) — unconditional per
      // probe (all pool probes count, empty reservoirs included) so the statistic
      // reflects the full neighborhood, not just importance-positive taps.
      rrc_lum_sum += rrc_probe_lum;
      rrc_lum_sq_sum += rrc_probe_lum * rrc_probe_lum;
      // RenoDX: <<< [Patch: SPMISCGNSPoolScoring]
#if RRFID_CGNS_POOL_SCORING
      // RenoDX: >>> [Patch: SPMISCGNSPoolScoring] [Version: 1.13.00]
      // Description: Compatibility-guided pool selection (CGNS heuristic, Junkins et
      // al. HPG 2026, applied to the wide-pooling probe
      // importance; helpers in the [Patch: SPMISCGNSPoolScoring] section of
      // rr_ladder_common.hlsli). Each probe's Eq.-17 selection importance is scaled by a
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
      // RenoDX: <<< [Patch: SPMISCGNSPoolScoring]
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
    if ((_300 > 0.0f) && (rrc_canon_conf > 0.0f)) {
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
        rrc_ph_from_c = RRLadder_ReconnectTargetLum(_284, rrc_cn_pos, rrc_cn_normal, rrc_center_hit) * rrc_jac_cj;
      }
      rrc_mis_canon += ((float)RRC_POOL_COUNT) * RRLadder_PairwiseCanonicalBeta(rrc_canon_conf * rrc_adjust, rrc_center_conf, rrc_conf_sum_adj, rrc_ph_from_c, _300);
    }

    // ---- phase 2: WRS merge — canonical incumbent first, then slots in fixed order ----
    float rrc_wsum = (rrc_mis_canon * _300) * rrc_center_ucw;  // w~_c = m~_c * phat_c * UCW_c
    float rrc_lum_sel = _284;
    float3 rrc_hit_sel = rrc_center_hit;
    float rrc_phat_sel = _300;
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
      if (abs(dot(rrc_center_normal, rrc_d_pos - rrc_center_pos)) > max(0.5f, (_nearFarProj.x / _205))) continue;
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
    const float rrc_k_eff = ((RRFID_KNEE_KMAX_RESOLVE * rrc_knee_tier) * rrc_knee_agree) * RRLadder_ConfidenceRamp(RRLadder_ReservoirConfidence(_251.x));
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
      const float rrl_m_conf = RRLadder_ConfidenceRamp(RRLadder_ReservoirConfidence(_251.x));  // shared declamp ramp: 0 through conf 4, 1 at 32
      const float rrl_pool_conf = saturate(rrc_conf_sum / (((float)RRC_POOL_COUNT) * RRLIFT_POOL_NORM));
      const float rrl_accept_conf = saturate(((float)rrc_accept_count) / RRLIFT_ACCEPT_NORM);
      const float rrl_light_conf = saturate((_284 - RRLIFT_LUM_LO) / (RRLIFT_LUM_HI - RRLIFT_LUM_LO));
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
    rrc_splat = min(RRFID_SPLAT_CEILING, RRLadder_FireflyClampScalar(rrc_splat, _284 * saturate(rrc_center_ucw), RRC_MAX_GROWTH));
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
      const float rrc_w_center = (_300 > 0.0f) ? saturate(rrc_center_ucw) : 0.0f;
      rrc_splat = max(0.0f, _284 * rrc_w_center);
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
  // RenoDX: <<< [Patch: SPMISWidePooling]
  if (!(_311 == 0)) {
    _316 = _285;
    _317 = _284;
    _318 = _280;
    _319 = _281;
    _320 = _282;
    _321 = ((int)((uint)((uint)(_163)) * (uint)(48271)));
    _322 = _300;
    _323 = _304;
    _324 = 0;
    while(true) {
      _568 = _316;
      _569 = _317;
      _570 = _318;
      _571 = _319;
      _572 = _320;
      _574 = _322;
      _575 = _323;
      _325 = (uint)((uint)(_321)) * (uint)(-1964877855);
      _340 = (int)(min(max(((float)((int)((int)((int)(((((float)((uint)((uint)(((int)((uint)((uint)(_321)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f) * _308)) + (int)((int)(SV_DispatchThreadID.x))))), 0.0f), (_bufferSizeAndInvSize.x + -1.0f)));
      _353 = (int)(min(max(((float)((int)((int)((int)(((((float)((uint)((uint)(_325 & 16777215)))) * 1.1920929e-07f) + -1.0f) * _308)) + (int)((int)(SV_DispatchThreadID.y))))), 0.0f), (_bufferSizeAndInvSize.y + -1.0f)));
      _355 = __3__36__0__0__g_sceneNormal.Load(int3(_340, _353, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _361 = min(1.0f, ((((float)((uint)((uint)(_355.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _367 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_355.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _373 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_355.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _379 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_340))) + 0.5f)) + -1.0f;
      _385 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_353))) + 0.5f));
      _392 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_340, _353, 0)))).x) & 16777215)))) * 5.960465e-08f));
      _404 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _392, mad((_invViewProjRelative[3].y), _385, ((_invViewProjRelative[3].x) * _379)));
      _413 = (mad((_invViewProjRelative[0].z), _392, mad((_invViewProjRelative[0].y), _385, ((_invViewProjRelative[0].x) * _379))) + (_invViewProjRelative[0].w)) / _404;
      _422 = (mad((_invViewProjRelative[1].z), _392, mad((_invViewProjRelative[1].y), _385, ((_invViewProjRelative[1].x) * _379))) + (_invViewProjRelative[1].w)) / _404;
      _431 = (mad((_invViewProjRelative[2].z), _392, mad((_invViewProjRelative[2].y), _385, ((_invViewProjRelative[2].x) * _379))) + (_invViewProjRelative[2].w)) / _404;
      _434 = rsqrt(dot(float3(_361, _367, _373), float3(_361, _367, _373))) * 511.0f;
      _436 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3(_340, _353, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
      _442 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(_340, _353, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
      _452 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_434 * _361) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _460 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_434 * _367) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _468 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_434 * _373) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _470 = rsqrt(dot(float3(_452, _460, _468), float3(_452, _460, _468)));  // [sem: invLength]
      _471 = asfloat(_436.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _472 = asfloat(_436.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _473 = asfloat(_436.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _478 = min(1.0f, ((((float)((uint)((uint)(_436.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _484 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_436.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _490 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_436.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _492 = rsqrt(dot(float3(_478, _484, _490), float3(_478, _484, _490)));  // [sem: invLength]
      _493 = _492 * _478;
      _494 = _492 * _484;
      _495 = _492 * _490;
      _497 = f16tof32(((uint)((uint)((uint)(_442.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      _498 = _442.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      if (!(abs(dot(float3(_186, _187, _188), float3((_413 - _226), (_422 - _235), (_431 - _244)))) > max(0.5f, (_nearFarProj.x / _205)))) {
        if (!(dot(float3(_186, _187, _188), float3((_470 * _452), (_470 * _460), (_470 * _468))) < 0.0f)) {
          _516 = _471 - _413;
          _517 = _472 - _422;
          _518 = _473 - _431;
          _519 = _471 - _226;
          _520 = _472 - _235;
          _521 = _473 - _244;
          _522 = dot(float3(_519, _520, _521), float3(_519, _520, _521));
          _523 = dot(float3(_516, _517, _518), float3(_516, _517, _518));
          _524 = rsqrt(_523);  // [sem: rsqrt_val]
          _525 = rsqrt(_522);  // [sem: rsqrt_val]
          _530 = dot(float3((_524 * _516), (_524 * _517), (_524 * _518)), float3(_493, _494, _495)) * _522;
          if (!(_530 >= -0.0f)) {
            _533 = _525 * _519;
            _534 = _525 * _520;
            _535 = _525 * _521;
            _542 = min(max(((-0.0f - (_523 * dot(float3(_533, _534, _535), float3(_493, _494, _495)))) / (-0.0f - _530)), 0.0f), 1.0f);
            if (!(_542 <= 0.0f)) {
              _548 = (_497 * 0.31830987f) * max(0.1f, dot(float3(_186, _187, _188), float3(_533, _534, _535)));
              _553 = ((((float)((uint)((uint)(_498)))) * asfloat(_442.y)) * _542) * _548;
              _554 = (uint)((uint)(_321)) * (uint)(-856141137);
              _555 = _553 + _323;
              _560 = (((((float)((uint)((uint)(_554 & 16777215)))) * 5.9604645e-08f) * _555) <= _553);
              _568 = ((int)((uint)((uint)(_498)) + (uint)((uint)(_316))));
              _569 = select(_560, _497, _317);
              _570 = select(_560, _471, _318);
              _571 = select(_560, _472, _319);
              _572 = select(_560, _473, _320);
              _573 = _554;
              _574 = select(_560, _548, _322);
              _575 = _555;
            } else {
              _568 = _316;
              _569 = _317;
              _570 = _318;
              _571 = _319;
              _572 = _320;
              _573 = _325;
              _574 = _322;
              _575 = _323;
            }
          } else {
            _568 = _316;
            _569 = _317;
            _570 = _318;
            _571 = _319;
            _572 = _320;
            _573 = _325;
            _574 = _322;
            _575 = _323;
          }
        } else {
          _568 = _316;
          _569 = _317;
          _570 = _318;
          _571 = _319;
          _572 = _320;
          _573 = _325;
          _574 = _322;
          _575 = _323;
        }
      } else {
        _568 = _316;
        _569 = _317;
        _570 = _318;
        _571 = _319;
        _572 = _320;
        _573 = _325;
        _574 = _322;
        _575 = _323;
      }
      _576 = (uint)((uint)(_324)) + (uint)(1);
      if (!(_576 == _311)) {
        _316 = _568;
        _317 = _569;
        _318 = _570;
        _319 = _571;
        _320 = _572;
        _321 = _573;
        _322 = _574;
        _323 = _575;
        _324 = _576;
        continue;
      }
      _580 = _572;
      _581 = _571;
      _582 = _570;
      _583 = _569;
      _584 = _568;
      _585 = _574;
      _586 = _575;
      break;
    }
  } else {
    _580 = _282;
    _581 = _281;
    _582 = _280;
    _583 = _284;
    _584 = _285;
    _585 = _300;
    _586 = _304;
  }
  _588 = _585 * ((float)((uint)((uint)(_584))));
  _592 = saturate(select((_588 == 0.0f), 0.0f, (_586 / _588)));  // [sem: expr_sat]
  // RenoDX: >>> [Patch: RRLadderResolvePassthrough] [Version: 1.13.00]
  // Description: RETIRED de-clamp on the vanilla narrow-reuse resolve path. This site
  // used to host the old RT_QUALITY==1 "Declamp" lane (a confidence-gated soft-knee
  // de-clamp of the vanilla resolve weight _592). Under the shipping SPMIS ladder the de-
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
  // revive. The splat operand is now unconditionally the vanilla product _583 * _592.
  const float rr_fid_splat = _583 * _592;  // vanilla splat operand (bit-exact; de-clamp retired to the wide-pooling branch)
  // RenoDX: <<< [Patch: RRLadderResolvePassthrough]
  _593 = _582 - _226;
  _594 = _581 - _235;
  _595 = _580 - _244;
  _601 = sqrt(((_594 * _594) + (_595 * _595)) + (_593 * _593));
  _602 = max(1e-06f, _601);
  // RenoDX: >>> [Patch: RRLadderResolvePassthrough] [Version: 1.16.00]
  // Description: The native splat store, re-formed to consume the rr_fid_splat local declared in the
  //              preceding RRLadderResolvePassthrough block. rr_fid_splat is unconditionally the
  //              vanilla product _583 * _592 (the de-clamp was retired to the terminal wide-pooling
  //              branch above), so this line is bit-exact vanilla behavior with the operand routed
  //              through a named local for auditability.
  _607 = -0.0h - (half)(half(min(0.0f, (-0.0f - (rr_fid_splat)))));
  // RenoDX: <<< [Patch: RRLadderResolvePassthrough]
  __3__38__0__1__g_diffuseResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_607, _607, _607, 0.0f);
  __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4((_593 / _602), (_594 / _602), (_595 / _602), _601);
  __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = _592;
}
