local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 13
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.color_scheme = "tokyonight_night"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.use_fancy_tab_bar = false
config.colors = {
	tab_bar = {
		background = "#000000",
	},
	background = "#000000",
}
config.native_macos_fullscreen_mode = true

return config
