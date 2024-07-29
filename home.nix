{ config, pkgs, ... }:

let
  xdg_config = builtins.getEnv "XDG_CONFIG_HOME";
  home = builtins.getEnv "HOME";
  configPath = if xdg_config == "" then "${home}/.config" else xdg_config;
in

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = builtins.getEnv "USER";
  home.homeDirectory = home;
  home.stateVersion = "24.05";

  home.file = {
    "${configPath}/alacritty".source = config.lib.file.mkOutOfStoreSymlink ./alacritty/.config/alacritty;
    "${configPath}/btop".source = config.lib.file.mkOutOfStoreSymlink ./btop/.config/btop;
    "${configPath}/flameshot".source = config.lib.file.mkOutOfStoreSymlink ./flameshot/.config/flameshot;
    "${configPath}/git".source = config.lib.file.mkOutOfStoreSymlink ./git/.config/git;
    "${configPath}/gsimplecal".source = config.lib.file.mkOutOfStoreSymlink ./gsimplecal/.config/gsimplecal;
    "${configPath}/i3".source = config.lib.file.mkOutOfStoreSymlink ./i3/.config/i3;
    "${configPath}/ideavim".source = config.lib.file.mkOutOfStoreSymlink ./ideavim/.config/ideavim;
    "${configPath}/karabiner".source = config.lib.file.mkOutOfStoreSymlink ./karabiner/.config/karabiner;
    "${configPath}/kitty".source = config.lib.file.mkOutOfStoreSymlink ./kitty/.config/kitty;
    "${configPath}/lazygit".source = config.lib.file.mkOutOfStoreSymlink ./lazygit/.config/lazygit;
    "${configPath}/nvim".source = config.lib.file.mkOutOfStoreSymlink ./nvim/.config/nvim;
    "${configPath}/picom".source = config.lib.file.mkOutOfStoreSymlink ./picom/.config/picom.conf;
    "${configPath}/polybar".source = config.lib.file.mkOutOfStoreSymlink ./polybar/.config/polybar;
    "${configPath}/qbittorrent".source = config.lib.file.mkOutOfStoreSymlink ./qbittorrent/.config/gruvbox-dark.qbtheme;
    "${configPath}/ranger".source = config.lib.file.mkOutOfStoreSymlink ./ranger/.config/ranger;
    "${configPath}/rofi".source = config.lib.file.mkOutOfStoreSymlink ./rofi/.config/rofi;
    "${configPath}/skhd".source = config.lib.file.mkOutOfStoreSymlink ./skhd/.config/skhd;
    "${configPath}/starship".source = config.lib.file.mkOutOfStoreSymlink ./starship/.config/starship.toml;
    "${configPath}/Thunar".source = config.lib.file.mkOutOfStoreSymlink ./Thunar/.config/Thunar;
    "${configPath}/vifm".source = config.lib.file.mkOutOfStoreSymlink ./vifm/.config/vifm;
    "${configPath}/wacom".source = config.lib.file.mkOutOfStoreSymlink ./wacom/.config/wacom;
    "${configPath}/wezterm".source = config.lib.file.mkOutOfStoreSymlink ./wezterm/.config/wezterm;
    "${configPath}/xremap".source = config.lib.file.mkOutOfStoreSymlink ./xremap/.config/xremap;
    "${configPath}/yabai".source = config.lib.file.mkOutOfStoreSymlink ./yabai/.config/yabai;
    "${configPath}/zathura".source = config.lib.file.mkOutOfStoreSymlink ./zathura/.config/zathura;
    "${configPath}/zsh".source = config.lib.file.mkOutOfStoreSymlink ./zsh/.config/zsh;

    "${home}/.ideavimrc".source = config.lib.file.mkOutOfStoreSymlink ./base/.ideavimrc;
    "${home}/.xprofile".source = config.lib.file.mkOutOfStoreSymlink ./base/.xprofile;
    "${home}/.Xresources".source = config.lib.file.mkOutOfStoreSymlink ./base/.Xresources;
    "${home}/.zshenv".source = config.lib.file.mkOutOfStoreSymlink ./base/.zshenv;
  };

  home.packages = [
    (pkgs.writeShellScriptBin "homeback" ''
      eval $(home-manager generations | awk -F '-> ' 'NR==2{print $2 "/activate"}')
    '')

    (pkgs.writeShellScriptBin "homeswitch" ''
      home-manager switch
    '')
  ];
}
