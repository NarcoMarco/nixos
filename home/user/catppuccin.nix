{ config, pkgs, ... }:
{
  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";

    rofi = {
      enable = false;
    };
  };
}
