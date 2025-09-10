-- Claude Code Theme for WezTerm
-- Based on Anthropic's brand colors

local theme = {}

theme.colors = {
  foreground = "#f4f1eb",        -- Anthropic warm white
  background = "#191612",        -- Deep warm black
  cursor_bg = "#cc7a00",         -- Anthropic orange
  cursor_border = "#cc7a00",     -- Anthropic orange
  cursor_fg = "#191612",         -- Dark background for contrast
  selection_bg = "#cc7a00",      -- Anthropic orange selection
  selection_fg = "#191612",      -- Dark text on orange
  scrollbar_thumb = "#3a3530",   -- Subtle warm gray
  split = "#cc7a00",             -- Orange split lines (same as cursor)

  -- Tab colors
  tab_bar = {
    background = "#191612",                    -- Tab bar background
    active_tab = {
      bg_color = "#cc7a00",                    -- Active tab background (orange)
      fg_color = "#191612",                    -- Active tab text (dark)
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#3a3530",                    -- Inactive tab background (warm gray)
      fg_color = "#f4f1eb",                    -- Inactive tab text (warm white)
    },
    inactive_tab_hover = {
      bg_color = "#ff9500",                    -- Hover state (lighter orange)
      fg_color = "#191612",                    -- Hover text (dark)
    },
    new_tab = {
      bg_color = "#3a3530",                    -- New tab button background
      fg_color = "#f4f1eb",                    -- New tab button text
    },
    new_tab_hover = {
      bg_color = "#cc7a00",                    -- New tab button hover (orange)
      fg_color = "#191612",                    -- New tab button hover text
    },
  },

  ansi = {
    "#191612",  -- black
    "#e74856",  -- red
    "#16c60c",  -- green
    "#cc7a00",  -- yellow/orange (Anthropic brand)
    "#3b78ff",  -- blue
    "#b4009e",  -- magenta
    "#13a085",  -- cyan
    "#f4f1eb",  -- white
  },

  brights = {
    "#3a3530",  -- bright black
    "#ff6b7a",  -- bright red
    "#2ecc40",  -- bright green
    "#ff9500",  -- bright orange
    "#5a9cff",  -- bright blue
    "#d63aae",  -- bright magenta
    "#26d0ce",  -- bright cyan
    "#ffffff",  -- bright white
  },
}

theme.metadata = {
  name = "Claude Code Theme",
  author = "Anthropic",
  version = "1.0"
}
