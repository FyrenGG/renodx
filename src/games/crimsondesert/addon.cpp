/*
 * Copyright (C) 2023 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

#include <string>
#define ImTextureID ImU64

#define DEBUG_LEVEL_0

#include <embed/shaders.h>

#include <d3d12.h>
#include <deps/imgui/imgui.h>
#include <atomic>
#include <chrono>
#include <include/reshade.hpp>
#include <mutex>


#include "../../mods/shader.hpp"
#include "../../templates/settings.hpp"
#include "../../utils/random.hpp"
#include "../../utils/settings.hpp"
#include "../../utils/swapchain.hpp"
#include "./shared.h"

namespace {

ShaderInjectData shader_injection;

bool last_is_hdr = false;
float hdr_settings_toggle = 0.f;

bool debug = false;

// Master state for the Off preset. While this is 0 the addon declines every shader replacement, so
// the game's own pipelines run and the few hooks that are not replacements stand down as well.
float renodx_active = 1.f;

// VRS is always disabled — forces full resolution 1x1 shading rate
// Decomp breaks shaders that use VRS so we hardcode to avoid issues
// with missing or transparent shaders like foliage

float disable_vrs = 1.f;
float disable_ui_shaders = 0.f;

// --- VRS override via pre-draw injection ---
// The game uses Tier 2 VRS (per primitive via SV_ShadingRate in vertex shaders),
// not per-draw RSSetShadingRate calls. To disable VRS we must inject
// RSSetShadingRate(1X1, {OVERRIDE, OVERRIDE}) before each draw, which tells
// the hardware to ignore the per primitive and per tile shading rates.

using PFN_RSSetShadingRate = void(STDMETHODCALLTYPE*)(
    ID3D12GraphicsCommandList5*, D3D12_SHADING_RATE, const D3D12_SHADING_RATE_COMBINER*);

// 0 = not yet checked, 1 = resolved (may still be null if unsupported), -1 = unsupported
static std::atomic<int> vrs_resolve_state{0};
static std::atomic<PFN_RSSetShadingRate> native_rs_set_shading_rate{nullptr};
static std::mutex vrs_resolve_mutex;

// Pre draw hook: inject RSSetShadingRate(1X1, {OVERRIDE, OVERRIDE}) to disable per primitive VRS
static void OnVRSPreDraw(reshade::api::command_list* cmd_list) {
  // Not a shader replacement, so the master gate has to be checked here. Ceasing to issue the
  // override is enough to restore native VRS: a reset command list defaults to 1X1 with
  // {PASSTHROUGH, PASSTHROUGH}, which forwards the game's per-primitive and per-tile rates.
  if (renodx_active == 0.f) return;
  if (cmd_list->get_device()->get_api() != reshade::api::device_api::d3d12) return;
  if (disable_vrs == 0.f) return;

  // Fast path: already determined VRS is unsupported on this GPU
  int state = vrs_resolve_state.load(std::memory_order_relaxed);
  if (state == -1) return;

  auto* native_cmd_list = reinterpret_cast<IUnknown*>(cmd_list->get_native());
  if (native_cmd_list == nullptr) return;

  ID3D12GraphicsCommandList5* cmd_list5 = nullptr;
  HRESULT hr = native_cmd_list->QueryInterface(__uuidof(ID3D12GraphicsCommandList5), reinterpret_cast<void**>(&cmd_list5));
  if (FAILED(hr) || cmd_list5 == nullptr) return;

  // Resolve the vtable function pointer once (double-checked lock)
  auto resolved = native_rs_set_shading_rate.load(std::memory_order_relaxed);
  if (resolved == nullptr && state == 0) {
    const std::lock_guard lock(vrs_resolve_mutex);
    resolved = native_rs_set_shading_rate.load(std::memory_order_relaxed);
    if (resolved == nullptr && vrs_resolve_state.load(std::memory_order_relaxed) == 0) {
      // Check VRS Tier 2 support before resolving — AMD exposes the interface
      // but calling RSSetShadingRate without Tier 2 causes DXGI_ERROR_DEVICE_HUNG
      ID3D12Device* device = nullptr;
      hr = cmd_list5->GetDevice(__uuidof(ID3D12Device), reinterpret_cast<void**>(&device));
      if (SUCCEEDED(hr) && device != nullptr) {
        D3D12_FEATURE_DATA_D3D12_OPTIONS6 options6 = {};
        hr = device->CheckFeatureSupport(D3D12_FEATURE_D3D12_OPTIONS6, &options6, sizeof(options6));
        device->Release();

        if (SUCCEEDED(hr) && options6.VariableShadingRateTier >= D3D12_VARIABLE_SHADING_RATE_TIER_2) {
          void** vtable = *reinterpret_cast<void***>(cmd_list5);
          resolved = reinterpret_cast<PFN_RSSetShadingRate>(vtable[77]);
          if (resolved != nullptr) {
            native_rs_set_shading_rate.store(resolved, std::memory_order_relaxed);
            vrs_resolve_state.store(1, std::memory_order_relaxed);
            reshade::log::message(reshade::log::level::info, "VRS: Resolved native RSSetShadingRate function pointer for pre-draw injection");
          }
        } else {
          reshade::log::message(reshade::log::level::warning, "VRS: GPU does not support VRS Tier 2 — VRS override disabled");
          vrs_resolve_state.store(-1, std::memory_order_relaxed);
        }
      } else {
        reshade::log::message(reshade::log::level::warning, "VRS: Could not get ID3D12Device — VRS override disabled");
        vrs_resolve_state.store(-1, std::memory_order_relaxed);
      }
    }
  }

  if (resolved == nullptr) {
    cmd_list5->Release();
    return;
  }

  D3D12_SHADING_RATE_COMBINER combiners[2] = {
      D3D12_SHADING_RATE_COMBINER_OVERRIDE,  // overrides per-primitive (VS SV_ShadingRate)
      D3D12_SHADING_RATE_COMBINER_OVERRIDE   // overrides per-tile (shading rate image)
  };
  resolved(cmd_list5, D3D12_SHADING_RATE_1X1, combiners);
  cmd_list5->Release();
}

static bool OnVRSDraw(reshade::api::command_list* cmd_list, uint32_t, uint32_t, uint32_t, uint32_t) {
  OnVRSPreDraw(cmd_list);
  return false;  // don't skip the draw
}
static bool OnVRSDrawIndexed(reshade::api::command_list* cmd_list, uint32_t, uint32_t, uint32_t, int32_t, uint32_t) {
  OnVRSPreDraw(cmd_list);
  return false;
}
static bool OnVRSDrawOrDispatchIndirect(reshade::api::command_list* cmd_list, reshade::api::indirect_command, reshade::api::resource, uint64_t, uint32_t, uint32_t) {
  OnVRSPreDraw(cmd_list);
  return false;
}

const std::unordered_map<std::string, float> VANILLA_VALUES = {
    {"SDRBlackCrushFix", 0.f},
    {"ToneMapType", 0.f},

    {"LocalLightHueCorrection", 0.f},
    {"LocalLightSaturation", 50.f},

    {"ImprovedAutoExposure", 0.f},
    // {"AE_PerceptualMinBrightness", 0.f},
    // {"AE_PerceptualMaxBrightness", 0.f},
    // {"AE_TargetSmoothing", 13.f},
    // {"AE_EnvironmentBias", 100.f},
    // {"AE_DarkToLightTime", 1.6f},
    // {"AE_LightToDarkTime", 4.3f},
    //{"AE_DynamismHigh", 50.f},

    {"DisableAWB", 0.f},

    {"FxFilmGrainType", 0.f},
    {"FxChromaticAberration", 100.f},
    {"FxSharpeningType", 0.f},
    {"FxSharpening", 100.f},
    {"FxLensFlareStrength", 100.f},
    {"BloomStrength", 100.f},
    {"FxVignette", 100.f},

    {"SkyScattering", 0.f},
    {"SunImprovements", 0.f},
    {"MoonAdjustments", 0.f},
    {"MoonDiskSize", 1.f},
    {"StylizedLunarPhase", 0.f},
    {"ContactShadowQuality", 0.f},
    {"FoliageImprovements", 0.f},
    {"MaterialImprovements", 0.f},
    {"FoliageSpeedTreeWindCoherence", 0.f},
    {"ShadowEdgeNoiseFix", 0.f},
    {"DawnDuskImprovements", 0.f},
    {"CustomWeatherEditing", 0.f},
    {"SnowFogFix", 0.f},
    {"SPMISQuality", 0.f},
    {"AuroraBorealis", 0.f},
    {"AuroraBrightness", 25.f},
    {"AuroraChance", 40.f},
    {"NightSkyAttenuation", 0.f},
    {"MilkyWayLightIntensity", 1.f},
    {"MilkyWayAlphaOcclusion", 0.f},
    {"PurkinjeEffect", 0.f},
    {"DisableUIShaders", 0.f},
};

const std::unordered_map<std::string, float> EXPERIMENTAL_RECOMMENDED_VALUES = {
    {"SPMISQuality", 0.f},
    {"AuroraBorealis", 0.f},
    {"AuroraBrightness", 25.f},
    {"AuroraChance", 40.f},
    {"StylizedLunarPhase", 100.f},
    {"MilkyWayAlphaOcclusion", 0.f},
    {"DisableUIShaders", 0.f},
};

const std::unordered_map<std::string, float> NEUTRAL_VALUES = {
    {"ColorGradeShadows", 50.f},
    {"ToneMapFlare", 0.f},
    {"ColorGradeContrast", 50.f},
    {"ColorGradeSaturation", 50.f},
    {"ColorGradeHighlightSaturation", 50.f},
    {"ColorGradeHighlights", 50.f},
    {"CustomToneMapMidgrayAdjust", 0.f},
    //{"LocalLightHueCorrection", 15.f},
    //{"LocalLightSaturation", 50.f},
};

const std::unordered_map<std::string, float> HDR_LOOK_VALUES = {
    {"ColorGradeExposure", 1.f},
    {"ColorGradeShadows", 50.f},
    {"ToneMapFlare", 5.f},
    {"ColorGradeContrast", 60.f},
    {"ColorGradeSaturation", 55.f},
    {"ColorGradeHighlightSaturation", 54.f},
    {"ColorGradeHighlights", 55.f},
    {"ToneMapHueRestore", 100.f},
    {"ToneMapBlowout", 5.f},
    {"CustomToneMapMidgrayAdjust", 50.f},
    {"ColorGradeWhitePointKelvin", 65.f},
};

bool rr_draw = false;
// Presents since the last Ray Reconstruction detector dispatch (see OnPresent).
int presents_since_rr_draw = 1000;
bool is_nvidia = true;

// --- Aurora night detection ---
// SceneShadowTiledNight shaders only dispatch during night.
// We track when they start/stop firing to detect night transitions.
bool night_shader_active = false;
bool night_shader_was_active = false;
bool night_shader_state_initialized = false;
int night_check_counter = 0;
bool aurora_seed_initialized = false;
bool aurora_effective_was_enabled = false;
uint32_t dawn_dusk_day_counter = 0;
std::chrono::steady_clock::time_point dawn_dusk_blend_start{};
float dawn_dusk_blend_duration = 60.f;  // seconds to crossfade between presets
bool postprocess_material_draw = false;
bool final_sdr_draw = false;
// Presents-since-last-sighting counters for basic postprocess final detection (see
// OnPresent). Initialized high so the flag starts disengaged until each path is seen.
int presents_since_material_draw = 1000;
int presents_since_final_sdr_draw = 1000;

constexpr uint32_t kAuroraSessionSeedMask = 0x00ffffffu;
constexpr float kAuroraSessionSeedScale = 1.f / 16777215.f;

uint32_t MixAuroraSeedBits(uint32_t value) {
  value ^= value >> 16u;
  value *= 0x7feb352du;
  value ^= value >> 15u;
  value *= 0x846ca68bu;
  value ^= value >> 16u;
  return value;
}

void RerollAuroraSessionSeed() {
  const auto now = static_cast<uint64_t>(std::chrono::steady_clock::now().time_since_epoch().count());
  const auto frame_random = static_cast<uint32_t>(shader_injection.custom_random * static_cast<float>(kAuroraSessionSeedMask));
  uint32_t seed_bits = MixAuroraSeedBits(
      static_cast<uint32_t>(now)
      ^ static_cast<uint32_t>(now >> 32u)
      ^ frame_random)
      & kAuroraSessionSeedMask;
  if (seed_bits == 0u) seed_bits = 1u;
  shader_injection.aurora_night_seed = static_cast<float>(seed_bits) * kAuroraSessionSeedScale;
}

renodx::mods::shader::CustomShader CreateDetectionShader(
    uint32_t crc32,
    std::function<bool(reshade::api::command_list*)> callback) {
  renodx::mods::shader::CustomShader shader = {};
  shader.crc32 = crc32;
  shader.on_replace = std::move(callback);
  return shader;
}

void MarkShaderDraw(renodx::mods::shader::CustomShader& shader, bool* marker) {
  auto previous_on_replace = std::move(shader.on_replace);
  shader.on_replace = [previous_on_replace = std::move(previous_on_replace), marker](reshade::api::command_list* cmd_list) {
    *marker = true;
    return previous_on_replace == nullptr || previous_on_replace(cmd_list);
  };
}

void AttachUIShaderDrawGate(renodx::mods::shader::CustomShaders& shaders, uint32_t hash) {
  auto [it, inserted] = shaders.try_emplace(hash);
  if (inserted) it->second.crc32 = hash;

  auto previous_on_draw = std::move(it->second.on_draw);
  it->second.on_draw = [previous_on_draw = std::move(previous_on_draw)](reshade::api::command_list* cmd_list) {
    // on_draw runs before on_replace and can skip the draw outright, so the master gate cannot
    // reach this through the replacement veto and is checked directly.
    if (renodx_active != 0.f && disable_ui_shaders != 0.f) return false;
    return previous_on_draw == nullptr || previous_on_draw(cmd_list);
  };
}

// Declines every replacement while the master is off, which leaves the game's own pipeline bound and
// its native shader running. Applied last so it wraps the draw detectors rather than the reverse: the
// inner callback still runs, so Ray Reconstruction and night-transition detection keep tracking while
// off and the scene comes back as it was instead of re-converging over several seconds.
void AttachReplacementMasterGate(renodx::mods::shader::CustomShaders& shaders) {
  for (auto& [hash, shader] : shaders) {
    auto previous_on_replace = std::move(shader.on_replace);
    shader.on_replace = [previous_on_replace = std::move(previous_on_replace)](reshade::api::command_list* cmd_list) {
      const bool replace = previous_on_replace == nullptr || previous_on_replace(cmd_list);
      return renodx_active != 0.f && replace;
    };
  }
}

renodx::mods::shader::CustomShaders custom_shaders = [] {
  auto shaders = renodx::mods::shader::CustomShaders{__ALL_CUSTOM_SHADERS};

  // Ray Reconstruction/Regeneration detectors:
  // - kDlssRayReconstructionDetectorHash: DLSS RR prep signal, observed when NVIDIA Ray Reconstruction is enabled.
  // - kSpecularRayRegenerationDetectorHash: specular Ray Regeneration signal from EvaluateSpecularRadianceCS.
  //
  // These are DETECTION-ONLY hashes: the addon never replaces these shaders, it only watches for them
  // being drawn. That makes them invisible to any hash remap driven by the replacement-file set, so they
  // must be re-derived directly from the game package on every game update. When they go stale nothing
  // fails — the draw simply never matches, RR is never detected, and every RR-gated setting silently
  // greys out. Verify with tools/crimsondesert/shader-port/audit-addon-hash-literals.py, which checks
  // every literal here against the old and new package indexes.
  constexpr uint32_t kDlssRayReconstructionDetectorHash = 0xCFFAF429u;    // PrepareDlssRRCS
  constexpr uint32_t kSpecularRayRegenerationDetectorHash = 0xB8400F90u;  // EvaluateSpecularRadianceCS
  for (uint32_t hash : {kDlssRayReconstructionDetectorHash, kSpecularRayRegenerationDetectorHash}) {
    if (auto it = shaders.find(hash); it != shaders.end()) {
      MarkShaderDraw(it->second, &rr_draw);
    } else {
      shaders[hash] = CreateDetectionShader(hash, [](reshade::api::command_list*) {
        rr_draw = true;
        return false;
      });
    }
  }

  // Night-only SceneShadowTiled compute replacements.
  // These are draw detectors for SceneShadowTiledNight variants; they do not change
  // rendering by themselves, but mark night_shader_active for transition timing.
  // Game version 1.16.00 merged the two SceneShadowTiledNight build variants into a single
  // shader, so the former A/B hash pair is now one hash.
  constexpr uint32_t kSceneShadowTiledNightHash = 0xBB1C6110u;  // SceneShadowTiledNightCS
  for (uint32_t hash : {kSceneShadowTiledNightHash}) {
    if (auto it = shaders.find(hash); it != shaders.end()) {
      MarkShaderDraw(it->second, &night_shader_active);
    } else {
      shaders[hash] = CreateDetectionShader(hash, [](reshade::api::command_list*) {
        night_shader_active = true;
        return false;
      });
    }
  }

  // SDR material/postprocess draw gates. These paths can produce the visible SDR
  // postprocess output even though they are not the standalone final-pass shaders.
  // While any of them draws, OnPresent keeps BASIC_POSTPROCESS_FINAL active for the
  // material composite path; the shaders themselves decide final-vs-intermediate per draw via the
  // game's _etcParams.z encode toggle.
  // The list is the full SDR half of the PostProcessMaterial tonemap shader group
  // enumerated from the 1.13.00 packaged shaders (140 permutations): the main
  // composite shaders, the screen-effect and KnowledgeGain variants, and the
  // second build of each permutation that the game ships for the alternate
  // final-path arrangement. The 1.12.02 underwater hashes are gone: 1.13 rebuilt
  // PostProcessUnderwater as 8 new permutations, all members of this shader group.
  for (uint32_t hash : {
           0x01CF96B5u,
           0x7473F6C4u,
           0x3616CDB6u,
           0x3F64D058u,
           0xF4ACBAEDu,
           0xE45C85F9u,
           0x57A32CD4u,
           0xDCC100FAu,
           0x529D2542u,
           0x1565678Eu,
           0x64503AC9u,
           0xFFCD7860u,
           0xE6A426CEu,
           0xF5374B5Cu,
           0x03E9F068u,
           0xE99B88FAu,
           0xA589B8C6u,
           0xE6A54F54u,
           0xB3ED9F34u,
           0x30162D9Du,
           0x0CE915B9u,
           0xB18B74CBu,
           0x42CD1827u,
           0xD6083005u,
           0xE39AE48Cu,
           0xD1345E33u,
           0x77E3F069u,
           0x49F0FAC2u,
           0xD0D7E57Cu,
           0xDAE5778Au,
           0xF249EB14u,
           0x0FA91BF8u,
           0xDDFB17F3u,
           0xB0A5FC05u,
           0x17479F39u,
           0xA7B6719Du,
           0x333AD071u,
           0x24FC9B23u,
           0x0FDED82Eu,
           0x5EC94F12u,
           0x26667C3Bu,
           0x83F08468u,
           0x40C92710u,
           0xFB71EE59u,
           0x4BFAB7BCu,
           0x17AB18EAu,
           0x687621F6u,
           0xF775E743u,
           0x669FD3CAu,
           0xE4675DD5u,
           0xBAAA1B37u,
           0x182CF931u,
           0x8E0ED924u,
           0x3BB59A2Bu,
           0x3F2394F7u,
           0x74C01B6Eu,
           0xB9286DC8u,
           0x39410B96u,
           0xF7A6345Fu,
           0x2D5D72F0u,
           0x4CA47645u,
           0xB55FA588u,
           0x4539D985u,
           0x555080E4u,
           0x29970A14u,
           0x4487D57Du,
           0x748AB335u,
           0xB7A8EFD4u,
           0xF96372A7u,
           0x5127343Bu,
           0xDBC1A2BFu,
           0xEAD08CECu,
           0x066126C3u,
           0x15616B14u,
           0xBDB732D2u,
           0xB7E63475u,
           0xE77CEC39u,
           0x64C1BF8Eu,
           0x6F134D87u,
           0xA6E3D9E4u,
           0x6BAEA06Bu,
           0x99555A96u,
           0xFC25284Fu,
           0x2234BD8Fu,
           0xC98E6AC3u,
           0x7FE80AB2u,
           0xB97127DDu,
           0x080D959Cu,
           0x8A79AC0Du,
           0xF464F047u,
           0x008515ADu,
           0x0038B87Cu,
           0x17ECAA27u,
           0x24A2391Fu,
           0x52594EFBu,
           0x680DE6F3u,
           0x08431D03u,
           0xBEA7E83Bu,
           0x008797AEu,
           0x35A1BE05u,
           0x5938C1FCu,
           0x0D2BDA6Cu,
           0x2805A4DEu,
           0xFBEE0E62u,
           0xF77D4663u,
           0x4F7A708Eu,
           0xE6BA4594u,
           0x1BB64E29u,
           0x82F17A8Fu,
           0x19B1B512u,
           0x0785DD48u,
           0xCBFECBC1u,
           0xB3808F10u,
           0xDA8D9D2Fu,
           0xAB5D2932u,
           0x3831406Fu,
           0xF8FD3730u,
           0xC7921397u,
           0xFAD293FFu,
           0xC2B5078Fu,
           0x13FBE330u,
           0x4B5B6323u,
           0xEE2CF4B0u,
           0xF3AB69A5u,
           0x7DC8C1FCu,
           0x282E19D6u,
           0xB53680B0u,
           0x58D18CCFu,
           0x7D223174u,
           0xE88F95B7u,
           0x4F3CC638u,
           0x666D002Au,
           0x2345CF1Fu,
           0x721D42A1u,
           0xF5FFBC78u,
           0x01DCEA80u,
           0x657D916Au,
           0xC03429ACu,
           0x137A2990u,
           0x75D7F353u,
       }) {
    if (auto it = shaders.find(hash); it != shaders.end()) {
      MarkShaderDraw(it->second, &postprocess_material_draw);
    }
  }
  // SDR standalone final-pass draw gates. These replacements already run the
  // standalone SDR finalization path, so their presence suppresses the material
  // fallback gate above. HDR finals (ST.2084 tail constant 78.84375) call
  // FinalizeHDR directly and are not listed here.
  // The list is the full SDR half of the standalone final family enumerated from
  // the 1.13.00 shader package (68 permutations): the plain and fsr finals in
  // every build the package ships, plus the fused permutations that inline the vanilla
  // tonemap in the final pass (replaced as postprocessing_final_fused_*).
  for (uint32_t hash : {
           0xD0C7C082u,
           0x7D39AB4Eu,
           0x6437CA67u,
           0x07761E89u,
           0x36F3175Du,
           0x8E73AB91u,
           0x709074BCu,
           0x391469BDu,
           0xFDA99067u,
           0x91C274F1u,
           0xA9AF265Fu,
           0x1AF5AC1Eu,
           0xC097B64Eu,
           0x169F8CA3u,
           0x2A4FB6F3u,
           0x1D380927u,
           0x493BC411u,
           0x583689F6u,
           0x9E398DF6u,
           0x9F295E9Bu,
           0xBDCBC1BFu,
           0x167B8DCBu,
           0x2D1E85FEu,
           0x46869D22u,
           0x0285964Fu,
           0x093F4A4Fu,
           0x6C4288DEu,
           0x0817901Bu,
           0x92F51E83u,
           0x7922B914u,
           0x899639F3u,
           0xBDA3A9F1u,
           0x8A5F20FDu,
           0x48E3F838u,
           0x56F6F2DFu,
           0xD17F16C4u,
           0xCCF402B1u,
           0x21D77D0Fu,
           0xE8315858u,
           0x7B65DD6Du,
           0xD080906Bu,
           0x7892AA12u,
           0x86E78C5Au,
           0x38F0818Fu,
           0x278B0639u,
           0x03FC9DA2u,
           0x8EF6A85Cu,
           0xE9871321u,
           0xE3FCC388u,
           0xCE2D0C49u,
           0xEBE7990Bu,
           0x7E94F7E6u,
           0xFD733EBEu,
           0x2A6EDD8Du,
           0xB4B731FFu,
           0x94E5CE79u,
           0xCE785635u,
           0xBDB8B6D2u,
           0x126B781Eu,
           0x6257105Bu,
           0x14BA396Au,
           0xEF60F2FAu,
           0x677CC8F8u,
           0x7182760Cu,
           0xF06C3827u,
           0xE4655424u,
           0x8C9874F8u,
           0x2E1005C2u,
       }) {
    if (auto it = shaders.find(hash); it != shaders.end()) {
      MarkShaderDraw(it->second, &final_sdr_draw);
    }
  }
  // UI/HUD draw gates from SDR/HDR DevKit snapshots.
  // These VSMain families cover the observed UI pixel shader variants
  for (uint32_t hash : {
           0x8D440999u,
           0xC6582593u,
       }) {
    AttachUIShaderDrawGate(shaders, hash);
  }

  AttachReplacementMasterGate(shaders);

  return shaders;
}();

const std::string build_date = __DATE__;
const std::string build_time = __TIME__;

float current_settings_mode = 0;

int crimson = 0xD7263D;
int gold = 0xF2C14E;

// Colors
int tone_mapping = gold;
int advanced_tone_mapping = crimson;
int color_grading = gold;
int local_lighting = crimson;
int auto_exposure = gold;
int effects = gold;
int rendering = gold;
int wiprendering = crimson;

// Menu Groupings
#define BASIC         0.f
#define COLOR_GRADING 1.f
#define GRAPHICS      2.f
#define EXPERIMENTAL  3.f
float basic_group = BASIC;
float tone_mapping_group = COLOR_GRADING;
float color_grading_group = COLOR_GRADING;
float local_lighting_group = COLOR_GRADING;
float auto_exposure_group = GRAPHICS;
float effects_group = GRAPHICS;
float rendering_group = GRAPHICS;
float experimental_group = EXPERIMENTAL;

renodx::utils::settings::Setting* tone_map_peak_nits_setting = nullptr;
renodx::utils::settings::Setting* tone_map_diffuse_white_setting = nullptr;

bool IsGraphicsRecommendedPresetSection(const std::string& section) {
  return section.starts_with("Auto Exposure")
         || section.starts_with("Post Processing")
         || section.starts_with("Sky / Celestial")
         || section.starts_with("Atmosphere / Weather")
         || section.starts_with("World / Materials")
         || section.starts_with("Shadows")
         || section.starts_with("Local Lighting");
}

bool IsGraphicsVanillaPresetSection(const std::string& section) {
  return section.starts_with("Auto Exposure")
         || section.starts_with("Post Processing")
         || section.starts_with("Sky / Celestial")
         || section.starts_with("Atmosphere / Weather")
         || section.starts_with("World / Materials")
         || section.starts_with("Shadows");
}

bool IsExperimentalPresetSection(const std::string& section) {
  return section.starts_with("Experimental Raytracing")
         || section.starts_with("Aurora")
         || section.starts_with("Sky / Celestial")
         || section.starts_with("Capture Tools");
}

bool IsPresetBrightnessSetting(const std::string& key) {
  return key == "ToneMapPeakNits" || key == "ToneMapGameNits";
}

renodx::utils::settings::Settings settings = {
    new renodx::utils::settings::Setting{
        .key = "SettingsMode",
        .binding = &current_settings_mode,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Settings Mode",
        .labels = {"Basic", "Color Grading", "Graphics", "Experimental"},
        .is_global = true,
    },
    // ----------------Basic Menu Presets - Controls everything------------------
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Recommended",
        .section = "Presets",
        .group = "button-line-1",
        .tooltip = "Default settings",
        .on_change = []() {
          for (auto setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Vanilla",
        .section = "Presets",
        .group = "button-line-1",
        .tooltip = "Sets everything to Vanilla values and behavior",
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (VANILLA_VALUES.contains(setting->key)) {
              renodx::utils::settings::UpdateSetting(setting->key, VANILLA_VALUES.at(setting->key));
              continue;
            }
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    // ------------------------End Basic Presets--------------------------------
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Recommended",
        .section = "Grading Presets",
        .group = "button-line-1",
        .tooltip = "Default settings, which are our hand-tuned adjustments that we feel look good.",
        .on_change = []() {
          for (auto setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (!setting->section.starts_with("Tone Mapping")
                && !setting->section.starts_with("Color Grading")
                && !setting->section.starts_with("Local Lighting")) continue;
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Neutral",
        .section = "Grading Presets",
        .group = "button-line-1",
        .tooltip = "Neutral color and contrast.",
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (!setting->section.starts_with("Tone Mapping")
                && !setting->section.starts_with("Color Grading")
                && !setting->section.starts_with("Local Lighting")) continue;
            if (NEUTRAL_VALUES.contains(setting->key)) {
              renodx::utils::settings::UpdateSetting(setting->key, NEUTRAL_VALUES.at(setting->key));
              continue;
            }
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Look",
        .section = "Grading Presets",
        .group = "button-line-1",
        .tooltip = "Preset values that align with people's expectations for how HDR should look. Does not work well in SDR.",
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (!setting->section.starts_with("Tone Mapping")
                && !setting->section.starts_with("Color Grading")
                && !setting->section.starts_with("Local Lighting")) continue;
            if (HDR_LOOK_VALUES.contains(setting->key)) {
              renodx::utils::settings::UpdateSetting(setting->key, HDR_LOOK_VALUES.at(setting->key));
              continue;
            }
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == color_grading_group && hdr_settings_toggle == 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapType",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__TONE_MAP_TYPE},
        .can_reset = true,
        .label = "Tone Mapper",
        .section = "Tone Mapping",
        .tooltip = "Sets the tone mapper type."
                   "\nVanilla SDR uses AgX."
                   "\nVanilla HDR uses ACESv2 tone mapper with in-game sliders."
                   "\nPsychoV uses a custom psychovisual tone mapping system.",
        .labels = {"Vanilla (AgX SDR/ACESv2 HDR)", "PsychoV Custom"},
        .tint = tone_mapping,
        .parse = [](float value) { return value; },
        .is_visible = []() { return current_settings_mode == tone_mapping_group; },
    },
    tone_map_peak_nits_setting = new renodx::utils::settings::Setting{
        .key = "ToneMapPeakNits",
        .binding = &shader_injection.peak_white_nits,
        .default_value = 1000.f,
        .can_reset = true,
        .label = "Peak Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of peak white in nits",
        .tint = tone_mapping,
        .min = 80.f,
        .max = 4000.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .is_visible = []() { return hdr_settings_toggle == 1 && (current_settings_mode == basic_group || current_settings_mode == tone_mapping_group); },
    },
    // new renodx::utils::settings::Setting{
    //     .value_type = renodx::utils::settings::SettingValueType::TEXT,
    //     .label = "Adjust brightness with the perceptual auto exposure controls.\n",
    //     .section = "Tone Mapping",
    //     //.tint = tone_mapping,
    //     .is_visible = []() { return hdr_settings_toggle == 1 && ((current_settings_mode == basic_group || current_settings_mode == tone_mapping_group) && IMPROVED_AUTO_EXPOSURE == 2); },
    // },
    tone_map_diffuse_white_setting = new renodx::utils::settings::Setting{
        .key = "ToneMapGameNits",
        .binding = &shader_injection.diffuse_white_nits,
        .default_value = 203.f,
        .can_reset = true,
        .label = "Game Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of 100% white in nits",
        .tint = tone_mapping,
        .min = 80.f,
        .max = 500.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .is_visible = []() { return hdr_settings_toggle == 1 && (current_settings_mode == basic_group || current_settings_mode == tone_mapping_group); },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Adjust UI brightness with the in-game slider.\n",
        .section = "Tone Mapping",
        //.tint = tone_mapping,
        .is_visible = []() { return hdr_settings_toggle == 1 && (current_settings_mode == basic_group || current_settings_mode == tone_mapping_group); },
    },
    new renodx::utils::settings::Setting{
        .key = "SDRBlackCrushFix",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__SDR_BLACK_CRUSH_FIX},
        .label = "Gamma",
        .section = "Tone Mapping",
        .tooltip = "Adjusts the game's final encoding. This should match the gamma used by your display. If you aren't sure, 2.2 is probably correct.",
        .labels = {"sRGB", "2.2"},
        .tint = tone_mapping,
        //.is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .is_visible = []() { return hdr_settings_toggle == 0 && (current_settings_mode == basic_group || current_settings_mode == tone_mapping_group); },
    },
    //     new renodx::utils::settings::Setting{
    //     .key = "ColorGradeStrength",
    //     .binding = &shader_injection.color_grade_strength,
    //     .default_value = 100.f,
    //     .label = "Pre-Tonemap Grade Strength",
    //     .section = "Advanced Tone Mapping Properties",
    //     .tooltip = "Adjusts how much of the game's dynamic grading applies to the image.",
    //     .max = 100.f,
    //     .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
    //     .parse = [](float value) { return value * 0.01f; },
    //     .is_visible = []() { return current_settings_mode >= 1 && hdr_settings_toggle == 1; },
    // },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeExposure",
        .binding = &shader_injection.tone_map_exposure,
        .default_value = 1.f,
        .label = "Exposure",
        .section = "Color Grading",
        .tint = color_grading,
        .max = 2.f,
        .format = "%.2f",
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlights",
        .binding = &shader_injection.tone_map_highlights,
        .default_value = 50.f,
        .label = "Highlights",
        .section = "Color Grading",
        .tint = color_grading,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeShadows",
        .binding = &shader_injection.tone_map_shadows,
        .default_value = 50.f,
        .label = "Shadows",
        .section = "Color Grading",
        .tint = color_grading,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeContrast",
        .binding = &shader_injection.tone_map_contrast,
        .default_value = 60.f,
        .label = "Contrast",
        .section = "Color Grading",
        .tint = color_grading,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0.f; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeSaturation",
        .binding = &shader_injection.tone_map_saturation,
        .default_value = 55.f,
        .label = "Saturation",
        .section = "Color Grading",
        .tint = color_grading,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlightSaturation",
        .binding = &shader_injection.tone_map_highlight_saturation,
        .default_value = 50.f,
        .label = "Highlight Saturation",
        .section = "Color Grading",
        .tooltip = "Adds or removes color from highlights.",
        .tint = color_grading,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapFlare",
        .binding = &shader_injection.tone_map_flare,
        .default_value = 0.f,
        .label = "Flare",
        .section = "Color Grading",
        .tooltip = "Raises shadow contrast response in the PsychoV tone mapper.",
        .tint = color_grading,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0.f; },
        .parse = [](float value) { return value * 0.0005f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueRestore",
        .binding = &shader_injection.tone_map_hue_restore,
        .default_value = 100.f,
        .label = "Hue Restore",
        .section = "Color Grading",
        .tooltip = "Hue retention strength.",
        .tint = tone_mapping,
        .min = 0.f,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapBlowout",
        .binding = &shader_injection.tone_map_blowout,
        .default_value = 0.f,
        .label = "Blowout",
        .section = "Color Grading",
        .tooltip = "Desaturates the brightest portions of the image, also relative to peak brightness.",
        .tint = tone_mapping,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .parse = [](float value) { return fmax(value * 0.01f, 0.000001f); },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "CustomToneMapMidgrayAdjust",
        .binding = &shader_injection.custom_tone_map_midgray_adjust,
        .default_value = 50.f,
        .label = "Original Midgray",
        .section = "Color Grading",
        .tooltip = "Controls matching mid-gray of the SDR tone mapper. Applies to Vanilla/Custom AE only. 100 = Vanilla, 0 = Neutral.",
        .tint = tone_mapping,
        .max = 100.f,
        .is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0 && IMPROVED_AUTO_EXPOSURE != 2.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeWhitePointKelvin",
        .binding = &shader_injection.color_temp_kelvin,
        .default_value = 65.f,
        .can_reset = true,
        .label = "White Point",
        .section = "Color Grading",
        .tooltip = "Adjusts white point.\n"
                   "6500 K = neutral. Higher values are cooler, lower values are warmer.",
        .tint = color_grading,
        .min = 40.f,
        .max = 93.f,
        .format = "%.0f00K",  // Written this way to increment by 100s
        .is_visible = []() { return current_settings_mode == color_grading_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Recommended",
        .section = "Graphics Presets",
        .group = "button-line-1",
        //.is_enabled = []() { return shader_injection.last_is_hdr; },
        .tooltip = "Settings built and tested at max settings with Ray Reconstruction. There may be graphical issues with other congfigurations.",
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (setting->is_global) continue;
            if (!IsGraphicsRecommendedPresetSection(setting->section)) continue;
            if (!setting->section.starts_with("Local Lighting")
                && setting->is_visible != nullptr
                && !setting->is_visible()) continue;
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == 2.f; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Vanilla",
        .section = "Graphics Presets",
        .group = "button-line-1",
        //.is_enabled = []() { return shader_injection.last_is_hdr; },
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (setting->is_global) continue;
            if (!IsGraphicsVanillaPresetSection(setting->section)) continue;
            if (setting->is_visible != nullptr && !setting->is_visible()) continue;
            if (VANILLA_VALUES.contains(setting->key)) {
              renodx::utils::settings::UpdateSetting(setting->key, VANILLA_VALUES.at(setting->key));
              continue;
            }
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == 2.f; },
    },
    new renodx::utils::settings::Setting{
        .key = "LocalLightHueCorrection",
        .binding = &shader_injection.local_light_hue_correction,
        .default_value = 0.f,
        .can_reset = true,
        .label = "Flame Hue Correction",
        .section = "Local Lighting",
        .tooltip = "Corrects pink/red flame and torch colors toward warm orange/yellow.\n"
                   "Uses MacLeod-Boynton chromaticity rotation in Stockman-Sharp LMS.\n"
                   "0 = no correction (vanilla pink/red), 100 = full warm fire hue.",
        .tint = local_lighting,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == local_lighting_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "LocalLightSaturation",
        .binding = &shader_injection.local_light_saturation,
        .default_value = 50.f,
        .can_reset = true,
        .label = "Flame Saturation",
        .section = "Local Lighting",
        .tooltip = "Adjusts saturation of local light sources (fire, torches, braziers).\n"
                   "Controls MacLeod-Boynton purity distance from achromatic axis.\n"
                   "0 = fully desaturated, 50 = unchanged, 100 = maximum saturation.",
        .tint = local_lighting,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == local_lighting_group; },
    },
    // new renodx::utils::settings::Setting{
    //     .value_type = renodx::utils::settings::SettingValueType::TEXT,
    //     .label = "Alternative Auto Exposure was made with HDR output + max settings + RR in mind (other settings may result in overly dark or blown out scenes). It fixes nuclear highlight issues whilst also making night scenes actually dark\n",
    //     .section = "Auto Exposure",
    //     //.tint = auto_exposure,
    //     .is_visible = []() { return current_settings_mode >= 1.f; },
    // },
    new renodx::utils::settings::Setting{
        .key = "ImprovedAutoExposure",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .packed_values = {0u, CUSTOM_FLAGS__IMPROVED_AUTO_EXPOSURE, CUSTOM_FLAGS__IMPROVED_AUTO_EXPOSURE_PERCEPTUAL},
        .can_reset = true,
        .label = "Auto Exposure",
        .section = "Auto Exposure",
        .tooltip = "Enables control over the brightness of dark and bright scenes.\nCustom provides control over dark and bright scene brightness, anchored in vanilla behavior.\nCustom Perceptual uses a more advanced system that attempts to emulate the human eye, and is meant to work with PsychoV.",
        .labels = {"Vanilla", "Custom", "Perceptual (PsychoV)"},
        .tint = auto_exposure,
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    //     new renodx::utils::settings::Setting{
    //     .key = "AE_DarkPowerOutdoor",
    //     .binding = &shader_injection.ae_dark_power_outdoor,
    //     .default_value = 50.f,
    //     .can_reset = true,
    //     .label = "Low Light Exposure Limit",
    //     .section = "Auto Exposure",
    //     .tooltip = "Adjusts the max exposure value that can be applied, controlling how dark the game is allowed to get.",
    //     .tint = auto_exposure,
    //     .max = 100.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 0; },
    //     .parse = [](float value) { return value * 0.01f; },
    //     .is_visible = []() { return current_settings_mode >= 1.f; },
    //     //.is_visible = []() { return debug; },
    // },
    new renodx::utils::settings::Setting{
        .key = "AE_DynamismHigh",
        .binding = &shader_injection.ae_dynamism_high,
        .default_value = 40.f,
        .can_reset = true,
        .label = "Auto Exposure Darkness",
        .section = "Auto Exposure",
        .tooltip = "Controls brightness level of dark scenes. 50 = neutral",
        .tint = auto_exposure,
        .max = 100.f,
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 1.f; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AE_DynamismLow",
        .binding = &shader_injection.ae_dynamism_low,
        .default_value = 50.f,
        .can_reset = true,
        .label = "Auto Exposure Brightness",
        .section = "Auto Exposure",
        .tooltip = "Controls brightness level of bright scenes. 50 = neutral",
        .tint = auto_exposure,
        .max = 100.f,
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 1.f; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AE_Speed",
        .binding = &shader_injection.ae_speed,
        .default_value = 50.f,
        .can_reset = true,
        .label = "Adaptation Speed",
        .section = "Auto Exposure",
        .tooltip = "Controls the speed of Custom auto exposure adaptation. 0 = Vanilla speed",
        .tint = auto_exposure,
        .max = 100.f,
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 1; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AE_PerceptualMinBrightness",
        .binding = &shader_injection.ae_perceptual_min_brightness,
        .default_value = 0.2f,
        .can_reset = true,
        .label = "Minimum Brightness",
        .section = "Auto Exposure",
        .tooltip = "Minimum brightness bound for Perceptual.\nValues are percentages of diffuse white.\n0 = no minimum bound.\nWith both min and max at 0, Perceptual targets its adapted field directly.",
        .tint = auto_exposure,
        .min = 0.f,
        .max = 4.f,
        .format = "%.2f%%",
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 2.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AE_PerceptualMaxBrightness",
        .binding = &shader_injection.ae_perceptual_max_brightness,
        .default_value = 7.f,
        .can_reset = true,
        .label = "Maximum Brightness",
        .section = "Auto Exposure",
        .tooltip = "Maximum brightness bound for Perceptual.\nValues are percentages of diffuse white.\n0 = no maximum bound.\nWith both min and max at 0, Perceptual targets its adapted field directly.",
        .tint = auto_exposure,
        .min = 0.f,
        .max = 30.f,
        .format = "%.0f%%",
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 2.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AE_DarkToLightTime",
        .binding = &shader_injection.ae_dark_to_light_time,
        .default_value = 1.f,
        .can_reset = true,
        .label = "Short-Term Adaptation",
        .section = "Auto Exposure",
        .tooltip = "Controls the short adaptation time constant in Perceptual.\nUsed directly for brightening, and as the fast branch for darkening before bleaching becomes significant.\nLower values react faster to short scene changes.\nHigher values reduce snapping and transient flicker.",
        .tint = auto_exposure,
        .min = 0.5f,
        .max = 20.f,
        .format = "%.1f s",
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 2.f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
        .is_logarithmic = true,
    },
    new renodx::utils::settings::Setting{
        .key = "AE_LightToDarkTime",
        .binding = &shader_injection.ae_light_to_dark_time,
        .default_value = 4.3f,
        .can_reset = true,
        .label = "Long-Term Adaptation",
        .section = "Auto Exposure",
        .tooltip = "Controls the slow dark-adaptation time constant in Perceptual.\nThe actual darkening rate blends from Short-Term Adaptation toward this value using the Rushton-Henry bleached fraction of the previous adaptation state.\nLower values settle to the new scene sooner.\nHigher values preserve longer recovery only after very bright preadaptation.",
        .tint = auto_exposure,
        .min = 1.f,
        .max = 90.f,
        .format = "%.1f s",
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 2.f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
        .is_logarithmic = true,
    },
    new renodx::utils::settings::Setting{
        .key = "AE_EnvironmentBias",
        .binding = &shader_injection.ae_environment_bias,
        .default_value = 0.f,
        .can_reset = true,
        .label = "Environment Bias",
        .section = "Auto Exposure",
        .tooltip = "Controls how strongly Perceptual keeps the game's raw-meter clamp pair.\nAE2 now solves exposure from its own perceptual field; the old sky-visibility placement curve no longer drives the live AE2 exposure solve.\n0 = ignore the game's clamp pair.\n100 = use the full game clamp pair on the raw meter.",
        .tint = auto_exposure,
        .max = 100.f,
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE == 2.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AE_TargetSmoothing",
        .binding = &shader_injection.ae_target_smoothing_time,
        .default_value = 100.f,
        .can_reset = true,
        .label = "Metering Delay",
        .section = "Auto Exposure",
        .tooltip = "Smooths measured scene brightness before auto exposure reacts.\nValues are in milliseconds.\n0 = off.\nHigher values reduce pulsing but make the meter react more slowly.",
        .tint = auto_exposure,
        .min = 0.f,
        .max = 1000.f,
        .format = "%.0f ms",
        .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 0.f; },
        .parse = [](float value) { return value * 0.001f; },
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_DarkPowerIndoor",
    //     .binding = &shader_injection.ae_dark_power_indoor,
    //     .default_value = 55.f,
    //     .can_reset = true,
    //     .label = "Dark Power (Indoor)",
    //     .section = "Auto Exposure",
    //     .tooltip = "Controls how aggressively auto exposure compensates for dark indoor scenes.\n"
    //                "Lower = less brightening of dark areas.",
    //     .tint = auto_exposure,
    //     .max = 100.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .parse = [](float value) { return value * 0.01f; },
    //     .is_visible = []() { return debug; },
    // },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_BrightPowerOutdoor",
    //     .binding = &shader_injection.ae_bright_power_outdoor,
    //     .default_value = 100.f,
    //     .can_reset = true,
    //     .label = "Bright Power (Outdoor)",
    //     .section = "Auto Exposure",
    //     .tooltip = "Controls how aggressively auto exposure compensates for bright outdoor scenes.\n"
    //                "Lower = less dimming of bright areas.",
    //     .tint = auto_exposure,
    //     .max = 150.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .parse = [](float value) { return value * 0.01f; },
    //     .is_visible = []() { return debug; },
    // },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_BrightPowerIndoor",
    //     .binding = &shader_injection.ae_bright_power_indoor,
    //     .default_value = 100.f,
    //     .can_reset = true,
    //     .label = "Bright Power (Indoor)",
    //     .section = "Auto Exposure",
    //     .tooltip = "Controls how aggressively auto exposure compensates for bright indoor scenes.\n"
    //                "Lower = less dimming of bright areas.",
    //     .tint = auto_exposure,
    //     .max = 100.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .parse = [](float value) { return value * 0.01f; },
    //     .is_visible = []() { return debug; },
    // },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_AdaptSpeedBoost",
    //     .binding = &shader_injection.ae_adapt_speed_boost,
    //     .default_value = 30.f,
    //     .can_reset = true,
    //     .label = "Adaptation Speed Boost",
    //     .section = "Auto Exposure",
    //     .tooltip = "Multiplier for temporal adaptation speed.\n"
    //                "Higher = faster eye adaptation.",
    //     .tint = auto_exposure,
    //     .max = 100.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .parse = [](float value) { return value * 0.1f; },
    //     .is_visible = []() { return debug; },
    // },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_EVBias",
    //     .binding = &shader_injection.ae_ev_bias,
    //     .default_value = -1.f,
    //     .can_reset = true,
    //     .label = "EV Bias",
    //     .section = "Auto Exposure",
    //     .tooltip = "Exposure Value bias applied to the final exposure output.\n"
    //                "Negative = darker, Positive = brighter.",
    //     .tint = auto_exposure,
    //     .min = -4.f,
    //     .max = 4.f,
    //     .format = "%.1f EV",
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .is_visible = []() { return debug; },
    // },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_MinLum",
    //     .binding = &shader_injection.ae_min_lum,
    //     .default_value = 1.f,
    //     .can_reset = true,
    //     .label = "Min Luminance",
    //     .section = "Auto Exposure",
    //     .tooltip = "Minimum luminance clamp (overrides per region/ToD values).\n"
    //                "Slider value is multiplied by 0.001.",
    //     .tint = auto_exposure,
    //     .max = 100.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .parse = [](float value) { return value * 0.001f; },
    //     .is_visible = []() { return debug; },
    // },
    // new renodx::utils::settings::Setting{
    //     .key = "AE_MaxLum",
    //     .binding = &shader_injection.ae_max_lum,
    //     .default_value = 100.f,
    //     .can_reset = true,
    //     .label = "Max Luminance",
    //     .section = "Auto Exposure",
    //     .tooltip = "Maximum luminance clamp (overrides per region/ToD values).\n"
    //                "Slider value is multiplied by 0.1.",
    //     .tint = auto_exposure,
    //     .min = 1.f,
    //     .max = 100.f,
    //     .is_enabled = []() { return IMPROVED_AUTO_EXPOSURE > 1; },
    //     .parse = [](float value) { return value * 0.1f; },
    //     .is_visible = []() { return debug; },
    // },
    new renodx::utils::settings::Setting{
        .key = "DisableAWB",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .packed_values = {0u, CUSTOM_FLAGS__DISABLE_AWB, CUSTOM_FLAGS__DISABLE_AWB | CUSTOM_FLAGS__DISABLE_HERO_LIGHTS},
        .can_reset = true,
        .label = "Auto White Balance",
        .section = "Auto Exposure",
        .tooltip = "Controls the game's per channel auto white balance and hero lights.\n"
                   "Vanilla = AWB enabled (can cause hue shifts in HDR).\n"
                   "Disable AWB = AWB disabled, hero/fill lights remain.\n"
                   "Disable AWB + No Hero Lights = AWB and hero lights disabled.",
        .labels = {"Vanilla", "Disable AWB", "Disable AWB + No Hero Lights"},
        .tint = auto_exposure,
        .is_visible = []() { return current_settings_mode == auto_exposure_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxFilmGrainType",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__FILM_GRAIN_TYPE},
        .label = "Film Grain Type",
        .section = "Post Processing",
        .tooltip = "Selects between original or RenoDX film grain",
        .labels = {"Vanilla", "Perceptual"},
        .tint = effects,
        //.is_enabled = []() { return RENODX_TONE_MAP_TYPE != 0; },
        .is_visible = []() { return current_settings_mode == effects_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxFilmGrain",
        .binding = &shader_injection.custom_film_grain,
        .default_value = 10.f,
        .label = "FilmGrain",
        .section = "Post Processing",
        .tooltip = "Controls new perceptual film grain. Reduces banding.",
        .tint = effects,
        .max = 100.f,
        .is_enabled = []() { return CUSTOM_FILM_GRAIN_TYPE != 0; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == effects_group || current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxChromaticAberration",
        .binding = &shader_injection.custom_chromatic_aberration,
        .default_value = 0.f,
        .label = "Chromatic Aberration",
        .section = "Post Processing",
        .tooltip = "Adjusts chromatic aberration strength. 100 = Vanilla",
        .tint = effects,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == effects_group || current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxVignette",
        .binding = &shader_injection.custom_vignette,
        .default_value = 0.f,
        .label = "Vignette",
        .section = "Post Processing",
        .tooltip = "Adjusts vignette strength. 100 = Vanilla",
        .tint = effects,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == effects_group || current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxSharpeningType",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__SHARPENING_TYPE},
        .label = "Sharpening Type",
        .section = "Post Processing",
        .tooltip = "Selects original or RCAS sharpening. (DLAA supports RCAS only)",
        .labels = {"Vanilla", "RCAS"},
        .tint = effects,
        .is_visible = []() { return current_settings_mode == effects_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxSharpening",
        .binding = &shader_injection.custom_sharpening,
        .default_value = 0.f,
        .label = "Sharpening",
        .section = "Post Processing",
        .tooltip = "Adjusts sharpening strength. 100 = Vanilla. (DLAA requires RCAS type)",
        .tint = effects,
        // Typed values above the visible slider range persist across restarts up to
        // 200 (the load clamp uses max, the slider shows slider_max). Values above
        // 100 are accepted for typed input only and are not presented in the tooltip.
        // The vanilla sharpener can use the full range; the RCAS path applies its own
        // safety cap at 1.33 (see RcasStrengthStabilityCap in lilium_rcas.hlsl).
        .max = 200.f,
        .slider_max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == effects_group || current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxLensFlareStrength",
        .binding = &shader_injection.lens_flare_strength,
        .default_value = 100.f,
        .label = "Lens Flare Strength",
        .section = "Post Processing",
        .tooltip = "Controls the intensity of all lens flare effects. 100 = Vanilla, 0 = Off.",
        .tint = effects,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == effects_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "BloomStrength",
        .binding = &shader_injection.bloom_strength,
        .default_value = 100.f,
        .can_reset = true,
        .label = "Bloom Strength",
        .section = "Post Processing",
        .tooltip = "Controls the overall intensity of the bloom effect.\n"
                   "100 = Vanilla strength, 0 = bloom disabled.",
        .tint = effects,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == effects_group; },
    },
    //     new renodx::utils::settings::Setting{
    //     .value_type = renodx::utils::settings::SettingValueType::TEXT,
    //     .label = "This section includes graphical changes to various parts of the game\n",
    //     .section = "Rendering",
    //     //.tint = rendering,
    //     .is_visible = []() { return current_settings_mode >= 1.f; },
    // },

    new renodx::utils::settings::Setting{
        .key = "SkyScattering",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__SKY_SCATTERING},
        .can_reset = true,
        .label = "Spectral Sky Scattering",
        .section = "Sky / Celestial",
        .tooltip = "Converts the sky's Rayleigh in-scatter with a spectral color transform fitted at the game's native wavelengths.\n"
                   "Off = vanilla conversion.\n"
                   "On = fitted spectral conversion; more accurate daytime sky color, reads warmer and softer than vanilla.",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "DirectLightColorFix",
        .binding = &shader_injection.custom_flags_2,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS2__DIRECT_LIGHT_MATRIX_FIX},
        .can_reset = true,
        .label = "Direct Light Color Fix",
        .section = "Sky / Celestial",
        .tooltip = "Fixes direct sun and moon light being converted to the working color space twice.\n"
                   "Off = vanilla double conversion, which desaturates direct light at dawn and dusk.\n"
                   "On = single conversion, so low-sun light keeps the color of the sky it arrives through.",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "SunImprovements",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__SUN_IMPROVEMENTS},
        .can_reset = true,
        .label = "Sun Improvements",
        .section = "Sky / Celestial",
        .tooltip = "Improves the visible sun disk and suppresses vanilla sun bloom blowout.\n"
                   "Off = vanilla hard/shimmery sun disk.\n"
                   "On = wider softened disk, chromatic edge, limb darkening, corona, and Mie halo.",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "MoonAdjustments",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__MOON_ADJUSTMENTS},
        .can_reset = true,
        .label = "Moon Adjustments",
        .section = "Sky / Celestial",
        .tooltip = "Improves moon disk rendering.\n"
                   "Off = vanilla moon size, luminance, and simple shading.\n"
                   "On = Moon Disk Size slider, reduced luminance, limb darkening, inner glow, EON diffuse shading, and stylized phase styling.",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "MoonDiskSize",
        .binding = &shader_injection.moon_disk_size,
        .default_value = 4.f,
        .can_reset = true,
        .label = "Moon Disk Size",
        .section = "Sky / Celestial",
        .tooltip = "Scales the angular size of the moon disk.\n"
                   "1 = vanilla size. 10 = 10x larger.",
        .tint = rendering,
        .min = 1.f,
        .max = 200.f,
        .slider_max = 20.f,
        .format = "%.1fx",
        .is_enabled = []() { return MOON_ADJUSTMENTS == 1.f; },
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "MilkyWayLightIntensity",
        .binding = &shader_injection.milky_way_light_intensity,
        .default_value = 1.f,
        .can_reset = true,
        .label = "Milky Way Light Intensity",
        .section = "Sky / Celestial",
        .tooltip = "Scales the Milky Way texture contribution in the night sky.\n"
                   "1 = vanilla intensity. 10 = 10x.\n"
                   "Stars, moon, aurora, and atmospheric scattering are unchanged.",
        .tint = rendering,
        .min = 0.f,
        .max = 200.f,
        .slider_max = 10.f,
        .format = "%.1fx",
        .parse = [](float value) { return value * 100.f; },
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "DawnDuskImprovements",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__DAWN_DUSK_IMPROVEMENTS},
        .can_reset = true,
        .label = "Dawn/Dusk Improvements (WIP)",
        .section = "Atmosphere / Weather",
        .tooltip = "Directionality additions to atmospheric lighting at dawn/dusk.\n",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "NightSkyAttenuation",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__NIGHT_SKY_ATTENUATION},
        .can_reset = true,
        .label = "Darker Nights/Dawn/Dusk (WIP)",
        .section = "Atmosphere / Weather",
        .tooltip = "Reduces sky brightness at night and during dawn/dusk.\n"
                   "Fixes the overly bright sky at 3-5am and after sunset.",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "SnowFogFix",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__SNOW_FOG_FIX},
        .can_reset = true,
        .label = "Snow / Fog Lighting Fixes (WIP)",
        .section = "Atmosphere / Weather",
        .tooltip = "Fixes snow-region lighting artifacts.\n"
                   "Off = vanilla snow/fog scattering and surfel voxel GI.\n"
                   "On = clamps heavy snow-fog brightness swings and breaks up blocky surfel voxel GI patches.",
        .labels = {"Off", "On"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Detected: Ray Reconstruction / Ray Regeneration is active.\n",
        .section = "Atmosphere / Weather",
        .is_visible = []() { return current_settings_mode == rendering_group && RR_ENABLED; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Not detected: controls below require Ray Reconstruction / Ray Regeneration.\n",
        .section = "Atmosphere / Weather",
        .tint = 0xaa0000,
        .is_visible = []() { return current_settings_mode == rendering_group && !RR_ENABLED; },
    },
    new renodx::utils::settings::Setting{
        .key = "CustomWeatherEditing",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__CUSTOM_WEATHER_EDITING},
        .can_reset = true,
        .label = "Dynamic Dawn/Dusk Hues (WIP)",
        .section = "Atmosphere / Weather",
        .tooltip = "Randomises dawn/dusk colour hues each day cycle.\n"
                   "Off = vanilla dawn/dusk hues.\n"
                   "On = uses randomised hue presets that vary per dawn.\n"
                   "Disabled until Ray Reconstruction / Ray Regeneration is detected and Dawn/Dusk Improvements is enabled.",
        .labels = {"Off", "On"},
        .tint = wiprendering,
        .is_enabled = []() { return RR_ENABLED && DAWN_DUSK_IMPROVEMENTS == 1.f; },
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "PurkinjeEffect",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .packed_values = {0u, CUSTOM_FLAGS__PURKINJE_EFFECT},
        .can_reset = true,
        .label = "Purkinje Effect",
        .section = "Atmosphere / Weather",
        .tooltip = "Shifts nights from yellow toward blue.\n"
                   "Simulates the Purkinje effect at low light levels\n"
                   "Off = vanilla yellow moonlight.\n"
                   "On = cooler and desaturated night scenes.\n"
                   "Disabled until Ray Reconstruction / Ray Regeneration is detected.",
        .labels = {"Off", "On"},
        .tint = wiprendering,
        .is_enabled = []() { return RR_ENABLED; },
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FoliageImprovements",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .packed_values = {0u, CUSTOM_FLAGS__FOLIAGE_IMPROVEMENTS, CUSTOM_FLAGS__FOLIAGE_IMPROVEMENTS | CUSTOM_FLAGS__FOLIAGE_IMPROVEMENTS_BIT1},
        .can_reset = true,
        .label = "Grass/Foliage Improvements",
        .section = "World / Materials",
        .tooltip = "Toggles foliage rendering improvements.\n"
                   "Off = vanilla foliage.\n"
                   "AO = adds ambient occlusion for foliage materials (base game lacks it entirely).\n"
                   "AO + Desaturation/Hue = also applies dynamic colour correction, selective colour,\n"
                   "and transmission (diffuse scattering through vegetation).\n"
                   "Tuned for Lighting: Max; other lighting quality settings may have reduced coverage or visual artifacts.",
        .labels = {"Off", "AO", "AO + Desaturation/Hue"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "FoliageSpeedTreeWindCoherence",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__FOLIAGE_SPEEDTREE_WIND_COHERENCE},
        .can_reset = true,
        .label = "Foliage Wind Fixes",
        .section = "World / Materials",
        .tooltip = "Reduces black flicker or unstable shadows on wind-animated foliage.",
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Detected: Ray Reconstruction / Ray Regeneration is active.\n",
        .section = "World / Materials",
        .is_visible = []() { return current_settings_mode == rendering_group && RR_ENABLED; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Not detected: controls below require Ray Reconstruction / Ray Regeneration.\n",
        .section = "World / Materials",
        .tint = 0xaa0000,
        .is_visible = []() { return current_settings_mode == rendering_group && !RR_ENABLED; },
    },
    new renodx::utils::settings::Setting{
        .key = "MaterialImprovements",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__MATERIAL_IMPROVEMENTS},
        .can_reset = true,
        .label = "Material Improvements",
        .section = "World / Materials",
        .tooltip = "Enables material/lighting improvements:\n"
                   "- Smooth terminator for direct lighting\n"
                   "- Geometric specular anti aliasing\n"
                   "- Water/ice refraction surface shadowing\n"
                   "Currently disabled: EON diffuse BRDF, spectral diffraction.\n"
                   "Disabled until Ray Reconstruction / Ray Regeneration is detected.",
        .labels = {"Off", "On"},
        .tint = wiprendering,
        .is_enabled = []() { return RR_ENABLED; },
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ContactShadowQuality",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = MICRO_SHADOW_QUALITY_BALANCED,
        .packed_values = {0u, CUSTOM_FLAGS__MICRO_SHADOW_QUALITY_BIT0, CUSTOM_FLAGS__MICRO_SHADOW_QUALITY_BIT1, CUSTOM_FLAGS__MICRO_SHADOW_QUALITY_BIT0 | CUSTOM_FLAGS__MICRO_SHADOW_QUALITY_BIT1},
        .can_reset = true,
        .label = "Contact Micro Shadows",
        .section = "Shadows",
        .tooltip = "Controls contact micro shadow detail.\n"
                   "Off = stock contact shadows.\n"
                   "Low = subtle contact detail with conservative reach and strength.\n"
                   "Balanced = recommended contact micro shadow tuning.\n"
                   "Full = strongest contact micro shadow tuning.\n"
                   "Tuned for Lighting: Max; other lighting quality settings may have reduced coverage or visual artifacts.",
        .labels = {"Off", "Low", "Balanced", "Full"},
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "ShadowEdgeNoiseFix",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 0.f,
        .packed_values = {0u, CUSTOM_FLAGS__SHADOW_EDGE_NOISE_FIX},
        .can_reset = true,
        .label = "Screen Edge Flicker",
        .section = "Shadows",
        .tooltip = "Reduces stretched or flickering contact shadows along the left and right edges of the screen, especially while turning the camera.",
        .tint = rendering,
        .is_visible = []() { return current_settings_mode == rendering_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Experimental settings may change, break, or be removed at any time.\n",
        .section = "Experimental Presets",
        .tint = wiprendering,
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Recommended",
        .section = "Experimental Presets",
        .group = "button-line-1",
        .tooltip = "Applies recommended values for visible experimental controls.",
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (setting->is_global) continue;
            if (!IsExperimentalPresetSection(setting->section)) continue;
            if (setting->is_visible != nullptr && !setting->is_visible()) continue;
            if (EXPERIMENTAL_RECOMMENDED_VALUES.contains(setting->key)) {
              renodx::utils::settings::UpdateSetting(setting->key, EXPERIMENTAL_RECOMMENDED_VALUES.at(setting->key));
              continue;
            }
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Vanilla",
        .section = "Experimental Presets",
        .group = "button-line-1",
        .tooltip = "Restores visible experimental controls to vanilla/off behavior.",
        .on_change = []() {
          for (auto* setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            if (IsPresetBrightnessSetting(setting->key)) continue;
            if (setting->is_global) continue;
            if (!IsExperimentalPresetSection(setting->section)) continue;
            if (setting->is_visible != nullptr && !setting->is_visible()) continue;
            if (VANILLA_VALUES.contains(setting->key)) {
              renodx::utils::settings::UpdateSetting(setting->key, VANILLA_VALUES.at(setting->key));
              continue;
            }
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          } },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        // Key is intentionally "SPMISQuality" (not the historical "RaytracingQuality" or the
        // dev-only "RaytracingQualityDev"): dev-test configs may carry a nonzero value under
        // the old dev key, and reusing it would silently arm a tier once RR is detected. The
        // new key orphans those stale values and always starts at Off.
        .key = "SPMISQuality",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        // Shipping SPMIS quality ladder (RT_QUALITY, 2 bits). Every active tier runs the
        // stochastic pairwise MIS wide-pooling resampler (Hedstrom et al., Eurographics 2026)
        // in the spatial shader; the tiers are incremental left->right:
        //   RT_QUALITY==0 "Off"            = pure vanilla RT lighting (only the unconditional
        //                                    F3 reservoir age-mask defect fix runs).
        //   RT_QUALITY==2 "SPMIS Balanced" = conditioning (wide-kernel pairwise-MIS pooling
        //                                    with compatibility-guided selection, raygen and
        //                                    temporal decorrelation) plus the variance-gated
        //                                    de-clamp knee that restores bright indirect light
        //                                    the engine's asymmetric resolve saturate clips.
        //   RT_QUALITY==3 "SPMIS Boosted"  = Balanced + a confidence+variance-gated energy
        //                                    lift past the vanilla ceiling ([Patch: RRLadderLift]).
        // RT_QUALITY==1 (conditioning only, no energy change) remains implemented in the
        // shaders but is not exposed here: it does not beat vanilla noise on its own, and the
        // pooling brightness bias it revealed is awaiting an unbiasedness audit before that
        // tier can honestly be offered as a denoise option.
        .packed_values = {0u, CUSTOM_FLAGS__RT_QUALITY_BIT1, CUSTOM_FLAGS__RT_QUALITY_BIT0 | CUSTOM_FLAGS__RT_QUALITY_BIT1},
        .can_reset = true,
        .label = "Ray Reconstruction Improvements",
        .section = "Experimental Raytracing",
        .tooltip = "Improves RT diffuse lighting with stochastic pairwise MIS resampling (Hedstrom et al., Eurographics 2026). Each option includes the previous ones.\n"
                   "Off - vanilla RT lighting\n"
                   "SPMIS Balanced - restores bright indirect light the engine normally clips; fuller sun/sky bounce outdoors - (pairwise MIS resampling + compatibility-guided neighbor selection + variance-gated de-clamp)\n"
                   "SPMIS Boosted - pushes stable indirect light past neutral for a bolder look; slightly noisier than Off in places - (+ confidence-gated lift)",
        .labels = {"Off", "SPMIS Balanced", "SPMIS Boosted"},
        .tint = wiprendering,
        .is_enabled = []() { return RR_ENABLED; },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Aurora uses in-game time, nightly variation, and expanded color presets. Region gating is not implemented yet.\n",
        .section = "Aurora",
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Detected: Ray Reconstruction / Ray Regeneration is active.\n",
        .section = "Aurora",
        .is_visible = []() { return current_settings_mode == experimental_group && RR_ENABLED; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Not detected: controls below require Ray Reconstruction / Ray Regeneration.\n",
        .section = "Aurora",
        .tint = 0xaa0000,
        .is_visible = []() { return current_settings_mode == experimental_group && !RR_ENABLED; },
    },
    new renodx::utils::settings::Setting{
        .key = "AuroraBorealis",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .packed_values = {0u, CUSTOM_FLAGS__AURORA_BOREALIS},
        .can_reset = true,
        .label = "Aurora Borealis",
        .section = "Aurora",
        .tooltip = "Adds an aurora borealis effect to the night sky.\n"
                   "Off = no aurora. On = aurora enabled.\n"
                   "Disabled until Ray Reconstruction / Ray Regeneration is detected.",
        .labels = {"Off", "On"},
        .tint = wiprendering,
        .is_enabled = []() { return RR_ENABLED; },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AuroraBrightness",
        .binding = &shader_injection.aurora_brightness,
        .default_value = 25.f,
        .label = "Aurora Brightness",
        .section = "Aurora",
        .tooltip = "Controls the overall brightness of the aurora borealis effect.\n"
                   "Disabled until Ray Reconstruction / Ray Regeneration is detected and Aurora Borealis is enabled.",
        .tint = wiprendering,
        .max = 100.f,
        .is_enabled = []() { return RR_ENABLED && (CUSTOM_FLAGS_AS_UINT & CUSTOM_FLAGS__AURORA_BOREALIS) != 0u; },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "AuroraChance",
        .binding = &shader_injection.aurora_chance,
        .default_value = 40.f,
        .label = "Aurora Appearance Chance",
        .section = "Aurora",
        .tooltip = "Percentage chance for the aurora to appear each night.\n"
                   "0 = never appears, 100 = always appears.\n"
                   "Disabled until Ray Reconstruction / Ray Regeneration is detected and Aurora Borealis is enabled.",
        .tint = wiprendering,
        .max = 100.f,
        .is_enabled = []() { return RR_ENABLED && (CUSTOM_FLAGS_AS_UINT & CUSTOM_FLAGS__AURORA_BOREALIS) != 0u; },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "StylizedLunarPhase",
        .binding = &shader_injection.stylized_lunar_phase,
        .default_value = 0.f,
        .can_reset = true,
        .label = "Stylized Lunar Phase / Eclipse",
        .section = "Sky / Celestial",
        .tooltip = "Controls a stylized lunar phase/eclipse effect with eclipsing shadow, shadow-side fill, and red terminator glow.\n"
                   "This is not a realistic lunar phase or eclipse simulation.\n"
                   "0 = vanilla/no stylized eclipse. 100 = recommended stylized crescent. 200 = full stylized eclipse.",
        .min = 0.f,
        .max = 200.f,
        .format = "%.0f%%",
        .is_enabled = []() { return MOON_ADJUSTMENTS == 1.f; },
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "MilkyWayAlphaOcclusion",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .packed_values = {0u, CUSTOM_FLAGS__MILKY_WAY_ALPHA_OCCLUSION},
        .can_reset = true,
        .label = "Milky Way Alpha Occlusion",
        .section = "Sky / Celestial",
        .tooltip = "Experimental support for CrimsonWeather Milky Way replacement textures with authored alpha coverage.\n"
                   "Off = current addon behavior; Milky Way texture alpha is ignored.\n"
                   "On = alpha controls procedural star and sparkle visibility in the visible sky. Alpha 0 leaves stars visible; alpha 1 fully occludes them behind custom texture content.\n"
                   "Do not use with the game's vanilla Milky Way texture or replacement textures without authored alpha coverage; no-alpha/full-alpha textures can make stars and sparkle highlights disappear.",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "DisableDistortion",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .packed_values = {0u, CUSTOM_FLAGS__DISABLE_DISTORTION},
        .can_reset = true,
        .label = "Disable Distortion",
        .section = "Effects",
        .tooltip = "The game's screen distortion pass, used for heat haze and similar particle effects.\n"
                   "Vanilla = upsamples from half- and quarter-resolution buffers, which looks like\n"
                   "particle noise around distortion sources.\n"
                   "Disabled = skips the distortion pass, removing that noise.",
        .labels = {"Vanilla", "Disabled"},
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "DisableUIShaders",
        .binding = &disable_ui_shaders,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 0.f,
        .can_reset = true,
        .label = "Disable UI/HUD",
        .section = "Capture Tools",
        .tooltip = "Skips known UI vertex shader draw families for gameplay captures.\n"
                   "Off = normal UI/HUD rendering.",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode == experimental_group; },
    },
    new renodx::utils::settings::Setting{
        .key = "TonemapDebugMode",
        .binding = &shader_injection.custom_flags,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .packed_values = {0u, CUSTOM_FLAGS__TONEMAP_DEBUG_BIT0, CUSTOM_FLAGS__TONEMAP_DEBUG_BIT1, CUSTOM_FLAGS__TONEMAP_DEBUG_BIT0 | CUSTOM_FLAGS__TONEMAP_DEBUG_BIT1},
        .can_reset = true,
        .label = "Tonemap Debug",
        .section = "Debug",
        .tooltip = "Diagnostic overlay for the Crimson Desert tonemap passes.\n"
                   "Off = normal rendering.\n"
                   "Graph = RenoDX graph through HDR/SDR tonemapping.\n"
                   "Stats = HDR canvas panel with perceptual AE anchors.\n"
                   "Both = graph and stats together.",
        .labels = {"Off", "Graph", "Stats", "Both"},
        .is_visible = []() { return debug; },
    },
    new renodx::utils::settings::Setting{
        .key = "SDRHDRToggle",
        .binding = &hdr_settings_toggle,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .can_reset = false,
        .label = "UI Mode Override",
        .section = "Utility",
        .tooltip = "This is automatically set based on the detected color space, but this control is provided in case of errors.",
        .labels = {"SDR", "HDR"},
        .is_global = true,
        .is_visible = []() { return current_settings_mode == tone_mapping_group || current_settings_mode == basic_group; },
    },
    // new renodx::utils::settings::Setting{
    //     .value_type = renodx::utils::settings::SettingValueType::BUTTON,
    //     .label = "Reset All",
    //     .section = "Options",
    //     .group = "button-line-2",
    //     .on_change = []() {
    //       for (auto* setting : settings) {
    //         if (setting->key.empty()) continue;
    //         if (!setting->can_reset) continue;
    //         renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
    //       }
    //     },
    // },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Out of the box, the mod uses our recommended settings. These have been carefully selected to offer a good balance for everybody. A ton of controls are provided for tuning to preference by adjusting the settings mode, if desired.",
        .section = "Tips",
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .label = "Links",
        .section = "Links",
        .group = "button-line-1",
        .on_draw = []() {
          ImGui::TextLinkOpenURL("RenoDX Discord", "https://discord.gg/QgXDCfccRy");
          ImGui::SameLine();
          ImGui::TextLinkOpenURL("Github", "https://github.com/clshortfuse/renodx");
          ImGui::SameLine();
          ImGui::TextLinkOpenURL("More RenoDX Mods", "https://github.com/clshortfuse/renodx/wiki/Mods/");
          ImGui::SameLine();
          ImGui::TextLinkOpenURL("Forge's Ko-Fi", "https://ko-fi.com/forge87682");
          ImGui::SameLine();
          ImGui::TextLinkOpenURL("Jon's Ko-Fi", "https://ko-fi.com/kickfister");
          ImGui::SameLine();
          ImGui::TextLinkOpenURL("ShortFuse's Ko-Fi", "https://ko-fi.com/shortfuse");
          return false; },
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label =
            "Crimson Desert mod by Forge, Jon (OopyDoopy/Kickfister), FyrenGG, and Shortfuse. Built on Shortfuse's RenoDX framework.",
        .section = "About",
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Credit to Lilium for the RCAS implementation!",
        .section = "About",
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Credits and ty to both Gerardo LCDF for Godot & KnighTec for Blitz-FX source which helped with aurora borealis implementation",
        .section = "About",
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "This build was compiled on " + build_date + " at " + build_time + ".",
        .section = "About",
        .is_visible = []() { return current_settings_mode == basic_group; },
    },
    // Master state, kept last on purpose: loading a preset writes settings in list order, so every
    // feature is restored before this reopens the gate and no frame sees a half-loaded preset.
    // Presets written before this key existed fall back to the active default.
    new renodx::utils::settings::Setting{
        .key = "RenoDXActive",
        .binding = &renodx_active,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 1.f,
        .can_reset = false,
        .label = "RenoDX Active",
        .is_visible = []() { return false; },
    },
};

void OnPresetOff() {
  renodx::utils::settings::UpdateSettings({
      // First in the batch so replacements stop before the individual values are neutralized;
      // otherwise draw threads briefly see active replacements running against vanilla values.
      {"RenoDXActive", 0.f},
      {"ToneMapType", 0.f},
      {"ToneMapPeakNits", 1000.f},
      {"ToneMapGameNits", 203.f},
      {"SDRBlackCrushFix", 0.f},

      {"ToneMapHueRestore", 10.f},
      {"ToneMapBlowout", 0.f},

      {"ColorGradeExposure", 1.f},
      {"ColorGradeHighlights", 50.f},
      {"ColorGradeShadows", 50.f},
      {"ColorGradeContrast", 50.f},
      {"ColorGradeSaturation", 50.f},
      {"ColorGradeHighlightSaturation", 50.f},
      {"ToneMapFlare", 0.f},
      {"ColorGradeWhitePointKelvin", 65.f},
      {"CustomToneMapMidgrayAdjust", 100.f},

      {"FxFilmGrainType", 0.f},
      {"FxFilmGrain", 50.f},
      {"FxChromaticAberration", 100.f},
      {"FxLensFlareStrength", 100.f},
      {"FxSharpeningType", 0.f},
      {"FxSharpening", 100.f},
      {"FxVignette", 100.f},

      {"BloomStrength", 100.f},

      {"LocalLightHueCorrection", 0.f},
      {"LocalLightSaturation", 50.f},

      {"SkyScattering", 0.f},
      {"SunImprovements", 0.f},
      {"MoonAdjustments", 0.f},
      {"MoonDiskSize", 1.f},
      {"StylizedLunarPhase", 0.f},
      {"ContactShadowQuality", 0.f},
      {"FoliageImprovements", 0.f},
      {"SPMISQuality", 0.f},
      {"MaterialImprovements", 0.f},
      {"FoliageSpeedTreeWindCoherence", 0.f},
      {"ShadowEdgeNoiseFix", 0.f},
      {"DawnDuskImprovements", 0.f},
      {"CustomWeatherEditing", 0.f},
      {"SnowFogFix", 0.f},
      {"DisableAWB", 0.f},
      {"AuroraBorealis", 0.f},
      {"AuroraBrightness", 25.f},
      {"AuroraChance", 40.f},
      {"NightSkyAttenuation", 0.f},
      {"MilkyWayLightIntensity", 1.f},
      {"PurkinjeEffect", 0.f},
      {"DisableUIShaders", 0.f},
      {"DisableDistortion", 0.f},

      {"ImprovedAutoExposure", 0.f},
      {"AE_PerceptualMinBrightness", 1.f},
      {"AE_PerceptualMaxBrightness", 5.f},
      {"AE_TargetSmoothing", 100.f},
      {"AE_DynamismHigh", 40.f},
      {"AE_DynamismLow", 50.f},
      {"AE_Speed", 50.f},
      {"AE_DarkToLightTime", 1.f},
      {"AE_LightToDarkTime", 4.3f},
      {"AE_EnvironmentBias", 0.f},
  });
}

bool fired_on_init_swapchain = false;

void OnPresent(reshade::api::command_queue* /*queue*/,
               reshade::api::swapchain* /*swapchain*/,
               const reshade::api::rect* /*source_rect*/,
               const reshade::api::rect* /*dest_rect*/,
               uint32_t /*dirty_rect_count*/,
               const reshade::api::rect* /*dirty_rects*/) {
  // Basic postprocess final-output detector. The flag marks that the SDR material
  // composite render path is active; the final-vs-intermediate decision happens per draw
  // inside PostProcessMaterial_0xF249EB14 via the game's own _etcParams.z constant
  // (the composite manually sRGB-encodes only when feeding a standalone SDR final;
  // when it writes the display target directly the sRGB view encodes in hardware and
  // _etcParams.z is 0). The in-shader test has zero latency; a CPU-side windowed
  // detector cannot keep up with transitions while gliding or loading, when the game
  // swaps between composite-final and standalone-final arrangements. Those delayed
  // detections leave a few wrong-state frames, visible as gamma/vignette flashes.
  // The standalone-final draw counter exists for diagnostics only.
  constexpr int kBasicPostprocessLookback = 4;
  if (presents_since_material_draw < 1000) {
    presents_since_material_draw++;
  }
  if (presents_since_final_sdr_draw < 1000) {
    presents_since_final_sdr_draw++;
  }
  if (postprocess_material_draw) {
    presents_since_material_draw = 0;
  }
  if (final_sdr_draw) {
    presents_since_final_sdr_draw = 0;
  }
  postprocess_material_draw = false;
  final_sdr_draw = false;

  uint32_t custom_flags = CUSTOM_FLAGS_AS_UINT;
  const bool basic_postprocess_now = !last_is_hdr
                                     && presents_since_material_draw <= kBasicPostprocessLookback;
  if (basic_postprocess_now) {
    custom_flags |= CUSTOM_FLAGS__BASIC_POSTPROCESS_FINAL;
  } else {
    custom_flags &= ~CUSTOM_FLAGS__BASIC_POSTPROCESS_FINAL;
  }

  // Ray Reconstruction detection uses a long grace period after the last detector dispatch.
  // The RR detector dispatches (PrepareDlssRRCS / EvaluateSpecularRadianceCS) can stop
  // running while OnPresent continues during loading screens, location discovery, or menus.
  // A short grace period (on the order of 30 presents) reads those pauses as "RR turned off",
  // making every RR_ENABLED
  // consumer (MATERIAL_IMPROVEMENTS, RT_QUALITY, PURKINJE_EFFECT,
  // AURORA_BOREALIS_ENABLED, CUSTOM_WEATHER_EDITING) snap off and back on across
  // the whole scene as an abrupt color/lighting shift. Real RR settings changes go
  // through the game menu, so reflecting them within the grace period is not visible
  // during gameplay, and after a pause the flag turns on again as soon as an RR detector
  // dispatch is seen.
  constexpr int kRRDropoutLookback = 240;
  if (presents_since_rr_draw < 10000) {
    presents_since_rr_draw++;
  }
  if (rr_draw) {
    presents_since_rr_draw = 0;
  }
  rr_draw = false;
  if (presents_since_rr_draw <= kRRDropoutLookback) {
    custom_flags |= CUSTOM_FLAGS__RR_ENABLED;
  } else {
    custom_flags &= ~CUSTOM_FLAGS__RR_ENABLED;
  }

  shader_injection.custom_flags = std::bit_cast<float>(custom_flags);

  // --- Aurora session seed: detect night transitions via SceneShadowTiledNight ---
  const bool aurora_effective_enabled = (custom_flags & CUSTOM_FLAGS__RR_ENABLED) != 0u
                                        && (custom_flags & CUSTOM_FLAGS__AURORA_BOREALIS) != 0u;

  // Seed once on startup so an already-night save does not begin from the same
  // zero session every time.
  if (!aurora_seed_initialized) {
    RerollAuroraSessionSeed();
    aurora_seed_initialized = true;
    aurora_effective_was_enabled = aurora_effective_enabled;
  } else if (aurora_effective_enabled && !aurora_effective_was_enabled) {
    // Reroll whenever aurora becomes effectively active, regardless of what
    // caused that transition: the UI toggle, a preset, or the Ray
    // Reconstruction / Ray Regeneration gate becoming available.
    RerollAuroraSessionSeed();
  }
  aurora_effective_was_enabled = aurora_effective_enabled;

  // SceneShadowTiledNight shaders only run during night, so they provide a
  // low-cost proxy for night transitions.
  night_check_counter++;
  if (night_check_counter >= 30) {
    if (!night_shader_state_initialized) {
      // Establish the first sampled state without treating an already-night
      // save as a new dusk transition.
      night_shader_state_initialized = true;
    } else if (night_shader_active && !night_shader_was_active) {
      // Rising edge: night just started, so reroll the aurora seed.
      RerollAuroraSessionSeed();

      // Re-roll dawn/dusk weather seed at dusk (rising edge of night).
      // Start a blend from old preset to new preset so there's no hard pop.
      // Pass the raw counter as the seed (not hashed) so the shader can
      // derive the previous preset via sessionIndex - 1.
      dawn_dusk_day_counter++;
      shader_injection.dawn_dusk_weather_seed = static_cast<float>(dawn_dusk_day_counter) / 65535.f;
      dawn_dusk_blend_start = std::chrono::steady_clock::now();
    }
    night_shader_was_active = night_shader_active;
    night_shader_active = false;
    night_check_counter = 0;
  }

  // --- Dawn/dusk weather blend ramp ---
  // After a seed re-roll, ramp blend from 0 to 1 over dawn_dusk_blend_duration seconds.
  // The shader lerps between previous and current preset using this value.
  {
    auto elapsed = std::chrono::steady_clock::now() - dawn_dusk_blend_start;
    float seconds = std::chrono::duration<float>(elapsed).count();
    float blend = (dawn_dusk_blend_duration > 0.f) ? (seconds / dawn_dusk_blend_duration) : 1.f;
    shader_injection.dawn_dusk_weather_blend = (blend >= 1.f) ? 1.f : blend;
  }
}

void OnInitSwapchain(reshade::api::swapchain* swapchain, bool resize) {
  last_is_hdr = renodx::utils::swapchain::IsHDRColorSpace(swapchain);

  hdr_settings_toggle = last_is_hdr ? 1.f : 0.f;
  renodx::utils::settings::UpdateSetting("SDRHDRToggle", hdr_settings_toggle);

  if (fired_on_init_swapchain) return;
  fired_on_init_swapchain = true;

  auto peak = renodx::utils::swapchain::GetPeakNits(swapchain);
  if (peak.has_value()) {
    tone_map_peak_nits_setting->default_value = roundf(peak.value());
  } else {
    tone_map_peak_nits_setting->default_value = 1000.f;
  }
  tone_map_diffuse_white_setting->default_value = fmin(renodx::utils::swapchain::ComputeReferenceWhite(tone_map_peak_nits_setting->default_value), 203.f);
}

void OnInitDevice(reshade::api::device* device) {
  int vendor_id;
  auto retrieved = device->get_property(reshade::api::device_properties::vendor_id, &vendor_id);
  is_nvidia = (retrieved && vendor_id == 0x10de);
}

}  // namespace

extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX - Crimson Desert";
extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX for Crimson Desert";

BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;
      // while (IsDebuggerPresent() == 0) Sleep(100);

      reshade::register_event<reshade::addon_event::init_device>(OnInitDevice);  // Vendor detection

      reshade::register_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);
      reshade::register_event<reshade::addon_event::present>(OnPresent);

      // Register VRS override hooks BEFORE mods::shader registers its draw hooks,
      // so our pre draw injection fires first
      reshade::register_event<reshade::addon_event::draw>(OnVRSDraw);
      reshade::register_event<reshade::addon_event::draw_indexed>(OnVRSDrawIndexed);
      reshade::register_event<reshade::addon_event::draw_or_dispatch_indirect>(OnVRSDrawOrDispatchIndirect);

      renodx::mods::shader::expected_constant_buffer_space = 50;
      renodx::mods::shader::expected_constant_buffer_index = 13;

      renodx::utils::random::binds.push_back(&shader_injection.custom_random);  // film grain

      renodx::mods::shader::allow_multiple_push_constants = true;
      renodx::mods::shader::force_pipeline_cloning = true;

      // Replacement must be owned by the per-draw path, which is the only one that consults
      // on_replace and therefore the only one the master gate can reach. The bind-time path applies
      // replacements straight from OnBindPipeline. mods::shader::Use clears this itself, but only
      // after utils::shader::Use has already published the value to cross-addon shared state, so
      // setting it here — before either runs — is what actually takes effect.
      renodx::utils::shader::use_replace_on_bind = false;

      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_event<reshade::addon_event::init_device>(OnInitDevice);
      reshade::unregister_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::draw>(OnVRSDraw);
      reshade::unregister_event<reshade::addon_event::draw_indexed>(OnVRSDrawIndexed);
      reshade::unregister_event<reshade::addon_event::draw_or_dispatch_indirect>(OnVRSDrawOrDispatchIndirect);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
  renodx::utils::random::Use(fdw_reason);

  if (fdw_reason == DLL_PROCESS_DETACH) {
    reshade::unregister_addon(h_module);
  }

  return TRUE;
}
