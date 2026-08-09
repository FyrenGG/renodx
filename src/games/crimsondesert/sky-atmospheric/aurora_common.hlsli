// A combo of "Volumetric Aurora Borealis with Polar Reflection" by gerardo-lcdf
// from Godot & KnighTec's work on W3 Blitz-FX. TY to both
//
// Uses a fixed-detail volumetric raymarch with session-seeded color and shape
// variation. The addon refreshes the session seed when aurora starts or a new
// night begins.

#ifndef SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_AURORA_COMMON_HLSLI_
#define SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_AURORA_COMMON_HLSLI_

static const float AURORA_TIME_SCALE = 0.012f; // For global motion amount
static const int   AURORA_STEP_COUNT = 50;
static const uint  AURORA_PALETTE_COUNT = 16u;
static const uint  AURORA_PRESET_COUNT = 10u;
static const uint  AURORA_HASH24_MASK = 0x00ffffffu;
static const float AURORA_HASH24_SCALE = 1.f / 16777216.f;
static const float AURORA_SESSION_SEED_MAX = 16777215.f;
static const uint  AURORA_PALETTE_SALT = 0x9e3779b9u;
static const uint  AURORA_PRESET_SALT = 0xbb67ae85u;

float ComputeNightGate(float sunDirY) {
  return 1.f - smoothstep(-0.15f, 0.f, sunDirY);
}

// Simple transmittance for night only SkyMaterial since it has no extinction LUT.
//
// Deliberately monochrome and deliberately not wired to SKY_RAYLEIGH_CH1/CH2/CH3. It returns a
// single float, so a per-channel coefficient has nowhere to go, and the aurora is an emissive
// overlay whose own colour dominates — a grey attenuation is sufficient there. 5.8e-6 is the
// red-channel Rayleigh coefficient, which is the weakest of the three, so this errs toward too
// much transmittance and keeps the night sky readable rather than muddying it.
//
// Consequence to keep in mind: this constant does NOT follow the spectral Rayleigh coefficients.
// Changing those leaves this unchanged, and that is intended, not an oversight.
float ChapmanTransmittance(float altitude, float cosViewZenith,
                           float rayleighScaleHeight, float earthRadius) {
  float H = max(rayleighScaleHeight, 1.f);
  return exp(-5.8e-6f * H * exp(-altitude / H) / max(cosViewZenith, 0.01f));
}

float AuroraAtmosphereTransmittance(float cosViewZenith, float rayleighScaleHeight, float earthRadius) {
  return ChapmanTransmittance(0.f, cosViewZenith, rayleighScaleHeight, earthRadius);
}

float3 AuroraSafeNormalize(float3 v) {
  return v * rsqrt(max(dot(v, v), 1e-6f));
}

float AuroraCelestialSuppression(float3 viewDir, float3 sunDir, float3 moonDir,
                                 float moonAmbient, float angularStrength) {
  float3 v = AuroraSafeNormalize(viewDir);
  float moonGlow = smoothstep(0.78f, 0.97f, dot(v, AuroraSafeNormalize(moonDir)));
  float sunGlow = smoothstep(0.65f, 0.95f, dot(v, AuroraSafeNormalize(sunDir)));
  float moonBrightness = saturate(moonAmbient * 0.0008f + 0.25f);
  float suppression = moonGlow * moonBrightness * 0.35f + sunGlow * 0.45f;
  return 1.f - saturate(suppression * angularStrength);
}

// ============================================================================
// Improved per pixel hash seeded by _ssaoRandomDirection[16]
// ============================================================================

float2 AuroraImprovedHash(uint2 pixelCoord, float2 frameJitter, float4 ssaoDirections[16]) {
  uint idx = (pixelCoord.x & 3u) + (pixelCoord.y & 3u) * 4u;
  float2 tileSeed = ssaoDirections[idx].xy;

  uint h = pixelCoord.x + pixelCoord.y * 8191u;
  h = (h ^ 61u) ^ (h >> 16u);
  h = h + (h << 3u);
  h = h ^ (h >> 4u);
  h = h * 0x27d4eb2du;
  h = h ^ (h >> 15u);
  float2 perPixel = float2(float(h & 0xFFFFu), float((h >> 16u) & 0xFFFFu)) * (1.f / 65535.f);

  return frac(perPixel + tileSeed * 0.5f + frameJitter);
}

uint AuroraHashUint(uint n) {
  n ^= n >> 16u;
  n *= 0x7feb352du;
  n ^= n >> 15u;
  n *= 0x846ca68bu;
  n ^= n >> 16u;
  return n;
}

float AuroraHash01(uint n) {
  return (float)(AuroraHashUint(n) & AURORA_HASH24_MASK) * AURORA_HASH24_SCALE;
}

uint AuroraPickIndex(uint sessionIndex, uint salt, uint count) {
  uint hash = AuroraHashUint(sessionIndex ^ salt) & AURORA_HASH24_MASK;
  return min((hash * count) >> 24u, count - 1u);
}

float2 AuroraFrameJitter16(uint frameNumber) {
  static const float2 sequence[16] = {
    float2(0.5000f, 0.5000f), float2(0.1250f, 0.6250f), float2(0.7500f, 0.2500f), float2(0.3750f, 0.8750f),
    float2(0.6250f, 0.1250f), float2(0.2500f, 0.7500f), float2(0.8750f, 0.3750f), float2(0.0625f, 0.9375f),
    float2(0.5625f, 0.3125f), float2(0.1875f, 0.4375f), float2(0.8125f, 0.0625f), float2(0.4375f, 0.6875f),
    float2(0.6875f, 0.8125f), float2(0.3125f, 0.1875f), float2(0.9375f, 0.5625f), float2(0.03125f, 0.28125f)
  };
  return sequence[frameNumber & 15u];
}

float AuroraSampleHash(uint2 pixelCoord, int2 sampleCell, uint stepIndex, uint sessionIndex, uint framePhase) {
  uint n = ((uint)sampleCell.x * 0x8da6b343u)
         ^ ((uint)sampleCell.y * 0xd8163841u)
         ^ (pixelCoord.x * 0x9e3779b9u)
         ^ (pixelCoord.y * 0x85ebca6bu)
         ^ (stepIndex * 0xcb1ab31fu)
         ^ (sessionIndex * 0x165667b1u)
         ^ (framePhase * 0x27d4eb2du);
  return (float)(AuroraHashUint(n) & AURORA_HASH24_MASK) * AURORA_HASH24_SCALE;
}

// ============================================================================
// Night seed session system
//
// AURORA_NIGHT_SEED is a 24-bit normalized session seed supplied by the addon.
// The shader derives chance, palette, brightness, and shape rolls from it.
// ============================================================================

uint AuroraNightSessionIndex(float nightSeed) {
  return (uint)(saturate(nightSeed) * AURORA_SESSION_SEED_MAX + 0.5f);
}

float AuroraNightVisibility(float nightSeed, float chance) {
  uint sessionIndex = AuroraNightSessionIndex(nightSeed);
  float roll = AuroraHash01(sessionIndex);
  return renodx::math::Select(roll < chance, 1.f, 0.f);
}

// --- Auto-exposure compensated aurora dampening ---
// Inverse of moon compensation. Aurora tuned around auto-exposure high dynamism
// value 0.5, which corresponds to slider 25.
// Prevents over-bright aurora output at higher auto-exposure dynamism values.
float AuroraBrightnessDampening(float aeDynamismHigh) {
  static const float tuningBaseline = 0.5f;
  float ratio = min(renodx::math::DivideSafe(tuningBaseline, aeDynamismHigh, 1.f), 1.f);
  return ratio * ratio;
}

// ============================================================================
// Gradient noise (Perlin style) — Inigo Quilez
// ============================================================================

float2 AuroraGradientHash(float2 p) {
  p = float2(dot(p, float2(127.1f, 311.7f)), dot(p, float2(269.5f, 183.3f)));
  return mad(frac(sin(p) * 43758.5453123f), 2.f, -1.f);
}

float AuroraGradientNoise(float2 p) {
  float2 i = floor(p);
  float2 f = frac(p);
  float2 u = f * f * f * mad(f, mad(f, 6.f, -15.f), 10.f);

  float2 ga = AuroraGradientHash(i);
  float2 gb = AuroraGradientHash(i + float2(1.f, 0.f));
  float2 gc = AuroraGradientHash(i + float2(0.f, 1.f));
  float2 gd = AuroraGradientHash(i + float2(1.f, 1.f));

  float va = dot(ga, f);
  float vb = dot(gb, f - float2(1.f, 0.f));
  float vc = dot(gc, f - float2(0.f, 1.f));
  float vd = dot(gd, f - float2(1.f, 1.f));

  return va + u.x * (vb - va) + u.y * (vc - va) + u.x * u.y * (va - vb - vc + vd);
}

float AuroraFBM(float2 p, int octaves) {
  float value = 0.f;
  float amplitude = 0.5f;
  float frequency = 1.f;

  [unroll]
  for (int i = 0; i < octaves; i++) {
    value += amplitude * AuroraGradientNoise(p * frequency);
    amplitude *= 0.5f;
    frequency *= 2.f;
  }
  return value;
}

// ============================================================================
// Difference Clouds — Miskatonic Studios technique
// ============================================================================

float AuroraDifferenceClouds(float2 p, float gameTime, float animSpeed) {
  float2 uv1 = p * 1.2f + float2(gameTime * animSpeed * 0.3f, gameTime * animSpeed * 0.1f);
  float noise1 = AuroraFBM(uv1, 3);

  float2 uv2 = p * 0.8f - float2(gameTime * animSpeed * 0.2f, gameTime * animSpeed * 0.35f);
  static const float angle = 0.4f;
  static const float2x2 rot = float2x2(cos(angle), sin(angle), -sin(angle), cos(angle));
  uv2 = mul(rot, uv2);
  float noise2 = AuroraFBM(uv2, 3);

  return 1.f - pow(saturate(abs(noise1 - noise2) * 2.5f), 0.4f);
}

// ============================================================================
// Triangle wave noise (nimitz) — internal shimmer
// ============================================================================

float AuroraTri(float x) {
  return clamp(abs(frac(x) - 0.5f), 0.01f, 0.49f);
}

float2 AuroraTri2(float2 p) {
  return float2(AuroraTri(p.x) + AuroraTri(p.y), AuroraTri(p.y + AuroraTri(p.x)));
}

float2x2 AuroraMM2(float a) {
  float c = cos(a), s = sin(a);
  return float2x2(c, s, -s, c);
}

static const float2x2 AURORA_M2 = float2x2(0.95534f, 0.29552f, -0.29552f, 0.95534f);

float AuroraTriNoise2D(float2 p, float spd, float gameTime) {
  float z = 1.8f;
  float z2 = 2.5f;
  float rz = 0.f;
  p = mul(AuroraMM2(p.x * 0.06f), p);
  float2 bp = p;

  [unroll]
  for (int i = 0; i < 4; i++) {
    float2 dg = AuroraTri2(bp * 1.85f) * 0.75f;
    dg = mul(AuroraMM2(gameTime * spd), dg);
    p -= dg / z2;
    bp *= 1.3f;
    z2 *= 0.45f;
    z *= 0.42f;
    p *= mad(rz - 1.f, 0.02f, 1.21f);
    rz += AuroraTri(p.x + AuroraTri(p.y)) * z;
    p = mul(-AURORA_M2, p);
  }
  return clamp(renodx::math::DivideSafe(1.f, pow(rz * 29.f, 1.3f)), 0.f, 0.55f);
}

// ============================================================================
// Hybrid aurora noise — Mode 0=Triangle, 1=Difference, 2=Blend
// ============================================================================

float AuroraTriangleNoise(float2 p, float animSpeed, float gameTime, float sharpness) {
  float shimmer = AuroraTriNoise2D(p, animSpeed, gameTime);
  return smoothstep(lerp(0.01f, 0.15f, sharpness), lerp(0.55f, 0.45f, sharpness), shimmer);
}

float AuroraDifferenceNoise(float2 p, float animSpeed, float gameTime, float sharpness) {
  float curtains = AuroraDifferenceClouds(p, gameTime, animSpeed);
  return smoothstep(lerp(0.05f, 0.25f, sharpness), lerp(0.85f, 0.6f, sharpness), curtains);
}

float AuroraBlendedNoise(float2 p, float animSpeed, float gameTime, float sharpness, float blend) {
  float curtains = AuroraDifferenceClouds(p, gameTime, animSpeed);
  float shimmer = AuroraTriNoise2D(p * 1.5f, animSpeed * 0.7f, gameTime);

  float curtainWeight = lerp(0.2f, 1.0f, blend);
  float shimmerBase = lerp(0.7f, 0.4f, blend);
  float combined = lerp(shimmer, curtains * mad(shimmer, 1.f - shimmerBase, shimmerBase), curtainWeight);

  return smoothstep(
    lerp(0.02f, 0.2f, sharpness * mad(blend, 0.5f, 0.5f)),
    lerp(0.8f, 0.55f, sharpness),
    combined);
}

float AuroraHybridNoise(float2 p, float animSpeed, float gameTime, float sharpness, float blend, float mode) {
  if (mode < 0.5f) return AuroraTriangleNoise(p, animSpeed, gameTime, sharpness);
  if (mode < 1.5f) return AuroraDifferenceNoise(p, animSpeed, gameTime, sharpness);
  return AuroraBlendedNoise(p, animSpeed, gameTime, sharpness, blend);
}

// ============================================================================
// 1D Perlin noise — arc shape waviness
// ============================================================================

float AuroraHash1D(float p) {
  float3 p3 = frac(float3(p, p, p) * 0.1031f);
  p3 += dot(p3, p3.yzx + 19.19f);
  return frac((p3.x + p3.y) * p3.z);
}

float AuroraPerlin1D(float p) {
  float pi = floor(p);
  float pf = p - pi;
  float w = pf * pf * pf * (pf * (6.f * pf - 15.f) + 10.f);
  float sign0 = renodx::math::Select(((uint)(AuroraHash1D(pi) * 10000.f) & 1) == 0, 1.f, -1.f);
  float sign1 = renodx::math::Select(((uint)(AuroraHash1D(pi + 1.f) * 10000.f) & 1) == 0, 1.f, -1.f);
  float g0 = sign0 * pf;
  float g1 = sign1 * (pf - 1.f);
  return lerp(g0, g1, w) * 2.f;
}

// ============================================================================
// Glow & Footprint — curtain shape and density
// ============================================================================

float AuroraGlow(float dist, float radius, float intensity) {
  return pow(renodx::math::DivideSafe(radius, dist, 0.f), intensity);
}

float2 AuroraFootprint(float3 position, float gameTime, float animSpeed) {
  static const float auroraStart = 0.8f;
  static const float auroraHeight = 0.15f;
  float h = saturate((position.y - auroraStart) / auroraHeight);
  float arcCenter = mad(5.5f, cos(0.005f * position.z), 0.3f * h);
  arcCenter += 0.02f * AuroraPerlin1D(mad(gameTime, animSpeed * 2.f, 0.1f * position.z));
  return float2(position.x - arcCenter, h);
}

float AuroraSDF(float3 position, float gameTime, float animSpeed) {
  float2 footprint = AuroraFootprint(position, gameTime, animSpeed);
  return abs(footprint.x) - lerp(0.8f, 0.3f, footprint.y);
}

float AuroraGlowDensity(float3 position, float gameTime, float animSpeed, float noiseValue) {
  float2 footprint = AuroraFootprint(position, gameTime, animSpeed);
  float3 a = float3(noiseValue, mad(footprint.y, 0.008f, 0.5f), noiseValue);
  float speed = gameTime * animSpeed;
  a.y += 0.015f * AuroraPerlin1D(mad(position.z, 0.042f, speed));
  a.y += 0.015f * AuroraPerlin1D(mad(position.z, 0.042f, -2.f * speed));
  return AuroraGlow(length(a), 0.7f, 10.f) * saturate(cos(0.13f * footprint.x));
}

// ============================================================================
// Aurora volumetric raymarch
// ============================================================================
//
// Implementation notes:
// - Keep a fixed 50-step detail path; broad step-count reduction caused banding.
// - Use low-horizon fade and far-distance thinning only where atmospheric haze
//   already hides detail.
// - Drive nightly color/preset variation from the CPU session seed.
// - Use frame-number jitter instead of random per-frame jitter to reduce crawl.

float3 ComputeAurora(float3 viewDir, float realTime, float nightGate, uint frameNumber,
                     uint2 pixelCoord, float4 ssaoDirections[16]) {

  // Skip all aurora work outside the night window.
  if (nightGate <= 0.f) return 0.f;

  float3 rd = viewDir;

  float horizonDistance = 1.f / max(rd.y, 0.001f);
  float horizonFade = smoothstep(0.06f, 0.24f, rd.y)
                    * (1.f - smoothstep(10.f, 24.f, horizonDistance));
  if (horizonFade <= 0.001f) return 0.f;

  float visibilityFade = AuroraNightVisibility(AURORA_NIGHT_SEED, AURORA_CHANCE / 100.f);
  if (visibilityFade <= 0.f) return 0.f;

  uint sessionIndex = AuroraNightSessionIndex(AURORA_NIGHT_SEED);
  float animTime = realTime * AURORA_TIME_SCALE;

  // Derive independent nightly rolls from the session seed so already-night
  // saves and later night transitions do not bias toward the same first color.
  uint paletteIndex = AuroraPickIndex(sessionIndex, AURORA_PALETTE_SALT, AURORA_PALETTE_COUNT);

  float brightnessVar = mad(AuroraHash01(sessionIndex + 23456u), 0.45f, 0.55f);

  uint presetIndex = AuroraPickIndex(sessionIndex, AURORA_PRESET_SALT, AURORA_PRESET_COUNT);

  // --- Presets: [mode, blend, sharpness, speed, sparsityLow, sparsityHigh, verticalScale, animSpeed, driftSpeed, pulseSpeed, waveSpeed] ---
  static const float presets[AURORA_PRESET_COUNT][11] = {
    {2.f, 100.f, 100.f, 50.f, 0.f, 100.f, 300.f, 100.f, 100.f, 100.f, 100.f},
    {2.f, 100.f, 100.f, 75.f, 0.f, 100.f, 250.f, 100.f, 100.f, 100.f, 100.f},
    {2.f, 100.f, 100.f, 75.f, 0.f, 100.f, 100.f, 50.f, 100.f, 100.f, 100.f},
    {2.f, 100.f, 100.f, 75.f, 0.f, 100.f, 200.f, 65.f, 100.f, 100.f, 100.f},
    {2.f, 100.f, 50.f, 60.f, 10.f, 100.f, 150.f, 35.f, 100.f, 100.f, 100.f},
    {0.f, 100.f, 0.f, 60.f, 0.f, 100.f, 250.f, 50.f, 100.f, 100.f, 100.f},
    {0.f, 100.f, 0.f, 75.f, 0.f, 75.f, 300.f, 40.f, 100.f, 100.f, 100.f},
    {0.f, 100.f, 5.f, 100.f, 0.f, 75.f, 150.f, 50.f, 100.f, 100.f, 100.f},
    {0.f, 100.f, 5.f, 100.f, 0.f, 75.f, 200.f, 35.f, 100.f, 100.f, 100.f},
    {0.f, 100.f, 5.f, 100.f, 0.f, 75.f, 150.f, 35.f, 100.f, 100.f, 100.f}
  };

  float presetMode = presets[presetIndex][0];
  float presetBlend = presets[presetIndex][1];
  float presetSharpness = presets[presetIndex][2];
  float presetSpeed = presets[presetIndex][3];
  float presetSparsityLow = presets[presetIndex][4];
  float presetSparsityHigh = presets[presetIndex][5];
  float presetVerticalScale = presets[presetIndex][6];
  float presetAnimSpeed = presets[presetIndex][7];
  float presetDriftSpeed = presets[presetIndex][8];
  float presetPulseSpeed = presets[presetIndex][9];
  float presetWaveSpeed = presets[presetIndex][10];

  float sparsityLow = presetSparsityLow / 100.f;
  float sparsityHigh = presetSparsityHigh / 100.f;
  float auroraBlend = presetBlend / 100.f;
  float auroraSharpness = presetSharpness / 100.f;
  float verticalScale = mad(presetVerticalScale / 100.f, 1.5f, 0.5f);
  float animSpeed = mad(presetAnimSpeed / 100.f, 1.0f, 0.2f) * lerp(0.1f, 3.0f, presetSpeed / 100.f);
  float driftSpeedPct = presetDriftSpeed / 100.f;
  float pulseSpeedPct = presetPulseSpeed / 100.f;
  float waveSpeedPct = presetWaveSpeed / 100.f;

  // --- Palettes ---
  // Balanced fantasy-night palette families with restrained green, cleaner warm
  // crowns, and teal, blue, rose, and violet variation.
  static const float3 paletteBottoms[AURORA_PALETTE_COUNT] = {
    float3(0.10f, 0.92f, 0.48f), float3(0.05f, 0.78f, 0.84f), float3(0.10f, 0.76f, 0.72f),
    float3(0.24f, 0.76f, 0.58f), float3(0.06f, 0.58f, 0.98f), float3(0.10f, 0.62f, 0.82f),
    float3(0.34f, 0.78f, 0.66f), float3(0.18f, 0.70f, 0.64f), float3(0.06f, 0.82f, 0.86f),
    float3(0.12f, 0.68f, 0.56f), float3(0.08f, 0.64f, 0.94f), float3(0.20f, 0.76f, 0.68f),
    float3(0.14f, 0.86f, 0.44f), float3(0.08f, 0.76f, 0.76f), float3(0.30f, 0.82f, 0.64f),
    float3(0.08f, 0.56f, 0.96f)
  };
  static const float3 paletteLowerMids[AURORA_PALETTE_COUNT] = {
    float3(0.06f, 0.72f, 0.56f), float3(0.07f, 0.58f, 0.92f), float3(0.16f, 0.58f, 0.78f),
    float3(0.42f, 0.64f, 0.50f), float3(0.10f, 0.44f, 0.96f), float3(0.18f, 0.44f, 0.90f),
    float3(0.34f, 0.62f, 0.70f), float3(0.34f, 0.58f, 0.68f), float3(0.10f, 0.62f, 0.88f),
    float3(0.18f, 0.50f, 0.58f), float3(0.10f, 0.48f, 0.90f), float3(0.30f, 0.62f, 0.70f),
    float3(0.16f, 0.68f, 0.54f), float3(0.12f, 0.58f, 0.82f), float3(0.54f, 0.72f, 0.58f),
    float3(0.14f, 0.42f, 0.96f)
  };
  static const float3 paletteUpperMids[AURORA_PALETTE_COUNT] = {
    float3(0.12f, 0.38f, 0.60f), float3(0.32f, 0.28f, 0.88f), float3(0.72f, 0.32f, 0.62f),
    float3(0.98f, 0.58f, 0.24f), float3(0.28f, 0.24f, 0.90f), float3(0.62f, 0.26f, 0.90f),
    float3(0.56f, 0.52f, 0.72f), float3(0.92f, 0.44f, 0.32f), float3(0.50f, 0.34f, 0.88f),
    float3(0.82f, 0.26f, 0.30f), float3(0.18f, 0.36f, 0.74f), float3(0.86f, 0.38f, 0.62f),
    float3(0.26f, 0.34f, 0.86f), float3(0.78f, 0.30f, 0.46f), float3(0.92f, 0.68f, 0.42f),
    float3(0.60f, 0.26f, 0.92f)
  };
  static const float3 paletteTops[AURORA_PALETTE_COUNT] = {
    float3(0.08f, 0.14f, 0.30f), float3(0.22f, 0.10f, 0.46f), float3(0.50f, 0.14f, 0.38f),
    float3(0.64f, 0.22f, 0.12f), float3(0.16f, 0.10f, 0.50f), float3(0.44f, 0.12f, 0.58f),
    float3(0.32f, 0.24f, 0.44f), float3(0.58f, 0.18f, 0.14f), float3(0.34f, 0.16f, 0.50f),
    float3(0.68f, 0.10f, 0.14f), float3(0.10f, 0.18f, 0.44f), float3(0.52f, 0.16f, 0.40f),
    float3(0.18f, 0.12f, 0.48f), float3(0.60f, 0.12f, 0.28f), float3(0.42f, 0.28f, 0.26f),
    float3(0.38f, 0.12f, 0.56f)
  };

  float3 colorBottom = paletteBottoms[paletteIndex];
  float3 colorLowerMid = paletteLowerMids[paletteIndex];
  float3 colorUpperMid = paletteUpperMids[paletteIndex];
  float3 colorTop = paletteTops[paletteIndex];

  float shimmer = animTime * 0.003f;
  colorBottom *= 0.85f + 0.15f * float3(
    mad(sin(shimmer * 1.1f), 0.5f, 0.5f),
    mad(sin(mad(shimmer, 0.9f, 2.f)), 0.5f, 0.5f),
    mad(sin(mad(shimmer, 1.3f, 4.f)), 0.5f, 0.5f));

  float2 drift = float2(sin(animTime * mad(driftSpeedPct, 0.02f, 0.005f)),
                        cos(animTime * mad(driftSpeedPct, 0.02f, 0.005f) * 0.7f)) * 0.15f;
  float pulse = mad(sin(animTime * mad(pulseSpeedPct, 0.04f, 0.01f)), 0.08f, 0.92f);
  float waveSpeed = mad(waveSpeedPct, 0.06f, 0.02f);

  // --- Raymarch ---
  float3 col = 0.f;
  float rdUp = max(rd.y, 0.001f);

  uint framePhase = frameNumber & 15u;
  float2 frameJitter = AuroraFrameJitter16(frameNumber);
  float2 pixelHash = AuroraImprovedHash(pixelCoord, frameJitter, ssaoDirections);
  float temporalLayerOffset = (frameJitter.x - 0.5f) * 1.5f;

  uint vh = pixelCoord.x * 3u + pixelCoord.y * 7919u;
  vh = vh ^ (vh >> 13u);
  vh = vh * 0x45d9f3bu;
  vh = vh ^ (vh >> 16u);
  float verticalNoise = frac(float(vh & 0xFFFFu) * (1.f / 65535.f) + frameJitter.y * 3.f) - 0.5f;
  float farBand = saturate((horizonDistance - 14.f) / 10.f);
  float farThinStart = lerp(0.85f, 0.45f, farBand);

  [loop]
  for (int i = 0; i < AURORA_STEP_COUNT; i++) {
    float fi = (float)i + temporalLayerOffset;

    float layerJitter = (pixelHash.x - 0.5f) * 0.5f * smoothstep(0.f, 6.f, fi);
    layerJitter += verticalNoise * 0.3f * smoothstep(0.f, 15.f, fi);

    float t = saturate(fi / (float)(AURORA_STEP_COUNT - 1));
    // Only thin high layers in the distant, already-faded horizon band so the
    // nearby and overhead aurora keep full 50-step detail.
    if (farBand > 0.f && t > farThinStart && ((i & 1) != 0)) {
      continue;
    }

    float stepCurve = t * t * (3.f - 2.f * t);
    float planeHeight = 0.8f + sin(mad(fi, 0.06f, animTime * waveSpeed)) * 0.012f
                      + mad(stepCurve, 0.25f * verticalScale, layerJitter * 0.02f);
    float2 p = (rd.xz / rdUp) * planeHeight * 0.2f;

    p += (pixelHash - 0.5f) * 0.015f;
    p.y += verticalNoise * 0.02f * t;
    p += drift * mad(fi, 0.005f, 1.f);

    float rzt = AuroraHybridNoise(p, animSpeed, animTime, auroraSharpness, auroraBlend, presetMode);

    float3 samplePos = float3(p.x * 50.f, planeHeight, p.y * 50.f);
    rzt *= lerp(0.7f, 1.3f, saturate(AuroraGlowDensity(samplePos, animTime, animSpeed, rzt) * 2.f));
    rzt = smoothstep(sparsityLow, sparsityHigh, rzt) * pulse;

    int2 sparkleCell = (int2)floor(p * 50.f);
    float sparkle = smoothstep(mad(pixelHash.y, 0.06f, 0.92f), 1.0f,
                               AuroraSampleHash(pixelCoord, sparkleCell, (uint)i, sessionIndex, framePhase)) * rzt * 2.0f;

    float heightBlend = saturate(mad(sin(-1.15f + fi * 0.043f), 0.5f, 0.5f));
    float3 c01 = lerp(colorBottom, colorLowerMid, saturate(heightBlend * 3.f));
    float3 c12 = lerp(colorLowerMid, colorUpperMid, saturate((heightBlend - 0.333f) * 3.f));
    float3 c23 = lerp(colorUpperMid, colorTop, saturate((heightBlend - 0.666f) * 3.f));
    float3 layerColor = renodx::math::Select(heightBlend < 0.333f, c01,
                        renodx::math::Select(heightBlend < 0.666f, c12, c23));

    float3 layerEmission = layerColor * rzt + sparkle * lerp(1.f, colorLowerMid, 0.3f);
    
    float layerWeight = smoothstep(0.f, 8.f, fi) * exp2(mad(fi, -0.05f, -2.2f));

    col += layerEmission * layerWeight;
  }

  return col * horizonFade * nightGate * (AURORA_BRIGHTNESS / 100.f) * brightnessVar * visibilityFade;
}

#endif  // SRC_CRIMSONDESERT_SKY_ATMOSPHERIC_AURORA_COMMON_HLSLI_
