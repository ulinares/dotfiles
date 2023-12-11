local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })
config.font_size = 13

config.color_scheme = 'Tokyo Night'

config.window_background_image = os.getenv( "HOME" ) .. "/.config/wezterm/red-spider-nebula.jpg"

config.window_background_image_hsb = {
    brightness = 0.2,
    hue = 1.0,
    saturation = 1.0,
}

config.window_background_opacity = 1.0
config.text_background_opacity = 1.

return config
