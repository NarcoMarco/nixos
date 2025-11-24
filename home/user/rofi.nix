{ config, pkgs, ... }:
{
  programs.rofi = {
    enable = true;

    plugins = [
      pkgs.rofi-calc
    ];

    font = "JetBrainsMono Nerd Font 12";

    extraConfig = {
      modi = "drun,run,filebrowser,calc";
      show-icons = true;
      display-drun = "APPS";
      display-run = "RUN";
      display-filebrowser = "FILES";
      display-calc = "CALC";
      drun-display-format = "{name}";
      hover-select = false;
      scroll-method = 1;
      me-select-entry = "";
      me-accept-entry = "MousePrimary";
      window-format = "{w} · {c} · {t}";
    };

    theme = "/home/marco/git-repos/mine/nixos/home/config/rofi/config.rasi";
  };
}
