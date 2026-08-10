#ifndef SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_SKY_SPECTRAL_COMMON_HLSLI_
#define SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_SKY_SPECTRAL_COMMON_HLSLI_

#include "../shared.h"
// [SKY_SPECTRAL]

// ============================================================================
// Spectral atmospheric scattering support
// Based on Garcia Linan, "Real time spectral rendering of the atmospheric medium"
// Adapted to 3 wavelength (630nm, 560nm, 490nm)
//
// WARNING — wrong basis, wrong gamut; do not re-enable as-is. Every constant below assumes the
// game's three sky channels sit at (630, 560, 490)nm and that the working space is BT.2020.
// Neither holds: the game's packed Rayleigh triple (29, 69, 169 = 0xFF1D45A9) is a 680/550/440nm
// Rayleigh vector, and the "vanilla" matrix below is numerically sRGB->AP1, not BT.709->BT.2020 —
// the working space is AP1-like. Applying these constants desaturates the sky, which is why
// SKY_SCATTERING is forced to 0.f in shared.h. A replacement must be derived at 680/550/440 in the
// real working space, with the spectral->display conversion fitted against full-spectrum reference
// skies rather than built from three delta-function CMF samples (a correct monochromatic 440nm
// column has negative green, so a raw 3-point matrix cannot be right).
// ============================================================================

// --- Rayleigh β ratios (Bucholtz 1995, relative to 490nm reference) ---
static const float SKY_RAYLEIGH_CH1 = 0.3585776330f;  // 630nm
static const float SKY_RAYLEIGH_CH2 = 0.5792616721f;  // 560nm
static const float SKY_RAYLEIGH_CH3 = 1.0000000000f;  // 490nm (reference)

// --- Ozone absorption constants (game units, Gorshelev et al. 2014) ---
static const float SKY_OZONE_CH1 = 4.416554727381943e-06f;  // 630nm
static const float SKY_OZONE_CH2 = 4.978800461685751e-06f;  // 560nm
static const float SKY_OZONE_CH3 = 1.715994333881982e-06f;  // 490nm

// --- Spectral → BT.2020 conversion matrix ---
// = normalize( M_xyz_to_bt2020 × M_cmf_riemann_weights )
// CIE 1931 2° CMFs at 630/560/490nm, midpoint Riemann partition, Y-row sum = 1.
static const float3x3 SKY_SPECTRAL_TO_BT2020 = float3x3(
    1.4694646167f,  0.3669925672f, -0.2165157196f,
    0.0001303464f,  0.6682570564f,  0.3316125972f,
   -0.0000034055f, -0.0156549124f,  0.8974954385f
);

// --- Vanilla constants (for toggle fallback) ---
static const float3x3 SKY_VANILLA_BT709_TO_BT2020 = float3x3(
    0.6131200194358826f,  0.3395099937915802f,  0.047370001673698425f,
    0.07020000368356705f, 0.9163600206375122f,  0.013450000435113907f,
    0.02061999961733818f, 0.10958000272512436f, 0.8697999715805054f
);

// --- Spectral vs vanilla constants ---
#define SKY_OZONE_1 renodx::math::Select(SKY_SCATTERING == 1.f, SKY_OZONE_CH1, 2.05560013455397e-06f)
#define SKY_OZONE_2 renodx::math::Select(SKY_SCATTERING == 1.f, SKY_OZONE_CH2, 4.978800461685751e-06f)
#define SKY_OZONE_3 renodx::math::Select(SKY_SCATTERING == 1.f, SKY_OZONE_CH3, 2.1360001767334325e-07f)

// --- Rayleigh β assembly ---
// The single definition of the Rayleigh β triple.
//
// The game packs its Rayleigh scattering colour as one uint, 8 bits per channel, scaled by
// 1/255 × 5e-5. Spectral scattering keeps the native blue as the 490nm reference and rebuilds red
// and green from the Bucholtz ratios; with scattering off, all three resolve to the native packed
// values exactly.
//
// Every site that assembles β must call this. The shaders reconstruct β at a dozen separate points,
// and open-coding the unpack at each one is what allowed some of them to receive the spectral
// rebuild while others kept native red and green — the same physical quantity computed two ways
// inside one shader.
float3 SkySpectralRayleighBeta(uint packed_color) {
  float3 beta = float3(
      ((float)((packed_color >> 16u) & 255u)) * 1.9607843e-07f,
      ((float)((packed_color >> 8u) & 255u)) * 1.9607843e-07f,
      ((float)(packed_color & 255u)) * 1.9607843e-07f);

  if (SKY_SCATTERING == 1.f) {
    beta.r = beta.b * SKY_RAYLEIGH_CH1;
    beta.g = beta.b * SKY_RAYLEIGH_CH2;
  }

  return beta;
}

// --- Transmittance matrix: always vanilla BT.709→BT.2020 ---
// Transmittance is multiplicative (applied to display-space scene colour), so its matrix must
// preserve row sums of 1.0. SKY_SPECTRAL_TO_BT2020 does not: its rows sum to 1.62 / 1.00 / 0.88,
// so using it on a transmittance would produce T > 1 in red, which extinction cannot do.
// Transmittance sites therefore keep the vanilla matrix inline rather than routing through the
// spectral one. Do not introduce an alias for this — the constraint has to be readable at the
// call sites, and an alias defined here is where it stops being read.

// --- In-scatter helper macros (Garcia Linan split path) ---
// Rayleigh in scatter is TRUE spectral data → use spectral→BT.2020 matrix.
// Mie in scatter is display-space BT.709 colour → use vanilla matrix.
//
// Garcia Linan formulation for in-scatter:
//   L_display[row] = Σᵢ M_spectral[row][i] × T(λᵢ) × β(λᵢ) × phase
//              + (Σᵢ M_vanilla[row][i] × T(λᵢ)) × S_mie[row_colour]

// Spectral Rayleigh: per wavelength T×β then matrix-convert to display
#define SKY_RAY_INSCATTER(row, T0,T1,T2, b0,b1,b2, phase) \
  (SKY_SPECTRAL_TO_BT2020[row][0]*(T0)*(b0)*(phase) \
 + SKY_SPECTRAL_TO_BT2020[row][1]*(T1)*(b1)*(phase) \
 + SKY_SPECTRAL_TO_BT2020[row][2]*(T2)*(b2)*(phase))

// Vanilla BT.709→BT.2020 dot product (for Mie and transmittance paths)
#define SKY_VAN_DOT(row, T0,T1,T2) \
  (SKY_VANILLA_BT709_TO_BT2020[row][0]*(T0) \
 + SKY_VANILLA_BT709_TO_BT2020[row][1]*(T1) \
 + SKY_VANILLA_BT709_TO_BT2020[row][2]*(T2))

#endif  // SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_SKY_SPECTRAL_COMMON_HLSLI_
