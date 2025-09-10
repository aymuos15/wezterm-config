-- Pane navigation and splitting for WezTerm
local wezterm = require 'wezterm'
local act = wezterm.action

local panes = {}

-- Pane navigation keys (Shift + arrow keys)
panes.navigation_keys = {
  -- Navigate between panes
  { key = 'LeftArrow',  mods = 'SHIFT', action = act.ActivatePaneDirection 'Left' },
  { key = 'RightArrow', mods = 'SHIFT', action = act.ActivatePaneDirection 'Right' },
  { key = 'UpArrow',    mods = 'SHIFT', action = act.ActivatePaneDirection 'Up' },
  { key = 'DownArrow',  mods = 'SHIFT', action = act.ActivatePaneDirection 'Down' },
}

-- Pane splitting keys (Shift + Command + arrow keys)
panes.splitting_keys = {
  -- Split panes
  { key = 'LeftArrow',  mods = 'SHIFT|CMD', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'RightArrow', mods = 'SHIFT|CMD', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'UpArrow',    mods = 'SHIFT|CMD', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'DownArrow',  mods = 'SHIFT|CMD', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
}

-- Pane management keys
panes.management_keys = {
  -- Delete/close pane
  { key = 'd', mods = 'CMD', action = act.CloseCurrentPane { confirm = true } },
}

-- Get all pane-related keys
function panes.get_keys()
  local keys = {}

  -- Add navigation keys
  for _, key in ipairs(panes.navigation_keys) do
    table.insert(keys, key)
  end

  -- Add splitting keys
  for _, key in ipairs(panes.splitting_keys) do
    table.insert(keys, key)
  end

  -- Add management keys
  for _, key in ipairs(panes.management_keys) do
    table.insert(keys, key)
  end

  return keys
end
