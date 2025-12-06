{ config, pkgs, ... }:
{
  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";

    rofi = {
      enable = false;
    };

	delta.enable = false;

	hyprlock = {
	  enable = false;
	  useDefaultConfig = false;
	};
  };
}
