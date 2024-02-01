local gruv = require("gruv")
local wez = require("wezterm")
local actions = wez.action

return {
  front_end = "OpenGL",
  -- Font
  font = wez.font_with_fallback({ "Comic Code Ligatures", "Symbols Nerd Font Mono", "Noto Sans Mono", "Fira Code", "Monospace Regular" }),
  font_size = 14.0,
  line_height = 1.3,
	warn_about_missing_glyphs = false,
  -- UI
  adjust_window_size_when_changing_font_size = false,
  check_for_updates = false,
  color_scheme = gruv.medium,
  color_schemes = gruv.schemes,
  window_decorations = "RESIZE",
  window_padding = {
    left = 6,
    right = 4,
    top = 2,
    bottom = 0,
  },
  -- Tabs
  hide_tab_bar_if_only_one_tab = true,
  wez.on("format-tab-title", function(tab, _, _, _, _, _)
    if tab.is_active then
      return { { Text = tab.active_pane.title } }
    end
    return tab.active_pane.title
  end),
  -- Keymap
  keys = {
    { key = "PageUp",   mods = "CTRL",       action = actions.DisableDefaultAssignment },
    { key = "Enter",    mods = "ALT",        action = actions.DisableDefaultAssignment },
    { key = "PageDown", mods = "CTRL",       action = actions.DisableDefaultAssignment },
    { key = "u",        mods = "CTRL|SHIFT", action = actions.ScrollByPage(-1) },
    { key = "d",        mods = "CTRL|SHIFT", action = actions.ScrollByPage(1) },
  },
  key_tables = {
    search_mode = {
      { key = "n",      mods = "CTRL",       action = actions.CopyMode("NextMatch") },
      { key = "n",      mods = "SHIFT|CTRL", action = actions.CopyMode("PriorMatch") },
      { key = "Escape", mods = "NONE",       action = actions.CopyMode("Close") },
    },
  },
}
