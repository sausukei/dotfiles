-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true
config.font_size = 12.0
config.use_ime = true
config.window_background_opacity = 0.85

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
--
config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables

config.leader = { key = "q", mods = "CTRL", timeout_milliseconds = 2000 }
return config

