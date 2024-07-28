let
  xdg_config = builtins.getEnv "XDG_CONFIG_HOME";
  home = builtins.getEnv "HOME";
  configPath = if xdg_config == "" then "${home}/.config" else xdg_config;
in

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = "eric";
  home.homeDirectory = "/home/eric";
  home.stateVersion = "24.05";

  home.file = {
    "${configPath}/alacritty".source = ./alacritty/.config/alacritty;
    "${configPath}/btop".source = ./btop/.config/btop;
    "${configPath}/flameshot".source = ./flameshot/.config/flameshot;
    "${configPath}/git".source = ./git/.config/git;
    "${configPath}/gsimplecal".source = ./gsimplecal/.config/gsimplecal;
    "${configPath}/i3".source = ./i3/.config/i3;
    "${configPath}/ideavim".source = ./ideavim/.config/ideavim;
    "${configPath}/karabiner".source = ./karabiner/.config/karabiner;
    "${configPath}/kitty".source = ./kitty/.config/kitty;
    "${configPath}/lazygit".source = ./lazygit/.config/lazygit;
    "${configPath}/nvim".source = ./nvim/.config/nvim;
    "${configPath}/picom".source = ./picom/.config/picom.conf;
    "${configPath}/polybar".source = ./polybar/.config/polybar;
    "${configPath}/qbittorrent".source = ./qbittorrent/.config/gruvbox-dark.qbtheme;
    "${configPath}/ranger".source = ./ranger/.config/ranger;
    "${configPath}/rofi".source = ./rofi/.config/rofi;
    "${configPath}/skhd".source = ./skhd/.config/skhd;
    "${configPath}/starship".source = ./starship/.config/starship.toml;
    "${configPath}/Thunar".source = ./Thunar/.config/Thunar;
    "${configPath}/vifm".source = ./vifm/.config/vifm;
    "${configPath}/wacom".source = ./wacom/.config/wacom;
    "${configPath}/wezterm".source = ./wezterm/.config/wezterm;
    "${configPath}/xremap".source = ./xremap/.config/xremap;
    "${configPath}/yabai".source = ./yabai/.config/yabai;
    "${configPath}/zathura".source = ./zathura/.config/zathura;
    "${configPath}/zsh".source = ./zsh/.config/zsh;

    "${home}/.ideavimrc".source = ./base/.ideavimrc;
    "${home}/.xprofile".source = ./base/.xprofile;
    "${home}/.Xresources".source = ./base/.Xresources;
    "${home}/.zshenv".source = ./base/.zshenv;
  };
}
