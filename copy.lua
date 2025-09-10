-- Copy functionality for WezTerm
local wezterm = require 'wezterm'
local act = wezterm.action

local copy = {}

-- Helper function to read text from semantic zones
local function read_zone_text(pane, zone)
  if not zone then return '' end
  local text = pane:get_text_from_semantic_zone(zone)
  if text and #text > 0 then
    return text
  end
  return pane:get_text_from_region(zone.start_x, zone.start_y, zone.end_x, zone.end_y + 1)
end

-- Set up the copy last command event handler
function copy.setup_events()
  wezterm.on('copy-last-command', function(window, pane)
    local outputs = pane:get_semantic_zones('Output')
    if #outputs == 0 then
      window:toast_notification('WezTerm', 'No Output zone found (is shell integration enabled?)')
      return
    end

    local out_zone = outputs[#outputs]
    local inputs = pane:get_semantic_zones('Input')
    local in_zone = nil

    -- Find the input zone that corresponds to this output
    for i = #inputs, 1, -1 do
      local z = inputs[i]
      if z.end_y < out_zone.start_y or (z.end_y == out_zone.start_y and z.end_x <= out_zone.start_x) then
        in_zone = z
        break
      end
    end

    local cmd = read_zone_text(pane, in_zone):gsub('%s+$', '')
    local out_text = read_zone_text(pane, out_zone)
    local combined = (cmd ~= '' and (cmd .. '\n') or '') .. out_text

    window:copy_to_clipboard(combined, 'Clipboard')
    window:toast_notification('WezTerm', 'Copied last command and output!')
  end)
end

-- Copy-related key bindings
copy.keys = {
  { key = 'o', mods = 'CMD', action = act.EmitEvent('copy-last-command') },
}

-- Get all copy-related keys
function copy.get_keys()
  return copy.keys
end
