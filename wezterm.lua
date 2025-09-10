local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Load modules
local claude_theme = require 'claude-code-theme'
local panes = require 'panes'
local copy = require 'copy'

-- ==== SETUP EVENTS ====
copy.setup_events()

-- ==== KEYS ====
config.keys = {}

-- Add pane keys
for _, key in ipairs(panes.get_keys()) do
  table.insert(config.keys, key)
end

-- Add copy keys
for _, key in ipairs(copy.get_keys()) do
  table.insert(config.keys, key)
end

-- ==== THEME ====
config.colors = claude_theme.colors
