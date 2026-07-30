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

		cursors.enable = false;

		waybar.enable = false;
		swaync.enable = false;

		hyprland.enable = false;

		hyprlock = {
			enable = false;
			useDefaultConfig = false;
		};

		spotify-player.enable = false;
  };
}
