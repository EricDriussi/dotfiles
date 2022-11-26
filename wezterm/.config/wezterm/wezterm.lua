local wezterm = require "wezterm"
return {
  font = wezterm.font "Comic Code Ligatures",
  font_size = 16.0,
  line_height = 1.3,
  xcursor_theme = "Qogir",
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changing_font_size = false,

  window_padding = {
    left = 6,
    right = 4,
    top = 3,
    bottom = 0,
  },

  wezterm.on(
    "format-tab-title",
    function(tab, _, _, _, _, _)
      if tab.is_active then
        return {
          { Text = tab.active_pane.title },
        }
      end
      return tab.active_pane.title
    end
  ),

  color_scheme = "gruvbox_material_dark_hard",
  color_schemes = {
    ["gruvbox_material_dark_hard"] = {
      foreground = "#D4BE98",
      background = "#1D2021",
      cursor_bg = "#D4BE98",
      cursor_border = "#D4BE98",
      cursor_fg = "#1D2021",
      selection_bg = "#D4BE98",
      selection_fg = "#3C3836",

      ansi = { "#1d2021", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
      brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
    },
  },
  keys = {
    {
      key = "PageUp",
      mods = "CTRL",
      action = wezterm.action.DisableDefaultAssignment
    },
    {
      key = "PageDown",
      mods = "CTRL",
      action = wezterm.action.DisableDefaultAssignment
    },
  },
}
