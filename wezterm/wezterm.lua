local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })
config.font_size = 13

config.color_scheme = 'Tokyo Night'

-- config.window_background_image = os.getenv( "HOME" ) .. "/.config/wezterm/cyberpunk.jpg"

config.window_background_image_hsb = {
    brightness = 0.3,
    hue = 1.0,
    saturation = 1.0,
}

config.text_background_opacity = 0.9
config.window_background_opacity = 0.9

config.keys = {
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
}

return config
