local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.front_end = "OpenGL"
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.8
config.enable_tab_bar = false

return config
