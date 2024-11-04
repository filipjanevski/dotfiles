local wezterm = require 'wezterm'
local theme = require 'colors.0x96f'
local config = {}

config.colors = theme

config.font = wezterm.font 'CommitMono'
config.font_size = 13.0
config.line_height = 1.2

config.hide_tab_bar_if_only_one_tab=true
config.use_fancy_tab_bar = true
config.tab_max_width = 10

config.initial_rows = 24
config.initial_cols = 80

config.window_close_confirmation = 'NeverPrompt'
config.window_frame = {
  font = wezterm.font { family = 'CommitMono' },
  font_size = 12.0,
}
config.window_padding = {
  left = 15,
  right = 15,
  top = 10,
  bottom = 10,
}

config.keys = {
  {
    key = '-',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '\\',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'x',
    mods = 'CTRL|ALT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|ALT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
     key = 'LeftArrow',
     mods = 'CTRL|SHIFT',
     action = wezterm.action.AdjustPaneSize { 'Left', 5 },
   },
   {
     key = 'RightArrow',
     mods = 'CTRL|SHIFT',
     action = wezterm.action.AdjustPaneSize { 'Right', 5 },
   },
   {
     key = 'UpArrow',
     mods = 'CTRL|SHIFT',
     action = wezterm.action.AdjustPaneSize { 'Up', 5 },
   },
   {
     key = 'DownArrow',
     mods = 'CTRL|SHIFT',
     action = wezterm.action.AdjustPaneSize { 'Down', 5 },
   },
}

return config
