#pragma once

#define ImTextureID ImU64

#include <algorithm>
#include <array>
#include <functional>
#include <optional>
#include <string>
#include <vector>

#include <deps/imgui/imgui.h>
#include <include/reshade.hpp>

#include "./bitwise.hpp"
#include "./icons.hpp"
#include "./mutex.hpp"

namespace renodx::utils::settings {

extern "C" __declspec(dllexport) const char* const NAME;

static constexpr const char* PROFILE_KEY = "SelectedProfile";
static constexpr const char* LEGACY_PRESET_KEY = "SelectedPreset";

static bool use_presets = true;
static std::string overlay_title = NAME;
static std::string global_name = "renodx";
static int preset_index = 1;
static std::vector<std::string> preset_strings = {
    "Off",
    "Profile #1",
    "Profile #2",
    "Profile #3",
    "Profile #4",
    "Profile #5",
};

static std::vector<std::function<void()>> on_preset_off_callbacks;
static std::vector<std::function<void()>> on_preset_changed_callbacks;

static ImVec4 ImVec4FromHex(uint32_t hex) {
  return {
      static_cast<float>((hex >> (8 * 2)) & 0xFF) / 255.f,
      static_cast<float>((hex >> (8 * 1)) & 0xFF) / 255.f,
      static_cast<float>((hex >> (8 * 0)) & 0xFF) / 255.f,
      1.f,
  };
};

enum class SettingValueType : uint8_t {
  FLOAT = 0,
  INTEGER = 1,
  BOOLEAN = 2,
  BUTTON = 3,
  LABEL = 4,
  BULLET = 5,
  TEXT = 6,
  TEXT_NOWRAP = 7,
  CUSTOM = 8,
  HOTKEY = 9,
};

static constexpr uint32_t HOTKEY_KEY_MASK = 0xFFu;
static constexpr uint32_t HOTKEY_CTRL_FLAG = 1u << 8u;
static constexpr uint32_t HOTKEY_SHIFT_FLAG = 1u << 9u;
static constexpr uint32_t HOTKEY_ALT_FLAG = 1u << 10u;
static constexpr uint32_t HOTKEY_VALUE_MASK = HOTKEY_KEY_MASK | HOTKEY_CTRL_FLAG | HOTKEY_SHIFT_FLAG | HOTKEY_ALT_FLAG;

struct Setting {
  std::string key;
  float* binding = nullptr;
  SettingValueType value_type = SettingValueType::FLOAT;
  float default_value = 0.f;
  std::vector<uint32_t> packed_values;
  bool can_reset = true;
  std::string label = key;
  std::string section;
  std::string group;
  std::string tooltip;
  std::vector<std::string> labels;
  std::optional<uint32_t> tint;  // HEX notation
  float min = 0.f;
  float max = 100.f;
  std::optional<float> slider_max = std::nullopt;
  std::string format = "%.0f";

  std::function<bool()> is_enabled = [] {
    return true;
  };

  std::function<float(float value)> parse = [](float value) {
    return value;
  };

  std::function<void()> on_change = [] {};

  std::function<void(float previous, float current)> on_change_value = [](float previous, float current) {};

  // Return true to save settings
  std::function<bool()> on_click = [] { return true; };

  // Return true if value is changed
  std::function<bool()> on_draw = [] { return false; };

  bool is_global = false;

  std::function<bool()> is_visible = [] {
    return true;
  };

  bool is_sticky = false;

  bool is_logarithmic = false;

  float value = default_value;
  int value_as_int = static_cast<int>(default_value);

  [[nodiscard]]
  float GetMax() const {
    switch (this->value_type) {
      case SettingValueType::BOOLEAN:
        return 1.f;
      case SettingValueType::HOTKEY:
        return HOTKEY_VALUE_MASK;
      case SettingValueType::INTEGER:
        return this->labels.empty()
                   ? this->max
                   : (this->labels.size() - 1);
      case SettingValueType::FLOAT:
      default:
        return this->max;
    }
  }

  [[nodiscard]]
  float GetValue() const {
    switch (this->value_type) {
      default:
      case SettingValueType::FLOAT:
        return this->value;
        break;
      case SettingValueType::INTEGER:
      case SettingValueType::HOTKEY:
        return static_cast<float>(this->value_as_int);
        break;
      case SettingValueType::BOOLEAN:
        return ((this->value_as_int == 0) ? 0.f : 1.f);
        break;
    }
  }

  Setting* Set(float value) {
    this->value = value;
    this->value_as_int = static_cast<int>(value);
    return this;
  }

  [[nodiscard]]
  float GetSliderMax() const {
    return this->slider_max.value_or(this->GetMax());
  }

  Setting* Write() {
    if (this->binding != nullptr) {
      if (!this->packed_values.empty()) {
        float packed_binding = *this->binding;
        uint32_t clear_mask = 0u;
        uint32_t selected_value = this->packed_values[this->default_value];
        const int len = static_cast<int>(this->packed_values.size());

        for (int i = 0; i < len; ++i) {
          if (i == this->value_as_int) {
            selected_value = this->packed_values[i];
          } else {
            clear_mask |= this->packed_values[i];
          }
        }

        packed_binding = renodx::utils::bitwise::UnsetFlag(packed_binding, clear_mask);
        packed_binding = renodx::utils::bitwise::SetFlag(packed_binding, selected_value);
        *this->binding = packed_binding;
      } else {
        *this->binding = this->parse(this->GetValue());
      }
    }
    return this;
  }
};

using Settings = std::vector<Setting*>;
static Settings* settings = nullptr;
static constexpr size_t PRESET_HOTKEY_COUNT = 6;

static bool IsBasicSettingsMode() {
  if (settings == nullptr) return true;

  for (const auto* setting : *settings) {
    if (setting == nullptr || setting->key != "SettingsMode") continue;
    return setting->GetValue() == 0.f;
  }

  return true;
}

static bool is_capturing_hotkey = false;
static std::array<Setting, PRESET_HOTKEY_COUNT> preset_hotkey_settings = {
    Setting{
        .key = "OffHotkey",
        .value_type = SettingValueType::HOTKEY,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Off Hotkey",
        .section = "Profile Hotkeys",
        .tooltip = "Switches RenoDX to Off. Hold Ctrl, Shift, or Alt while pressing a key to assign a shortcut chord.",
        .is_global = true,
        .is_visible = IsBasicSettingsMode,
    },
    Setting{
        .key = "Profile1Hotkey",
        .value_type = SettingValueType::HOTKEY,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Profile #1 Hotkey",
        .section = "Profile Hotkeys",
        .tooltip = "Switches to RenoDX Profile #1. Hold Ctrl, Shift, or Alt while pressing a key to assign a shortcut chord.",
        .is_global = true,
        .is_visible = IsBasicSettingsMode,
    },
    Setting{
        .key = "Profile2Hotkey",
        .value_type = SettingValueType::HOTKEY,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Profile #2 Hotkey",
        .section = "Profile Hotkeys",
        .tooltip = "Switches to RenoDX Profile #2. Hold Ctrl, Shift, or Alt while pressing a key to assign a shortcut chord.",
        .is_global = true,
        .is_visible = IsBasicSettingsMode,
    },
    Setting{
        .key = "Profile3Hotkey",
        .value_type = SettingValueType::HOTKEY,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Profile #3 Hotkey",
        .section = "Profile Hotkeys",
        .tooltip = "Switches to RenoDX Profile #3. Hold Ctrl, Shift, or Alt while pressing a key to assign a shortcut chord.",
        .is_global = true,
        .is_visible = IsBasicSettingsMode,
    },
    Setting{
        .key = "Profile4Hotkey",
        .value_type = SettingValueType::HOTKEY,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Profile #4 Hotkey",
        .section = "Profile Hotkeys",
        .tooltip = "Switches to RenoDX Profile #4. Hold Ctrl, Shift, or Alt while pressing a key to assign a shortcut chord.",
        .is_global = true,
        .is_visible = IsBasicSettingsMode,
    },
    Setting{
        .key = "Profile5Hotkey",
        .value_type = SettingValueType::HOTKEY,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Profile #5 Hotkey",
        .section = "Profile Hotkeys",
        .tooltip = "Switches to RenoDX Profile #5. Hold Ctrl, Shift, or Alt while pressing a key to assign a shortcut chord.",
        .is_global = true,
        .is_visible = IsBasicSettingsMode,
    },
};
static std::array<Setting*, PRESET_HOTKEY_COUNT> active_preset_hotkey_settings = {
    &preset_hotkey_settings[0],
    &preset_hotkey_settings[1],
    &preset_hotkey_settings[2],
    &preset_hotkey_settings[3],
    &preset_hotkey_settings[4],
    &preset_hotkey_settings[5],
};
static constexpr std::array<int, PRESET_HOTKEY_COUNT> preset_hotkey_indices = {
    0,
    1,
    2,
    3,
    4,
    5,
};

#define RENODX_JOIN_MACRO(x, y) x##y

#define AddDebugSetting(injection, name)                  \
  new renodx::utils::settings::Setting {                  \
    .key = "debug" #name,                                 \
    .binding = &RENODX_JOIN_MACRO(injection.debug, name), \
    .default_value = 1.f,                                 \
    .label = "Debug" #name,                               \
    .section = "Debug",                                   \
    .max = 2.f,                                           \
    .format = "%.2f",                                     \
  }

static Setting* FindSetting(const std::string& key) {
  for (auto* setting : *settings) {
    if (setting->key == key) {
      return setting;
    }
  }
  return nullptr;
}

static void EnsurePresetHotkeySettings() {
  for (size_t i = 0; i < PRESET_HOTKEY_COUNT; i++) {
    auto* preset_hotkey_setting = &preset_hotkey_settings[i];
    auto existing_setting = std::find_if(settings->begin(), settings->end(), [&](const Setting* setting) {
      return setting != nullptr && setting->key == preset_hotkey_setting->key;
    });

    if (existing_setting != settings->end()) {
      active_preset_hotkey_settings[i] = *existing_setting;
      continue;
    }

    active_preset_hotkey_settings[i] = preset_hotkey_setting;
    const auto tips_setting = std::find_if(settings->begin(), settings->end(), [](const Setting* setting) {
      return setting != nullptr && setting->section == "Tips";
    });
    settings->insert(tips_setting, preset_hotkey_setting);
  }
}

static bool UpdateSetting(const std::string& key, float value) {
  auto* setting = FindSetting(key);
  if (setting == nullptr) return false;
  const std::unique_lock lock(renodx::utils::mutex::global_mutex);
  setting->Set(value)->Write();
  return true;
}

static void ResetSettings(bool reset_global = false) {
  const std::unique_lock lock(renodx::utils::mutex::global_mutex);
  for (auto* setting : *settings) {
    if (setting->key.empty()) continue;
    if (setting->is_global && !reset_global) continue;
    if (!setting->can_reset) continue;
    setting->Set(setting->default_value)->Write();
  }
}

static bool UpdateSettings(const std::vector<std::pair<std::string, float>>& pairs) {
  bool missing_key = false;
  const std::unique_lock lock(renodx::utils::mutex::global_mutex);
  for (const auto& [key, value] : pairs) {
    auto* setting = FindSetting(key);
    if (setting == nullptr) {
      missing_key = true;
    } else {
      setting->Set(value)->Write();
    }
  }
  return !missing_key;
}

static void LoadSetting(const std::string& section, Setting* setting) {
  switch (setting->value_type) {
    case SettingValueType::FLOAT:
      if (!reshade::get_config_value(nullptr, section.c_str(), setting->key.c_str(), setting->value)) {
        setting->value = setting->default_value;
      }
      if (setting->value > setting->GetMax()) {
        setting->value = setting->GetMax();
      } else if (setting->value < setting->min) {
        setting->value = setting->min;
      }
      break;
    case SettingValueType::BOOLEAN:
    case SettingValueType::INTEGER:
    case SettingValueType::HOTKEY:
      if (!reshade::get_config_value(nullptr, section.c_str(), setting->key.c_str(), setting->value_as_int)) {
        setting->value_as_int = static_cast<int>(setting->default_value);
      }
      if (setting->value_as_int > setting->GetMax()) {
        setting->value_as_int = setting->GetMax();
      } else if (setting->value_as_int < static_cast<int>(setting->min)) {
        setting->value_as_int = static_cast<int>(setting->min);
      }
      break;
    default:
      break;
  }
}

static void LoadSettings(const std::string& section) {
  for (auto* setting : *settings) {
    if (setting->is_global) continue;
    LoadSetting(section, setting);
    const std::unique_lock lock(renodx::utils::mutex::global_mutex);
    setting->Write();
  }
}

static void LoadGlobalSettings() {
  for (auto* setting : *settings) {
    switch (setting->value_type) {
      if (!setting->is_global) continue;
      case SettingValueType::FLOAT:
        if (!reshade::get_config_value(nullptr, global_name.c_str(), setting->key.c_str(), setting->value)) {
          setting->value = setting->default_value;
        }
        if (setting->value > setting->GetMax()) {
          setting->value = setting->GetMax();
        } else if (setting->value < setting->min) {
          setting->value = setting->min;
        }
        break;
      case SettingValueType::BOOLEAN:
      case SettingValueType::INTEGER:
      case SettingValueType::HOTKEY:
        if (!reshade::get_config_value(nullptr, global_name.c_str(), setting->key.c_str(), setting->value_as_int)) {
          setting->value_as_int = static_cast<int>(setting->default_value);
        }
        if (setting->value_as_int > setting->GetMax()) {
          setting->value_as_int = setting->GetMax();
        } else if (setting->value_as_int < static_cast<int>(setting->min)) {
          setting->value_as_int = static_cast<int>(setting->min);
        }
        break;
      default:
        break;
    }
    const std::unique_lock lock(renodx::utils::mutex::global_mutex);
    setting->Write();
  }
}

static void ClampPresetIndex() {
  const int min_index = use_presets ? 0 : 1;
  const int max_index = static_cast<int>(preset_strings.size()) - 1;

  if (preset_index < min_index) {
    preset_index = min_index;
  } else if (preset_index > max_index) {
    preset_index = max_index;
  }
}

static std::string GetPresetName(int index) {
  return global_name + "-preset" + std::to_string(index);
}

static void LoadCurrentPreset(bool trigger_callbacks = true) {
  ClampPresetIndex();

  if (preset_index == 0) {
    for (auto& callback : on_preset_off_callbacks) {
      callback();
    }
  } else {
    LoadSettings(GetPresetName(preset_index));
  }

  if (trigger_callbacks) {
    for (auto& callback : on_preset_changed_callbacks) {
      callback();
    }
  }
}

static void LoadSelectedPreset() {
  if (!use_presets) {
    preset_index = 1;
    return;
  }

  if (!reshade::get_config_value(nullptr, global_name.c_str(), PROFILE_KEY, preset_index)) {
    reshade::get_config_value(nullptr, global_name.c_str(), LEGACY_PRESET_KEY, preset_index);
  }

  ClampPresetIndex();
}

static std::string GetCurrentPresetName() {
  ClampPresetIndex();

  if (preset_index > 0) {
    return GetPresetName(preset_index);
  }
  return "";
}

static void SaveSettings(const std::string& section = GetCurrentPresetName()) {
  for (auto* setting : *settings) {
    if (setting->key.empty()) continue;
    if (setting->is_global) continue;
    switch (setting->value_type) {
      case SettingValueType::FLOAT:
        reshade::set_config_value(nullptr, section.c_str(), setting->key.c_str(), setting->value);
        break;
      case SettingValueType::INTEGER:
      case SettingValueType::BOOLEAN:
      case SettingValueType::HOTKEY:
        reshade::set_config_value(nullptr, section.c_str(), setting->key.c_str(), setting->value_as_int);
        break;
      default:
        break;
    }
  }
}

static void SaveGlobalSettings() {
  for (auto* setting : *settings) {
    if (setting->key.empty()) continue;
    if (!setting->is_global) continue;
    switch (setting->value_type) {
      case SettingValueType::FLOAT:
        reshade::set_config_value(nullptr, global_name.c_str(), setting->key.c_str(), setting->value);
        break;
      case SettingValueType::INTEGER:
      case SettingValueType::BOOLEAN:
      case SettingValueType::HOTKEY:
        reshade::set_config_value(nullptr, global_name.c_str(), setting->key.c_str(), setting->value_as_int);
        break;
      default:
        break;
    }
  }

  int saved_preset_index = (preset_index == 0 ? 1 : preset_index);
  reshade::set_config_value(nullptr, global_name.c_str(), PROFILE_KEY, saved_preset_index);
}

static std::string ReadGlobalString(const std::string& key) {
  char temp[256] = "";
  size_t size = 256;
  if (reshade::get_config_value(nullptr, global_name.c_str(), key.c_str(), temp, &size)) {
    std::string temp_string = std::string(temp);
    auto pos = temp_string.find_last_not_of("\t\n\v\f\r ");
    if (pos != std::string_view::npos) {
      temp_string = {temp_string.data(), temp_string.data() + pos + 1};
    }
    return temp_string;
  }
  return "";
}

static void WriteGlobalString(const std::string& key, const std::string& value) {
  reshade::set_config_value(nullptr, global_name.c_str(), key.c_str(), value.c_str());
}

static uint32_t GetHotkeyKey(int hotkey) {
  return static_cast<uint32_t>(hotkey) & HOTKEY_KEY_MASK;
}

static bool HasHotkeyCtrl(int hotkey) {
  return (static_cast<uint32_t>(hotkey) & HOTKEY_CTRL_FLAG) != 0;
}

static bool HasHotkeyShift(int hotkey) {
  return (static_cast<uint32_t>(hotkey) & HOTKEY_SHIFT_FLAG) != 0;
}

static bool HasHotkeyAlt(int hotkey) {
  return (static_cast<uint32_t>(hotkey) & HOTKEY_ALT_FLAG) != 0;
}

static int EncodeHotkey(uint32_t keycode, bool ctrl, bool shift, bool alt) {
  auto hotkey = keycode & HOTKEY_KEY_MASK;
  if (ctrl) hotkey |= HOTKEY_CTRL_FLAG;
  if (shift) hotkey |= HOTKEY_SHIFT_FLAG;
  if (alt) hotkey |= HOTKEY_ALT_FLAG;
  return static_cast<int>(hotkey);
}

static bool IsHotkeyModifier(uint32_t keycode) {
  switch (keycode) {
    case VK_SHIFT:
    case VK_LSHIFT:
    case VK_RSHIFT:
    case VK_CONTROL:
    case VK_LCONTROL:
    case VK_RCONTROL:
    case VK_MENU:
    case VK_LMENU:
    case VK_RMENU:
      return true;
    default:
      return false;
  }
}

static bool IsCtrlDown(reshade::api::effect_runtime* runtime) {
  return runtime->is_key_down(VK_CONTROL)
         || runtime->is_key_down(VK_LCONTROL)
         || runtime->is_key_down(VK_RCONTROL);
}

static bool IsShiftDown(reshade::api::effect_runtime* runtime) {
  return runtime->is_key_down(VK_SHIFT)
         || runtime->is_key_down(VK_LSHIFT)
         || runtime->is_key_down(VK_RSHIFT);
}

static bool IsAltDown(reshade::api::effect_runtime* runtime) {
  return runtime->is_key_down(VK_MENU)
         || runtime->is_key_down(VK_LMENU)
         || runtime->is_key_down(VK_RMENU);
}

static std::string GetVirtualKeyName(uint32_t keycode) {
  if (keycode == 0) return "";

  switch (keycode) {
    case VK_LBUTTON:
      return "Left Mouse";
    case VK_RBUTTON:
      return "Right Mouse";
    case VK_MBUTTON:
      return "Middle Mouse";
    case VK_XBUTTON1:
      return "X1 Mouse";
    case VK_XBUTTON2:
      return "X2 Mouse";
    default:
      break;
  }

  if (keycode >= '0' && keycode <= '9') return std::string(1, static_cast<char>(keycode));
  if (keycode >= 'A' && keycode <= 'Z') return std::string(1, static_cast<char>(keycode));

  UINT scan_code = MapVirtualKeyA(keycode, MAPVK_VK_TO_VSC);
  if (scan_code != 0) {
    switch (keycode) {
      case VK_INSERT:
      case VK_DELETE:
      case VK_HOME:
      case VK_END:
      case VK_PRIOR:
      case VK_NEXT:
      case VK_LEFT:
      case VK_RIGHT:
      case VK_UP:
      case VK_DOWN:
      case VK_DIVIDE:
      case VK_NUMLOCK:
        scan_code |= 0x100u;
        break;
      default:
        break;
    }

    char name[64] = "";
    if (GetKeyNameTextA(static_cast<LONG>(scan_code << 16), name, static_cast<int>(sizeof(name))) > 0) {
      return name;
    }
  }

  return "VK " + std::to_string(keycode);
}

static std::string GetHotkeyName(int hotkey) {
  const auto keycode = GetHotkeyKey(hotkey);
  if (keycode == 0) return "";

  std::string name;
  if (HasHotkeyCtrl(hotkey)) name += "Ctrl+";
  if (HasHotkeyShift(hotkey)) name += "Shift+";
  if (HasHotkeyAlt(hotkey)) name += "Alt+";
  name += GetVirtualKeyName(keycode);
  return name;
}

static bool IsHotkeyPressed(reshade::api::effect_runtime* runtime, int hotkey) {
  if (hotkey <= 0) return false;

  const auto keycode = GetHotkeyKey(hotkey);
  if (keycode == 0 || IsHotkeyModifier(keycode)) return false;
  if (!runtime->is_key_pressed(keycode)) return false;

  return HasHotkeyCtrl(hotkey) == IsCtrlDown(runtime)
         && HasHotkeyShift(hotkey) == IsShiftDown(runtime)
         && HasHotkeyAlt(hotkey) == IsAltDown(runtime);
}

// Runs first
// https://pthom.github.io/imgui_manual_online/manual/imgui_manual.html
static void OnRegisterOverlay(reshade::api::effect_runtime* runtime) {
  is_capturing_hotkey = false;

  bool changed_preset = false;
  bool has_drawn_presets = !use_presets;

  auto draw_presets = [&]() {
    if (use_presets) {
      ClampPresetIndex();
      changed_preset = ImGui::SliderInt(
          "Profile",
          &preset_index,
          0,
          static_cast<int>(preset_strings.size()) - 1,
          preset_strings[preset_index].c_str(),
          ImGuiSliderFlags_NoInput);
    }

    if (changed_preset) {
      LoadCurrentPreset();
      SaveGlobalSettings();
    }
    has_drawn_presets = true;
  };

  bool any_change = false;
  std::string last_section;
  std::string last_group;
  bool open_section = true;
  bool open_node = false;
  bool has_indent = false;
  for (auto* setting : *settings) {
    if (setting->is_visible != nullptr && !setting->is_visible()) continue;

    if (!setting->is_sticky) {
      if (!has_drawn_presets) {
        draw_presets();
      }
    }

    int styles_pushed = 0;
    if (setting->tint.has_value()) {
      auto target_rgb = ImVec4FromHex(setting->tint.value());
      float target_hsv[3] = {};
      ImGui::ColorConvertRGBtoHSV(target_rgb.x, target_rgb.y, target_rgb.z, target_hsv[0], target_hsv[1], target_hsv[2]);

      static const auto COMMON_STYLES =
          {
              ImGuiCol_FrameBg,
              ImGuiCol_FrameBgHovered,
              ImGuiCol_FrameBgActive,
              ImGuiCol_SliderGrab,
              ImGuiCol_SliderGrabActive,
              ImGuiCol_Button,
              ImGuiCol_ButtonActive,
              ImGuiCol_ButtonHovered,
              ImGuiCol_TextSelectedBg,
              ImGuiCol_Header,
              ImGuiCol_HeaderHovered,
              ImGuiCol_HeaderActive,
          };

      static const auto TEXT_STYLES = {
          ImGuiCol_Text,
          ImGuiCol_TextDisabled,
      };
      if (setting->value_type == SettingValueType::TEXT
          || setting->value_type == SettingValueType::TEXT_NOWRAP) {
        for (const auto style : TEXT_STYLES) {
          auto style_rgb = ImGui::GetStyleColorVec4(style);
          style_rgb.x = target_rgb.x;
          style_rgb.y = target_rgb.y;
          style_rgb.z = target_rgb.z;
          ImGui::PushStyleColor(style, style_rgb);
        }
        styles_pushed = TEXT_STYLES.size();
      } else {
        for (const auto style : COMMON_STYLES) {
          auto style_rgb = ImGui::GetStyleColorVec4(style);
          float style_hsv[3] = {};
          ImGui::ColorConvertRGBtoHSV(style_rgb.x, style_rgb.y, style_rgb.z, style_hsv[0], style_hsv[1], style_hsv[2]);

          ImGui::ColorConvertHSVtoRGB(target_hsv[0], style_hsv[1], style_hsv[2], style_rgb.x, style_rgb.y, style_rgb.z);
          ImGui::PushStyleColor(style, style_rgb);
        }
        styles_pushed = COMMON_STYLES.size();
      }
    }

    if (last_section != setting->section) {
      last_section.assign(setting->section);

      if (open_node) {
        // TreePop will call unindent
        ImGui::Indent();
        ImGui::TreePop();
      }
      open_node = ImGui::TreeNodeEx(
          setting->section.c_str(),
          ImGuiTreeNodeFlags_DefaultOpen | ImGuiTreeNodeFlags_SpanFullWidth);
      if (open_node) {
        ImGui::Unindent();
      }

      open_section = open_node;
    }

    if (open_section) {
      if (!last_group.empty() && !setting->group.empty() && last_group == setting->group) {
        ImGui::SameLine();
      }

      last_group = setting->group;

      const bool is_disabled = preset_index == 0
                               || (setting->is_enabled != nullptr
                                   && !setting->is_enabled());
      if (is_disabled) {
        ImGui::BeginDisabled();
      }
      bool changed = false;
      float previous_value = setting->GetValue();
      const auto identifier = (setting->key.empty() ? setting->label : setting->key);
      ImGui::PushID(("##Key" + identifier).c_str());
      ImGuiSliderFlags slider_flags = ImGuiSliderFlags_None;
      if (setting->is_logarithmic) {
        slider_flags |= ImGuiSliderFlags_Logarithmic;
      }
      switch (setting->value_type) {
        case SettingValueType::FLOAT:
          changed |= ImGui::SliderFloat(
              setting->label.c_str(),
              &setting->value,
              setting->min,
              setting->GetSliderMax(),
              setting->format.c_str(),
              slider_flags);
          break;
        case SettingValueType::INTEGER:
          changed |= ImGui::SliderInt(
              setting->label.c_str(),
              &setting->value_as_int,
              setting->min,
              setting->GetMax(),
              setting->labels.empty()
                  ? setting->format.c_str()
                  : setting->labels.at(setting->value_as_int).c_str(),
              slider_flags | ImGuiSliderFlags_NoInput);
          break;
        case SettingValueType::BOOLEAN:
          changed |= ImGui::SliderInt(
              setting->label.c_str(),
              &setting->value_as_int,
              0,
              1,
              setting->labels.empty()
                  ? ((setting->value_as_int == 0) ? "Off" : "On")  // NOLINT(readability-avoid-nested-conditional-operator)
                  : setting->labels.at(setting->value_as_int).c_str(),
              slider_flags | ImGuiSliderFlags_NoInput);
          break;
        case SettingValueType::BUTTON:
          if (ImGui::Button(setting->label.c_str())) {
            changed = setting->on_click();
          }
          break;
        case SettingValueType::LABEL:
          ImGui::LabelText(setting->label.c_str(), "%s", setting->labels[0].c_str());
          break;
        case SettingValueType::BULLET:
          ImGui::BulletText(setting->label.c_str(), "");
          break;
        case SettingValueType::TEXT:
          ImGui::TextWrapped("%s", setting->label.c_str());
          break;
        case SettingValueType::TEXT_NOWRAP:
          ImGui::Text(setting->label.c_str(), "");
          break;
        case SettingValueType::CUSTOM:
          changed |= setting->on_draw();
          break;
        case SettingValueType::HOTKEY: {
          const auto key_name = GetHotkeyName(setting->value_as_int);
          std::array<char, 64> buffer = {};
          key_name.copy(buffer.data(), std::min(key_name.size(), buffer.size() - 1));

          ImGui::InputTextWithHint(
              setting->label.c_str(),
              "Click to set shortcut",
              buffer.data(),
              buffer.size(),
              ImGuiInputTextFlags_ReadOnly | ImGuiInputTextFlags_NoUndoRedo | ImGuiInputTextFlags_NoHorizontalScroll);

          if (ImGui::IsItemActive()) {
            is_capturing_hotkey = true;

            const uint32_t keycode = runtime->last_key_pressed();
            if (keycode != 0 && runtime->is_key_pressed(keycode)) {
              if (keycode == VK_BACK || keycode == VK_DELETE) {
                setting->Set(0.f);
                changed = true;
              } else if (keycode != VK_ESCAPE && !IsHotkeyModifier(keycode)) {
                setting->Set(static_cast<float>(EncodeHotkey(
                    keycode,
                    IsCtrlDown(runtime),
                    IsShiftDown(runtime),
                    IsAltDown(runtime))));
                changed = true;
              }
            }
          }
          break;
        }
      }
      ImGui::PopID();
      if (changed) {
        setting->on_change();
      }
      if (!setting->tooltip.empty()) {
        ImGui::SetItemTooltip("%s", setting->tooltip.c_str());
      }

      if (preset_index != 0
          && setting->can_reset
          && setting->value_type < SettingValueType::BUTTON) {
        ImGui::SameLine();
        const bool is_using_default = (setting->GetValue() == setting->default_value);
        ImGui::BeginDisabled(is_using_default);
        if (is_using_default) {
          ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(ImColor::HSV(0, 0, 0.6f)));
          ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(ImColor::HSV(0, 0, 0.7f)));
          ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(ImColor::HSV(0, 0, 0.8f)));
        }
        auto* font = ImGui::GetFont();
        auto old_scale = font->Scale;
        auto previous_font_size = ImGui::GetFontSize();
        font->Scale *= 0.75f;
        ImGui::PushFont(font);
        auto current_font_size = ImGui::GetFontSize();

        ImGui::PushStyleVar(ImGuiStyleVar_FrameRounding, current_font_size * 2);

        ImVec2 cursor_pos = ImGui::GetCursorPos();
        cursor_pos.y += (previous_font_size / 2.f) - (current_font_size / 2.f);
        ImGui::SetCursorPos(cursor_pos);

        ImGui::PushID(("##Reset" + identifier).c_str());
        if (ImGui::Button(renodx::utils::icons::View(renodx::utils::icons::UNDO))) {
          setting->Set(setting->default_value);
          changed = true;
        }
        ImGui::PopID();

        if (is_using_default) {
          ImGui::PopStyleColor(3);
        }
        font->Scale = old_scale;
        ImGui::PopFont();
        ImGui::PopStyleVar();
        ImGui::EndDisabled();
      }

      if (changed) {
        const std::unique_lock lock(renodx::utils::mutex::global_mutex);
        setting->Write();
        any_change = true;
        setting->on_change_value(previous_value, setting->GetValue());
      }
      if (is_disabled) {
        ImGui::EndDisabled();
      }
    }
    ImGui::PopStyleColor(styles_pushed);
  }
  if (open_node) {
    ImGui::Indent();
    ImGui::TreePop();
  }

  if (!has_drawn_presets) {
    draw_presets();
  }
  if (!changed_preset && any_change) {
    if (preset_index != 0) {
      SaveSettings();
    }
    SaveGlobalSettings();
  }
}

static bool attached = false;

static void SelectPreset(int new_preset_index) {
  if (!use_presets) return;
  if (new_preset_index == preset_index) return;

  const int max_index = static_cast<int>(preset_strings.size()) - 1;
  if (new_preset_index < 0 || new_preset_index > max_index) return;

  preset_index = new_preset_index;
  LoadCurrentPreset();
  SaveGlobalSettings();
}

static void OnReShadePresent(reshade::api::effect_runtime* runtime) {
  if (runtime == nullptr || is_capturing_hotkey) return;

  for (size_t i = 0; i < active_preset_hotkey_settings.size(); i++) {
    const auto* preset_hotkey_setting = active_preset_hotkey_settings[i];
    if (preset_hotkey_setting == nullptr) continue;

    const int hotkey = preset_hotkey_setting->value_as_int;
    if (!IsHotkeyPressed(runtime, hotkey)) continue;

    SelectPreset(preset_hotkey_indices[i]);
    break;
  }
}

static bool OnReShadeOpenOverlay(
    reshade::api::effect_runtime* /*runtime*/,
    bool open,
    reshade::api::input_source /*source*/) {
  if (!open) {
    is_capturing_hotkey = false;
  }
  return false;
}

static void Use(DWORD fdw_reason, Settings* new_settings, void (*new_on_preset_off)() = nullptr) {
  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (attached) return;
      attached = true;

      settings = new_settings;
      EnsurePresetHotkeySettings();
      if (new_on_preset_off != nullptr) {
        on_preset_off_callbacks.emplace_back(new_on_preset_off);
      }
      LoadGlobalSettings();
      LoadSelectedPreset();
      LoadCurrentPreset();
      reshade::register_overlay(overlay_title.c_str(), OnRegisterOverlay);
      reshade::register_event<reshade::addon_event::reshade_present>(OnReShadePresent);
      reshade::register_event<reshade::addon_event::reshade_open_overlay>(OnReShadeOpenOverlay);

      break;
    case DLL_PROCESS_DETACH:
      if (!attached) return;
      attached = false;
      reshade::unregister_event<reshade::addon_event::reshade_open_overlay>(OnReShadeOpenOverlay);
      reshade::unregister_event<reshade::addon_event::reshade_present>(OnReShadePresent);
      reshade::unregister_overlay(overlay_title.c_str(), OnRegisterOverlay);
      break;
  }
}

}  // namespace renodx::utils::settings
