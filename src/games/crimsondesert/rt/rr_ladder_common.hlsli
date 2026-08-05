#ifndef SRC_GAMES_CRIMSONDESERT_RT_RR_LADDER_COMMON_HLSLI_
#define SRC_GAMES_CRIMSONDESERT_RT_RR_LADDER_COMMON_HLSLI_

// =============================================================================
// rr_ladder_common.hlsli — shared pure-function helper library for the Crimson
// Desert SPMIS ray-traced diffuse-GI ladder (UI "Ray Reconstruction
// Improvements", setting key SPMISQuality; runtime gates RT_QUALITY and the
// RR_ENABLED auto-detect, both from shared.h).
//
// SHIPPING COMPOSITION (what actually runs, by tier):
//  - Wide-pooling core ([Patch: SPMISWidePooling]): unbiased stochastic
//    pairwise-MIS wide-kernel spatial resampling — the single terminal
//    spatial-reuse branch for every active SPMIS tier (RT_QUALITY 1/2/3).
//  - CGNS pool scoring ([Patch: SPMISCGNSPoolScoring]): compatibility-guided
//    donor selection folded into the pooling core's probe importance
//    (selection probability only; unbiased by construction).
//  - Sampling decorrelation ([Patch: SPMISDecorrelation]): TEA scramble keys,
//    temporal tap permutation, and anti-firefly conditioning, active on every
//    active SPMIS tier in the raygen and temporal shaders.
//  - Confidence/variance-gated de-clamp knee ([Patch: RRLadderFidelity]):
//    restores energy the vanilla resolve saturate clips; SPMIS Balanced
//    (RT_QUALITY==2) and SPMIS Boosted (RT_QUALITY==3) only.
//  - Energy-character lift ([Patch: RRLadderLift]): SPMIS Boosted
//    (RT_QUALITY==3) only.
//  - Vanilla transliterations ([Patch: SPMISVanillaTransliterations]):
//    arithmetic-identical lifts of the vanilla spatial shader's validation
//    idioms, consumed by the pooling core.
// RT_QUALITY==1 is an unexposed noise-only conditioning baseline (pooling +
// scoring + decorrelation with the knee forced off); RT_QUALITY==0 leaves the
// vanilla shaders bit-exact. The master-gated ReservoirAgeMaskFix in the
// temporal shader is a defect fix independent of this ladder's quality tiers and runs only while RenoDX is active.
//
// LANE-PORTABILITY CONTRACT: the game ships many precompiled permutations
// (half-res/full-res, interleaved/non-interleaved, RR-on/RR-off) of the ReSTIR
// diffuse GI shaders, each with a different hash and decompiled body. Every
// function in this file must therefore stay a pure function of its explicit
// parameters: no resource (SRV/UAV/cbuffer) access, no references to any
// surrounding shader's local variable names, and no baked-in resolution,
// buffer-size, or payload-layout constants. Call sites gather the shader-local
// values (pixel coordinates, frame number, luminance/radiance magnitudes),
// call a helper, and apply the result, so re-applying a section to a different
// permutation body is a mechanical matter of finding the same semantic
// anchors, not a rewrite.
// =============================================================================

// SPMIS ladder's raygen and temporal shaders: a vanilla-matching TEA mixer, a second
// independent TEA extraction used for scramble/permutation keys, the 4x4 XOR-3 reuse
// permutation with screen-global per-tap-slot keys, and a conservative anti-firefly
// clamp. Each helper's contract is documented at its definition below; all are pure
// functions per the lane-portability contract in the file header.

// Vanilla-matching TEA mixer (Zafar/Olano "GPU Random Numbers via the Tiny Encryption
// Algorithm" key schedule, identical constants to the game's own inlined hash: key
// 0xA341316C/0xC8013EA4/0xAD90777D/0x7E95761E, delta 0x9E3779B9). The game's inlined
// per-pixel stream is exactly RRLadder_TeaMix(pixel_index, frame_number, 8) plus a
// zero-guard extra half-round used only by its 24-bit LCG extraction. Running more
// double-rounds yields output statistically independent of the vanilla 8-round extraction
// while preserving the uniform distribution of both 32-bit state words.
uint2 RRLadder_TeaMix(uint v0, uint v1, uint double_rounds) {
  uint sum = 0u;
  for (uint round_index = 0u; round_index < double_rounds; ++round_index) {
    sum += 0x9E3779B9u;
    v0 += ((v1 << 4) + 0xA341316Cu) ^ (v1 + sum) ^ ((v1 >> 5) + 0xC8013EA4u);
    v1 += ((v0 << 4) + 0xAD90777Du) ^ (v0 + sum) ^ ((v0 >> 5) + 0x7E95761Eu);
  }
  return uint2(v0, v1);
}

// Second, independent extraction of the shader's own TEA hash: same key schedule and the
// same (pixel_index, frame_number) seeding convention as the vanilla inlined stream, but
// run for 12 double-rounds with a stream-salted frame word. Both properties make the
// returned words structurally distinct from and statistically independent of the vanilla
// 8-round sampling stream (no shared seed within any realistic run; residual chance
// collisions of ~2^-32 per word are harmless), so using them as scramble / permutation
// keys adds no correlation with the vanilla sample-selection stream.
// stream_index separates call sites (e.g. raygen vs temporal) that would otherwise hash
// numerically identical (pixel_index, frame_number) pairs to identical keys.
uint2 RRLadder_TeaSecondExtraction(uint pixel_index, uint frame_number, uint stream_index) {
  return RRLadder_TeaMix(pixel_index, frame_number + ((stream_index + 1u) * 0x9E3779B9u), 12u);
}

// 4x4 XOR-3 reuse permutation, arithmetic-identical to the game's own inlined form
// ((coord + r) ^ 3) - r. For any fixed 4-bit key this is a bijection on pixel coordinates
// that displaces a coordinate by at most 3 pixels per axis, so reuse locality is preserved
// while the exact tap location is randomized. key4 packs the per-axis offsets as
// bits 0-1 = x offset, bits 2-3 = y offset. Out-of-range results are the caller's problem
// exactly as in the vanilla inlined form (the game bounds-checks each tap after permuting).
int2 RRLadder_Xor3Permute(int2 coord, uint key4) {
  const int rx = int(key4 & 3u);
  const int ry = int((key4 >> 2u) & 3u);
  return int2(int(uint(coord.x + rx) ^ 3u) - rx,
              int(uint(coord.y + ry) ^ 3u) - ry);
}

// Screen-global per-tap-slot permutation key: a 4-bit XOR-3 key derived from the frame
// number and a reuse-tap slot index only - deliberately NO pixel term. Feeding a key with
// no pixel dependence to RRLadder_Xor3Permute makes that tap slot's permutation a single
// screen-wide bijection for the frame (every history texel is read exactly once per tap
// slot - full history coverage), while distinct slots and successive frames still
// decorrelate. This generalizes the game's own convention: the vanilla temporal-reuse
// permutation key stream is likewise seeded from the frame number only. Per-pixel keys
// must NOT be used to permute history reads: they break the bijection and leave roughly
// 1/e of the history reservoirs unread each frame, which visibly thins the accumulated
// history and reads as increased noise at 1 spp (tested in-game and rejected).
uint RRLadder_GlobalTapKey(uint frame_number, uint tap_slot) {
  return RRLadder_TeaSecondExtraction(tap_slot, frame_number, 6u).x & 15u;
}

// Conservative anti-firefly clamp on a scalar magnitude: limits how far a single merge can
// grow a temporally accumulated value relative to its pre-merge history. Payload-agnostic:
// callers with RGB reservoir payloads should pass a luminance/magnitude and rescale their
// vector by the returned ratio themselves. When history is non-positive the merged value
// passes through unchanged - a zero-energy history gaining energy is a legitimate lighting
// change, and clamping against it would trap the reservoir at black.
float RRLadder_FireflyClampScalar(float merged_magnitude, float history_magnitude, float max_growth) {
  if (history_magnitude > 0.0f) {
    return min(merged_magnitude, history_magnitude * max_growth);
  }
  return merged_magnitude;
}


// function is an arithmetic transliteration of an expression the game's own ReSTIR
// diffuse-GI spatial shader inlines (10:10:10 unorm normal decode/requantize,
// pixel-center NDC mapping, inverse-projection world-relative position reconstruction,
// the luminance target function, and the sign-gated clamped reconnection Jacobian),
// lifted into parameterized form so the wide-pooling spatial merge
// ([Patch: SPMISWidePooling]) applies the exact vanilla validation semantics to
// arbitrary donor coordinates. No resources, no resolution constants; matrices, texel
// words, and payload magnitudes are always passed as parameters per the
// lane-portability contract in the file header. These helpers mirror the native
// shader body expression-for-expression: if a game patch changes those idioms in a
// new native decompile, every function here must be re-verified against it before
// the pooling core is trusted on that version.

// 10:10:10 unorm -> [-1,1] component decode, arithmetic-identical to the game's inlined
// form min(1, bits * (1/511) - 1) per component. Returns the UNNORMALIZED triple exactly
// as the vanilla body holds it before its rsqrt normalization step.
float3 RRLadder_DecodeUnorm101010Raw(uint packed_normal) {
  float3 raw;
  raw.x = min(1.0f, (float(packed_normal & 1023u) * 0.001956947147846222f) - 1.0f);
  raw.y = min(1.0f, (float((packed_normal >> 10u) & 1023u) * 0.001956947147846222f) - 1.0f);
  raw.z = min(1.0f, (float((packed_normal >> 20u) & 1023u) * 0.001956947147846222f) - 1.0f);
  return raw;
}

// Decode + normalize, matching the vanilla decode-then-rsqrt(dot) idiom.
float3 RRLadder_DecodeUnorm101010Normal(uint packed_normal) {
  const float3 raw = RRLadder_DecodeUnorm101010Raw(packed_normal);
  return raw * rsqrt(dot(raw, raw));
}

// Vanilla requantization chain: scale the raw decoded triple onto the 511 grid, round,
// re-decode, renormalize. The game's spatial body runs this on every neighbor's G-buffer
// normal before the backface test (and on the center normal before its own target
// function), so validation sees the same quantized vector the neighbor itself would use.
float3 RRLadder_RequantUnorm101010Normal(float3 raw_decoded) {
  const float grid_scale = rsqrt(dot(raw_decoded, raw_decoded)) * 511.0f;
  float3 quantized;
  quantized.x = min(1.0f, (float(uint(int(uint((grid_scale * raw_decoded.x) + 511.5f)) & 1023)) * 0.001956947147846222f) - 1.0f);
  quantized.y = min(1.0f, (float(uint(int(uint((grid_scale * raw_decoded.y) + 511.5f)) & 1023)) * 0.001956947147846222f) - 1.0f);
  quantized.z = min(1.0f, (float(uint(int(uint((grid_scale * raw_decoded.z) + 511.5f)) & 1023)) * 0.001956947147846222f) - 1.0f);
  return quantized * rsqrt(dot(quantized, quantized));
}

// Pixel-center -> NDC mapping, identical to the vanilla ((p + 0.5) * 2) * invSize +/- 1
// form. inv_buffer_size is the shader's own _bufferSizeAndInvSize.zw.
float2 RRLadder_PixelToNdc(float2 pixel, float2 inv_buffer_size) {
  return float2((((pixel.x + 0.5f) * 2.0f) * inv_buffer_size.x) - 1.0f,
                1.0f - (((pixel.y + 0.5f) * 2.0f) * inv_buffer_size.y));
}

// World-relative position reconstruction from NDC + device depth via the caller's
// inverse view-projection matrix (vanilla mad chain + homogeneous divide).
float3 RRLadder_ReconstructPosition(float4x4 inv_view_proj, float2 ndc, float device_depth) {
  const float w = mad(inv_view_proj[2].w, device_depth,
                      mad(inv_view_proj[1].w, ndc.y, ndc.x * inv_view_proj[0].w)) + inv_view_proj[3].w;
  return float3(
      (mad(inv_view_proj[2].x, device_depth, mad(inv_view_proj[1].x, ndc.y, ndc.x * inv_view_proj[0].x)) + inv_view_proj[3].x) / w,
      (mad(inv_view_proj[2].y, device_depth, mad(inv_view_proj[1].y, ndc.y, ndc.x * inv_view_proj[0].y)) + inv_view_proj[3].y) / w,
      (mad(inv_view_proj[2].z, device_depth, mad(inv_view_proj[1].z, ndc.y, ndc.x * inv_view_proj[0].z)) + inv_view_proj[3].z) / w);
}

// Lane target function: p-hat = luminance * (1/pi) * max(0.1, cos(surface normal, dir to
// reconnection vertex)). Identical constants to the vanilla center/neighbor target sites.
// Degenerate hit==surface inputs return 0; in practice the caller's Jacobian gate rejects
// that case before the target is ever evaluated, matching vanilla control flow.
float RRLadder_ReconnectTargetLum(float lum, float3 surf_pos, float3 surf_normal, float3 hit_pos) {
  const float3 to_hit = hit_pos - surf_pos;
  const float len2 = dot(to_hit, to_hit);
  if (!(len2 > 0.0f)) return 0.0f;
  const float cos_r = dot(surf_normal, to_hit * rsqrt(len2));
  return (lum * 0.31830987334251404f) * max(0.10000000149011612f, cos_r);
}

// Vanilla-identical clamped reconnection Jacobian for re-parenting a sample whose
// reconnection vertex is hit_pos (hit-surface normal hit_n) from surface from_pos to
// surface to_pos: J = (r_from^2 * cos_to) / (r_to^2 * cos_from), cos = -dot(dir, hit_n),
// clamped to [0,1]. Returns 0 on the vanilla sign/degeneracy gates (the shader's
// "reject unless the hit normal faces the source surface, reject J <= 0" tests), so
// callers treat a non-positive return as the vanilla rejection.
float RRLadder_ReconnectJacobianClamped(float3 from_pos, float3 to_pos, float3 hit_pos, float3 hit_n) {
  const float3 from_dir = hit_pos - from_pos;
  const float r2_from = dot(from_dir, from_dir);
  const float3 to_dir = hit_pos - to_pos;
  const float r2_to = dot(to_dir, to_dir);
  if (!(r2_from > 0.0f) || !(r2_to > 0.0f)) return 0.0f;
  const float denom = r2_to * dot(from_dir * rsqrt(r2_from), hit_n);  // vanilla _566
  if (!(denom < -0.0f)) return 0.0f;                                  // vanilla reject: _566 >= -0
  const float numer = -0.0f - (r2_from * dot(to_dir * rsqrt(r2_to), hit_n));
  return min(max(numer / (-0.0f - denom), 0.0f), 1.0f);              // vanilla _578
}

// "Compatibility-Guided Neighbor Selection for ReSTIR", HPG 2026 / PACMCGIT 9(4):52)
// consumed by the wide-pooling spatial branch ([Patch: SPMISWidePooling]) to shape its
// probe-pool selection importance. Each probed candidate pixel is scored with a
// G-buffer-only geometric compatibility heuristic (world-space surface-distance
// falloff x normal-alignment power), so donors likely to survive the merge's
// validation gates are drawn more often. Because the score reads only G-buffer
// attributes — never samples, UCWs, or resampling weights — and the merge divides
// every accepted donor by its exact selection pmf, the non-uniform pick shifts
// variance toward compatible donors while preserving GRIS unbiasedness exactly like
// the vanilla binary rejection does. Call sites live in the spatial shader's
// pool-probe loop, compile-time gated by RRFID_CGNS_POOL_SCORING and floored by
// RRFID_CGNS_SCORE_FLOOR (both declared with the [Patch: RRLadderFidelity] knobs
// below). Spatial-shader blocks tagged with this patch name also cover the phase-1
// pool-statistics accumulators (probe-luminance sum / sum-of-squares) that feed the
// [Patch: RRLadderFidelity] knee's variance gate and the [Patch: RRLadderLift]
// lambda: they are pool-loop instrumentation grouped here so the RRLadderFidelity
// tag marks only the de-clamp mechanism itself. Pure functions + compile-time knobs
// only, per the lane-portability contract in the file header.

// Omega (steradians): world-space footprint solid angle for the position falloff
// (Keller et al. path-space-filtering footprint). Paper/code default.
#define RRB_COMPAT_SOLID_ANGLE 0.05f
// beta: normal-alignment sharpness exponent. Paper/code default.
#define RRB_COMPAT_NORMAL_BETA 8.0f

// s = sqrt(Omega/pi) * d: world-space footprint radius of solid angle Omega at camera
// distance d (CGNS computeNeighborScale).
float RRLadder_CompatScale(float solid_angle, float cam_dist) {
  return max(1e-8f, sqrt(solid_angle * 0.31830987f) * abs(cam_dist));
}

// CGNS compatibility score (paper Eq. 14/15): clamp(exp(-|dp|/s) * max(0, nq.nc)^beta,
// 1e-8, 1). G-buffer attributes only — never samples or resampling weights.
float RRLadder_CompatScore(float3 delta_pos, float3 n_query, float3 n_cand,
                           float scale, float normal_beta) {
  const float position_score = exp(-length(delta_pos) / scale);
  const float normal_score = pow(max(0.0f, dot(n_query, n_cand)), normal_beta);
  return clamp(position_score * normal_score, 1e-8f, 1.0f);
}

// resampling core — the single terminal spatial-reuse branch for every active SPMIS
// tier (SPMIS Balanced RT_QUALITY==2, SPMIS Boosted RT_QUALITY==3, and the unexposed
// RT_QUALITY==1 conditioning baseline): stochastic pairwise resampling
// MIS for unbiased large-kernel spatial reuse (Hedstrom et al., Eurographics/CGF 45(2)
// 2026). Replaces the vanilla constant-MIS merge (final W divided by total M, the
// darkening-bias source for wide kernels) with defensive generalized pairwise MIS
// weights (Lin et al. 2022 form): non-canonical donors get m_i proportional to their
// Jacobian-corrected target ratio, the canonical sample keeps a defensive share plus a
// stochastically estimated beta sum, and both O(M) sums are replaced by unbiased
// few-draw estimators. Donor draws are importance-selected from a probed pool
// proportional to confidence * luminance * UCW (paper Eq. 17); all non-canonical
// confidences are scaled by evaluated/pooled count (paper Sec. 4.3) so unlucky draws
// cannot crush the canonical weight. Pure weight-form helpers + compile-time knobs only.

// M: probed candidate pool size (radiance texel loads only). Range 12..24.
#define RRC_POOL_COUNT 16u
// Ntilde: donors fully loaded, gate-checked, and merged. Dominant cost/register knob;
// also sizes the in-register slot arrays. Range 3..8.
#define RRC_EVAL_COUNT 6u
// Wide-kernel radius floor in pixels: effective radius = max(vanilla radius, this).
// Tune 16..48; never narrows the vanilla 64 px mode. Hard bound <= 48 (1.09 experiments
// boiled at 48-64 px at 1 spp).
#define RRC_WIDE_RADIUS 32.0f
// Confidence cap applied inside the MIS weights only (payload untouched). 63 = storage
// cap (no-op); lowering toward the paper's 20 shifts weight to the canonical/defensive
// term — primary anti-boiling knob.
#define RRC_CONFIDENCE_CAP 63.0f
// Firefly clamp: max growth of the merged splat vs the center reservoir's own
// contribution (passes through when center history is zero, e.g. disocclusion).
#define RRC_MAX_GROWTH 16.0f

// Defensive pairwise MIS, non-canonical technique weight (paper Eq. 11a):
// m_i(y) = (cS/(cS+cc)) * ci*ph_from_i / (cS*ph_from_i + cc*ph_at_c), where ph_from_i is
// the donor's own target corrected into the canonical domain (phat_i(X_i)/J_{i->c}) and
// ph_at_c is the donor's sample evaluated by the canonical target.
float RRLadder_PairwiseNonCanonical(float c_i, float c_c, float c_sum, float ph_from_i, float ph_at_c) {
  const float denom = (c_sum * ph_from_i) + (c_c * ph_at_c);
  if (!(denom > 0.0f) || !((c_sum + c_c) > 0.0f)) return 0.0f;
  return (c_sum / (c_sum + c_c)) * ((c_i * ph_from_i) / denom);
}

// Defensive pairwise MIS, one beta term of the canonical weight (paper Eq. 19):
// beta_j = (cj/(cS+cc)) * cc*ph_c / (cS*ph_from_c_at_j + cc*ph_c), where ph_from_c_at_j
// is the canonical sample shifted into donor j's domain (phat_j(T(X_c)) * J_{c->j}).
float RRLadder_PairwiseCanonicalBeta(float c_i, float c_c, float c_sum, float ph_from_c_at_i, float ph_c) {
  const float denom = (c_sum * ph_from_c_at_i) + (c_c * ph_c);
  if (!(denom > 0.0f) || !((c_sum + c_c) > 0.0f)) return 0.0f;
  return (c_i / (c_sum + c_c)) * ((c_c * ph_c) / denom);
}

// the SPMIS Balanced (RT_QUALITY==2) and SPMIS Boosted (RT_QUALITY==3) tiers on the
// wide-pooling path (at RT_QUALITY==1, unexposed, forces the resolve knee's k_eff to 0
// via rrc_knee_tier so it stays vanilla-clamped). The game's ReSTIR diffuse-GI
// chain hard-clamps the resampling weight W with saturate() where the spatial resolve
// forms its output (W = wsum / (M * p-hat_selected); the splat written to the diffuse
// result buffer is luminance * W) and again where the temporal pass stores the reservoir
// W. The clip is ASYMMETRIC: ratios above 1 — bright, stable indirect light merged at
// pixels where the luminance-only target model locally underestimates (edges of sun
// pools, bounce highlights on curved surfaces, dappled foliage light) — are clipped,
// while ratios below 1 pass through, so stable bright GI is systematically darkened.
// These helpers replace the hard ceiling with a bounded, monotone, C1-continuous soft
// knee whose strength scales with reservoir convergence, so fresh/disoccluded pixels
// stay EXACTLY vanilla and only well-established history carries restored energy.
// Firefly protection is layered, and every layer stays active wherever the clamp is
// lifted: (1) the confidence gate itself (fireflies live in young reservoirs, which get
// k_eff ~ 0 and thus the vanilla saturate); (2) the knee bound (output <= (1 + k_eff) x
// the vanilla-clipped value at that pixel, smoothly — never a hard pop); (3) the
// upstream evaluate pass's min(15000, exposed radiance) per-channel cap remains the
// absolute incoming-radiance ceiling; (4) call sites clamp the final splat to
// RRFID_SPLAT_CEILING so the half-precision result buffer can never receive +inf;
// (5) on the de-clamping tiers (SPMIS Balanced/Boosted, RT_QUALITY==2/3), the resolve
// knee's k_eff is additionally scaled by the pool-luminance agreement factor
// (RRLadder_PoolAgreement below): when the probe pool's reservoir luminances disagree —
// the wide kernel importing sparse bright donors into locally dim pixels, which drives
// the honest W above 1 and lets the knee release energy the vanilla saturate used to
// swallow (observed in-game as tiny fireflies at indoor window light) — the agreement
// factor falls toward 0 and the knee collapses back to the vanilla saturate; agreeing
// pools (dense-bright terrain, open sky) keep the full knee. The RT_QUALITY==1 tier (unexposed)
// runs the same wide-pooling core but forces k_eff to 0 (rrc_knee_tier), so it never
// de-clamps — its splat is the vanilla saturate, noise-only.

// Confidence ramp: exactly vanilla (returns 0 -> saturate) for the first
// RRFID_CONF_FLOOR frames of reservoir history, full knee strength at
// RRFID_CONF_FLOOR + RRFID_CONF_RAMP (= 32, matching the chain's low-M-cap regime).
#define RRFID_CONF_FLOOR 4.0f
#define RRFID_CONF_RAMP 28.0f
// Knee scale at the wide-pooling spatial resolve splat (SPMIS Balanced/Boosted). Bound =
// 1 + k_max = 4x the vanilla-clipped value, chosen so the worst-case resolve splat 15000
// (evaluate cap) x 4 = 60000 stays under the f16 ceiling 65504.
#define RRFID_KNEE_KMAX_RESOLVE 3.0f
// Knee scale at the temporal reservoir W store (bound 2). Smaller than the resolve knee
// because a stored boost survives reprojection and multiplies against the reservoir
// sample count for up to 63 frames.
#define RRFID_KNEE_KMAX_TEMPORAL 1.0f
// Variance-gate sharpness for the WIDE-POOLING (RT_QUALITY==2/3) resolve knee: k_eff
// is additionally multiplied by RRLadder_PoolAgreement (below) computed over the
// phase-1 probe pool's decoded luminances, so a disagreeing pool (sparse bright hits,
// e.g. indoor window light) collapses the knee back toward the vanilla saturate while
// an agreeing pool (dense-bright terrain/sky) keeps the full de-clamp. Defaults to the
// same value as the lift's RRLIFT_VARIANCE_K but is its own define so the two
// energy-restoration mechanisms stay independently tunable. The RT_QUALITY==1 tier (unexposed)
// forces the knee's k_eff to 0 (rrc_knee_tier), so this variance gate is moot on that
// tier — it never de-clamps at all.
#define RRFID_VARIANCE_K 1.0f
// Absolute ceiling for any de-clamped splat written to the half-precision diffuse
// result buffer (60000 < f16 max 65504; belt-and-suspenders against exposure-rescale
// drift pushing reservoir-stored luminance above the evaluate cap scale).
#define RRFID_SPLAT_CEILING 60000.0f
// The temporal-reservoir knee is disabled by default because stored boosts persist
// through reprojection and introduce a slow brighten-in. Keep the resolve-side lift
// as the active path; diagnostic builds may override this define when needed.
#ifndef RRFID_TEMPORAL_KNEE
#define RRFID_TEMPORAL_KNEE 0
#endif
// 1 (default) = the wide-pooling lanes scale their pool selection importance by
// the RRLadder_CompatScore G-buffer compatibility heuristic (the
// [Patch: SPMISCGNSPoolScoring] scoring above). Selection probability only — the
// merge divides by the exact selection pmf, so scoring shifts variance toward
// compatible donors without bias. 0 = pure luminance-proportional pool selection
// (no compatibility shaping).
#ifndef RRFID_CGNS_POOL_SCORING
#define RRFID_CGNS_POOL_SCORING 1
#endif
// Floor on the compatibility multiplier used for pool selection. Because the merge
// multiplies accepted donors by 1/pmf, an unfloored near-zero score on a donor that
// nonetheless passes every geometric gate would inflate that donor's contribution by up
// to 1e8; the floor bounds the defensive worst case at 100x while leaving the
// selection preference intact for all ordinary scores.
#define RRFID_CGNS_SCORE_FLOOR 0.01f

// Reservoir convergence estimate from the packed radiance texel .x word, using the two
// 6-bit counters the temporal pass leapfrogs there (bits 0-5 and bits 10-15: sample
// count M and its age partner — a refresh write sets one slot to 1 and the other's
// bits to 1, so min() of the pair is the frames-since-reset floor whichever slot
// currently holds which role). Taking min() means EITHER counter being young forces
// low confidence: disocclusion resets, degenerate-parallax resets, and stochastic
// history refreshes all zero at least one slot. NOTE: the decode relies on the
// ReservoirAgeMaskFix write mask (bits 10-15, 0xFC00) already applied in the temporal
// shader; the vanilla 0xFFC00 write would let the counter wrap 63 -> 64 and read 0 for
// one frame (a safe-direction but visible one-frame vanilla dip).
float RRLadder_ReservoirConfidence(uint radiance_x) {
  return float(min(radiance_x & 63u, (radiance_x >> 10u) & 63u));
}

// Maps a confidence count to the knee strength fraction in [0,1]: 0 through
// RRFID_CONF_FLOOR frames (exactly vanilla), linear ramp to 1 over RRFID_CONF_RAMP.
float RRLadder_ConfidenceRamp(float confidence) {
  return saturate((confidence - RRFID_CONF_FLOOR) / RRFID_CONF_RAMP);
}

// Soft-knee replacement for saturate(w): identity below 1 (and exact saturate for any
// non-finite/negative input), then W' = 1 + k_eff * (1 - exp(-(W - 1)/k_eff)) above 1.
// C1-continuous at W = 1 (slope 1), strictly monotone, bounded by 1 + k_eff. k_eff <= 0
// reproduces the vanilla saturate exactly, which is how the confidence gate turns the
// de-clamp off per-pixel.
float RRLadder_SoftKneeW(float w, float k_eff) {
  if (!(w > 1.0f) || !(k_eff > 0.0f)) return saturate(w);
  return 1.0f + (k_eff * (1.0f - exp(-(w - 1.0f) / k_eff)));
}

// Pool luminance agreement in [0,1] from streaming sum and sum-of-squares over n probe
// luminances: rel_std = sqrt(max(0, n*sq_sum - sum^2)) / max(sum, eps) is exactly the
// coefficient of variation std/mean of the pool (sqrt(n*sq_sum - sum^2) = n*std and
// mean = sum/n, so the n's cancel), and agreement = saturate(1 - rel_std * variance_k).
// Being a ratio of same-unit statistics it is scale-invariant: a common exposure
// multiple on every probe cancels, so the gate is exposure-independent. Dense agreeing
// brightness (sunlit cliffs, open-sky visibility: every probe near the pool mean)
// gives rel_std ~ 0 -> agreement ~ 1; sparse bright hits (an indoor window light pool:
// a few bright probes among dark/empty neighbors) push rel_std >= 1 -> agreement 0.
// TWO CONSUMERS, both in the wide-pooling spatial branch (which runs on all SPMIS tiers),
// each with its own sharpness knob so the two energy-restoration mechanisms stay
// independently tunable: (a) the resolve knee's k_eff (RRFID_VARIANCE_K above) — pool
// disagreement collapses the de-clamp back toward the vanilla saturate; active on SPMIS
// Balanced/Boosted (RT_QUALITY==2/3), while the RT_QUALITY==1 tier zeroes k_eff via
// rrc_knee_tier so this factor is moot there; (b) the SPMIS Boosted (RT_QUALITY==3) lift
// lambda (RRLIFT_VARIANCE_K in the RRLadderLift block below). An all-zero pool
// returns 1 (0-over-eps): the knee then keeps its previous confidence-only gating and
// the lift's pool_conf/light_conf factors are already ~0 there. Non-finite probe
// luminance (f16 inf in a texel) propagates to rel_std = inf/NaN and saturate() maps
// either to agreement 0 — the safe direction. ACCUMULATOR CONTRACT: callers must
// accumulate lum_sum/lum_sq_sum in f32, never half — probe luminances are f16-decoded
// exposure-scaled values up to ~65504, so one square (~4.3e9) already overflows f16
// and 16 of them reach ~7e10; f32 holds that easily, and its 24-bit mantissa's
// relative rounding is orders of magnitude below this gate's tolerance.
float RRLadder_PoolAgreement(float lum_sum, float lum_sq_sum, float n, float variance_k) {
  const float rel_std = sqrt(max(0.0f, (n * lum_sq_sum) - (lum_sum * lum_sum)))
                        / max(lum_sum, 1e-6f);
  return saturate(1.0f - (rel_std * variance_k));
}

// lane — an explicit, bounded, confidence-gated energy-character layer applied on top
// of the wide-pooling merge at the spatial resolve. Motivation: an unbiased pairwise-MIS
// merge self-normalizes W to its honest value, which reads subtle; the historically
// approved "SPMIS" look owed its brightness to W being pegged at the vanilla saturate
// ceiling on stable pixels (an emergent, uncontrollable estimator bias). The lift makes
// that pull explicit and controllable: lambda in [0,1] — a product of slow-moving
// convergence statistics (center reservoir confidence x neighborhood pool confidence x
// gate-passing donor agreement x scene-brightness ramp x pool luminance agreement — the
// last a variance gate over the phase-1 probes' decoded luminances that suppresses the
// lift where neighboring reservoirs disagree; see RRLadder_PoolAgreement in the
// RRLadderFidelity block above (shared with the wide-pooling knee's k_eff gate), added
// after a user report of lift noise on sparse indoor window light) — pulls the
// below-ceiling part
// of W toward 1, while a Reinhard knee on the ADDED energy only (heritage form
// delta/(1 + strength * delta), asymptotic added splat = 1/strength) bounds the lift
// delta without taxing un-lifted paths. lambda has no dedicated RNG term; its inputs
// are bounded confidence averages over the probe/donor sets, so its frame-to-frame
// variance is low and shrinks with pool size — not zero. The center-confidence factor
// passes through the shared RRLadder_ConfidenceRamp (zero through the first
// RRFID_CONF_FLOOR frames of reservoir history, consistent with the de-clamp gate),
// so fresh/disoccluded pixels get zero lift. Compile-time RRLIFT_ENABLE 0
// removes every lift call site so the disabled build preserves the no-lift path.

// #if wrapper for all lift call sites (see above). Guarded #ifndef so a diagnostic
// compile can force it via -D RRLIFT_ENABLE=0.
#ifndef RRLIFT_ENABLE
#define RRLIFT_ENABLE 1
#endif
// Master lambda scale, 0..1. Primary tuning knob.
#define RRLIFT_STRENGTH 1.0f  // full strength restored — the variance gate below is what tames it now
#define RRLIFT_CEILING 1.75f  // strong ceiling (vanilla equivalent = 1.0); pool-agreement gate suppresses it where neighbors disagree
// Fraction of the lift retained in dim scenes (interiors were the historical failure
// mode of the emergent peg — keep modest).
#define RRLIFT_DIM_FLOOR 0.25f
// Brightness-confidence ramp endpoints in exposure-scaled reservoir-luminance units
// (the reservoir luminance is stored pre-multiplied by the engine exposure scale).
// These provisional exposure-scaled bounds require runtime calibration; values from
// the earlier pre-exposure formulation do not map directly into this space.
#define RRLIFT_LUM_LO 0.05f
#define RRLIFT_LUM_HI 1.5f
// Per-probe confidence (of the 63 storage cap) at which the pool reads as fully
// converged for pool_conf.
#define RRLIFT_POOL_NORM 32.0f
// Gate-passing donors (of the evaluated donor count) for full accept_conf.
#define RRLIFT_ACCEPT_NORM 3.0f
// Reinhard strength on the lift delta; asymptotic added splat = 1/strength = +4.0
// exposure-scaled units (same headroom argument as the resolve knee bound).
#define RRLIFT_KNEE_STRENGTH 0.25f
// Variance-gate sharpness for the pool-agreement lambda factor (passed as the
// variance_k argument of the shared RRLadder_PoolAgreement in the RRLadderFidelity
// block above): agreement = saturate(1 - rel_std * K), where rel_std is the relative
// standard deviation (std/mean) of the phase-1 pool probes' decoded reservoir
// luminances. K = 1 zeroes the lift once the pool luminance spread reaches 100% of
// its mean; raise K to suppress earlier (more conservative), lower it to tolerate
// more disagreement. The wide-pooling knee's gate has its own independent knob
// (RRFID_VARIANCE_K, same default).
#define RRLIFT_VARIANCE_K 1.0f

// lambda = strength * m_conf * pool_conf * accept_conf * lerp(dim_floor, 1, light_conf).
// All four inputs are pooled/temporal statistics in [0,1]; any single dead signal
// (fresh center reservoir, empty pool, zero agreeing donors) zeroes the lift.
float RRLadder_LiftLambda(float m_conf, float pool_conf, float accept_conf,
                          float light_conf, float strength, float dim_floor) {
  return ((strength * m_conf) * (pool_conf * accept_conf)) * lerp(dim_floor, 1.0f, light_conf);
}

// Pulls the vanilla-clamped weight toward the saturate ceiling by fraction lambda:
// W' = W + lambda * (1 - W), W = saturate(w_raw). Never exceeds 1, so a lifted weight
// still honors the [0,1] guide-buffer contract on its own.
float RRLadder_LiftWeight(float w_raw, float lambda) {
  const float w_base = saturate(w_raw);
  return min(w_base + (lambda * (RRLIFT_CEILING - w_base)), RRLIFT_CEILING);  // ceiling-raised pull, still bounded + confidence-gated
}

// Reinhard soft knee applied to the lift DELTA only: returns
// splat_base + delta/(1 + knee_strength * delta), delta = max(0, lifted - base).
// The base (already de-clamped) splat passes through untaxed; only the added lift
// energy is compressed, with asymptote base + 1/knee_strength. When the de-clamp knee
// is already above the lifted value (w_raw > 1 territory), delta = 0 and the lift
// no-ops — the two layers partition cleanly at the saturate ceiling.
float RRLadder_LiftSoftKnee(float splat_base, float splat_lifted, float knee_strength) {
  const float delta = max(0.0f, splat_lifted - splat_base);
  return splat_base + (delta / mad(delta, knee_strength, 1.0f));
}

#endif  // SRC_GAMES_CRIMSONDESERT_RT_RR_LADDER_COMMON_HLSLI_