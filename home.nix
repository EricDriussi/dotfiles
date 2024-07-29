{ config, pkgs, ... }:

let
  xdg_config = builtins.getEnv "XDG_CONFIG_HOME";
  home = builtins.getEnv "HOME";
  configPath = if xdg_config == "" then "${home}/.config" else xdg_config;

  configDirs = [
    "alacritty"
    "btop"
    "flameshot"
    "git"
    "gsimplecal"
    "i3"
    "ideavim"
    "karabiner"
    "kitty"
    "lazygit"
    "nvim"
    "picom"
    "polybar"
    "qbittorrent"
    "ranger"
    "rofi"
    "skhd"
    "starship"
    "Thunar"
    "vifm"
    "wacom"
    "wezterm"
    "xremap"
    "yabai"
    "zathura"
    "zsh"
  ];

  configFiles = [
    ".ideavimrc"
    ".xprofile"
    ".Xresources"
    ".zshenv"
  ];
in
{
  programs.home-manager.enable = true;

  home.username = builtins.getEnv "USER";
  home.homeDirectory = home;
  home.stateVersion = "24.05";

  home.file = builtins.listToAttrs (builtins.map (cfg: {
    name = "${configPath}/${cfg}";
    value.source = config.lib.file.mkOutOfStoreSymlink ./${cfg}/.config/${cfg};
  }) configDirs) // builtins.listToAttrs (builtins.map (cfg: {
    name = "${home}/${cfg}";
    value.source = config.lib.file.mkOutOfStoreSymlink ./base/${cfg};
  }) configFiles);

  home.packages = [
    (pkgs.writeShellScriptBin "homeback" ''
      eval $(home-manager generations | awk -F '-> ' 'NR==2{print $2 "/activate"}')
    '')

    (pkgs.writeShellScriptBin "homeswitch" ''
      home-manager switch --show-trace
    '')
  ];
}
