#ifndef SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_SKY_SPECTRAL_COMMON_HLSLI_
#define SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_SKY_SPECTRAL_COMMON_HLSLI_

#include "../shared.h"
// [SKY_SPECTRAL]

// ============================================================================
// Spectral atmospheric scattering support (v2)
//
// The game's three sky channels are Rayleigh samples at (680, 550, 440) nm — its packed
// _rayleighScatteringColor is a Bruneton-style lambda^-4 triple, blue-anchored, and its native
// ozone constants are the Serdyuchenko/Gorshelev cross sections at those same wavelengths. Both
// are physically correct as shipped, so v2 keeps native beta and native ozone everywhere and
// changes exactly one thing: WHICH matrix converts Rayleigh in-scatter radiance into the working
// space. The working space is ACEScg (AP1 primaries, ACES D60 white); the game's own conversion
// matrix below is the sRGB->AP1 Bradford transform, not BT.709->BT.2020.
// ============================================================================

// --- Ozone absorption constants (game-native; Serdyuchenko/Gorshelev at 680/550/440nm) ---
// The game's own values are the physical cross sections at its native wavelengths, so there is no
// spectral variant: these are unconditional. They exist as named constants only so the patched
// bodies read consistently.
#define SKY_OZONE_1 2.05560013455397e-06f
#define SKY_OZONE_2 4.978800461685751e-06f
#define SKY_OZONE_3 2.1360001767334325e-07f

// --- Spectral -> working-space conversion (in-scatter ONLY) ---
// Least-squares fit mapping per-wavelength radiance samples at (680, 550, 440) nm into ACEScg,
// trained on full-spectrum references (Rayleigh skies across sun elevations and ozone ratios,
// blackbody 2000-6500K, standard illuminants) integrated over the CIE 1931 2-deg CMFs. It reaches
// BT.709 through the canonical Bradford BT.709->AP1 transform, matching the tonemap's return trip,
// so no D60/D65 cast is introduced end to end.
static const float3x3 SKY_SPECTRAL_TO_WORKING = float3x3(
    0.29844556f, 0.74232366f, -0.02997396f,
    -0.01702895f, 0.95497675f, 0.04498695f,
    -0.02171163f, 0.15278841f, 0.87530655f);

// --- The game's own conversion (sRGB -> ACEScg, Bradford) ---
// Every non-spectral colour in the game converts through this literal; the Off arm of every gate
// and the Mie/transmittance paths keep it so those stay bit-exact vanilla.
static const float3x3 SKY_VANILLA_RGB_TO_WORKING = float3x3(
    0.6131200194358826f, 0.3395099937915802f, 0.047370001673698425f,
    0.07020000368356705f, 0.9163600206375122f, 0.013450000435113907f,
    0.02061999961733818f, 0.10958000272512436f, 0.8697999715805054f);

// --- Transmittance: always the vanilla matrix ---
// A transmittance multiplies scene colour, so its matrix must preserve row sums of 1.0.
// SKY_VANILLA_RGB_TO_WORKING's rows sum to 1.000000/1.000010/1.000000; SKY_SPECTRAL_TO_WORKING's
// sum to 1.0108/0.9829/1.0064 — close, but applying it to a transmittance would still inject gain
// that extinction cannot physically produce. The spectral matrix converts in-scatter RADIANCE only.

// --- Rayleigh beta assembly ---
// The single definition of the Rayleigh beta triple: the native packed-colour unpack, 8 bits per
// channel, scaled by 1/255 x 5e-5. The native values are already the physical constants at the
// game's wavelengths, so there is no spectral rebuild — every site that assembles beta calls this
// and gets vanilla numbers, which keeps extinction bit-exact by construction.
float3 SkySpectralRayleighBeta(uint packed_color) {
  return float3(
      ((float)((packed_color >> 16u) & 255u)) * 1.9607843e-07f,
      ((float)((packed_color >> 8u) & 255u)) * 1.9607843e-07f,
      ((float)(packed_color & 255u)) * 1.9607843e-07f);
}

// --- In-scatter helper macros (Garcia Linan split path) ---
// Rayleigh in-scatter is per-wavelength radiance -> spectral fitted matrix (when SKY_SCATTERING
// selects it). Mie in-scatter and transmittance are display-referred colour -> vanilla matrix.
//
//   L_working[row] = sum_i M_spectral[row][i] x T(lambda_i) x beta(lambda_i) x phase
//                  + (sum_i M_vanilla[row][i] x T(lambda_i)) x S_mie[row_colour]

// Spectral Rayleigh: per wavelength T x beta then matrix-convert to working space
#define SKY_RAY_INSCATTER(row, T0, T1, T2, b0, b1, b2, phase) \
  (SKY_SPECTRAL_TO_WORKING[row][0] * (T0) * (b0) * (phase)    \
   + SKY_SPECTRAL_TO_WORKING[row][1] * (T1) * (b1) * (phase)  \
   + SKY_SPECTRAL_TO_WORKING[row][2] * (T2) * (b2) * (phase))

// Vanilla working-space dot product (for Mie and transmittance paths)
#define SKY_VAN_DOT(row, T0, T1, T2)              \
  (SKY_VANILLA_RGB_TO_WORKING[row][0] * (T0)      \
   + SKY_VANILLA_RGB_TO_WORKING[row][1] * (T1)    \
   + SKY_VANILLA_RGB_TO_WORKING[row][2] * (T2))

// Spectral working-space dot product over an arbitrary per-wavelength triple (for sites whose
// Rayleigh radiance arrives pre-assembled, e.g. the LUT-driven aerial term). Ungated here; the
// gate lives at the call site.
#define SKY_SPEC_DOT(row, X0, X1, X2)             \
  (SKY_SPECTRAL_TO_WORKING[row][0] * (X0)         \
   + SKY_SPECTRAL_TO_WORKING[row][1] * (X1)       \
   + SKY_SPECTRAL_TO_WORKING[row][2] * (X2))

#endif  // SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_SKY_SPECTRAL_COMMON_HLSLI_
