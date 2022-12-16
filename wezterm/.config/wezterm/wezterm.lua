local gruv = require("gruv")
local wez = require("wezterm")
local wa = wez.action

return {
  front_end = "OpenGL",

  -- Font
  font = wez.font("Comic Code Ligatures"),
  font_size = 16.0,
  line_height = 1.3,

  -- UI
  xcursor_theme = "Adwaita",
  adjust_window_size_when_changing_font_size = false,
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
  wez.on(
    "format-tab-title",
    function(tab, _, _, _, _, _)
      if tab.is_active then
        return { { Text = tab.active_pane.title } }
      end
      return tab.active_pane.title
    end
  ),

  -- Keymap
  keys = {
    {
      key = "PageUp",
      mods = "CTRL",
      action = wa.DisableDefaultAssignment
    },
    {
      key = "Enter",
      mods = "ALT",
      action = wa.DisableDefaultAssignment
    },
    {
      key = "PageDown",
      mods = "CTRL",
      action = wa.DisableDefaultAssignment
    },
  },
}
