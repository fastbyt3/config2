-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha (Gogh)'

config.font = wezterm.font_with_fallback {
	'FiraCode Nerd Font',
	'Noto Sans Symbols',
	'Monaspace Radon',
	'Symbols Nerd Font',
}

config.font_size = 11.0

config.hide_tab_bar_if_only_one_tab = true

config.enable_scroll_bar = true

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}


-- and finally, return the configuration to wezterm
return config

